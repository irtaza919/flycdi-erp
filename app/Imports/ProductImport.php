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
            $productMap = []; // item_code => id
            $pendingChildren = [];

            // Step 1: Insert parents first (those without parent_id)
            foreach ($products as $product) {
                $isChild = isset($product['parent_id']) && trim($product['parent_id']) !== '';

                if (!$isChild) {
                    $productId = $this->createProduct($product, $user, null);
                    $productMap[trim($product['item_code'])] = $productId;
                } else {
                    $pendingChildren[] = $product;
                }
            }

            // Step 2: Insert children after parents
            foreach ($pendingChildren as $product) {
                $parentCode = trim($product['parent_id']);
                $parentId = $productMap[$parentCode] ?? null;

                if (!$parentId) {
                    throw new ApiException("Parent with item_code '{$parentCode}' not found for child '{$product['name']}'");
                }

                $this->createProduct($product, $user, $parentId);
            }
        });
    }

    private function createProduct($product, $user, $parentId = null)
    {
        foreach (['name', 'barcode_symbology', 'item_code', 'parent_item_code', 'product_type', 'description', 'category', 'brand', 'unit', 'tax', 'mrp', 'purchase_price', 'sales_price', 'purchase_tax_type', 'sales_tax_type', 'stock_quantitiy_alert', 'opening_stock', 'opening_stock_date', 'wholesale_price', 'wholesale_quantity'] as $field) {
            if (!array_key_exists($field, $product)) {
                throw new ApiException('Field missing from header: ' . $field);
            }
        }

        $productName = trim($product['name']);

        if ($productName != '') {
            $productCount = Product::where('name', $productName)->count();
            if ($productCount > 0) {
                throw new ApiException('Product ' . $productName . ' Already Exists');
            }

            $productType = trim($product['product_type']);
            if (!in_array($productType, ['single', 'variable', 'service'])) {
                throw new ApiException('Product Type must be one of: single, variable, service');
            }

            $parentItemCode = trim($product['parent_item_code']);
            $parentId = null;
            if ($parentItemCode !== '') {
                $parentProduct = Product::where('item_code', $parentItemCode)->first();
                if (!$parentProduct) {
                    throw new ApiException('Parent Product with item code ' . $parentItemCode . ' not found');
                }

                $parentId = $parentProduct->id;
            }

            // Category
            $categoryName = trim($product['category']);
            $category = Category::where('name', $categoryName)->first();
            if (!$category) {
                throw new ApiException('Category Not Found: ' . $categoryName);
            }

            // Brand
            $brandName = trim($product['brand']);
            $brand = Brand::where('name', $brandName)->first();
            if (!$brand) {
                throw new ApiException('Brand Not Found: ' . $brandName);
            }

            // Unit
            $unitName = trim($product['unit']);
            $unit = Unit::where('name', $unitName)->first();
            if (!$unit) {
                throw new ApiException('Unit Not Found: ' . $unitName);
            }

            $barcodeSymbology = trim($product['barcode_symbology']);
            if ($barcodeSymbology == "" || !in_array($barcodeSymbology, ['CODE128', 'CODE39'])) {
                throw new ApiException('Barcode symbology must be CODE128 or CODE39');
            }

            $itemCode = trim($product['item_code']);
            $isItemCodeAlreadyExists = Product::where('item_code', $itemCode)->count();
            if ($isItemCodeAlreadyExists > 0) {
                throw new ApiException('Item Code ' . $itemCode . ' Already Exists');
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

            $openingStockDate = trim($product['opening_stock_date']);
            $stockQuantityAlert = trim($product['stock_quantitiy_alert']);
            $openingStock = trim($product['opening_stock']);
            $wholesaleQuantity = trim($product['wholesale_quantity']);
            $wholesalePrice = trim($product['wholesale_price']);
            $allWarehouses = Warehouse::select('id')->get();

            if (array_key_exists('warehouse', $product)) {
                $warehouse = Warehouse::where('name', $product['warehouse'])->first();
                $currentWarehouse = warehouse();
                $createdWarehouseId = $warehouse && $warehouse->id ? $warehouse->id : $currentWarehouse->id;
            } else {
                $warehouse = warehouse();
                $createdWarehouseId = $warehouse->id;
            }

            $newProduct = new Product();
            $newProduct->name = $productName;
            $newProduct->product_type = $productType;
            $newProduct->parent_item_code = $parentItemCode;
            $newProduct->warehouse_id = $createdWarehouseId;
            $newProduct->slug = Str::slug($productName, '-');
            $newProduct->barcode_symbology = $barcodeSymbology;
            $newProduct->item_code = $itemCode;
            $newProduct->category_id = $category->id;
            $newProduct->brand_id = $brand->id;
            $newProduct->unit_id = $unit->id;
            $newProduct->user_id = $user->id;
            $newProduct->parent_id = $parentId;
            $newProduct->save();

            // MRP
            $mrp = $product['mrp'] && $product['mrp'] != '' ? trim($product['mrp']) : null;
            $mrp = $this->sanitizePrice($mrp);

            // Purchase Price
            $purchasePrice = $product['purchase_price'] && $product['purchase_price'] != '' ? trim($product['purchase_price']) : 0;
            $purchasePrice = $this->sanitizePrice($purchasePrice);

            // Sales Price
            $salesPrice = $product['sales_price'] && $product['sales_price'] != '' ? trim($product['sales_price']) : 0;
            $salesPrice = $this->sanitizePrice($salesPrice);

            // Wholesale Price
            $wholesalePrice = $product['wholesale_price'] && $product['wholesale_price'] != '' ? trim($product['wholesale_price']) : null;
            $wholesalePrice = $this->sanitizePrice($wholesalePrice);

            foreach ($allWarehouses as $allWarehouse) {
                $newProductDetails = new ProductDetails();
                $newProductDetails->warehouse_id = $allWarehouse->id;
                $newProductDetails->product_id = $newProduct->id;
                $newProductDetails->tax_id = $taxName == "" ? null : $tax->id;
                $newProductDetails->purchase_tax_type = $purchaseTaxType != '' ? strtolower($purchaseTaxType) : 'exclusive';
                $newProductDetails->sales_tax_type = $salesTaxType != '' ? strtolower($salesTaxType) : 'exclusive';
                $newProductDetails->mrp = $mrp;
                $newProductDetails->purchase_price = $purchasePrice;
                $newProductDetails->sales_price = $salesPrice;
                $newProductDetails->stock_quantitiy_alert = $stockQuantityAlert != "" ? (int) $stockQuantityAlert : null;
                $newProductDetails->opening_stock = $openingStock != "" ? (int) $openingStock : null;
                $newProductDetails->opening_stock_date = $openingStockDate != "" ? $openingStockDate : null;
                $newProductDetails->wholesale_price = $wholesalePrice;
                $newProductDetails->wholesale_quantity = $wholesaleQuantity == "" ? null : $wholesaleQuantity;
                $newProductDetails->save();

                Common::recalculateOrderStock($newProductDetails->warehouse_id, $newProduct->id);
            }

            return $newProduct->id;
        }

        return null;
    }

    private function sanitizePrice($value)
    {
        $value = str_replace([',', '-'], '', $value);
        return is_numeric($value) ? $value : null;
    }
}
