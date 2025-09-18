<?php

namespace App\Imports;

use App\Classes\Common;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductDetails;
use App\Models\Tax;
use App\Models\Unit;
use App\Models\Warehouse;
use Examyou\RestAPI\Exceptions\ApiException;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\ToArray;
use Illuminate\Support\Str;

class ProductImport implements ToArray, WithHeadingRow
{
    public function array(array $products)
    {
        DB::transaction(function () use ($products) {
            $user = user();
            $productMap = [];
            $pendingChildren = [];

            foreach ($products as $product) {
                $parentItemCode = isset($product['parent_item_code']) ? trim($product['parent_item_code']) : '';

                if ($parentItemCode === '') {
                    // This is either a single product or a parent variable product
                    $productId = $this->createOrUpdateProduct($product, $user, null);
                    $productMap[trim($product['item_code'])] = $productId;
                } else {
                    // This is a child product
                    $pendingChildren[] = $product;
                }
            }

            // Now process children after all parents are in the DB
            foreach ($pendingChildren as $product) {
                $parentCode = trim($product['parent_item_code']);
                $parentId = $productMap[$parentCode] ?? null;

                if (!$parentId) {
                    throw new ApiException("Parent with item_code '{$parentCode}' not found for child '{$product['name']}'");
                }

                $this->createOrUpdateProduct($product, $user, $parentId);
            }
        });
    }

    private function createOrUpdateProduct($product, $user, $parentId = null)
    {
        foreach ([
            'name', 'item_code', 'barcode_symbology', 'unit', 'category', 'brand', 'tax',
            'mrp', 'purchase_price', 'sales_price', 'purchase_tax_type', 'sales_tax_type',
            'stock_quantitiy_alert', 'opening_stock', 'opening_stock_date', 'wholesale_price', 'wholesale_quantity'
        ] as $field) {
            if (!array_key_exists($field, $product)) {
                throw new ApiException('Field missing from header: ' . $field);
            }
        }

        $productName = trim($product['name']);
        $barcodeSymbology = trim($product['barcode_symbology']);
        $itemCode = trim($product['item_code']);
        $parentItemCode = isset($product['parent_item_code']) ? trim($product['parent_item_code']) : '';
        $productType = isset($product['product_type']) ? trim($product['product_type']) : 'single';
        $openingStockDate = trim($product['opening_stock_date']);
        $stockQuantityAlert = trim($product['stock_quantitiy_alert']);
        $openingStock = trim($product['opening_stock']);
        $wholesaleQuantity = trim($product['wholesale_quantity']);
        $wholesalePrice = trim($product['wholesale_price']);

        if (!in_array($productType, ['single', 'variable', 'service'])) {
            throw new ApiException('Product Type must be one of: single, variable, service');
        }

        if ($barcodeSymbology == "" || !in_array($barcodeSymbology, ['CODE128', 'CODE39'])) {
            throw new ApiException('Barcode symbology must be CODE128 or CODE39');
        }

        // Category
        $category = Category::where('name', trim($product['category']))->first();
        if (!$category) {
            throw new ApiException('Category Not Found: ' . $product['category']);
        }

        // Brand
        $brand = Brand::where('name', trim($product['brand']))->first();
        if (!$brand) {
            throw new ApiException('Brand Not Found: ' . $product['brand']);
        }

        // Unit
        $unit = Unit::where('name', trim($product['unit']))->first();
        if (!$unit) {
            throw new ApiException('Unit Not Found: ' . $product['unit']);
        }

        // Tax
        $taxName = trim($product['tax']);
        $tax = null;
        if ($taxName != "") {
            $tax = Tax::where('name', $taxName)->first();
            if (!$tax) {
                throw new ApiException('Tax Not Found: ' . $taxName);
            }
        }

        $purchaseTaxType = trim($product['purchase_tax_type']);
        if ($taxName != "" && !in_array(strtolower($purchaseTaxType), ['exclusive', 'inclusive'])) {
            throw new ApiException('Purchase Tax Type must be inclusive or exclusive');
        }

        $salesTaxType = trim($product['sales_tax_type']);
        if ($taxName != "" && !in_array(strtolower($salesTaxType), ['exclusive', 'inclusive'])) {
            throw new ApiException('Sales Tax Type must be inclusive or exclusive');
        }

        // Warehouse
        $allWarehouses = Warehouse::select('id')->get();
        $createdWarehouseId = warehouse()->id;
        if (array_key_exists('warehouse', $product)) {
            $warehouse = Warehouse::where('name', $product['warehouse'])->first();
            if ($warehouse && $warehouse->id) {
                $createdWarehouseId = $warehouse->id;
            }
        }

        // If parent_item_code exists but parentId is null, find it
        if ($parentItemCode !== '' && !$parentId) {
            $parent = Product::where('item_code', $parentItemCode)->first();
            if (!$parent) {
                throw new ApiException('Parent Product with item code ' . $parentItemCode . ' not found');
            }
            $parentId = $parent->id;
        }

        // Check if product already exists
        $existingProduct = Product::where('item_code', $itemCode)->first();

        if ($existingProduct) {
            $newProduct = $existingProduct;
        } else {
            $newProduct = new Product();
            $newProduct->item_code = $itemCode;
        }

        $newProduct->name = $productName;
        $newProduct->product_type = $productType;
        $newProduct->parent_item_code = $parentItemCode;
        $newProduct->warehouse_id = $createdWarehouseId;
        $newProduct->slug = Str::slug($productName, '-');
        $newProduct->barcode_symbology = $barcodeSymbology;
        $newProduct->category_id = $category->id;
        $newProduct->brand_id = $brand->id;
        $newProduct->unit_id = $unit->id;
        $newProduct->user_id = $user->id;
        $newProduct->parent_id = $parentId;
        $newProduct->save();

        // Prices
        $mrp = $this->sanitizePrice($product['mrp']);
        $purchasePrice = $this->sanitizePrice($product['purchase_price']);
        $salesPrice = $this->sanitizePrice($product['sales_price']);
        $wholesalePrice = $this->sanitizePrice($wholesalePrice);
        $wholeSalePrice = isset($product['whole_sale_price']) ? $this->sanitizePrice($product['whole_sale_price']) : null;

        foreach ($allWarehouses as $allWarehouse) {
            $productDetails = ProductDetails::where('warehouse_id', $allWarehouse->id)
                ->where('product_id', $newProduct->id)
                ->first();

            if (!$productDetails) {
                $productDetails = new ProductDetails();
                $productDetails->warehouse_id = $allWarehouse->id;
                $productDetails->product_id = $newProduct->id;
                $productDetails->opening_stock = 0;
            }

            $existingStock = (int) ($productDetails->opening_stock ?? 0);
            $newStock = $openingStock != "" ? (int) $openingStock : 0;
            $productDetails->opening_stock = $existingStock + $newStock;

            $productDetails->tax_id = $taxName == "" ? null : $tax->id;
            $productDetails->purchase_tax_type = $purchaseTaxType != '' ? strtolower($purchaseTaxType) : 'exclusive';
            $productDetails->sales_tax_type = $salesTaxType != '' ? strtolower($salesTaxType) : 'exclusive';
            $productDetails->mrp = $mrp;
            $productDetails->purchase_price = $purchasePrice;
            $productDetails->sales_price = $salesPrice;
            $productDetails->whole_sale_price = $wholeSalePrice;
            $productDetails->stock_quantitiy_alert = $stockQuantityAlert != "" ? (int) $stockQuantityAlert : null;
            $productDetails->opening_stock_date = $openingStockDate != "" ? $openingStockDate : null;
            $productDetails->wholesale_price = $wholesalePrice;
            $productDetails->wholesale_quantity = $wholesaleQuantity == "" ? null : $wholesaleQuantity;
            $productDetails->save();

            Common::recalculateOrderStock($productDetails->warehouse_id, $newProduct->id);
        }

        return $newProduct->id;
    }

    private function sanitizePrice($value)
    {
        $value = str_replace([',', '-'], '', $value);
        return is_numeric($value) ? $value : null;
    }
}
