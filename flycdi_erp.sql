-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2025 at 01:39 AM
-- Server version: 10.6.22-MariaDB
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flycdi_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `appreciations`
--

CREATE TABLE `appreciations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `award_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `price_amount` double DEFAULT NULL,
  `price_given` text DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `is_holiday` tinyint(1) NOT NULL DEFAULT 0,
  `is_leave` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `leave_id` bigint(20) UNSIGNED DEFAULT NULL,
  `leave_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `holiday_id` bigint(20) UNSIGNED DEFAULT NULL,
  `clock_in_date_time` datetime DEFAULT NULL,
  `clock_out_date_time` datetime DEFAULT NULL,
  `clock_in_ip_address` varchar(20) DEFAULT NULL,
  `total_duration` int(11) DEFAULT NULL,
  `clock_out_ip_address` varchar(20) DEFAULT NULL,
  `clock_in_time` time DEFAULT NULL,
  `clock_out_time` time DEFAULT NULL,
  `office_clock_in_time` time DEFAULT NULL,
  `office_clock_out_time` time DEFAULT NULL,
  `is_half_day` tinyint(1) NOT NULL DEFAULT 0,
  `is_late` tinyint(1) NOT NULL DEFAULT 0,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(191) NOT NULL DEFAULT 'present',
  `reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `award_price` double DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basic_salaries`
--

CREATE TABLE `basic_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `basic_salary` double DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `company_id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(3, 3, 'Apple', 'apple-bywr68m', 'brand_fztfjlqauezvlte4qxyl.png', '2025-06-01 10:15:09', '2025-06-01 10:15:09'),
(4, 3, 'Samsung', 'samsung', 'brand_bb5hfbimrp1gxnf6zzzm.png', '2025-06-04 14:26:22', '2025-06-27 09:47:02'),
(5, 3, 'Xiaomi', 'xiaomi', 'brand_kalzsis7yiluxjcigx4c.jpg', '2025-06-04 14:26:22', '2025-06-27 09:45:59'),
(6, 3, 'OPPO', 'oppo', 'brand_pt4knliurkipwkafxwxu.png', '2025-06-04 14:26:22', '2025-06-27 09:43:52'),
(7, 3, 'vivo', 'vivo', 'brand_a7znl0vebsxdosio5y1i.jpg', '2025-06-04 14:26:22', '2025-06-27 09:41:56'),
(8, 3, 'realme', 'realme', 'brand_wupb0kter6rfmtrvybxo.png', '2025-06-04 14:26:22', '2025-06-27 09:41:01'),
(9, 3, 'Motorola', 'motorola', 'brand_gbcft4u9a46urqngwwzz.png', '2025-06-04 14:26:22', '2025-06-27 09:40:02'),
(10, 3, 'OnePlus', 'oneplus', 'brand_renr1liwmrufkri3k0px.png', '2025-06-04 14:26:22', '2025-06-27 09:39:19'),
(11, 3, 'Google (Pixel)', 'google-pixel', 'brand_jc4qa8fvd6e1op1qwzbw.jpg', '2025-06-04 14:26:22', '2025-06-27 09:24:21'),
(12, 3, 'Huawei', 'huawei', 'brand_gm7hn3jebramrczy3vgs.jpg', '2025-06-04 14:26:22', '2025-06-27 09:25:12'),
(13, 3, 'Sony (Xperia)', 'sony-xperia', 'brand_kgrn0yvbkavgitjlbjvn.png', '2025-06-04 14:26:22', '2025-06-27 09:38:33'),
(14, 3, 'Nokia (HMD Global)', 'nokia-hmd-global', 'brand_vbbz18o1dhsafjmy3fnb.png', '2025-06-04 14:26:22', '2025-06-27 09:36:49'),
(15, 3, 'Lenovo', 'lenovo', 'brand_by41pjksqpiufiqezwlh.png', '2025-06-04 14:26:22', '2025-06-27 09:35:47'),
(16, 3, 'Asus (ROG, Zenfone)', 'asus-rog-zenfone', 'brand_zt2gkgvrfags8dsfskjl.png', '2025-06-04 14:26:22', '2025-06-26 11:57:51'),
(17, 3, 'Infinix', 'infinix', 'brand_lsbgpkt0wyrmpbzlgr2j.png', '2025-06-04 14:26:22', '2025-06-27 09:18:40'),
(18, 3, 'Tecno', 'tecno', 'brand_xpemvwiqzosj5dfymqvk.png', '2025-06-04 14:26:22', '2025-06-27 09:34:54'),
(19, 3, 'iTel', 'itel', 'brand_binuqi9d1e00jomvurbk.png', '2025-06-04 14:26:22', '2025-06-27 09:33:39'),
(20, 3, 'Lava', 'lava', 'brand_dtznyzxlu5zjsqe1oek8.jpg', '2025-06-04 14:26:22', '2025-06-27 09:33:02'),
(21, 3, 'Micromax', 'micromax', 'brand_bxp4wbnqcww6xhusu8ny.png', '2025-06-04 14:26:22', '2025-06-27 09:31:17'),
(22, 3, 'BLU', 'blu', 'brand_sl2duuobx4emtdmxw8tc.jpg', '2025-06-04 14:26:22', '2025-06-27 09:23:11'),
(23, 3, 'Honor', 'honor', 'brand_6jmkkpf3cngycrsowiyt.jpg', '2025-06-04 14:26:22', '2025-06-26 11:58:35'),
(24, 3, 'ZTE', 'zte', 'brand_k1jmy0w4wdsrjaq2w5kh.jpg', '2025-06-04 14:26:22', '2025-06-27 09:29:40'),
(25, 3, 'Meizu', 'meizu', 'brand_ollz33suugbt74knzeth.jpg', '2025-06-04 14:26:22', '2025-06-27 09:27:53'),
(26, 3, 'Coolpad', 'coolpad', 'brand_d5ac04lhmf2m0eg7atda.png', '2025-06-04 14:26:22', '2025-06-27 09:23:44'),
(27, 3, 'Alcatel (TCL)', 'alcatel-tcl', 'brand_g98nrpqhuuwj9bjokemy.jpg', '2025-06-04 14:26:22', '2025-06-27 09:22:59'),
(28, 3, 'FLYCDI', 'flycdi-d7a009z', 'brand_8bxa461njsim0i24b8ov.jpg', '2025-06-11 17:14:12', '2025-06-26 11:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `company_id`, `name`, `slug`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(10, 3, 'LCD Screens', 'lcd-screens-jerp6phs', 'category_0dtc6pbyaytnxvgavm8y.jpg', NULL, '2025-06-04 15:09:51', '2025-06-10 05:53:50'),
(11, 3, 'Apple', 'apple', 'category_b7zehtu5kyzhkr36nmc8.jpg', 10, '2025-06-04 15:10:03', '2025-06-28 05:07:19'),
(12, 3, 'Samsung', 'samsung', 'category_vlbzdecspj8dcmivzgt4.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:07:34'),
(13, 3, 'Xiaomi', 'xiaomi', 'category_kzgn2pp1uiupd3uzvu94.jpg', 10, '2025-06-04 15:10:03', '2025-06-28 05:07:42'),
(14, 3, 'OPPO', 'oppo', 'category_3mckyeot1jnfqxfnsbs8.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:07:55'),
(15, 3, 'VIVO', 'vivo', 'category_qbkfpuoarwd6gsk5ois9.jpg', 10, '2025-06-04 15:10:03', '2025-06-28 05:08:05'),
(16, 3, 'Realme', 'realme', 'category_8mv55xc4t67omp58spx1.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:08:19'),
(17, 3, 'Motorola', 'motorola', 'category_oak6tdvvxpwt9mfughpr.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:08:29'),
(18, 3, 'OnePlus', 'oneplus', 'category_ddlwb24laiti7m2vj0mw.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:08:47'),
(19, 3, 'Google (Pixel)', 'google-pixel', 'category_b1hznhij9qb2u5dczuku.jpg', 10, '2025-06-04 15:10:03', '2025-06-28 05:08:54'),
(20, 3, 'Huawei', 'huawei', 'category_xqdlvfebfe9b7xsldxf1.jpg', 10, '2025-06-04 15:10:03', '2025-06-28 05:09:15'),
(21, 3, 'Sony (Xperia)', 'sony-xperia', 'category_l45fpympkk5yj3ubeumm.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:09:34'),
(22, 3, 'Nokia (HMD Global)', 'nokia-hmd-global', 'category_tjzimy5guw0lrofkbz75.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:09:22'),
(23, 3, 'Lenovo', 'lenovo', 'category_bg8inauuyptg42dhlbl3.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:09:47'),
(24, 3, 'Asus (ROG, Zenfone)', 'asus-rog-zenfone', 'category_d9vgn8swybaz7zbfgchf.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:10:03'),
(25, 3, 'Infinix', 'infinix', 'category_xmhye65vnzbi4gki4q6f.jpg', 10, '2025-06-04 15:10:03', '2025-06-28 05:10:54'),
(26, 3, 'Tecno', 'tecno', 'category_3jwk7tev8wypbb2cvfbg.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:11:04'),
(27, 3, 'iTel', 'itel', 'category_yo8hpejr1wcovj7v0vee.png', 10, '2025-06-04 15:10:03', '2025-06-28 05:11:20'),
(28, 3, 'Honor', 'honor', 'category_prvckssnp4xrrtjolzfs.jpg', 10, '2025-06-04 15:10:03', '2025-06-28 05:11:32'),
(30, 3, 'Repair Tools', 'repair-tools-ly7olvrj', 'category_qbor21ibpaqxqraxatmn.jpg', NULL, '2025-06-10 08:10:42', '2025-06-10 08:10:42'),
(31, 3, 'Repair Parts', 'repair-parts-k9gdc12v', 'category_noflmmslzrmndobn350k.jpg', NULL, '2025-06-10 08:11:51', '2025-06-10 08:11:51'),
(32, 3, 'Repair Consumables', 'repair-consumables-iqaac5i', 'category_zs9g1ccmilucmyjellhy.jpg', NULL, '2025-06-10 08:12:44', '2025-06-10 08:12:44'),
(33, 3, 'Accessories', 'accessories-yhvggwl9', 'category_jdrtqf465znmjxpkp1jc.jpg', NULL, '2025-06-10 08:13:55', '2025-06-10 08:13:55'),
(37, 3, 'Adhesive', 'adhesive', 'category_ljugndclwybxjx6vfugy.png', 32, '2025-06-26 10:22:34', '2025-06-28 09:11:25'),
(38, 3, 'Alcohol Category', 'alcohol-category', 'category_fuesr2pwvooimyuekrlb.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:12:31'),
(39, 3, 'Cleanroom Wipers', 'cleanroom-wipers', 'category_ukcbcakeh0so9d8pacrt.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:13:21'),
(40, 3, 'Contact Cleaner', 'contact-cleaner', 'category_qsxsmo0zzmadwsfk8pxv.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:14:17'),
(41, 3, 'Disoldering Wire', 'disoldering-wire', 'category_37yhbq3gnsphvgecztsm.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:15:04'),
(42, 3, 'Fly Wire', 'fly-wire', 'category_wzvl3adkplwbsiipg8kc.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:16:46'),
(43, 3, 'Gold Wire', 'gold-wire', 'category_y1fdvlopn5erblsodyje.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:17:21'),
(44, 3, 'Integrated Heating Core', 'integrated-heating-core', 'category_nqkltsrpdsc98yvlac0j.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:18:23'),
(45, 3, 'Solder Paste', 'solder-paste', 'category_ttecvig1prcphui9q5us.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:19:02'),
(46, 3, 'Solder Wire', 'solder-wire', 'category_knmbszgznxmyb2jjikr9.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:19:47'),
(47, 3, 'Soldering Tip', 'soldering-tip', 'category_3xfllq9u1n47jj5gfz6a.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:20:20'),
(48, 3, 'Soldering Tip Refresher', 'soldering-tip-refresher', 'category_lzhfu1cexc058jg5ag4l.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:20:58'),
(49, 3, 'UV Solder Masking', 'uv-solder-masking', 'category_sxw6ky2i4ni3d1qlbj81.jpg', 32, '2025-06-26 10:22:34', '2025-06-28 09:22:22'),
(50, 3, 'Activation  Detection Board', 'activation-detection-board', 'category_zikuvjwlfdjblftnyhul.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 08:27:18'),
(51, 3, 'Card', 'card', 'category_hhnplqtjvjymzpijhoz4.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 08:40:19'),
(52, 3, 'Cleaning Brush', 'cleaning-brush', 'category_stfguzf0os0yggytanck.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 08:37:39'),
(53, 3, 'Cleaning Sponge', 'cleaning-sponge', 'category_qknixwyhl2xr9bzqfx2m.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 10:27:34'),
(54, 3, 'Cutting Machine', 'cutting-machine', 'category_eymzp8l8b1ouprtso9r5.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 08:48:29'),
(55, 3, 'Film Cutting Machine', 'film-cutting-machine', 'category_6egdnxbo5xrz3hh5p3j9.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 08:49:35'),
(56, 3, 'Magnetic Mat', 'magnetic-mat', 'category_q984kxhup95pcl4lukkx.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 10:28:15'),
(57, 3, 'PRY Blade Set', 'pry-blade-set', 'category_gypmurjjyrtp3afqkjzk.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 08:51:07'),
(58, 3, 'Repair Mat', 'repair-mat', 'category_qhljm9hqxagjpxhkjirw.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 08:50:55'),
(59, 3, 'Screw driver', 'screw-driver', 'category_va1sw9xvwv648nx5ioil.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 08:53:47'),
(60, 3, 'Soldering Iron', 'soldering-iron', 'category_femb3vq4anxjnhe4cask.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 10:29:29'),
(61, 3, 'Steel Pliers', 'steel-pliers', 'category_lmoroghgbhoeefjky6kf.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 09:01:24'),
(62, 3, 'Test Box', 'test-box', 'category_nbbzse9c4eita2ntskmc.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 09:02:25'),
(63, 3, 'Tweezers', 'tweezers', 'category_ex0dpvfm3ylzuormvma7.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 09:03:16'),
(64, 3, 'Ultrasonic Cleaner', 'ultrasonic-cleaner', 'category_vuynxuzcysc0zzl0dsmc.jpg', 30, '2025-06-26 10:24:05', '2025-06-28 09:04:16'),
(65, 3, 'Bluetooth Earbuds', 'bluetooth-earbuds', 'category_scjl0bgcjczuosrptikk.jpg', 33, '2025-06-26 10:25:35', '2025-06-28 09:24:38'),
(66, 3, 'Charger', 'charger', 'category_7fjytb9gxl10oez8sf71.jpg', 33, '2025-06-26 10:25:35', '2025-06-28 09:25:16'),
(67, 3, 'Charging Cable', 'charging-cable', 'category_4qeqxuyzzm5uiopnedtl.jpg', 33, '2025-06-26 10:25:35', '2025-06-28 09:26:00'),
(68, 3, 'Dust-free Warehouse Tempared Film', 'dust-free-warehouse-tempared-film', 'category_elm4haxrrnoimeo1itgs.jpg', 33, '2025-06-26 10:25:35', '2025-06-28 09:26:50'),
(69, 3, 'Hydrogel Film', 'hydrogel-film', 'category_gabqxhygo0kmsu2lemxq.jpg', 33, '2025-06-26 10:25:35', '2025-06-28 09:27:34'),
(70, 3, 'Lens Film', 'lens-film', 'category_scwe6gcq7mzpjhtr98gk.jpg', 33, '2025-06-26 10:25:35', '2025-06-28 09:28:36'),
(71, 3, 'Power Bank', 'power-bank', 'category_v32vdywosa0voavno7jq.jpg', 33, '2025-06-26 10:25:35', '2025-06-28 09:29:07'),
(72, 3, 'Tempared Glass', 'tempared-glass', 'category_2v2sfr4ny7bnqq4jnxnb.jpg', 33, '2025-06-26 10:25:35', '2025-06-28 09:29:33'),
(73, 3, 'Batteries', 'batteries-whr47xhr', 'category_ntlvhdbvvt3lbgkqxeka.jpg', NULL, '2025-06-27 13:14:34', '2025-06-28 02:18:57'),
(74, 3, 'Apple', 'apple-jofc5bo', 'category_dr0rvkbp4fay7eerx9tx.jpg', 73, '2025-06-27 13:16:40', '2025-06-28 05:12:02'),
(75, 3, 'Samsung', 'samsung-8ceul6bn', 'category_shxuuuxdztv7yni91jdg.png', 73, '2025-06-27 13:17:32', '2025-06-28 05:12:08'),
(76, 3, 'Xiaomi', 'xiaomi-x6lq0zzb', 'category_wtxhkfeuho2gryykyvjv.jpg', 73, '2025-06-27 13:18:09', '2025-06-28 05:12:13'),
(77, 3, 'OPPO', 'oppo-sepf9ky', 'category_z4itzpd1xh3uiloncroe.png', 73, '2025-06-27 13:18:25', '2025-06-28 05:12:19'),
(78, 3, 'VIVO', 'vivo-6emkvgw', 'category_bgu0chwfcjcp2qppagan.jpg', 73, '2025-06-27 13:19:51', '2025-06-28 05:12:26'),
(79, 3, 'Realme', 'realme-i87kflkp', 'category_fzwb4ozhec4ikizfnuuh.png', 73, '2025-06-27 13:20:04', '2025-06-28 05:12:39'),
(80, 3, 'Motorola', 'motorola-9mw4zv5', 'category_8yaassurxljsrqh7hw90.png', 73, '2025-06-27 13:20:21', '2025-06-28 05:12:45'),
(81, 3, 'OnePlus', 'oneplus-m00wwis', 'category_abv2p70wommx0kxzugsk.png', 73, '2025-06-27 13:20:36', '2025-06-28 05:12:53'),
(82, 3, 'Google (Pixel)', 'google-pixel-2p468iqa', 'category_yopp9lkezrsvcnal5ref.jpg', 73, '2025-06-27 13:21:20', '2025-06-28 05:12:59'),
(83, 3, 'Huawei', 'huawei-rhc5eju', 'category_6xyvrzcnfz7vbjm2jint.jpg', 73, '2025-06-27 13:21:44', '2025-06-28 05:13:06'),
(84, 3, 'Sony (Xperia)', 'sony-xperia-nfkqax0s', 'category_jlwvydefckrsrukky9cl.png', 73, '2025-06-27 13:21:59', '2025-06-28 05:13:16'),
(85, 3, 'Nokia (HMD Global)', 'nokia-hmd-global-g4w2pl8', 'category_askmnefjpywkhyu0qc9p.png', 73, '2025-06-27 13:22:14', '2025-06-28 05:13:23'),
(86, 3, 'Lenovo', 'lenovo-3s422kne', 'category_xoxjqpsj5mnripjdpln0.png', 73, '2025-06-27 13:23:08', '2025-06-28 05:13:31'),
(87, 3, 'Asus (ROG, Zenfone)', 'asus-rog-zenfone-aneltpwl', 'category_cncmtih75uhcosekkqhq.png', 73, '2025-06-27 13:23:35', '2025-06-28 05:13:39'),
(88, 3, 'Infinix', 'infinix-liaalx6', 'category_kl2xgcejf8vszhj3uyp6.jpg', 73, '2025-06-27 13:23:47', '2025-06-28 05:13:47'),
(89, 3, 'Tecno', 'tecno-rupbpt7', 'category_ehfmkkd0cvwtluhalnyk.png', 73, '2025-06-27 13:24:10', '2025-06-28 05:13:54'),
(90, 3, 'iTel', 'itel-vfcw5yp8', 'category_oxkq8ffowv7nonwrtowb.png', 73, '2025-06-27 13:24:27', '2025-06-28 05:14:06'),
(91, 3, 'Honor', 'honor-bkm3eag', 'category_xkduj6b2tuxfcbrzqye6.jpg', 73, '2025-06-27 13:24:41', '2025-06-28 05:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `short_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `light_logo` varchar(191) DEFAULT NULL,
  `dark_logo` varchar(191) DEFAULT NULL,
  `small_dark_logo` varchar(191) DEFAULT NULL,
  `small_light_logo` varchar(191) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `app_layout` varchar(10) NOT NULL DEFAULT 'sidebar',
  `rtl` tinyint(1) NOT NULL DEFAULT 0,
  `mysqldump_command` varchar(191) NOT NULL DEFAULT '/usr/bin/mysqldump',
  `shortcut_menus` varchar(20) NOT NULL DEFAULT 'top_bottom',
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `website_lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `left_sidebar_theme` varchar(20) NOT NULL DEFAULT 'dark',
  `primary_color` varchar(20) NOT NULL DEFAULT '#1890ff',
  `date_format` varchar(20) NOT NULL DEFAULT 'DD-MM-YYYY',
  `time_format` varchar(20) NOT NULL DEFAULT 'hh:mm a',
  `auto_detect_timezone` tinyint(1) NOT NULL DEFAULT 1,
  `timezone` varchar(191) NOT NULL DEFAULT 'Asia/Kolkata',
  `session_driver` varchar(20) NOT NULL DEFAULT 'file',
  `app_debug` tinyint(1) NOT NULL DEFAULT 0,
  `update_app_notification` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login_image` varchar(191) DEFAULT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `pm_type` varchar(191) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `subscription_plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `package_type` enum('monthly','annual') NOT NULL DEFAULT 'monthly',
  `licence_expire_on` date DEFAULT NULL,
  `payment_transcation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `total_users` int(11) NOT NULL DEFAULT 1,
  `email_verification_code` varchar(191) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `white_label_completed` tinyint(1) NOT NULL DEFAULT 0,
  `clock_in_time` time DEFAULT '09:30:00',
  `clock_out_time` time DEFAULT '18:00:00',
  `leave_start_month` varchar(2) NOT NULL DEFAULT '01',
  `late_mark_after` int(11) DEFAULT NULL,
  `early_clock_in_time` int(11) DEFAULT NULL,
  `allow_clock_out_till` int(11) DEFAULT NULL,
  `self_clocking` tinyint(1) NOT NULL DEFAULT 1,
  `allowed_ip_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `short_name`, `email`, `phone`, `website`, `light_logo`, `dark_logo`, `small_dark_logo`, `small_light_logo`, `address`, `app_layout`, `rtl`, `mysqldump_command`, `shortcut_menus`, `currency_id`, `lang_id`, `website_lang_id`, `warehouse_id`, `left_sidebar_theme`, `primary_color`, `date_format`, `time_format`, `auto_detect_timezone`, `timezone`, `session_driver`, `app_debug`, `update_app_notification`, `created_at`, `updated_at`, `login_image`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `subscription_plan_id`, `package_type`, `licence_expire_on`, `payment_transcation_id`, `is_global`, `admin_id`, `status`, `total_users`, `email_verification_code`, `verified`, `white_label_completed`, `clock_in_time`, `clock_out_time`, `leave_start_month`, `late_mark_after`, `early_clock_in_time`, `allow_clock_out_till`, `self_clocking`, `allowed_ip_address`) VALUES
(1, 'ERP - FLY CDI', 'ERP - FLY CDI', 'superadmin@flycdi.ae', '+447985291414', NULL, 'company_m1inbcj2jutgifuyqz3e.png', 'company_axcxkf2wkphoitne4yxz.png', 'company_ilab4hzjvjfrqvu2lg0w.png', 'company_mcejjrxrfr5em7q1zg6d.png', '7 street, city, state, 762782', 'sidebar', 0, '/usr/bin/mysqldump', 'top_bottom', 1, 1, NULL, NULL, 'dark', '#d81b43', 'DD-MM-YYYY', 'hh:mm a', 1, 'Asia/Dubai', 'file', 0, 1, '2025-03-19 03:06:21', '2025-03-19 03:34:53', 'company_rxlhpsrocple0d7f2rlu.png', NULL, NULL, NULL, NULL, NULL, 'monthly', NULL, NULL, 1, 1, 'active', 1, NULL, 1, 1, '09:30:00', '18:00:00', '01', NULL, NULL, NULL, 1, NULL),
(3, 'FLYCDI', 'FLYCDI', 'manager@flycdi.ae', '0547647186', NULL, 'company_1w8k44i5r1bf0bcjnrax.png', 'company_lr7jaukdbnyc9ccvszaa.png', 'company_efm1w96ararirxgaoqtb.png', 'company_tcz2ymm9jccoexhiqrlc.png', 'Osha 2, Retail 01, Ithra Street \nDeira Enrichment Project Corniche Deira, \n65565, Dubai UAE', 'sidebar', 0, '/usr/bin/mysqldump', 'top_bottom', 3, NULL, NULL, 4, 'dark', '#d81b43', 'DD-MM-YYYY', 'hh:mm a', 0, 'Asia/Dubai', 'file', 0, 1, '2025-06-01 09:02:37', '2025-07-02 04:35:17', NULL, NULL, NULL, NULL, NULL, 3, 'annual', '2026-05-31', 2, 0, 9, 'active', 2, 'OfviqsS4X4zM3Pg7h2HW0LWKUjQOQv202ZpBb17roypX5LeBbQ', 0, 0, '09:30:00', '18:00:00', '01', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `symbol` varchar(191) NOT NULL,
  `position` varchar(191) NOT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `company_id`, `name`, `code`, `symbol`, `position`, `is_deletable`, `created_at`, `updated_at`) VALUES
(1, 1, 'AED', 'AED', 'AED', 'front', 1, '2025-03-19 03:32:02', '2025-03-19 03:32:02'),
(3, 3, 'AED', 'AED', 'AED', 'behind', 1, '2025-06-01 09:07:45', '2025-06-01 09:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'text',
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_queries`
--

CREATE TABLE `email_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_time` datetime NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `replied` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bill` varchar(191) DEFAULT NULL,
  `expense_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `company_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(2, 3, 'RENT', NULL, '2025-07-02 04:37:36', '2025-07-02 04:37:36'),
(3, 3, 'visa expence', NULL, '2025-07-25 11:08:16', '2025-07-25 11:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_product_cards`
--

CREATE TABLE `front_product_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `subtitle` varchar(191) DEFAULT NULL,
  `products` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_website_settings`
--

CREATE TABLE `front_website_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `featured_categories` text NOT NULL,
  `featured_categories_title` varchar(191) DEFAULT 'Featured Categories',
  `featured_categories_subtitle` varchar(191) DEFAULT '',
  `featured_products` text NOT NULL,
  `featured_products_title` varchar(191) DEFAULT 'Featured Products',
  `featured_products_subtitle` varchar(191) DEFAULT '',
  `features_lists` text NOT NULL,
  `facebook_url` varchar(191) DEFAULT '',
  `twitter_url` varchar(191) DEFAULT '',
  `instagram_url` varchar(191) DEFAULT '',
  `linkedin_url` varchar(191) DEFAULT '',
  `youtube_url` varchar(191) DEFAULT '',
  `pages_widget` text NOT NULL,
  `contact_info_widget` text NOT NULL,
  `links_widget` text NOT NULL,
  `footer_company_description` varchar(1000) NOT NULL DEFAULT 'Stockify have many propular products wiht high discount and special offers.',
  `footer_copyright_text` varchar(1000) NOT NULL DEFAULT 'Copyright 2021 @ Stockify, All rights reserved.',
  `top_banners` text NOT NULL,
  `bottom_banners_1` text NOT NULL,
  `bottom_banners_2` text NOT NULL,
  `bottom_banners_3` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_website_settings`
--

INSERT INTO `front_website_settings` (`id`, `company_id`, `warehouse_id`, `featured_categories`, `featured_categories_title`, `featured_categories_subtitle`, `featured_products`, `featured_products_title`, `featured_products_subtitle`, `features_lists`, `facebook_url`, `twitter_url`, `instagram_url`, `linkedin_url`, `youtube_url`, `pages_widget`, `contact_info_widget`, `links_widget`, `footer_company_description`, `footer_copyright_text`, `top_banners`, `bottom_banners_1`, `bottom_banners_2`, `bottom_banners_3`, `created_at`, `updated_at`) VALUES
(7, 3, 4, '[]', 'Featured Categories', '', '[]', 'Featured Products', '', '[]', '', '', '', '', '', '[]', '[]', '[]', 'FLYCDI - Deira Showroom have many propular products wiht high discount and special offers.', 'Copyright 2025 @ FLYCDI - Deira Showroom, All rights reserved.', '[]', '[]', '[]', '[]', '2025-06-01 09:07:07', '2025-06-01 09:07:07'),
(8, 3, 4, '[]', 'Featured Categories', '', '[]', 'Featured Products', '', '[]', '', '', '', '', '', '[]', '[]', '[]', 'Stockify have many propular products wiht high discount and special offers.', 'Copyright 2021 @ Stockify, All rights reserved.', '[]', '[]', '[]', '[]', '2025-06-01 09:07:07', '2025-06-01 09:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `date` date NOT NULL,
  `is_weekend` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `increments_promotions`
--

CREATE TABLE `increments_promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'promotion',
  `date` date NOT NULL,
  `description` text NOT NULL,
  `net_salary` int(11) DEFAULT NULL,
  `promoted_designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `current_designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"16eee384-876c-45e0-bf1c-a8e6ff8081e5\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:16:\\\"purchases_create\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:9:\\\"Warehouse\\\";s:4:\\\"slug\\\";s:17:\\\"warehouse-62zy0sv\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:9:\\\"Warehouse\\\";s:4:\\\"slug\\\";s:17:\\\"warehouse-62zy0sv\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:4:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":36:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:26:{s:14:\\\"invoice_number\\\";s:5:\\\"PUR-2\\\";s:10:\\\"order_date\\\";s:19:\\\"2025-05-25 11:19:54\\\";s:7:\\\"user_id\\\";i:4;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:5:\\\"notes\\\";N;s:12:\\\"order_status\\\";s:7:\\\"ordered\\\";s:6:\\\"tax_id\\\";i:1;s:8:\\\"tax_rate\\\";i:5;s:10:\\\"tax_amount\\\";i:525;s:8:\\\"discount\\\";i:0;s:8:\\\"shipping\\\";i:0;s:8:\\\"subtotal\\\";d:10500;s:5:\\\"total\\\";i:11025;s:11:\\\"total_items\\\";i:1;s:9:\\\"unique_id\\\";s:20:\\\"c0Q0hFy10rZ8OtDwUIn2\\\";s:10:\\\"order_type\\\";s:9:\\\"purchases\\\";s:12:\\\"warehouse_id\\\";i:1;s:17:\\\"from_warehouse_id\\\";N;s:10:\\\"company_id\\\";i:2;s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:25:01\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-05-25 11:25:01\\\";s:2:\\\"id\\\";i:2;s:13:\\\"staff_user_id\\\";i:3;s:14:\\\"total_quantity\\\";d:100;s:10:\\\"due_amount\\\";d:10500;s:12:\\\"is_deletable\\\";b:1;}s:11:\\\"\\u0000*\\u0000original\\\";a:26:{s:14:\\\"invoice_number\\\";s:5:\\\"PUR-2\\\";s:10:\\\"order_date\\\";s:19:\\\"2025-05-25 11:19:54\\\";s:7:\\\"user_id\\\";i:4;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:5:\\\"notes\\\";N;s:12:\\\"order_status\\\";s:7:\\\"ordered\\\";s:6:\\\"tax_id\\\";i:1;s:8:\\\"tax_rate\\\";i:5;s:10:\\\"tax_amount\\\";i:525;s:8:\\\"discount\\\";i:0;s:8:\\\"shipping\\\";i:0;s:8:\\\"subtotal\\\";d:10500;s:5:\\\"total\\\";i:11025;s:11:\\\"total_items\\\";i:1;s:9:\\\"unique_id\\\";s:20:\\\"c0Q0hFy10rZ8OtDwUIn2\\\";s:10:\\\"order_type\\\";s:9:\\\"purchases\\\";s:12:\\\"warehouse_id\\\";i:1;s:17:\\\"from_warehouse_id\\\";N;s:10:\\\"company_id\\\";i:2;s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:25:01\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-05-25 11:25:01\\\";s:2:\\\"id\\\";i:2;s:13:\\\"staff_user_id\\\";i:3;s:14:\\\"total_quantity\\\";d:100;s:10:\\\"due_amount\\\";d:10500;s:12:\\\"is_deletable\\\";b:1;}s:10:\\\"\\u0000*\\u0000changes\\\";a:4:{s:8:\\\"subtotal\\\";d:10500;s:14:\\\"total_quantity\\\";d:100;s:10:\\\"due_amount\\\";d:10500;s:12:\\\"is_deletable\\\";b:1;}s:8:\\\"\\u0000*\\u0000casts\\\";a:17:{s:10:\\\"order_date\\\";s:8:\\\"datetime\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"user_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:6:\\\"tax_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"cancelled_by\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:9:\\\"cancelled\\\";s:7:\\\"integer\\\";s:12:\\\"is_deletable\\\";s:7:\\\"integer\\\";s:8:\\\"tax_rate\\\";s:6:\\\"double\\\";s:10:\\\"tax_amount\\\";s:6:\\\"double\\\";s:8:\\\"discount\\\";s:6:\\\"double\\\";s:8:\\\"shipping\\\";s:6:\\\"double\\\";s:8:\\\"subtotal\\\";s:6:\\\"double\\\";s:5:\\\"total\\\";s:6:\\\"double\\\";s:11:\\\"paid_amount\\\";s:6:\\\"double\\\";s:10:\\\"due_amount\\\";s:6:\\\"double\\\";s:11:\\\"total_items\\\";s:6:\\\"double\\\";s:14:\\\"total_quantity\\\";s:6:\\\"double\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:14:\\\"x_warehouse_id\\\";i:2;s:19:\\\"x_from_warehouse_id\\\";i:3;s:9:\\\"x_user_id\\\";i:4;s:8:\\\"x_tax_id\\\";i:5;s:15:\\\"x_staff_user_id\\\";i:6;s:14:\\\"x_cancelled_by\\\";i:7;s:12:\\\"document_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:5:\\\"items\\\";O:39:\\\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:20:\\\"App\\\\Models\\\\OrderItem\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:11:\\\"order_items\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:18:{s:2:\\\"id\\\";i:2;s:7:\\\"user_id\\\";i:4;s:8:\\\"order_id\\\";i:2;s:10:\\\"product_id\\\";i:8;s:7:\\\"unit_id\\\";i:1;s:8:\\\"quantity\\\";d:100;s:3:\\\"mrp\\\";N;s:10:\\\"unit_price\\\";d:100;s:17:\\\"single_unit_price\\\";d:100;s:6:\\\"tax_id\\\";i:1;s:8:\\\"tax_rate\\\";d:5;s:8:\\\"tax_type\\\";s:9:\\\"exclusive\\\";s:13:\\\"discount_rate\\\";d:0;s:9:\\\"total_tax\\\";d:500;s:14:\\\"total_discount\\\";d:0;s:8:\\\"subtotal\\\";d:10500;s:10:\\\"created_at\\\";s:19:\\\"2025-05-25 11:25:01\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:25:01\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:18:{s:2:\\\"id\\\";i:2;s:7:\\\"user_id\\\";i:4;s:8:\\\"order_id\\\";i:2;s:10:\\\"product_id\\\";i:8;s:7:\\\"unit_id\\\";i:1;s:8:\\\"quantity\\\";d:100;s:3:\\\"mrp\\\";N;s:10:\\\"unit_price\\\";d:100;s:17:\\\"single_unit_price\\\";d:100;s:6:\\\"tax_id\\\";i:1;s:8:\\\"tax_rate\\\";d:5;s:8:\\\"tax_type\\\";s:9:\\\"exclusive\\\";s:13:\\\"discount_rate\\\";d:0;s:9:\\\"total_tax\\\";d:500;s:14:\\\"total_discount\\\";d:0;s:8:\\\"subtotal\\\";d:10500;s:10:\\\"created_at\\\";s:19:\\\"2025-05-25 11:25:01\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:25:01\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:16:{s:7:\\\"user_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"order_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:10:\\\"product_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"unit_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:6:\\\"tax_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"quantity\\\";s:6:\\\"double\\\";s:3:\\\"mrp\\\";s:6:\\\"double\\\";s:10:\\\"unit_price\\\";s:6:\\\"double\\\";s:17:\\\"single_unit_price\\\";s:6:\\\"double\\\";s:8:\\\"tax_rate\\\";s:6:\\\"double\\\";s:13:\\\"discount_rate\\\";s:6:\\\"double\\\";s:9:\\\"total_tax\\\";s:6:\\\"double\\\";s:14:\\\"total_discount\\\";s:6:\\\"double\\\";s:8:\\\"subtotal\\\";s:6:\\\"double\\\";s:17:\\\"total_sales_price\\\";s:6:\\\"double\\\";s:9:\\\"unit_sold\\\";s:6:\\\"double\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:7:{i:0;s:3:\\\"xid\\\";i:1;s:10:\\\"x_order_id\\\";i:2;s:9:\\\"x_user_id\\\";i:3;s:10:\\\"x_order_id\\\";i:4;s:12:\\\"x_product_id\\\";i:5;s:9:\\\"x_unit_id\\\";i:6;s:8:\\\"x_tax_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:8:\\\"order_id\\\";i:2;s:7:\\\"user_id\\\";i:3;s:8:\\\"order_id\\\";i:4;s:10:\\\"product_id\\\";i:5;s:7:\\\"unit_id\\\";i:6;s:6:\\\"tax_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:3:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"created_at\\\";i:2;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:1:{i:0;s:3:\\\"xid\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:2:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"product_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:5:{s:19:\\\"getXUserIdAttribute\\\";s:7:\\\"user_id\\\";s:20:\\\"getXOrderIdAttribute\\\";s:8:\\\"order_id\\\";s:22:\\\"getXProductIdAttribute\\\";s:10:\\\"product_id\\\";s:19:\\\"getXUnitIdAttribute\\\";s:7:\\\"unit_id\\\";s:18:\\\"getXTaxIdAttribute\\\";s:6:\\\"tax_id\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:17:\\\"from_warehouse_id\\\";i:3;s:7:\\\"user_id\\\";i:4;s:6:\\\"tax_id\\\";i:5;s:13:\\\"staff_user_id\\\";i:6;s:12:\\\"cancelled_by\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:6:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:13:\\\"staff_user_id\\\";i:3;s:10:\\\"order_type\\\";i:4;s:10:\\\"created_at\\\";i:5;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:1:{i:0;s:3:\\\"xid\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:14:\\\"invoice_number\\\";i:2;s:14:\\\"payment_status\\\";i:3;s:12:\\\"order_status\\\";i:4;s:9:\\\"cancelled\\\";i:5;s:10:\\\"order_date\\\";i:6;s:7:\\\"user_id\\\";i:7;s:12:\\\"warehouse_id\\\";i:8;s:13:\\\"staff_user_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:19:{s:10:\\\"order_type\\\";s:9:\\\"purchases\\\";s:14:\\\"invoice_number\\\";N;s:10:\\\"order_date\\\";s:25:\\\"2025-05-25T11:19:54+00:00\\\";s:12:\\\"warehouse_id\\\";s:8:\\\"AdWNDqgV\\\";s:7:\\\"user_id\\\";s:8:\\\"Jlq1nbR6\\\";s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:5:\\\"notes\\\";N;s:12:\\\"order_status\\\";s:7:\\\"ordered\\\";s:6:\\\"tax_id\\\";s:8:\\\"AdWNDqgV\\\";s:8:\\\"tax_rate\\\";i:5;s:10:\\\"tax_amount\\\";i:525;s:8:\\\"discount\\\";i:0;s:8:\\\"shipping\\\";i:0;s:8:\\\"subtotal\\\";i:11025;s:5:\\\"total\\\";i:11025;s:11:\\\"total_items\\\";i:1;s:13:\\\"product_items\\\";a:1:{i:0;a:23:{s:7:\\\"item_id\\\";N;s:3:\\\"xid\\\";s:8:\\\"2krPNbR7\\\";s:4:\\\"name\\\";s:25:\\\"Iphone 12\\/Pro LCD - Black\\\";s:5:\\\"image\\\";s:32:\\\"product_cfcyjwkstnhw4iyncedu.jpg\\\";s:9:\\\"image_url\\\";s:70:\\\"http:\\/\\/erp.flycdi.ae\\/uploads\\/products\\/product_cfcyjwkstnhw4iyncedu.jpg\\\";s:13:\\\"discount_rate\\\";i:0;s:14:\\\"total_discount\\\";i:0;s:8:\\\"x_tax_id\\\";s:8:\\\"AdWNDqgV\\\";s:8:\\\"tax_type\\\";s:9:\\\"exclusive\\\";s:8:\\\"tax_rate\\\";i:5;s:9:\\\"total_tax\\\";i:500;s:9:\\\"x_unit_id\\\";s:8:\\\"AdWNDqgV\\\";s:4:\\\"unit\\\";a:10:{s:10:\\\"company_id\\\";i:2;s:4:\\\"name\\\";s:3:\\\"100\\\";s:10:\\\"short_name\\\";s:3:\\\"100\\\";s:9:\\\"base_unit\\\";N;s:8:\\\"operator\\\";s:8:\\\"multiply\\\";s:14:\\\"operator_value\\\";s:1:\\\"1\\\";s:12:\\\"is_deletable\\\";i:1;s:10:\\\"created_at\\\";s:25:\\\"2025-04-23T12:14:24+00:00\\\";s:10:\\\"updated_at\\\";s:25:\\\"2025-04-23T12:14:24+00:00\\\";s:3:\\\"xid\\\";s:8:\\\"AdWNDqgV\\\";}s:10:\\\"unit_price\\\";i:100;s:17:\\\"single_unit_price\\\";i:100;s:8:\\\"subtotal\\\";i:10500;s:8:\\\"quantity\\\";i:100;s:14:\\\"stock_quantity\\\";i:100;s:15:\\\"unit_short_name\\\";s:3:\\\"100\\\";s:12:\\\"product_type\\\";s:6:\\\"single\\\";s:2:\\\"sn\\\";i:1;s:10:\\\"tax_amount\\\";N;s:12:\\\"max_quantity\\\";i:100;}}s:10:\\\"pay_object\\\";a:1:{i:0;a:1:{s:10:\\\"pay_amount\\\";i:0;}}s:12:\\\"all_payments\\\";a:1:{i:0;a:2:{s:6:\\\"amount\\\";i:0;s:15:\\\"payment_mode_id\\\";s:8:\\\"AdWNDqgV\\\";}}}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:10:\\\"order_date\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:28:\\\"getXFromWarehouseIdAttribute\\\";s:17:\\\"from_warehouse_id\\\";s:19:\\\"getXUserIdAttribute\\\";s:7:\\\"user_id\\\";s:18:\\\"getXTaxIdAttribute\\\";s:6:\\\"tax_id\\\";s:24:\\\"getXStaffUserIdAttribute\\\";s:13:\\\"staff_user_id\\\";s:24:\\\"getXCancelledByAttribute\\\";s:12:\\\"cancelled_by\\\";}}s:12:\\\"staff_member\\\";O:22:\\\"App\\\\Models\\\\StaffMember\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:31:{s:2:\\\"id\\\";i:3;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:5:\\\"Admin\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$hMJKDi978MRbohTxLQo3E.U31.0WjGEtdNLMBl5YHHmtJqDFbhfSe\\\";s:5:\\\"phone\\\";N;s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"0cuayiEtkMBwtbXMMO9bWLUXMsbMB458oc9AJ5tdrcxh4gVH63\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:41:04\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:45:03\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:31:{s:2:\\\"id\\\";i:3;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:5:\\\"Admin\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$hMJKDi978MRbohTxLQo3E.U31.0WjGEtdNLMBl5YHHmtJqDFbhfSe\\\";s:5:\\\"phone\\\";N;s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"0cuayiEtkMBwtbXMMO9bWLUXMsbMB458oc9AJ5tdrcxh4gVH63\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:41:04\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:45:03\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:8:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:7:\\\"role_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:10:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_at\\\";i:9;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:6:{i:0;s:4:\\\"name\\\";i:1;s:9:\\\"user_type\\\";i:2;s:5:\\\"email\\\";i:3;s:6:\\\"status\\\";i:4;s:5:\\\"phone\\\";i:5;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"2eec6bf1-a78a-4af3-af68-c262d8d54594\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1748172301, 1748172301),
(2, 'default', '{\"uuid\":\"39082bdc-deb5-4f85-b02e-f546da68b47a\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:12:\\\"sales_delete\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:9:\\\"Warehouse\\\";s:4:\\\"slug\\\";s:17:\\\"warehouse-62zy0sv\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:9:\\\"Warehouse\\\";s:4:\\\"slug\\\";s:17:\\\"warehouse-62zy0sv\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:4:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":36:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:32:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:9:\\\"unique_id\\\";s:20:\\\"U2OK5gRByn907RcUHy3W\\\";s:14:\\\"invoice_number\\\";s:6:\\\"SALE-1\\\";s:12:\\\"invoice_type\\\";s:3:\\\"pos\\\";s:10:\\\"order_type\\\";s:5:\\\"sales\\\";s:10:\\\"order_date\\\";s:19:\\\"2025-04-23 12:22:01\\\";s:12:\\\"warehouse_id\\\";i:1;s:17:\\\"from_warehouse_id\\\";N;s:7:\\\"user_id\\\";i:2;s:6:\\\"tax_id\\\";i:1;s:8:\\\"tax_rate\\\";d:0;s:10:\\\"tax_amount\\\";d:0;s:8:\\\"discount\\\";d:0;s:8:\\\"shipping\\\";d:0;s:8:\\\"subtotal\\\";d:651;s:5:\\\"total\\\";d:651;s:11:\\\"paid_amount\\\";d:0;s:10:\\\"due_amount\\\";d:651;s:12:\\\"order_status\\\";s:9:\\\"delivered\\\";s:5:\\\"notes\\\";N;s:8:\\\"document\\\";N;s:13:\\\"staff_user_id\\\";i:3;s:14:\\\"payment_status\\\";s:6:\\\"unpaid\\\";s:11:\\\"total_items\\\";d:1;s:14:\\\"total_quantity\\\";d:1;s:15:\\\"terms_condition\\\";N;s:12:\\\"is_deletable\\\";i:1;s:9:\\\"cancelled\\\";i:0;s:12:\\\"cancelled_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-04-23 12:22:01\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-23 12:22:01\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:32:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:9:\\\"unique_id\\\";s:20:\\\"U2OK5gRByn907RcUHy3W\\\";s:14:\\\"invoice_number\\\";s:6:\\\"SALE-1\\\";s:12:\\\"invoice_type\\\";s:3:\\\"pos\\\";s:10:\\\"order_type\\\";s:5:\\\"sales\\\";s:10:\\\"order_date\\\";s:19:\\\"2025-04-23 12:22:01\\\";s:12:\\\"warehouse_id\\\";i:1;s:17:\\\"from_warehouse_id\\\";N;s:7:\\\"user_id\\\";i:2;s:6:\\\"tax_id\\\";i:1;s:8:\\\"tax_rate\\\";d:0;s:10:\\\"tax_amount\\\";d:0;s:8:\\\"discount\\\";d:0;s:8:\\\"shipping\\\";d:0;s:8:\\\"subtotal\\\";d:651;s:5:\\\"total\\\";d:651;s:11:\\\"paid_amount\\\";d:0;s:10:\\\"due_amount\\\";d:651;s:12:\\\"order_status\\\";s:9:\\\"delivered\\\";s:5:\\\"notes\\\";N;s:8:\\\"document\\\";N;s:13:\\\"staff_user_id\\\";i:3;s:14:\\\"payment_status\\\";s:6:\\\"unpaid\\\";s:11:\\\"total_items\\\";d:1;s:14:\\\"total_quantity\\\";d:1;s:15:\\\"terms_condition\\\";N;s:12:\\\"is_deletable\\\";i:1;s:9:\\\"cancelled\\\";i:0;s:12:\\\"cancelled_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-04-23 12:22:01\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-23 12:22:01\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:17:{s:10:\\\"order_date\\\";s:8:\\\"datetime\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"user_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:6:\\\"tax_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"cancelled_by\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:9:\\\"cancelled\\\";s:7:\\\"integer\\\";s:12:\\\"is_deletable\\\";s:7:\\\"integer\\\";s:8:\\\"tax_rate\\\";s:6:\\\"double\\\";s:10:\\\"tax_amount\\\";s:6:\\\"double\\\";s:8:\\\"discount\\\";s:6:\\\"double\\\";s:8:\\\"shipping\\\";s:6:\\\"double\\\";s:8:\\\"subtotal\\\";s:6:\\\"double\\\";s:5:\\\"total\\\";s:6:\\\"double\\\";s:11:\\\"paid_amount\\\";s:6:\\\"double\\\";s:10:\\\"due_amount\\\";s:6:\\\"double\\\";s:11:\\\"total_items\\\";s:6:\\\"double\\\";s:14:\\\"total_quantity\\\";s:6:\\\"double\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:14:\\\"x_warehouse_id\\\";i:2;s:19:\\\"x_from_warehouse_id\\\";i:3;s:9:\\\"x_user_id\\\";i:4;s:8:\\\"x_tax_id\\\";i:5;s:15:\\\"x_staff_user_id\\\";i:6;s:14:\\\"x_cancelled_by\\\";i:7;s:12:\\\"document_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:5:\\\"items\\\";O:39:\\\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:0:{}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:17:\\\"from_warehouse_id\\\";i:3;s:7:\\\"user_id\\\";i:4;s:6:\\\"tax_id\\\";i:5;s:13:\\\"staff_user_id\\\";i:6;s:12:\\\"cancelled_by\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:6:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:13:\\\"staff_user_id\\\";i:3;s:10:\\\"order_type\\\";i:4;s:10:\\\"created_at\\\";i:5;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:1:{i:0;s:3:\\\"xid\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:14:\\\"invoice_number\\\";i:2;s:14:\\\"payment_status\\\";i:3;s:12:\\\"order_status\\\";i:4;s:9:\\\"cancelled\\\";i:5;s:10:\\\"order_date\\\";i:6;s:7:\\\"user_id\\\";i:7;s:12:\\\"warehouse_id\\\";i:8;s:13:\\\"staff_user_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:10:\\\"order_date\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:28:\\\"getXFromWarehouseIdAttribute\\\";s:17:\\\"from_warehouse_id\\\";s:19:\\\"getXUserIdAttribute\\\";s:7:\\\"user_id\\\";s:18:\\\"getXTaxIdAttribute\\\";s:6:\\\"tax_id\\\";s:24:\\\"getXStaffUserIdAttribute\\\";s:13:\\\"staff_user_id\\\";s:24:\\\"getXCancelledByAttribute\\\";s:12:\\\"cancelled_by\\\";}}s:12:\\\"staff_member\\\";O:22:\\\"App\\\\Models\\\\StaffMember\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:31:{s:2:\\\"id\\\";i:3;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:5:\\\"Admin\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$hMJKDi978MRbohTxLQo3E.U31.0WjGEtdNLMBl5YHHmtJqDFbhfSe\\\";s:5:\\\"phone\\\";N;s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"0cuayiEtkMBwtbXMMO9bWLUXMsbMB458oc9AJ5tdrcxh4gVH63\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:41:04\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:45:03\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:31:{s:2:\\\"id\\\";i:3;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:5:\\\"Admin\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$hMJKDi978MRbohTxLQo3E.U31.0WjGEtdNLMBl5YHHmtJqDFbhfSe\\\";s:5:\\\"phone\\\";N;s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"0cuayiEtkMBwtbXMMO9bWLUXMsbMB458oc9AJ5tdrcxh4gVH63\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:41:04\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:45:03\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:8:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:7:\\\"role_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:10:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_at\\\";i:9;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:6:{i:0;s:4:\\\"name\\\";i:1;s:9:\\\"user_type\\\";i:2;s:5:\\\"email\\\";i:3;s:6:\\\"status\\\";i:4;s:5:\\\"phone\\\";i:5;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"7e22af69-ebad-4542-9c71-9c5915574c34\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1748172740, 1748172740);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(3, 'default', '{\"uuid\":\"db8836f2-e3d4-4f7c-8af7-bb1ffec89e0a\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:23:\\\"stock_adjustment_create\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:5:{s:2:\\\"to\\\";r:12;s:7:\\\"product\\\";O:18:\\\"App\\\\Models\\\\Product\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"products\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:18:{s:2:\\\"id\\\";i:8;s:10:\\\"company_id\\\";i:2;s:12:\\\"warehouse_id\\\";i:1;s:12:\\\"product_type\\\";s:6:\\\"single\\\";s:9:\\\"parent_id\\\";i:7;s:16:\\\"parent_item_code\\\";s:9:\\\"251814033\\\";s:4:\\\"name\\\";s:25:\\\"Iphone 12\\/Pro LCD - Black\\\";s:4:\\\"slug\\\";s:22:\\\"iphone-12pro-lcd-black\\\";s:17:\\\"barcode_symbology\\\";s:7:\\\"CODE128\\\";s:9:\\\"item_code\\\";s:10:\\\"5818642613\\\";s:5:\\\"image\\\";s:32:\\\"product_cfcyjwkstnhw4iyncedu.jpg\\\";s:11:\\\"category_id\\\";i:1;s:8:\\\"brand_id\\\";i:1;s:7:\\\"unit_id\\\";i:1;s:11:\\\"description\\\";N;s:7:\\\"user_id\\\";i:3;s:10:\\\"created_at\\\";s:19:\\\"2025-05-25 11:18:26\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:18:26\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:18:{s:2:\\\"id\\\";i:8;s:10:\\\"company_id\\\";i:2;s:12:\\\"warehouse_id\\\";i:1;s:12:\\\"product_type\\\";s:6:\\\"single\\\";s:9:\\\"parent_id\\\";i:7;s:16:\\\"parent_item_code\\\";s:9:\\\"251814033\\\";s:4:\\\"name\\\";s:25:\\\"Iphone 12\\/Pro LCD - Black\\\";s:4:\\\"slug\\\";s:22:\\\"iphone-12pro-lcd-black\\\";s:17:\\\"barcode_symbology\\\";s:7:\\\"CODE128\\\";s:9:\\\"item_code\\\";s:10:\\\"5818642613\\\";s:5:\\\"image\\\";s:32:\\\"product_cfcyjwkstnhw4iyncedu.jpg\\\";s:11:\\\"category_id\\\";i:1;s:8:\\\"brand_id\\\";i:1;s:7:\\\"unit_id\\\";i:1;s:11:\\\"description\\\";N;s:7:\\\"user_id\\\";i:3;s:10:\\\"created_at\\\";s:19:\\\"2025-05-25 11:18:26\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:18:26\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:8:{s:11:\\\"category_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"brand_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"unit_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"user_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:10:\\\"variant_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:16:\\\"variant_value_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:9:\\\"parent_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:13:\\\"x_category_id\\\";i:2;s:10:\\\"x_brand_id\\\";i:3;s:9:\\\"x_unit_id\\\";i:4;s:9:\\\"x_user_id\\\";i:5;s:14:\\\"x_warehouse_id\\\";i:6;s:12:\\\"x_variant_id\\\";i:7;s:18:\\\"x_variant_value_id\\\";i:8;s:11:\\\"x_parent_id\\\";i:9;s:9:\\\"image_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:11:\\\"category_id\\\";i:2;s:8:\\\"brand_id\\\";i:3;s:7:\\\"unit_id\\\";i:4;s:7:\\\"user_id\\\";i:5;s:12:\\\"warehouse_id\\\";i:6;s:10:\\\"variant_id\\\";i:7;s:16:\\\"variant_value_id\\\";i:8;s:9:\\\"parent_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:7:\\\"user_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:1:{i:0;s:3:\\\"xid\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:11:\\\"products.id\\\";i:2;s:13:\\\"products.name\\\";i:3;s:4:\\\"name\\\";i:4;s:9:\\\"item_code\\\";i:5;s:11:\\\"category_id\\\";i:6;s:8:\\\"brand_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:8:{s:23:\\\"getXCategoryIdAttribute\\\";s:11:\\\"category_id\\\";s:20:\\\"getXBrandIdAttribute\\\";s:8:\\\"brand_id\\\";s:19:\\\"getXUnitIdAttribute\\\";s:7:\\\"unit_id\\\";s:19:\\\"getXUserIdAttribute\\\";s:7:\\\"user_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:22:\\\"getXVariantIdAttribute\\\";s:10:\\\"variant_id\\\";s:27:\\\"getXVariantValueIdAttribute\\\";s:16:\\\"variant_value_id\\\";s:21:\\\"getXParentIdAttribute\\\";s:9:\\\"parent_id\\\";}}s:9:\\\"warehouse\\\";r:12;s:16:\\\"stock_adjustment\\\";O:26:\\\"App\\\\Models\\\\StockAdjustment\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:17:\\\"stock_adjustments\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:10:{s:10:\\\"product_id\\\";i:8;s:8:\\\"quantity\\\";i:1;s:5:\\\"notes\\\";N;s:15:\\\"adjustment_type\\\";s:3:\\\"add\\\";s:10:\\\"created_by\\\";i:3;s:12:\\\"warehouse_id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 14:23:51\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-05-25 14:23:51\\\";s:2:\\\"id\\\";i:1;}s:11:\\\"\\u0000*\\u0000original\\\";a:10:{s:10:\\\"product_id\\\";i:8;s:8:\\\"quantity\\\";i:1;s:5:\\\"notes\\\";N;s:15:\\\"adjustment_type\\\";s:3:\\\"add\\\";s:10:\\\"created_by\\\";i:3;s:12:\\\"warehouse_id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 14:23:51\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-05-25 14:23:51\\\";s:2:\\\"id\\\";i:1;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:10:\\\"product_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:10:\\\"created_by\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"quantity\\\";s:6:\\\"double\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:4:{i:0;s:3:\\\"xid\\\";i:1;s:14:\\\"x_warehouse_id\\\";i:2;s:12:\\\"x_product_id\\\";i:3;s:12:\\\"x_created_by\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:4:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"product_id\\\";i:3;s:10:\\\"created_by\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"created_by\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:1:{i:0;s:3:\\\"xid\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:2:{i:0;s:12:\\\"warehouse_id\\\";i:1;s:10:\\\"product_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:4:{s:10:\\\"product_id\\\";s:8:\\\"2krPNbR7\\\";s:8:\\\"quantity\\\";i:1;s:5:\\\"notes\\\";N;s:15:\\\"adjustment_type\\\";s:3:\\\"add\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:3:{s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:22:\\\"getXProductIdAttribute\\\";s:10:\\\"product_id\\\";s:22:\\\"getXCreatedByAttribute\\\";s:10:\\\"created_by\\\";}}s:12:\\\"staff_member\\\";O:22:\\\"App\\\\Models\\\\StaffMember\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:31:{s:2:\\\"id\\\";i:3;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:5:\\\"Admin\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$hMJKDi978MRbohTxLQo3E.U31.0WjGEtdNLMBl5YHHmtJqDFbhfSe\\\";s:5:\\\"phone\\\";N;s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"0cuayiEtkMBwtbXMMO9bWLUXMsbMB458oc9AJ5tdrcxh4gVH63\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:41:04\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:45:03\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:31:{s:2:\\\"id\\\";i:3;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:5:\\\"Admin\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$hMJKDi978MRbohTxLQo3E.U31.0WjGEtdNLMBl5YHHmtJqDFbhfSe\\\";s:5:\\\"phone\\\";N;s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"0cuayiEtkMBwtbXMMO9bWLUXMsbMB458oc9AJ5tdrcxh4gVH63\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:41:04\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:45:03\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:8:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:7:\\\"role_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:10:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_at\\\";i:9;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:6:{i:0;s:4:\\\"name\\\";i:1;s:9:\\\"user_type\\\";i:2;s:5:\\\"email\\\";i:3;s:6:\\\"status\\\";i:4;s:5:\\\"phone\\\";i:5;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"82a4b977-2f45-4650-b924-1e62282e890c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1748183031, 1748183031),
(4, 'default', '{\"uuid\":\"1969242a-acd9-4e68-93bc-84bd52038f25\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:14:\\\"expense_create\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:4:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:7:\\\"expense\\\";O:18:\\\"App\\\\Models\\\\Expense\\\":36:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"expenses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:11:{s:19:\\\"expense_category_id\\\";i:1;s:6:\\\"amount\\\";i:120;s:4:\\\"bill\\\";N;s:4:\\\"date\\\";s:19:\\\"2025-05-27 07:40:42\\\";s:7:\\\"user_id\\\";i:3;s:5:\\\"notes\\\";N;s:12:\\\"warehouse_id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:10:\\\"updated_at\\\";s:19:\\\"2025-05-27 07:39:52\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-05-27 07:39:52\\\";s:2:\\\"id\\\";i:1;}s:11:\\\"\\u0000*\\u0000original\\\";a:11:{s:19:\\\"expense_category_id\\\";i:1;s:6:\\\"amount\\\";i:120;s:4:\\\"bill\\\";N;s:4:\\\"date\\\";s:19:\\\"2025-05-27 07:40:42\\\";s:7:\\\"user_id\\\";i:3;s:5:\\\"notes\\\";N;s:12:\\\"warehouse_id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:10:\\\"updated_at\\\";s:19:\\\"2025-05-27 07:39:52\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-05-27 07:39:52\\\";s:2:\\\"id\\\";i:1;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:5:{s:4:\\\"date\\\";s:8:\\\"datetime\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"user_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:19:\\\"expense_category_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:6:\\\"amount\\\";s:6:\\\"double\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:14:\\\"x_warehouse_id\\\";i:2;s:9:\\\"x_user_id\\\";i:3;s:21:\\\"x_expense_category_id\\\";i:4;s:8:\\\"bill_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:4:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:7:\\\"user_id\\\";i:3;s:19:\\\"expense_category_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:4:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"created_at\\\";i:3;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:1:{i:0;s:3:\\\"xid\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:3:{i:0;s:12:\\\"warehouse_id\\\";i:1;s:19:\\\"expense_category_id\\\";i:2;s:7:\\\"user_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:7:{s:19:\\\"expense_category_id\\\";s:8:\\\"AdWNDqgV\\\";s:6:\\\"amount\\\";i:120;s:4:\\\"bill\\\";N;s:8:\\\"bill_url\\\";N;s:4:\\\"date\\\";s:25:\\\"2025-05-27T07:40:42+00:00\\\";s:7:\\\"user_id\\\";s:8:\\\"7ZWDkbpO\\\";s:5:\\\"notes\\\";N;}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:4:\\\"date\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:3:{s:19:\\\"getXUserIdAttribute\\\";s:7:\\\"user_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:30:\\\"getXExpenseCategoryIdAttribute\\\";s:19:\\\"expense_category_id\\\";}}s:12:\\\"staff_member\\\";O:22:\\\"App\\\\Models\\\\StaffMember\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:31:{s:2:\\\"id\\\";i:3;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:5:\\\"Admin\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$hMJKDi978MRbohTxLQo3E.U31.0WjGEtdNLMBl5YHHmtJqDFbhfSe\\\";s:5:\\\"phone\\\";N;s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"0cuayiEtkMBwtbXMMO9bWLUXMsbMB458oc9AJ5tdrcxh4gVH63\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:41:04\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:45:03\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:31:{s:2:\\\"id\\\";i:3;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:5:\\\"Admin\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$hMJKDi978MRbohTxLQo3E.U31.0WjGEtdNLMBl5YHHmtJqDFbhfSe\\\";s:5:\\\"phone\\\";N;s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"0cuayiEtkMBwtbXMMO9bWLUXMsbMB458oc9AJ5tdrcxh4gVH63\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:41:04\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 08:45:03\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:8:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:7:\\\"role_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:10:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_at\\\";i:9;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:6:{i:0;s:4:\\\"name\\\";i:1;s:9:\\\"user_type\\\";i:2;s:5:\\\"email\\\";i:3;s:6:\\\"status\\\";i:4;s:5:\\\"phone\\\";i:5;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"abe0e667-3396-4b0d-88ee-9d6f594299e7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1748331592, 1748331592);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(5, 'default', '{\"uuid\":\"fd1afbf2-576e-4ca6-9ff4-a4f63bf7e0a1\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:19:\\\"staff_member_create\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:3:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:12:\\\"staff_member\\\";O:15:\\\"App\\\\Models\\\\User\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:18:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:4:\\\"name\\\";s:4:\\\"TEST\\\";s:5:\\\"email\\\";s:13:\\\"123@GMAIL.COM\\\";s:13:\\\"profile_image\\\";N;s:5:\\\"phone\\\";s:9:\\\"123456789\\\";s:7:\\\"address\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";i:1;s:8:\\\"password\\\";s:60:\\\"$2y$10$0VOpRGDjOOQ1Fvx\\/QK8jQuscrKSm.o26Z\\/kAKI4nQh7V.A.R73x6K\\\";s:12:\\\"warehouse_id\\\";i:1;s:10:\\\"created_by\\\";i:3;s:7:\\\"lang_id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:10:\\\"updated_at\\\";s:19:\\\"2025-05-27 07:41:01\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-05-27 07:41:01\\\";s:2:\\\"id\\\";i:6;}s:11:\\\"\\u0000*\\u0000original\\\";a:18:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:4:\\\"name\\\";s:4:\\\"TEST\\\";s:5:\\\"email\\\";s:13:\\\"123@GMAIL.COM\\\";s:13:\\\"profile_image\\\";N;s:5:\\\"phone\\\";s:9:\\\"123456789\\\";s:7:\\\"address\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";i:1;s:8:\\\"password\\\";s:60:\\\"$2y$10$0VOpRGDjOOQ1Fvx\\/QK8jQuscrKSm.o26Z\\/kAKI4nQh7V.A.R73x6K\\\";s:12:\\\"warehouse_id\\\";i:1;s:10:\\\"created_by\\\";i:3;s:7:\\\"lang_id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:10:\\\"updated_at\\\";s:19:\\\"2025-05-27 07:41:01\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-05-27 07:41:01\\\";s:2:\\\"id\\\";i:6;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:10:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:18:\\\"is_walkin_customer\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:7:\\\"role_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:13:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_by\\\";i:9;s:18:\\\"is_walkin_customer\\\";i:10;s:10:\\\"created_at\\\";i:11;s:10:\\\"updated_at\\\";i:12;s:10:\\\"warehouses\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:10:\\\"users.name\\\";i:1;s:4:\\\"name\\\";i:2;s:9:\\\"user_type\\\";i:3;s:5:\\\"email\\\";i:4;s:6:\\\"status\\\";i:5;s:5:\\\"phone\\\";i:6;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:18:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:12:\\\"warehouse_id\\\";s:8:\\\"AdWNDqgV\\\";s:10:\\\"warehouses\\\";a:1:{i:0;s:8:\\\"AdWNDqgV\\\";}s:4:\\\"name\\\";s:4:\\\"TEST\\\";s:5:\\\"email\\\";s:13:\\\"123@GMAIL.COM\\\";s:13:\\\"profile_image\\\";N;s:17:\\\"profile_image_url\\\";N;s:5:\\\"phone\\\";s:9:\\\"123456789\\\";s:7:\\\"address\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:15:\\\"opening_balance\\\";N;s:20:\\\"opening_balance_type\\\";s:7:\\\"receive\\\";s:13:\\\"credit_period\\\";s:2:\\\"30\\\";s:12:\\\"credit_limit\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";s:8:\\\"AdWNDqgV\\\";s:8:\\\"password\\\";s:8:\\\"12345678\\\";}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"4f75b94a-054d-4f66-9e75-752974da5a0b\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1748331661, 1748331661),
(6, 'default', '{\"uuid\":\"734145f6-3079-424f-b4c7-b55810cf6b76\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:19:\\\"staff_member_create\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:3:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:12:\\\"staff_member\\\";O:15:\\\"App\\\\Models\\\\User\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:18:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:4:\\\"name\\\";s:4:\\\"TEST\\\";s:5:\\\"email\\\";s:16:\\\"123456@GMAIL.COM\\\";s:13:\\\"profile_image\\\";N;s:5:\\\"phone\\\";s:10:\\\"1234567890\\\";s:7:\\\"address\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";i:1;s:8:\\\"password\\\";s:60:\\\"$2y$10$i3Q4tcKLxzeOeu0anp5YguMJVMKkhyO289VE53PxztzIfEmT4kqBm\\\";s:12:\\\"warehouse_id\\\";i:1;s:10:\\\"created_by\\\";i:3;s:7:\\\"lang_id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:10:\\\"updated_at\\\";s:19:\\\"2025-05-27 07:42:13\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-05-27 07:42:13\\\";s:2:\\\"id\\\";i:7;}s:11:\\\"\\u0000*\\u0000original\\\";a:18:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:4:\\\"name\\\";s:4:\\\"TEST\\\";s:5:\\\"email\\\";s:16:\\\"123456@GMAIL.COM\\\";s:13:\\\"profile_image\\\";N;s:5:\\\"phone\\\";s:10:\\\"1234567890\\\";s:7:\\\"address\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";i:1;s:8:\\\"password\\\";s:60:\\\"$2y$10$i3Q4tcKLxzeOeu0anp5YguMJVMKkhyO289VE53PxztzIfEmT4kqBm\\\";s:12:\\\"warehouse_id\\\";i:1;s:10:\\\"created_by\\\";i:3;s:7:\\\"lang_id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:10:\\\"updated_at\\\";s:19:\\\"2025-05-27 07:42:13\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-05-27 07:42:13\\\";s:2:\\\"id\\\";i:7;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:10:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:18:\\\"is_walkin_customer\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:7:\\\"role_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:13:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_by\\\";i:9;s:18:\\\"is_walkin_customer\\\";i:10;s:10:\\\"created_at\\\";i:11;s:10:\\\"updated_at\\\";i:12;s:10:\\\"warehouses\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:10:\\\"users.name\\\";i:1;s:4:\\\"name\\\";i:2;s:9:\\\"user_type\\\";i:3;s:5:\\\"email\\\";i:4;s:6:\\\"status\\\";i:5;s:5:\\\"phone\\\";i:6;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:18:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:12:\\\"warehouse_id\\\";s:8:\\\"AdWNDqgV\\\";s:10:\\\"warehouses\\\";a:1:{i:0;s:8:\\\"AdWNDqgV\\\";}s:4:\\\"name\\\";s:4:\\\"TEST\\\";s:5:\\\"email\\\";s:16:\\\"123456@GMAIL.COM\\\";s:13:\\\"profile_image\\\";N;s:17:\\\"profile_image_url\\\";N;s:5:\\\"phone\\\";s:10:\\\"1234567890\\\";s:7:\\\"address\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:15:\\\"opening_balance\\\";N;s:20:\\\"opening_balance_type\\\";s:7:\\\"receive\\\";s:13:\\\"credit_period\\\";s:2:\\\"30\\\";s:12:\\\"credit_limit\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";s:8:\\\"AdWNDqgV\\\";s:8:\\\"password\\\";s:8:\\\"12345678\\\";}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"19fe86d8-0eea-465c-ae38-fedce0718434\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1748331733, 1748331733),
(7, 'default', '{\"uuid\":\"c16ef120-7d91-4833-9b2d-b2e768c570d7\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:19:\\\"staff_member_delete\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:3:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:12:\\\"staff_member\\\";O:15:\\\"App\\\\Models\\\\User\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:31:{s:2:\\\"id\\\";i:7;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";i:1;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:4:\\\"TEST\\\";s:5:\\\"email\\\";s:16:\\\"123456@GMAIL.COM\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$i3Q4tcKLxzeOeu0anp5YguMJVMKkhyO289VE53PxztzIfEmT4kqBm\\\";s:5:\\\"phone\\\";s:10:\\\"1234567890\\\";s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";i:3;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-05-27 07:42:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-27 07:42:13\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:31:{s:2:\\\"id\\\";i:7;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";i:1;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:4:\\\"TEST\\\";s:5:\\\"email\\\";s:16:\\\"123456@GMAIL.COM\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$i3Q4tcKLxzeOeu0anp5YguMJVMKkhyO289VE53PxztzIfEmT4kqBm\\\";s:5:\\\"phone\\\";s:10:\\\"1234567890\\\";s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";i:3;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-05-27 07:42:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-27 07:42:13\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:10:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:18:\\\"is_walkin_customer\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:7:\\\"role_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:13:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_by\\\";i:9;s:18:\\\"is_walkin_customer\\\";i:10;s:10:\\\"created_at\\\";i:11;s:10:\\\"updated_at\\\";i:12;s:10:\\\"warehouses\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:10:\\\"users.name\\\";i:1;s:4:\\\"name\\\";i:2;s:9:\\\"user_type\\\";i:3;s:5:\\\"email\\\";i:4;s:6:\\\"status\\\";i:5;s:5:\\\"phone\\\";i:6;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"ddfe666f-6938-44ca-b8dc-f204f6efd954\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1748785554, 1748785554);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(8, 'default', '{\"uuid\":\"6cec921b-6185-4325-8e52-9b46a071d007\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:19:\\\"staff_member_delete\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:3:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:12:\\\"staff_member\\\";O:15:\\\"App\\\\Models\\\\User\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:31:{s:2:\\\"id\\\";i:6;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";i:1;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:4:\\\"TEST\\\";s:5:\\\"email\\\";s:13:\\\"123@GMAIL.COM\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$0VOpRGDjOOQ1Fvx\\/QK8jQuscrKSm.o26Z\\/kAKI4nQh7V.A.R73x6K\\\";s:5:\\\"phone\\\";s:9:\\\"123456789\\\";s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";i:3;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-05-27 07:41:01\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-27 07:41:01\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:31:{s:2:\\\"id\\\";i:6;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";i:1;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:4:\\\"TEST\\\";s:5:\\\"email\\\";s:13:\\\"123@GMAIL.COM\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$0VOpRGDjOOQ1Fvx\\/QK8jQuscrKSm.o26Z\\/kAKI4nQh7V.A.R73x6K\\\";s:5:\\\"phone\\\";s:9:\\\"123456789\\\";s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";i:3;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-05-27 07:41:01\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-27 07:41:01\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:10:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:18:\\\"is_walkin_customer\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:7:\\\"role_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:13:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_by\\\";i:9;s:18:\\\"is_walkin_customer\\\";i:10;s:10:\\\"created_at\\\";i:11;s:10:\\\"updated_at\\\";i:12;s:10:\\\"warehouses\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:10:\\\"users.name\\\";i:1;s:4:\\\"name\\\";i:2;s:9:\\\"user_type\\\";i:3;s:5:\\\"email\\\";i:4;s:6:\\\"status\\\";i:5;s:5:\\\"phone\\\";i:6;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"3eb5edba-242d-4ba2-ab9e-f0fcf9c34ffc\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1748785554, 1748785554),
(9, 'default', '{\"uuid\":\"51905d53-b7e5-4ebd-848d-9c7a1e8c5734\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:19:\\\"staff_member_update\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:4:\\\"logo\\\";s:35:\\\"warehouses_wzdx1yxromakrlper6la.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_xbtur7puvf9vciix2tsb.png\\\";s:4:\\\"name\\\";s:29:\\\"FLYCDI - Deira Flagship Store\\\";s:4:\\\"slug\\\";s:35:\\\"flycdi-deira-flagship-store-aop6sov\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:5:\\\"phone\\\";s:13:\\\"+447985291414\\\";s:21:\\\"show_email_on_invoice\\\";i:0;s:21:\\\"show_phone_on_invoice\\\";i:0;s:7:\\\"address\\\";N;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:44:13\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-05-25 11:42:45\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:3:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:12:\\\"staff_member\\\";O:15:\\\"App\\\\Models\\\\User\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:31:{s:2:\\\"id\\\";i:3;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:12:\\\"Abed Rahmani\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$hMJKDi978MRbohTxLQo3E.U31.0WjGEtdNLMBl5YHHmtJqDFbhfSe\\\";s:5:\\\"phone\\\";s:11:\\\"07985291414\\\";s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";s:33:\\\"FLAT 1, SOUTHGATE HOUSE\\nTHE DRIVE\\\";s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"0cuayiEtkMBwtbXMMO9bWLUXMsbMB458oc9AJ5tdrcxh4gVH63\\\";s:6:\\\"status\\\";s:8:\\\"disabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:41:04\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 13:55:37\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:31:{s:2:\\\"id\\\";i:3;s:10:\\\"company_id\\\";i:2;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:1;s:7:\\\"role_id\\\";i:1;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:12:\\\"Abed Rahmani\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$hMJKDi978MRbohTxLQo3E.U31.0WjGEtdNLMBl5YHHmtJqDFbhfSe\\\";s:5:\\\"phone\\\";s:11:\\\"07985291414\\\";s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";s:33:\\\"FLAT 1, SOUTHGATE HOUSE\\nTHE DRIVE\\\";s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"0cuayiEtkMBwtbXMMO9bWLUXMsbMB458oc9AJ5tdrcxh4gVH63\\\";s:6:\\\"status\\\";s:8:\\\"disabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:41:04\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 13:55:37\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:2:{s:6:\\\"status\\\";s:8:\\\"disabled\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 13:55:37\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:10:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:18:\\\"is_walkin_customer\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:7:\\\"role_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:13:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_by\\\";i:9;s:18:\\\"is_walkin_customer\\\";i:10;s:10:\\\"created_at\\\";i:11;s:10:\\\"updated_at\\\";i:12;s:10:\\\"warehouses\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:10:\\\"users.name\\\";i:1;s:4:\\\"name\\\";i:2;s:9:\\\"user_type\\\";i:3;s:5:\\\"email\\\";i:4;s:6:\\\"status\\\";i:5;s:5:\\\"phone\\\";i:6;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:19:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:12:\\\"warehouse_id\\\";s:8:\\\"AdWNDqgV\\\";s:10:\\\"warehouses\\\";a:0:{}s:4:\\\"name\\\";s:12:\\\"Abed Rahmani\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:13:\\\"profile_image\\\";N;s:17:\\\"profile_image_url\\\";s:37:\\\"https:\\/\\/erp.flycdi.ae\\/images\\/user.png\\\";s:5:\\\"phone\\\";s:11:\\\"07985291414\\\";s:7:\\\"address\\\";s:33:\\\"FLAT 1, SOUTHGATE HOUSE\\nTHE DRIVE\\\";s:6:\\\"status\\\";s:8:\\\"disabled\\\";s:16:\\\"shipping_address\\\";N;s:15:\\\"opening_balance\\\";N;s:20:\\\"opening_balance_type\\\";N;s:13:\\\"credit_period\\\";N;s:12:\\\"credit_limit\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";s:8:\\\"AdWNDqgV\\\";s:8:\\\"password\\\";N;s:7:\\\"_method\\\";s:3:\\\"PUT\\\";}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"6e9bcda6-9f7f-4a55-9b5d-3b5e21b052e5\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1748786137, 1748786137);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(10, 'default', '{\"uuid\":\"788cb8ef-391d-452c-87d6-e4b95a321dcc\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:20:\\\"sales_returns_create\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:4;s:10:\\\"company_id\\\";i:3;s:4:\\\"logo\\\";s:35:\\\"warehouses_vuslumm6tdxliwddx3wr.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_ypxyjjiasdnhbmacj9pf.png\\\";s:4:\\\"name\\\";s:23:\\\"FLYCDI - Deira Showroom\\\";s:4:\\\"slug\\\";s:30:\\\"flycdi-deira-showroom-vuexxv2s\\\";s:5:\\\"email\\\";s:14:\\\"info@flycdi.ae\\\";s:5:\\\"phone\\\";s:10:\\\"0547647186\\\";s:21:\\\"show_email_on_invoice\\\";i:1;s:21:\\\"show_phone_on_invoice\\\";i:1;s:7:\\\"address\\\";s:86:\\\"Osha 2, Retail 01, Ithra Street Deira Enirchment Project Corniche Deira , 65565, Dubai\\\";s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:4;s:10:\\\"company_id\\\";i:3;s:4:\\\"logo\\\";s:35:\\\"warehouses_vuslumm6tdxliwddx3wr.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_ypxyjjiasdnhbmacj9pf.png\\\";s:4:\\\"name\\\";s:23:\\\"FLYCDI - Deira Showroom\\\";s:4:\\\"slug\\\";s:30:\\\"flycdi-deira-showroom-vuexxv2s\\\";s:5:\\\"email\\\";s:14:\\\"info@flycdi.ae\\\";s:5:\\\"phone\\\";s:10:\\\"0547647186\\\";s:21:\\\"show_email_on_invoice\\\";i:1;s:21:\\\"show_phone_on_invoice\\\";i:1;s:7:\\\"address\\\";s:86:\\\"Osha 2, Retail 01, Ithra Street Deira Enirchment Project Corniche Deira , 65565, Dubai\\\";s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:4:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":36:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:26:{s:14:\\\"invoice_number\\\";s:10:\\\"SALE-RET-5\\\";s:10:\\\"order_date\\\";s:19:\\\"2025-07-01 19:03:25\\\";s:7:\\\"user_id\\\";i:8;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:5:\\\"notes\\\";N;s:12:\\\"order_status\\\";s:8:\\\"received\\\";s:6:\\\"tax_id\\\";N;s:8:\\\"tax_rate\\\";i:0;s:10:\\\"tax_amount\\\";i:0;s:8:\\\"discount\\\";i:0;s:8:\\\"shipping\\\";i:0;s:8:\\\"subtotal\\\";d:105;s:5:\\\"total\\\";i:105;s:11:\\\"total_items\\\";i:1;s:9:\\\"unique_id\\\";s:20:\\\"EVhHVM49EUL86G5OIzpL\\\";s:10:\\\"order_type\\\";s:13:\\\"sales-returns\\\";s:12:\\\"warehouse_id\\\";i:4;s:17:\\\"from_warehouse_id\\\";N;s:10:\\\"company_id\\\";i:3;s:10:\\\"updated_at\\\";s:19:\\\"2025-07-01 19:05:47\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-07-01 19:05:47\\\";s:2:\\\"id\\\";i:5;s:13:\\\"staff_user_id\\\";i:9;s:14:\\\"total_quantity\\\";d:1;s:10:\\\"due_amount\\\";d:105;s:12:\\\"is_deletable\\\";b:1;}s:11:\\\"\\u0000*\\u0000original\\\";a:26:{s:14:\\\"invoice_number\\\";s:10:\\\"SALE-RET-5\\\";s:10:\\\"order_date\\\";s:19:\\\"2025-07-01 19:03:25\\\";s:7:\\\"user_id\\\";i:8;s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:5:\\\"notes\\\";N;s:12:\\\"order_status\\\";s:8:\\\"received\\\";s:6:\\\"tax_id\\\";N;s:8:\\\"tax_rate\\\";i:0;s:10:\\\"tax_amount\\\";i:0;s:8:\\\"discount\\\";i:0;s:8:\\\"shipping\\\";i:0;s:8:\\\"subtotal\\\";d:105;s:5:\\\"total\\\";i:105;s:11:\\\"total_items\\\";i:1;s:9:\\\"unique_id\\\";s:20:\\\"EVhHVM49EUL86G5OIzpL\\\";s:10:\\\"order_type\\\";s:13:\\\"sales-returns\\\";s:12:\\\"warehouse_id\\\";i:4;s:17:\\\"from_warehouse_id\\\";N;s:10:\\\"company_id\\\";i:3;s:10:\\\"updated_at\\\";s:19:\\\"2025-07-01 19:05:47\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-07-01 19:05:47\\\";s:2:\\\"id\\\";i:5;s:13:\\\"staff_user_id\\\";i:9;s:14:\\\"total_quantity\\\";d:1;s:10:\\\"due_amount\\\";d:105;s:12:\\\"is_deletable\\\";b:1;}s:10:\\\"\\u0000*\\u0000changes\\\";a:3:{s:14:\\\"total_quantity\\\";d:1;s:10:\\\"due_amount\\\";d:105;s:12:\\\"is_deletable\\\";b:1;}s:8:\\\"\\u0000*\\u0000casts\\\";a:17:{s:10:\\\"order_date\\\";s:8:\\\"datetime\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"user_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:6:\\\"tax_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"cancelled_by\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:9:\\\"cancelled\\\";s:7:\\\"integer\\\";s:12:\\\"is_deletable\\\";s:7:\\\"integer\\\";s:8:\\\"tax_rate\\\";s:6:\\\"double\\\";s:10:\\\"tax_amount\\\";s:6:\\\"double\\\";s:8:\\\"discount\\\";s:6:\\\"double\\\";s:8:\\\"shipping\\\";s:6:\\\"double\\\";s:8:\\\"subtotal\\\";s:6:\\\"double\\\";s:5:\\\"total\\\";s:6:\\\"double\\\";s:11:\\\"paid_amount\\\";s:6:\\\"double\\\";s:10:\\\"due_amount\\\";s:6:\\\"double\\\";s:11:\\\"total_items\\\";s:6:\\\"double\\\";s:14:\\\"total_quantity\\\";s:6:\\\"double\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:14:\\\"x_warehouse_id\\\";i:2;s:19:\\\"x_from_warehouse_id\\\";i:3;s:9:\\\"x_user_id\\\";i:4;s:8:\\\"x_tax_id\\\";i:5;s:15:\\\"x_staff_user_id\\\";i:6;s:14:\\\"x_cancelled_by\\\";i:7;s:12:\\\"document_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:5:\\\"items\\\";O:39:\\\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:20:\\\"App\\\\Models\\\\OrderItem\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:11:\\\"order_items\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:18:{s:2:\\\"id\\\";i:5;s:7:\\\"user_id\\\";i:8;s:8:\\\"order_id\\\";i:5;s:10:\\\"product_id\\\";i:760;s:7:\\\"unit_id\\\";i:3;s:8:\\\"quantity\\\";d:1;s:3:\\\"mrp\\\";d:70;s:10:\\\"unit_price\\\";d:100;s:17:\\\"single_unit_price\\\";d:100;s:6:\\\"tax_id\\\";i:3;s:8:\\\"tax_rate\\\";d:5;s:8:\\\"tax_type\\\";s:9:\\\"exclusive\\\";s:13:\\\"discount_rate\\\";d:0;s:9:\\\"total_tax\\\";d:5;s:14:\\\"total_discount\\\";d:0;s:8:\\\"subtotal\\\";d:105;s:10:\\\"created_at\\\";s:19:\\\"2025-07-01 19:05:47\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-07-01 19:05:47\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:18:{s:2:\\\"id\\\";i:5;s:7:\\\"user_id\\\";i:8;s:8:\\\"order_id\\\";i:5;s:10:\\\"product_id\\\";i:760;s:7:\\\"unit_id\\\";i:3;s:8:\\\"quantity\\\";d:1;s:3:\\\"mrp\\\";d:70;s:10:\\\"unit_price\\\";d:100;s:17:\\\"single_unit_price\\\";d:100;s:6:\\\"tax_id\\\";i:3;s:8:\\\"tax_rate\\\";d:5;s:8:\\\"tax_type\\\";s:9:\\\"exclusive\\\";s:13:\\\"discount_rate\\\";d:0;s:9:\\\"total_tax\\\";d:5;s:14:\\\"total_discount\\\";d:0;s:8:\\\"subtotal\\\";d:105;s:10:\\\"created_at\\\";s:19:\\\"2025-07-01 19:05:47\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-07-01 19:05:47\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:16:{s:7:\\\"user_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"order_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:10:\\\"product_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"unit_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:6:\\\"tax_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"quantity\\\";s:6:\\\"double\\\";s:3:\\\"mrp\\\";s:6:\\\"double\\\";s:10:\\\"unit_price\\\";s:6:\\\"double\\\";s:17:\\\"single_unit_price\\\";s:6:\\\"double\\\";s:8:\\\"tax_rate\\\";s:6:\\\"double\\\";s:13:\\\"discount_rate\\\";s:6:\\\"double\\\";s:9:\\\"total_tax\\\";s:6:\\\"double\\\";s:14:\\\"total_discount\\\";s:6:\\\"double\\\";s:8:\\\"subtotal\\\";s:6:\\\"double\\\";s:17:\\\"total_sales_price\\\";s:6:\\\"double\\\";s:9:\\\"unit_sold\\\";s:6:\\\"double\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:7:{i:0;s:3:\\\"xid\\\";i:1;s:10:\\\"x_order_id\\\";i:2;s:9:\\\"x_user_id\\\";i:3;s:10:\\\"x_order_id\\\";i:4;s:12:\\\"x_product_id\\\";i:5;s:9:\\\"x_unit_id\\\";i:6;s:8:\\\"x_tax_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:8:\\\"order_id\\\";i:2;s:7:\\\"user_id\\\";i:3;s:8:\\\"order_id\\\";i:4;s:10:\\\"product_id\\\";i:5;s:7:\\\"unit_id\\\";i:6;s:6:\\\"tax_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:3:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"created_at\\\";i:2;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:1:{i:0;s:3:\\\"xid\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:2:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"product_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:5:{s:19:\\\"getXUserIdAttribute\\\";s:7:\\\"user_id\\\";s:20:\\\"getXOrderIdAttribute\\\";s:8:\\\"order_id\\\";s:22:\\\"getXProductIdAttribute\\\";s:10:\\\"product_id\\\";s:19:\\\"getXUnitIdAttribute\\\";s:7:\\\"unit_id\\\";s:18:\\\"getXTaxIdAttribute\\\";s:6:\\\"tax_id\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:17:\\\"from_warehouse_id\\\";i:3;s:7:\\\"user_id\\\";i:4;s:6:\\\"tax_id\\\";i:5;s:13:\\\"staff_user_id\\\";i:6;s:12:\\\"cancelled_by\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:6:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:13:\\\"staff_user_id\\\";i:3;s:10:\\\"order_type\\\";i:4;s:10:\\\"created_at\\\";i:5;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:1:{i:0;s:3:\\\"xid\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:14:\\\"invoice_number\\\";i:2;s:14:\\\"payment_status\\\";i:3;s:12:\\\"order_status\\\";i:4;s:9:\\\"cancelled\\\";i:5;s:10:\\\"order_date\\\";i:6;s:7:\\\"user_id\\\";i:7;s:12:\\\"warehouse_id\\\";i:8;s:13:\\\"staff_user_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:19:{s:10:\\\"order_type\\\";s:13:\\\"sales-returns\\\";s:14:\\\"invoice_number\\\";N;s:10:\\\"order_date\\\";s:25:\\\"2025-07-01T19:03:25+00:00\\\";s:12:\\\"warehouse_id\\\";s:8:\\\"Jlq1nbR6\\\";s:7:\\\"user_id\\\";s:8:\\\"2krPNbR7\\\";s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:5:\\\"notes\\\";N;s:12:\\\"order_status\\\";s:8:\\\"received\\\";s:6:\\\"tax_id\\\";N;s:8:\\\"tax_rate\\\";i:0;s:10:\\\"tax_amount\\\";i:0;s:8:\\\"discount\\\";i:0;s:8:\\\"shipping\\\";i:0;s:8:\\\"subtotal\\\";i:105;s:5:\\\"total\\\";i:105;s:11:\\\"total_items\\\";i:1;s:13:\\\"product_items\\\";a:1:{i:0;a:22:{s:7:\\\"item_id\\\";N;s:3:\\\"xid\\\";s:8:\\\"A8qA4Aro\\\";s:4:\\\"name\\\";s:20:\\\"FLYCDI FOR 11 INCELL\\\";s:5:\\\"image\\\";s:32:\\\"product_iyuewssgzdtp054uwsvs.jpg\\\";s:9:\\\"image_url\\\";s:71:\\\"https:\\/\\/erp.flycdi.ae\\/uploads\\/products\\/product_iyuewssgzdtp054uwsvs.jpg\\\";s:13:\\\"discount_rate\\\";i:0;s:14:\\\"total_discount\\\";i:0;s:8:\\\"x_tax_id\\\";s:8:\\\"7ZWDkbpO\\\";s:8:\\\"tax_type\\\";s:9:\\\"exclusive\\\";s:8:\\\"tax_rate\\\";i:5;s:9:\\\"total_tax\\\";i:5;s:9:\\\"x_unit_id\\\";s:8:\\\"7ZWDkbpO\\\";s:4:\\\"unit\\\";a:10:{s:10:\\\"company_id\\\";i:3;s:4:\\\"name\\\";s:6:\\\"Pieces\\\";s:10:\\\"short_name\\\";s:3:\\\"Pcs\\\";s:9:\\\"base_unit\\\";N;s:8:\\\"operator\\\";s:8:\\\"multiply\\\";s:14:\\\"operator_value\\\";s:1:\\\"1\\\";s:12:\\\"is_deletable\\\";i:1;s:10:\\\"created_at\\\";s:25:\\\"2025-06-01T15:25:47+00:00\\\";s:10:\\\"updated_at\\\";s:25:\\\"2025-06-01T15:25:47+00:00\\\";s:3:\\\"xid\\\";s:8:\\\"7ZWDkbpO\\\";}s:10:\\\"unit_price\\\";i:100;s:17:\\\"single_unit_price\\\";i:100;s:8:\\\"subtotal\\\";i:105;s:8:\\\"quantity\\\";i:1;s:14:\\\"stock_quantity\\\";i:19;s:15:\\\"unit_short_name\\\";s:3:\\\"Pcs\\\";s:12:\\\"product_type\\\";s:6:\\\"single\\\";s:2:\\\"sn\\\";i:1;s:10:\\\"tax_amount\\\";N;}}s:10:\\\"pay_object\\\";a:1:{i:0;a:1:{s:10:\\\"pay_amount\\\";i:0;}}s:12:\\\"all_payments\\\";a:1:{i:0;a:2:{s:6:\\\"amount\\\";i:105;s:15:\\\"payment_mode_id\\\";s:8:\\\"NArJeWyE\\\";}}}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:10:\\\"order_date\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:28:\\\"getXFromWarehouseIdAttribute\\\";s:17:\\\"from_warehouse_id\\\";s:19:\\\"getXUserIdAttribute\\\";s:7:\\\"user_id\\\";s:18:\\\"getXTaxIdAttribute\\\";s:6:\\\"tax_id\\\";s:24:\\\"getXStaffUserIdAttribute\\\";s:13:\\\"staff_user_id\\\";s:24:\\\"getXCancelledByAttribute\\\";s:12:\\\"cancelled_by\\\";}}s:12:\\\"staff_member\\\";O:22:\\\"App\\\\Models\\\\StaffMember\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:31:{s:2:\\\"id\\\";i:9;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:4;s:7:\\\"role_id\\\";i:2;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:5:\\\"Admin\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$vLrCr0RuWIXrVqTGU9egduHGGQBljpXixuJT8Md10BZeTvwoIChfK\\\";s:5:\\\"phone\\\";N;s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"RFsZ1fqlkpETPLOsmnWcGzOJ06r7PlwBQIZpg1xIg6qifYk513\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-06-01 14:02:37\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 14:11:09\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:31:{s:2:\\\"id\\\";i:9;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:4;s:7:\\\"role_id\\\";i:2;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:5:\\\"Admin\\\";s:5:\\\"email\\\";s:17:\\\"manager@flycdi.ae\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$vLrCr0RuWIXrVqTGU9egduHGGQBljpXixuJT8Md10BZeTvwoIChfK\\\";s:5:\\\"phone\\\";N;s:13:\\\"profile_image\\\";N;s:7:\\\"address\\\";N;s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";s:50:\\\"RFsZ1fqlkpETPLOsmnWcGzOJ06r7PlwBQIZpg1xIg6qifYk513\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";N;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-06-01 14:02:37\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 14:11:09\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:8:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:7:\\\"role_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:10:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_at\\\";i:9;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:6:{i:0;s:4:\\\"name\\\";i:1;s:9:\\\"user_type\\\";i:2;s:5:\\\"email\\\";i:3;s:6:\\\"status\\\";i:4;s:5:\\\"phone\\\";i:5;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"0c61db33-62a6-4edf-95c9-bb33dbc5eb72\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1751396747, 1751396747),
(11, 'default', '{\"uuid\":\"a5c6c789-3a25-4c15-ab3d-ea231660520b\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:19:\\\"staff_member_create\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:4;s:10:\\\"company_id\\\";i:3;s:4:\\\"logo\\\";s:35:\\\"warehouses_vuslumm6tdxliwddx3wr.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_ypxyjjiasdnhbmacj9pf.png\\\";s:4:\\\"name\\\";s:23:\\\"FLYCDI - Deira Showroom\\\";s:4:\\\"slug\\\";s:30:\\\"flycdi-deira-showroom-vuexxv2s\\\";s:5:\\\"email\\\";s:14:\\\"info@flycdi.ae\\\";s:5:\\\"phone\\\";s:10:\\\"0547647186\\\";s:21:\\\"show_email_on_invoice\\\";i:1;s:21:\\\"show_phone_on_invoice\\\";i:1;s:7:\\\"address\\\";s:86:\\\"Osha 2, Retail 01, Ithra Street Deira Enirchment Project Corniche Deira , 65565, Dubai\\\";s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:4;s:10:\\\"company_id\\\";i:3;s:4:\\\"logo\\\";s:35:\\\"warehouses_vuslumm6tdxliwddx3wr.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_ypxyjjiasdnhbmacj9pf.png\\\";s:4:\\\"name\\\";s:23:\\\"FLYCDI - Deira Showroom\\\";s:4:\\\"slug\\\";s:30:\\\"flycdi-deira-showroom-vuexxv2s\\\";s:5:\\\"email\\\";s:14:\\\"info@flycdi.ae\\\";s:5:\\\"phone\\\";s:10:\\\"0547647186\\\";s:21:\\\"show_email_on_invoice\\\";i:1;s:21:\\\"show_phone_on_invoice\\\";i:1;s:7:\\\"address\\\";s:86:\\\"Osha 2, Retail 01, Ithra Street Deira Enirchment Project Corniche Deira , 65565, Dubai\\\";s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:3:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:12:\\\"staff_member\\\";O:15:\\\"App\\\\Models\\\\User\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:18:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:4:\\\"name\\\";s:13:\\\"Saliha Yousef\\\";s:5:\\\"email\\\";s:23:\\\"Saliha.flycdi@gmail.com\\\";s:13:\\\"profile_image\\\";s:30:\\\"user_8ffxthzbmmbitztfo7id.jpeg\\\";s:5:\\\"phone\\\";s:10:\\\"0503161709\\\";s:7:\\\"address\\\";s:82:\\\"Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";i:4;s:8:\\\"password\\\";s:60:\\\"$2y$10$YSOVOgSUCQktGRP2ZJWWbu0lvHQclbgSKIH2cfjIn.7aagCyNhnO2\\\";s:12:\\\"warehouse_id\\\";i:4;s:10:\\\"created_by\\\";i:9;s:7:\\\"lang_id\\\";N;s:10:\\\"company_id\\\";i:3;s:10:\\\"updated_at\\\";s:19:\\\"2025-07-25 17:09:37\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-07-25 17:09:37\\\";s:2:\\\"id\\\";i:12;}s:11:\\\"\\u0000*\\u0000original\\\";a:18:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:4:\\\"name\\\";s:13:\\\"Saliha Yousef\\\";s:5:\\\"email\\\";s:23:\\\"Saliha.flycdi@gmail.com\\\";s:13:\\\"profile_image\\\";s:30:\\\"user_8ffxthzbmmbitztfo7id.jpeg\\\";s:5:\\\"phone\\\";s:10:\\\"0503161709\\\";s:7:\\\"address\\\";s:82:\\\"Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";i:4;s:8:\\\"password\\\";s:60:\\\"$2y$10$YSOVOgSUCQktGRP2ZJWWbu0lvHQclbgSKIH2cfjIn.7aagCyNhnO2\\\";s:12:\\\"warehouse_id\\\";i:4;s:10:\\\"created_by\\\";i:9;s:7:\\\"lang_id\\\";N;s:10:\\\"company_id\\\";i:3;s:10:\\\"updated_at\\\";s:19:\\\"2025-07-25 17:09:37\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-07-25 17:09:37\\\";s:2:\\\"id\\\";i:12;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:10:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:18:\\\"is_walkin_customer\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:7:\\\"role_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:13:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_by\\\";i:9;s:18:\\\"is_walkin_customer\\\";i:10;s:10:\\\"created_at\\\";i:11;s:10:\\\"updated_at\\\";i:12;s:10:\\\"warehouses\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:10:\\\"users.name\\\";i:1;s:4:\\\"name\\\";i:2;s:9:\\\"user_type\\\";i:3;s:5:\\\"email\\\";i:4;s:6:\\\"status\\\";i:5;s:5:\\\"phone\\\";i:6;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:18:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:12:\\\"warehouse_id\\\";s:8:\\\"Jlq1nbR6\\\";s:10:\\\"warehouses\\\";a:1:{i:0;s:8:\\\"Jlq1nbR6\\\";}s:4:\\\"name\\\";s:13:\\\"Saliha Yousef\\\";s:5:\\\"email\\\";s:23:\\\"Saliha.flycdi@gmail.com\\\";s:13:\\\"profile_image\\\";s:30:\\\"user_8ffxthzbmmbitztfo7id.jpeg\\\";s:17:\\\"profile_image_url\\\";s:66:\\\"https:\\/\\/erp.flycdi.ae\\/uploads\\/users\\/user_8ffxthzbmmbitztfo7id.jpeg\\\";s:5:\\\"phone\\\";s:10:\\\"0503161709\\\";s:7:\\\"address\\\";s:82:\\\"Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:15:\\\"opening_balance\\\";N;s:20:\\\"opening_balance_type\\\";s:7:\\\"receive\\\";s:13:\\\"credit_period\\\";s:2:\\\"30\\\";s:12:\\\"credit_limit\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";s:8:\\\"Jlq1nbR6\\\";s:8:\\\"password\\\";s:17:\\\"Salihaflycdi@1998\\\";}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"f39a4da6-dd7e-4834-8a97-7e569f715ef2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1753463377, 1753463377);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(12, 'default', '{\"uuid\":\"5a2c577a-3bef-4feb-9e4f-4b0d8a124223\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:19:\\\"staff_member_update\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:4;s:10:\\\"company_id\\\";i:3;s:4:\\\"logo\\\";s:35:\\\"warehouses_vuslumm6tdxliwddx3wr.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_ypxyjjiasdnhbmacj9pf.png\\\";s:4:\\\"name\\\";s:23:\\\"FLYCDI - Deira Showroom\\\";s:4:\\\"slug\\\";s:30:\\\"flycdi-deira-showroom-vuexxv2s\\\";s:5:\\\"email\\\";s:14:\\\"info@flycdi.ae\\\";s:5:\\\"phone\\\";s:10:\\\"0547647186\\\";s:21:\\\"show_email_on_invoice\\\";i:1;s:21:\\\"show_phone_on_invoice\\\";i:1;s:7:\\\"address\\\";s:86:\\\"Osha 2, Retail 01, Ithra Street Deira Enirchment Project Corniche Deira , 65565, Dubai\\\";s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:4;s:10:\\\"company_id\\\";i:3;s:4:\\\"logo\\\";s:35:\\\"warehouses_vuslumm6tdxliwddx3wr.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_ypxyjjiasdnhbmacj9pf.png\\\";s:4:\\\"name\\\";s:23:\\\"FLYCDI - Deira Showroom\\\";s:4:\\\"slug\\\";s:30:\\\"flycdi-deira-showroom-vuexxv2s\\\";s:5:\\\"email\\\";s:14:\\\"info@flycdi.ae\\\";s:5:\\\"phone\\\";s:10:\\\"0547647186\\\";s:21:\\\"show_email_on_invoice\\\";i:1;s:21:\\\"show_phone_on_invoice\\\";i:1;s:7:\\\"address\\\";s:86:\\\"Osha 2, Retail 01, Ithra Street Deira Enirchment Project Corniche Deira , 65565, Dubai\\\";s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:3:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:12:\\\"staff_member\\\";O:15:\\\"App\\\\Models\\\\User\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:31:{s:2:\\\"id\\\";i:12;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:4;s:7:\\\"role_id\\\";i:4;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:13:\\\"Saliha Yousef\\\";s:5:\\\"email\\\";s:23:\\\"Saliha.flycdi@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$WybHWSlnu3JxCt2HGOW\\/k.E\\/Scb4iQDno1beMufFXyLrC7ka\\/ZVOC\\\";s:5:\\\"phone\\\";s:10:\\\"0503161709\\\";s:13:\\\"profile_image\\\";s:30:\\\"user_8ffxthzbmmbitztfo7id.jpeg\\\";s:7:\\\"address\\\";s:82:\\\"Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai\\\";s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";i:9;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-07-25 17:09:37\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-07-25 17:17:12\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:31:{s:2:\\\"id\\\";i:12;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:4;s:7:\\\"role_id\\\";i:4;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:13:\\\"Saliha Yousef\\\";s:5:\\\"email\\\";s:23:\\\"Saliha.flycdi@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$WybHWSlnu3JxCt2HGOW\\/k.E\\/Scb4iQDno1beMufFXyLrC7ka\\/ZVOC\\\";s:5:\\\"phone\\\";s:10:\\\"0503161709\\\";s:13:\\\"profile_image\\\";s:30:\\\"user_8ffxthzbmmbitztfo7id.jpeg\\\";s:7:\\\"address\\\";s:82:\\\"Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai\\\";s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";i:9;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-07-25 17:09:37\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-07-25 17:17:12\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:2:{s:8:\\\"password\\\";s:60:\\\"$2y$10$WybHWSlnu3JxCt2HGOW\\/k.E\\/Scb4iQDno1beMufFXyLrC7ka\\/ZVOC\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-07-25 17:17:12\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:10:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:18:\\\"is_walkin_customer\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:7:\\\"role_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:13:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_by\\\";i:9;s:18:\\\"is_walkin_customer\\\";i:10;s:10:\\\"created_at\\\";i:11;s:10:\\\"updated_at\\\";i:12;s:10:\\\"warehouses\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:10:\\\"users.name\\\";i:1;s:4:\\\"name\\\";i:2;s:9:\\\"user_type\\\";i:3;s:5:\\\"email\\\";i:4;s:6:\\\"status\\\";i:5;s:5:\\\"phone\\\";i:6;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:19:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:12:\\\"warehouse_id\\\";s:8:\\\"Jlq1nbR6\\\";s:10:\\\"warehouses\\\";a:1:{i:0;s:8:\\\"Jlq1nbR6\\\";}s:4:\\\"name\\\";s:13:\\\"Saliha Yousef\\\";s:5:\\\"email\\\";s:23:\\\"Saliha.flycdi@gmail.com\\\";s:13:\\\"profile_image\\\";s:30:\\\"user_8ffxthzbmmbitztfo7id.jpeg\\\";s:17:\\\"profile_image_url\\\";s:66:\\\"https:\\/\\/erp.flycdi.ae\\/uploads\\/users\\/user_8ffxthzbmmbitztfo7id.jpeg\\\";s:5:\\\"phone\\\";s:10:\\\"0503161709\\\";s:7:\\\"address\\\";s:82:\\\"Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:15:\\\"opening_balance\\\";N;s:20:\\\"opening_balance_type\\\";N;s:13:\\\"credit_period\\\";N;s:12:\\\"credit_limit\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";s:8:\\\"Jlq1nbR6\\\";s:8:\\\"password\\\";s:17:\\\"Salihaflycdi@1998\\\";s:7:\\\"_method\\\";s:3:\\\"PUT\\\";}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"ccd7339e-e4c4-460e-8c23-a4361b37a97c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1753463832, 1753463832),
(13, 'default', '{\"uuid\":\"ea3df012-aa98-4e13-9e6e-3b85e6a6d51a\",\"displayName\":\"App\\\\Notifications\\\\MainNotificaiton\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Warehouse\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\MainNotificaiton\\\":2:{s:15:\\\"notficationData\\\";a:4:{s:8:\\\"send_for\\\";s:19:\\\"staff_member_update\\\";s:2:\\\"to\\\";O:20:\\\"App\\\\Models\\\\Warehouse\\\":35:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"warehouses\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:24:{s:2:\\\"id\\\";i:4;s:10:\\\"company_id\\\";i:3;s:4:\\\"logo\\\";s:35:\\\"warehouses_vuslumm6tdxliwddx3wr.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_ypxyjjiasdnhbmacj9pf.png\\\";s:4:\\\"name\\\";s:23:\\\"FLYCDI - Deira Showroom\\\";s:4:\\\"slug\\\";s:30:\\\"flycdi-deira-showroom-vuexxv2s\\\";s:5:\\\"email\\\";s:14:\\\"info@flycdi.ae\\\";s:5:\\\"phone\\\";s:10:\\\"0547647186\\\";s:21:\\\"show_email_on_invoice\\\";i:1;s:21:\\\"show_phone_on_invoice\\\";i:1;s:7:\\\"address\\\";s:86:\\\"Osha 2, Retail 01, Ithra Street Deira Enirchment Project Corniche Deira , 65565, Dubai\\\";s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:24:{s:2:\\\"id\\\";i:4;s:10:\\\"company_id\\\";i:3;s:4:\\\"logo\\\";s:35:\\\"warehouses_vuslumm6tdxliwddx3wr.png\\\";s:9:\\\"dark_logo\\\";s:35:\\\"warehouses_ypxyjjiasdnhbmacj9pf.png\\\";s:4:\\\"name\\\";s:23:\\\"FLYCDI - Deira Showroom\\\";s:4:\\\"slug\\\";s:30:\\\"flycdi-deira-showroom-vuexxv2s\\\";s:5:\\\"email\\\";s:14:\\\"info@flycdi.ae\\\";s:5:\\\"phone\\\";s:10:\\\"0547647186\\\";s:21:\\\"show_email_on_invoice\\\";i:1;s:21:\\\"show_phone_on_invoice\\\";i:1;s:7:\\\"address\\\";s:86:\\\"Osha 2, Retail 01, Ithra Street Deira Enirchment Project Corniche Deira , 65565, Dubai\\\";s:15:\\\"terms_condition\\\";s:126:\\\"1. Goods once sold will not be taken back or exchanged\\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only\\\";s:12:\\\"bank_details\\\";N;s:9:\\\"signature\\\";N;s:20:\\\"online_store_enabled\\\";i:1;s:20:\\\"customers_visibility\\\";s:3:\\\"all\\\";s:20:\\\"suppliers_visibility\\\";s:3:\\\"all\\\";s:19:\\\"products_visibility\\\";s:3:\\\"all\\\";s:24:\\\"default_pos_order_status\\\";s:9:\\\"delivered\\\";s:19:\\\"show_mrp_on_invoice\\\";i:1;s:28:\\\"show_discount_tax_on_invoice\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-06-01 14:07:07\\\";s:12:\\\"barcode_type\\\";s:7:\\\"barcode\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:7:{s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:21:\\\"show_email_on_invoice\\\";s:7:\\\"integer\\\";s:21:\\\"show_phone_on_invoice\\\";s:7:\\\"integer\\\";s:20:\\\"online_store_enabled\\\";s:7:\\\"integer\\\";s:10:\\\"is_default\\\";s:7:\\\"integer\\\";s:19:\\\"show_mrp_on_invoice\\\";s:7:\\\"integer\\\";s:28:\\\"show_discount_tax_on_invoice\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:5:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:8:\\\"logo_url\\\";i:3;s:13:\\\"dark_logo_url\\\";i:4;s:13:\\\"signature_url\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:1:{i:0;s:2:\\\"id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:5:{i:0;s:2:\\\"id\\\";i:1;s:5:\\\"users\\\";i:2;s:10:\\\"company_id\\\";i:3;s:10:\\\"created_at\\\";i:4;s:10:\\\"updated_at\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:10:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:10:\\\"company_id\\\";i:3;s:4:\\\"slug\\\";i:4;s:4:\\\"logo\\\";i:5;s:8:\\\"logo_url\\\";i:6;s:9:\\\"dark_logo\\\";i:7;s:13:\\\"dark_logo_url\\\";i:8;s:20:\\\"online_store_enabled\\\";i:9;s:12:\\\"barcode_type\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:2:\\\"id\\\";i:1;s:4:\\\"name\\\";i:2;s:5:\\\"email\\\";i:3;s:5:\\\"phone\\\";i:4;s:4:\\\"city\\\";i:5;s:7:\\\"country\\\";i:6;s:7:\\\"zipcode\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:0:{}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:1:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";}}s:4:\\\"mail\\\";a:4:{s:7:\\\"setting\\\";O:8:\\\"stdClass\\\":12:{s:2:\\\"id\\\";i:3;s:9:\\\"is_global\\\";i:1;s:10:\\\"company_id\\\";i:1;s:12:\\\"setting_type\\\";s:5:\\\"email\\\";s:4:\\\"name\\\";s:4:\\\"SMTP\\\";s:8:\\\"name_key\\\";s:4:\\\"smtp\\\";s:11:\\\"credentials\\\";s:205:\\\"{\\\"from_name\\\":\\\"FLY CDI ERP\\\",\\\"from_email\\\":\\\"superadmin@flycdi.ae\\\",\\\"host\\\":\\\"mail.flycdi.ae\\\",\\\"port\\\":\\\"465\\\",\\\"encryption\\\":\\\"ssl\\\",\\\"username\\\":\\\"superadmin@flycdi.ae\\\",\\\"password\\\":\\\"9ddtmsM.r7m4\\\",\\\"enable_mail_queue\\\":\\\"yes\\\"}\\\";s:10:\\\"other_data\\\";N;s:6:\\\"status\\\";i:1;s:8:\\\"verified\\\";i:1;s:10:\\\"created_at\\\";s:19:\\\"2025-03-19 08:06:21\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-19 10:30:24\\\";}s:12:\\\"isAbleToSend\\\";b:0;s:7:\\\"content\\\";s:0:\\\"\\\";s:5:\\\"title\\\";s:0:\\\"\\\";}s:4:\\\"data\\\";a:3:{s:2:\\\"to\\\";r:12;s:9:\\\"warehouse\\\";r:12;s:12:\\\"staff_member\\\";O:15:\\\"App\\\\Models\\\\User\\\":37:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:31:{s:2:\\\"id\\\";i:12;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:4;s:7:\\\"role_id\\\";i:4;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:13:\\\"Saliha Yousef\\\";s:5:\\\"email\\\";s:23:\\\"Saliha.flycdi@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$BzRevZ2JLvJqPK6IJH7oU.QXUSSMylD47DhtlUAZRPcITYiTEUn62\\\";s:5:\\\"phone\\\";s:10:\\\"0503161709\\\";s:13:\\\"profile_image\\\";s:30:\\\"user_8ffxthzbmmbitztfo7id.jpeg\\\";s:7:\\\"address\\\";s:82:\\\"Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai\\\";s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";i:9;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-07-25 17:09:37\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-07-25 17:19:08\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:31:{s:2:\\\"id\\\";i:12;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:0;s:12:\\\"warehouse_id\\\";i:4;s:7:\\\"role_id\\\";i:4;s:7:\\\"lang_id\\\";N;s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:18:\\\"is_walkin_customer\\\";i:0;s:13:\\\"login_enabled\\\";i:1;s:4:\\\"name\\\";s:13:\\\"Saliha Yousef\\\";s:5:\\\"email\\\";s:23:\\\"Saliha.flycdi@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$10$BzRevZ2JLvJqPK6IJH7oU.QXUSSMylD47DhtlUAZRPcITYiTEUn62\\\";s:5:\\\"phone\\\";s:10:\\\"0503161709\\\";s:13:\\\"profile_image\\\";s:30:\\\"user_8ffxthzbmmbitztfo7id.jpeg\\\";s:7:\\\"address\\\";s:82:\\\"Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai\\\";s:16:\\\"shipping_address\\\";N;s:23:\\\"email_verification_code\\\";N;s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:10:\\\"reset_code\\\";N;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";s:11:\\\"date_format\\\";s:5:\\\"d-m-Y\\\";s:18:\\\"date_picker_format\\\";s:10:\\\"dd-mm-yyyy\\\";s:11:\\\"time_format\\\";s:5:\\\"h:i a\\\";s:10:\\\"tax_number\\\";N;s:10:\\\"created_by\\\";i:9;s:13:\\\"department_id\\\";N;s:14:\\\"designation_id\\\";N;s:8:\\\"shift_id\\\";N;s:20:\\\"reset_password_token\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-07-25 17:09:37\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-07-25 17:19:08\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:2:{s:8:\\\"password\\\";s:60:\\\"$2y$10$BzRevZ2JLvJqPK6IJH7oU.QXUSSMylD47DhtlUAZRPcITYiTEUn62\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-07-25 17:19:08\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:10:{s:14:\\\"last_active_on\\\";s:8:\\\"datetime\\\";s:10:\\\"company_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:7:\\\"role_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:12:\\\"warehouse_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:13:\\\"login_enabled\\\";s:7:\\\"integer\\\";s:18:\\\"is_walkin_customer\\\";s:7:\\\"integer\\\";s:13:\\\"is_superadmin\\\";s:7:\\\"integer\\\";s:13:\\\"department_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:14:\\\"designation_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";s:8:\\\"shift_id\\\";s:19:\\\"App\\\\Casts\\\\Hash:hash\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:8:{i:0;s:3:\\\"xid\\\";i:1;s:12:\\\"x_company_id\\\";i:2;s:14:\\\"x_warehouse_id\\\";i:3;s:9:\\\"x_role_id\\\";i:4;s:17:\\\"profile_image_url\\\";i:5;s:15:\\\"x_department_id\\\";i:6;s:16:\\\"x_designation_id\\\";i:7;s:10:\\\"x_shift_id\\\";}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:9:{i:0;s:2:\\\"id\\\";i:1;s:10:\\\"company_id\\\";i:2;s:7:\\\"role_id\\\";i:3;s:12:\\\"warehouse_id\\\";i:4;s:8:\\\"password\\\";i:5;s:14:\\\"remember_token\\\";i:6;s:13:\\\"department_id\\\";i:7;s:14:\\\"designation_id\\\";i:8;s:8:\\\"shift_id\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:13:{i:0;s:2:\\\"id\\\";i:1;s:12:\\\"warehouse_id\\\";i:2;s:10:\\\"company_id\\\";i:3;s:13:\\\"is_superadmin\\\";i:4;s:15:\\\"opening_balance\\\";i:5;s:20:\\\"opening_balance_type\\\";i:6;s:12:\\\"credit_limit\\\";i:7;s:13:\\\"credit_period\\\";i:8;s:10:\\\"created_by\\\";i:9;s:18:\\\"is_walkin_customer\\\";i:10;s:10:\\\"created_at\\\";i:11;s:10:\\\"updated_at\\\";i:12;s:10:\\\"warehouses\\\";}s:10:\\\"\\u0000*\\u0000default\\\";a:3:{i:0;s:3:\\\"xid\\\";i:1;s:4:\\\"name\\\";i:2;s:13:\\\"profile_image\\\";}s:13:\\\"\\u0000*\\u0000filterable\\\";a:7:{i:0;s:10:\\\"users.name\\\";i:1;s:4:\\\"name\\\";i:2;s:9:\\\"user_type\\\";i:3;s:5:\\\"email\\\";i:4;s:6:\\\"status\\\";i:5;s:5:\\\"phone\\\";i:6;s:8:\\\"shift_id\\\";}s:21:\\\"\\u0000*\\u0000relationAttributes\\\";a:0:{}s:6:\\\"\\u0000*\\u0000raw\\\";a:19:{s:9:\\\"user_type\\\";s:13:\\\"staff_members\\\";s:12:\\\"warehouse_id\\\";s:8:\\\"Jlq1nbR6\\\";s:10:\\\"warehouses\\\";a:1:{i:0;s:8:\\\"Jlq1nbR6\\\";}s:4:\\\"name\\\";s:13:\\\"Saliha Yousef\\\";s:5:\\\"email\\\";s:23:\\\"Saliha.flycdi@gmail.com\\\";s:13:\\\"profile_image\\\";s:30:\\\"user_8ffxthzbmmbitztfo7id.jpeg\\\";s:17:\\\"profile_image_url\\\";s:66:\\\"https:\\/\\/erp.flycdi.ae\\/uploads\\/users\\/user_8ffxthzbmmbitztfo7id.jpeg\\\";s:5:\\\"phone\\\";s:10:\\\"0503161709\\\";s:7:\\\"address\\\";s:82:\\\"Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai\\\";s:6:\\\"status\\\";s:7:\\\"enabled\\\";s:16:\\\"shipping_address\\\";N;s:15:\\\"opening_balance\\\";N;s:20:\\\"opening_balance_type\\\";N;s:13:\\\"credit_period\\\";N;s:12:\\\"credit_limit\\\";N;s:10:\\\"tax_number\\\";N;s:7:\\\"role_id\\\";s:8:\\\"Jlq1nbR6\\\";s:8:\\\"password\\\";s:17:\\\"Salihaflycdi@1998\\\";s:7:\\\"_method\\\";s:3:\\\"PUT\\\";}s:8:\\\"\\u0000*\\u0000dates\\\";a:1:{i:0;s:14:\\\"last_active_on\\\";}s:26:\\\"\\u0000*\\u0000hashableGetterFunctions\\\";a:6:{s:22:\\\"getXCompanyIdAttribute\\\";s:10:\\\"company_id\\\";s:19:\\\"getXRoleIdAttribute\\\";s:7:\\\"role_id\\\";s:24:\\\"getXWarehouseIdAttribute\\\";s:12:\\\"warehouse_id\\\";s:25:\\\"getXDepartmentIdAttribute\\\";s:13:\\\"department_id\\\";s:26:\\\"getXDesignationIdAttribute\\\";s:14:\\\"designation_id\\\";s:20:\\\"getXShiftIdAttribute\\\";s:8:\\\"shift_id\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}s:2:\\\"id\\\";s:36:\\\"760a3111-964a-4d5a-a7be-d5e4bfd3d82f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1753463948, 1753463948);

-- --------------------------------------------------------

--
-- Table structure for table `langs`
--

CREATE TABLE `langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `langs`
--

INSERT INTO `langs` (`id`, `image`, `name`, `key`, `enabled`, `created_at`, `updated_at`) VALUES
(1, NULL, 'English', 'en', 1, '2025-03-19 03:06:13', '2025-03-19 03:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `leave_type_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `total_days` int(11) NOT NULL DEFAULT 0,
  `is_half_day` tinyint(1) NOT NULL DEFAULT 0,
  `reason` text NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `total_leaves` int(11) NOT NULL,
  `max_leaves_per_month` int(11) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2021_01_02_193004_create_langs_table', 1),
(3, '2021_01_02_193005_create_translations_table', 1),
(4, '2021_02_01_040700_create_payment_modes_table', 1),
(5, '2021_03_01_040700_create_currencies_table', 1),
(6, '2021_03_02_130932_create_warehouses_table', 1),
(7, '2021_03_03_114417_create_companies_table', 1),
(8, '2021_04_04_000000_create_users_table', 1),
(9, '2021_04_05_190756_entrust_setup_tables', 1),
(10, '2021_05_06_151454_create_brands_table', 1),
(11, '2021_05_06_162224_create_categories_table', 1),
(12, '2021_05_07_033806_create_taxes_table', 1),
(13, '2021_05_07_033823_create_units_table', 1),
(14, '2021_05_08_052842_create_expense_categories_table', 1),
(15, '2021_05_08_052858_create_expenses_table', 1),
(16, '2021_05_08_144116_custom_fields_table', 1),
(17, '2021_05_09_153334_create_products_table', 1),
(18, '2021_05_13_072501_create_orders_table', 1),
(19, '2021_05_13_072518_create_order_items_table', 1),
(20, '2021_05_23_060918_create_payments_table', 1),
(21, '2021_05_23_060919_create_order_payments_table', 1),
(22, '2021_05_28_120405_create_warehouse_stocks_table', 1),
(23, '2021_10_10_100006_create_stock_history_table', 1),
(24, '2022_01_10_115820_create_stock_adjustments_table', 1),
(25, '2022_02_01_094402_create_settings_table', 1),
(26, '2022_02_24_075933_create_notifications_table', 1),
(27, '2022_02_24_122754_create_jobs_table', 1),
(28, '2022_03_07_110707_create_warehouse_history_table', 1),
(29, '2022_04_11_105713_add_login_image_column_in_companies_table', 1),
(30, '2022_04_14_141740_create_order_shipping_address_table', 1),
(31, '2022_04_15_141741_create_user_address_table', 1),
(32, '2022_04_16_054851_create_front_product_cards_table', 1),
(33, '2022_04_17_092949_create_front_website_settings_table', 1),
(34, '2022_04_30_044824_add_rtl_in_companies_warehouses_table', 1),
(35, '2022_05_05_044824_add_setting_records_in_settings_table', 1),
(36, '2022_05_22_004926_add_from_warehouse_id_column_in_orders_table', 1),
(37, '2022_06_24_094848_add_staff_user_id_in_payments_warehouse_history_table', 1),
(38, '2022_10_06_152352_create_company_id_columns_in_all_tables', 1),
(39, '2022_10_19_053056_superadmin_create_payment_gateway_subscription_table', 1),
(40, '2022_10_19_054759_superadmin_create_payment_transcations_table', 1),
(41, '2022_11_11_155206_superadmin_add_website_lang_in_companies_table', 1),
(42, '2022_11_22_130234_add_tax_number_in_users_table', 1),
(43, '2022_12_09_065955_add_created_by_column_in_users_table', 1),
(44, '2022_12_19_160559_add_white_label_complete_column_in_companies_table', 1),
(45, '2022_12_21_233823_add_mrp_column_in_order_items_table', 1),
(46, '2022_12_23_025823_superadmin_create_offline_payment_modes_table', 1),
(47, '2022_12_24_025123_superadmin_add_columns_in_payment_transcations_table', 1),
(48, '2023_02_10_084305_create_user_warehouse_table', 1),
(49, '2023_06_06_042524_change_date_to_datetime_in_expenses_and_payments_table', 1),
(50, '2023_06_16_050954_add_tax_type_coloumn_in_taxes_table', 1),
(51, '2023_06_23_081313_create_order_item_taxes_table', 1),
(52, '2023_06_23_091909_create_variations_table', 1),
(53, '2023_06_29_072334_supeadmin_create_email_queries_table', 1),
(54, '2023_09_02_075509_superadmin_add_stripe_column_in_companies_table', 1),
(55, '2023_10_10_052101_add_barcode_type_in_warehouses_table', 1),
(56, '2024_04_21_143907_add_reset_password_token_in_users_table', 1),
(57, '2024_04_29_042332_create_holidays_table', 1),
(58, '2024_04_29_045301_create_pre_payments_table', 1),
(59, '2024_04_29_045302_create_basic_salaries_table', 1),
(60, '2024_04_29_072410_create_shifts_table', 1),
(61, '2024_04_29_082443_create_departments_table', 1),
(62, '2024_04_29_082524_create_designations_table', 1),
(63, '2024_04_29_083810_create_leave_types_table', 1),
(64, '2024_04_29_092911_create_payrolls_table', 1),
(65, '2024_04_29_093915_add_hrm_columns_in_users_table', 1),
(66, '2024_04_29_093915_add_leave_per_month_columns_in_companies_table', 1),
(67, '2024_04_29_094204_create_payroll_components_table', 1),
(68, '2024_04_29_095300_create_leaves_table', 1),
(69, '2024_04_29_095789_create_attendances_table', 1),
(70, '2024_04_29_110627_create_awards_table', 1),
(71, '2024_04_29_111142_create_increments_promotions_table', 1),
(72, '2024_04_29_120627_create_appreciations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment_modes`
--

CREATE TABLE `offline_payment_modes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_payment_modes`
--

INSERT INTO `offline_payment_modes` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'Cash in hand', '2025-03-19 03:41:30', '2025-03-19 03:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unique_id` varchar(20) NOT NULL,
  `invoice_number` varchar(20) NOT NULL,
  `invoice_type` varchar(20) DEFAULT NULL,
  `order_type` varchar(20) NOT NULL DEFAULT 'sales',
  `order_date` datetime NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_rate` double(8,2) DEFAULT NULL,
  `tax_amount` double NOT NULL DEFAULT 0,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `subtotal` double NOT NULL,
  `total` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT 0,
  `due_amount` double NOT NULL DEFAULT 0,
  `order_status` varchar(20) NOT NULL,
  `notes` text DEFAULT NULL,
  `document` varchar(191) DEFAULT NULL,
  `staff_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'unpaid',
  `total_items` double(8,2) NOT NULL DEFAULT 0.00,
  `total_quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `terms_condition` text DEFAULT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `company_id`, `unique_id`, `invoice_number`, `invoice_type`, `order_type`, `order_date`, `warehouse_id`, `from_warehouse_id`, `user_id`, `tax_id`, `tax_rate`, `tax_amount`, `discount`, `shipping`, `subtotal`, `total`, `paid_amount`, `due_amount`, `order_status`, `notes`, `document`, `staff_user_id`, `payment_status`, `total_items`, `total_quantity`, `terms_condition`, `is_deletable`, `cancelled`, `cancelled_by`, `created_at`, `updated_at`) VALUES
(5, 3, 'EVhHVM49EUL86G5OIzpL', 'SALE-RET-5', NULL, 'sales-returns', '2025-07-01 19:03:25', 4, NULL, 8, NULL, 0.00, 0, 0, 0, 105, 105, 105, 0, 'received', NULL, NULL, 9, 'paid', 1.00, 1.00, '1. Goods once sold will not be taken back or exchanged\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only', 1, 0, NULL, '2025-07-01 14:05:47', '2025-07-01 14:05:47'),
(10, 3, 'HLUppRYPeHd1U6hblmg1', 'SALE-10', 'pos', 'sales', '2025-07-22 14:06:31', 4, NULL, 8, 5, 0.00, 0, 0, 0, 52.5, 52.5, 52.5, 0, 'delivered', NULL, NULL, 9, 'paid', 1.00, 1.00, NULL, 1, 0, NULL, '2025-07-22 09:06:31', '2025-07-22 09:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `order_custom_fields`
--

CREATE TABLE `order_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `field_name` varchar(191) NOT NULL,
  `field_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` double(8,2) NOT NULL,
  `mrp` double DEFAULT NULL,
  `unit_price` double NOT NULL,
  `single_unit_price` double NOT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_rate` double(8,2) NOT NULL DEFAULT 0.00,
  `tax_type` varchar(10) DEFAULT NULL,
  `discount_rate` double(8,2) DEFAULT NULL,
  `total_tax` double DEFAULT NULL,
  `total_discount` double DEFAULT NULL,
  `subtotal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `product_id`, `unit_id`, `quantity`, `mrp`, `unit_price`, `single_unit_price`, `tax_id`, `tax_rate`, `tax_type`, `discount_rate`, `total_tax`, `total_discount`, `subtotal`, `created_at`, `updated_at`) VALUES
(15, 8, 10, 2035, 3, 1.00, 0, 50, 50, 5, 5.00, 'exclusive', 0.00, 2.5, 0, 52.5, '2025-07-22 09:06:31', '2025-07-22 09:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_item_taxes`
--

CREATE TABLE `order_item_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_name` varchar(191) NOT NULL,
  `tax_type` varchar(20) NOT NULL,
  `tax_amount` double NOT NULL,
  `tax_rate` double(8,2) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `company_id`, `payment_id`, `order_id`, `amount`, `created_at`, `updated_at`) VALUES
(4, 3, 7, 5, 105, '2025-07-01 14:05:47', '2025-07-01 14:05:47'),
(7, 3, 10, 10, 52.5, '2025-07-22 09:06:32', '2025-07-22 09:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `order_shipping_address`
--

CREATE TABLE `order_shipping_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `shipping_address` varchar(1000) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_type` varchar(20) NOT NULL DEFAULT 'out',
  `payment_number` varchar(191) DEFAULT NULL,
  `date` datetime NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `unused_amount` double NOT NULL DEFAULT 0,
  `paid_amount` double NOT NULL DEFAULT 0,
  `payment_mode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_receipt` varchar(191) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `staff_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `company_id`, `warehouse_id`, `payment_type`, `payment_number`, `date`, `amount`, `unused_amount`, `paid_amount`, `payment_mode_id`, `user_id`, `payment_receipt`, `notes`, `staff_user_id`, `created_at`, `updated_at`) VALUES
(6, 3, 4, 'in', 'PAY-IN-6', '2025-07-01 19:00:28', 105, 0, 105, 2, 8, NULL, NULL, NULL, '2025-07-01 14:00:28', '2025-07-01 14:00:28'),
(7, 3, 4, 'out', 'PAY-OUT-7', '2025-07-01 19:05:47', 105, 0, 105, 2, 8, NULL, NULL, NULL, '2025-07-01 14:05:47', '2025-07-01 14:05:47'),
(8, 3, 4, 'in', 'PAY-IN-8', '2025-07-22 13:57:28', 25, 0, 25, 2, 11, NULL, NULL, NULL, '2025-07-22 08:57:28', '2025-07-22 08:57:28'),
(9, 3, 4, 'in', 'PAY-IN-9', '2025-07-22 13:58:28', 25, 0, 25, 2, 11, NULL, NULL, NULL, '2025-07-22 08:58:28', '2025-07-22 08:58:28'),
(10, 3, 4, 'in', 'PAY-IN-10', '2025-07-22 14:06:32', 52.5, 0, 52.5, 2, 8, NULL, NULL, NULL, '2025-07-22 09:06:32', '2025-07-22 09:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `payment_modes`
--

CREATE TABLE `payment_modes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `mode_type` varchar(191) DEFAULT 'bank',
  `credentials` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_modes`
--

INSERT INTO `payment_modes` (`id`, `company_id`, `name`, `mode_type`, `credentials`, `created_at`, `updated_at`) VALUES
(2, 3, 'Cash', 'cash', NULL, '2025-06-01 09:07:57', '2025-06-01 09:07:57'),
(3, 3, 'Bank', 'bank', NULL, '2025-07-01 13:40:42', '2025-07-01 13:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `payment_transcations`
--

CREATE TABLE `payment_transcations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_plan_id` bigint(20) UNSIGNED NOT NULL,
  `paid_on` datetime DEFAULT NULL,
  `next_payment_date` date DEFAULT NULL,
  `subscription_id` varchar(191) DEFAULT NULL,
  `invoice_id` varchar(191) DEFAULT NULL,
  `transcation_id` varchar(191) DEFAULT NULL,
  `total` double(8,2) DEFAULT 0.00,
  `plan_type` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `proof_document` varchar(191) DEFAULT NULL,
  `submitted_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `offline_payment_mode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_offline_request` tinyint(1) NOT NULL DEFAULT 0,
  `submit_description` text DEFAULT NULL,
  `response_data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_transcations`
--

INSERT INTO `payment_transcations` (`id`, `payment_method`, `company_id`, `subscription_plan_id`, `paid_on`, `next_payment_date`, `subscription_id`, `invoice_id`, `transcation_id`, `total`, `plan_type`, `status`, `proof_document`, `submitted_by_id`, `offline_payment_mode_id`, `is_offline_request`, `submit_description`, `response_data`, `created_at`, `updated_at`) VALUES
(2, 'offline', 3, 3, '2025-06-01 00:00:00', '2026-05-31', NULL, NULL, NULL, 1.00, 'annual', 'approved', NULL, NULL, 1, 0, NULL, NULL, '2025-06-01 09:03:33', '2025-06-01 09:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `basic_salary` double NOT NULL,
  `salary_amount` double NOT NULL,
  `pre_payment_amount` double NOT NULL DEFAULT 0,
  `expense_amount` double NOT NULL DEFAULT 0,
  `net_salary` double NOT NULL,
  `total_days` double(8,2) NOT NULL,
  `working_days` double(8,2) NOT NULL,
  `present_days` double(8,2) NOT NULL,
  `total_office_time` int(11) NOT NULL,
  `total_worked_time` int(11) NOT NULL,
  `half_days` int(11) NOT NULL,
  `late_days` double(8,2) NOT NULL,
  `paid_leaves` double(8,2) NOT NULL,
  `unpaid_leaves` double(8,2) NOT NULL,
  `holiday_count` double(8,2) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'generated',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_mode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_components`
--

CREATE TABLE `payroll_components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payroll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expense_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `is_earning` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) NOT NULL DEFAULT 'pre_payments',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `module_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `module_name`, `created_at`, `updated_at`) VALUES
(1, 'shifts_view', 'Shift View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(2, 'shifts_create', 'Shift Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(3, 'shifts_edit', 'Shift Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(4, 'shifts_delete', 'Shift Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(5, 'attendances_view', 'Attendance View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(6, 'attendances_create', 'Attendance Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(7, 'attendances_edit', 'Attendance Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(8, 'attendances_delete', 'Attendance Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(9, 'awards_view', 'Award View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(10, 'awards_create', 'Award Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(11, 'awards_edit', 'Award Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(12, 'awards_delete', 'Award Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(13, 'appreciations_view', 'Appreciation View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(14, 'appreciations_create', 'Appreciation Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(15, 'appreciations_edit', 'Appreciation Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(16, 'appreciations_delete', 'Appreciation Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(17, 'departments_view', 'Department View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(18, 'departments_create', 'Department Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(19, 'departments_edit', 'Department Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(20, 'departments_delete', 'Department Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(21, 'designations_view', 'Designation View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(22, 'designations_create', 'Designation Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(23, 'designations_edit', 'Designation Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(24, 'designations_delete', 'Designation Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(25, 'employee_payments_view', 'Employee Payment View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(26, 'employee_payments_create', 'Employee Payment Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(27, 'employee_payments_edit', 'Employee Payment Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(28, 'employee_payments_delete', 'Employee Payment Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(29, 'holidays_create', 'Holiday Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(30, 'holidays_edit', 'Holiday Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(31, 'holidays_delete', 'Holiday Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(32, 'mark_weekend_holiday', 'Mark Weend Holiday', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(33, 'leave_types_view', 'Leave Type View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(34, 'leave_types_create', 'Leave Type Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(35, 'leave_types_edit', 'Leave Type Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(36, 'leave_types_delete', 'Leave Type Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(37, 'leaves_assign_to_all', 'Leave Assign To All', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(38, 'leaves_edit_all', 'Edit All Leaves', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(39, 'leaves_delete_all', 'Delete All Leaves', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(40, 'leaves_approve_reject', 'Approve/Reject Leaves', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(41, 'leaves_settings', 'Leave Settings', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(42, 'increments_promotions_view', 'Increment and Promotion View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(43, 'increments_promotions_create', 'Increment and Promotion Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(44, 'increments_promotions_edit', 'Increment and Promotion Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(45, 'increments_promotions_delete', 'Increment and Promotion Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(46, 'payrolls_view', 'Payroll View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(47, 'payrolls_create', 'Payroll Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(48, 'payrolls_edit', 'Payroll Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(49, 'payrolls_delete', 'Payroll Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(50, 'pre_payments_view', 'Pre Payments View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(51, 'pre_payments_create', 'Pre Payments Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(52, 'pre_payments_edit', 'Pre Payments Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(53, 'pre_payments_delete', 'Pre Payments Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(54, 'basic_salaries_view', 'Basic Salary View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(55, 'basic_salaries_create', 'Basic Salary Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(56, 'basic_salaries_edit', 'Basic Salary Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(57, 'basic_salaries_delete', 'Basic Salary Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(58, 'hrm_settings', 'HRM Settings', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(59, 'brands_view', 'Brand View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(60, 'brands_create', 'Brand Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(61, 'brands_edit', 'Brand Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(62, 'brands_delete', 'Brand Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(63, 'categories_view', 'Category View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(64, 'categories_create', 'Category Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(65, 'categories_edit', 'Category Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(66, 'categories_delete', 'Category Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(67, 'products_view', 'Product View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(68, 'products_create', 'Product Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(69, 'products_edit', 'Product Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(70, 'products_delete', 'Product Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(71, 'variations_view', 'Variation View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(72, 'variations_create', 'Variation Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(73, 'variations_edit', 'Variation Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(74, 'variations_delete', 'Variation Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(75, 'purchases_view', 'Purchase View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(76, 'purchases_create', 'Purchase Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(77, 'purchases_edit', 'Purchase Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(78, 'purchases_delete', 'Purchase Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(79, 'purchase_returns_view', 'Purchase Return View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(80, 'purchase_returns_create', 'Purchase Return Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(81, 'purchase_returns_edit', 'Purchase Return Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(82, 'purchase_returns_delete', 'Purchase Return Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(83, 'payment_out_view', 'Payment Out View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(84, 'payment_out_create', 'Payment Out Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(85, 'payment_out_edit', 'Payment Out Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(86, 'payment_out_delete', 'Payment Out Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(87, 'payment_in_view', 'Payment In View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(88, 'payment_in_create', 'Payment In Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(89, 'payment_in_edit', 'Payment In Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(90, 'payment_in_delete', 'Payment In Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(91, 'sales_view', 'Sales View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(92, 'sales_create', 'Sales Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(93, 'sales_edit', 'Sales Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(94, 'sales_delete', 'Sales Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(95, 'sales_returns_view', 'Sales Return View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(96, 'sales_returns_create', 'Sales Return Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(97, 'sales_returns_edit', 'Sales Return Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(98, 'sales_returns_delete', 'Sales Return Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(99, 'order_payments_view', 'Order Payments View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(100, 'order_payments_create', 'Order Payments Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(101, 'stock_adjustments_view', 'Stock Adjustment View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(102, 'stock_adjustments_create', 'Stock Adjustment Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(103, 'stock_adjustments_edit', 'Stock Adjustment Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(104, 'stock_adjustments_delete', 'Stock Adjustment Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(105, 'stock_transfers_view', 'Stock Transfer View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(106, 'stock_transfers_create', 'Stock Transfer Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(107, 'stock_transfers_edit', 'Stock Transfer Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(108, 'stock_transfers_delete', 'Stock Transfer Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(109, 'quotations_view', 'Quotation View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(110, 'quotations_create', 'Quotation Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(111, 'quotations_edit', 'Quotation Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(112, 'quotations_delete', 'Quotation Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(113, 'expense_categories_view', 'Expense Category View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(114, 'expense_categories_create', 'Expense Category Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(115, 'expense_categories_edit', 'Expense Category Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(116, 'expense_categories_delete', 'Expense Category Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(117, 'expenses_view', 'Expense View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(118, 'expenses_create', 'Expense Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(119, 'expenses_edit', 'Expense Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(120, 'expenses_delete', 'Expense Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(121, 'units_view', 'Unit View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(122, 'units_create', 'Unit Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(123, 'units_edit', 'Unit Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(124, 'units_delete', 'Unit Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(125, 'custom_fields_view', 'Custom Field View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(126, 'custom_fields_create', 'Custom Field Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(127, 'custom_fields_edit', 'Custom Field Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(128, 'custom_fields_delete', 'Custom Field Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(129, 'payment_modes_view', 'Payment Mode View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(130, 'payment_modes_create', 'Payment Mode Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(131, 'payment_modes_edit', 'Payment Mode Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(132, 'payment_modes_delete', 'Payment Mode Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(133, 'currencies_view', 'Currency View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(134, 'currencies_create', 'Currency Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(135, 'currencies_edit', 'Currency Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(136, 'currencies_delete', 'Currency Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(137, 'taxes_view', 'Tax View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(138, 'taxes_create', 'Tax Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(139, 'taxes_edit', 'Tax Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(140, 'taxes_delete', 'Tax Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(141, 'modules_view', 'Modules View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(142, 'roles_view', 'Role View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(143, 'roles_create', 'Role Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(144, 'roles_edit', 'Role Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(145, 'roles_delete', 'Role Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(146, 'warehouses_view', 'Warehouse View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(147, 'warehouses_create', 'Warehouse Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(148, 'warehouses_edit', 'Warehouse Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(149, 'warehouses_delete', 'Warehouse Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(150, 'companies_edit', 'Company Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(151, 'translations_view', 'Translation View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(152, 'translations_create', 'Translation Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(153, 'translations_edit', 'Translation Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(154, 'translations_delete', 'Translation Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(155, 'users_view', 'Staff Member View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(156, 'users_create', 'Staff Member Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(157, 'users_edit', 'Staff Member Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(158, 'users_delete', 'Staff Member Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(159, 'customers_view', 'Customer View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(160, 'customers_create', 'Customer Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(161, 'customers_edit', 'Customer Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(162, 'customers_delete', 'Customer Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(163, 'suppliers_view', 'Supplier View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(164, 'suppliers_create', 'Supplier Create', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(165, 'suppliers_edit', 'Supplier Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(166, 'suppliers_delete', 'Supplier Delete', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(167, 'storage_edit', 'Storage Settings Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(168, 'email_edit', 'Email Settings Edit', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(169, 'pos_view', 'POS View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(170, 'update_app', 'Update App', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(171, 'cash_bank_view', 'Cash & Bank View', NULL, NULL, '2025-03-19 03:06:17', '2025-03-19 03:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pre_payments`
--

CREATE TABLE `pre_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_mode_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `date_time` datetime NOT NULL,
  `deduct_from_payroll` tinyint(1) NOT NULL DEFAULT 1,
  `payroll_month` int(11) NOT NULL,
  `payroll_year` int(11) NOT NULL,
  `notes` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_type` varchar(10) NOT NULL DEFAULT 'single',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_item_code` varchar(191) DEFAULT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `barcode_symbology` varchar(10) NOT NULL,
  `item_code` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `company_id`, `warehouse_id`, `product_type`, `parent_id`, `parent_item_code`, `name`, `slug`, `barcode_symbology`, `item_code`, `image`, `category_id`, `brand_id`, `unit_id`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1071, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A20S', 'flycdi-for-a20s', 'CODE128', '6932644400738', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1072, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A11/A115', 'flycdi-for-a11a115', 'CODE128', '6932644400721', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1073, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A02S/A03S/A03/A04E/F04/M04/F02S/M02S UNIVERSAL', 'flycdi-for-a02sa03sa03a04ef04m04f02sm02s-universal', 'CODE128', '6932644401414', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1074, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A10', 'flycdi-for-a10', 'CODE128', '6932644400462', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1075, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A10S', 'flycdi-for-a10s', 'CODE128', '6932644400660', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1076, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A21S/A217', 'flycdi-for-a21sa217', 'CODE128', '6932644400707', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1077, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A03 CORE/A032', 'flycdi-for-a03-corea032', 'CODE128', '6932644401421', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1078, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A235/A23 4G/A23 5G/M336/A135/A13 4G', 'flycdi-for-a235a23-4ga23-5gm336a135a13-4g', 'CODE128', '6932644402633', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1079, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A136/A04S/A13-5G/A047F', 'flycdi-for-a136a04sa13-5ga047f', 'CODE128', '6932644402466', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1080, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A01-SML', 'flycdi-for-a01-sml', 'CODE128', '6932644402879', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1081, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A01-BIG', 'flycdi-for-a01-big', 'CODE128', '6932644402886', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1082, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A12/A02/M02/A125/A326/A127/M127/F12', 'flycdi-for-a12a02m02a125a326a127m127f12', 'CODE128', '6932644400776', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1083, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR J610/J410', 'flycdi-for-j610j410', 'CODE128', '6932644400493', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1084, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A04 ORI SIZE', 'flycdi-for-a04-ori-size', 'CODE128', '6932644447054', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1085, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR G610/J7PRIME', 'flycdi-for-g610j7prime', 'CODE128', '6932644401407', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1086, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A05/A055', 'flycdi-for-a05a055', 'CODE128', '6932644447061', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1087, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A715/A71 4G/M515/F62/E625', 'flycdi-for-a715a71-4gm515f62e625', 'CODE128', '6977577259954', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1088, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR G570/J5PRIME BLK', 'flycdi-for-g570j5prime-blk', 'CODE128', '6932644400677', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1089, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR G570/J5PRIME W', 'flycdi-for-g570j5prime-w', 'CODE128', '6932644400745', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1090, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR G570/J5PRIME G', 'flycdi-for-g570j5prime-g', 'CODE128', '6932644400752', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1091, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR J8/J810', 'flycdi-for-j8j810', 'CODE128', '6932644402848', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1092, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR J730/J7PRO OLED BLK', 'flycdi-for-j730j7pro-oled-blk', 'CODE128', '6932644401162', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1093, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR J730/J7PRO OLED W/BLUE', 'flycdi-for-j730j7pro-oled-wblue', 'CODE128', '6932644401155', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1094, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR J730/J7PRO OLED G', 'flycdi-for-j730j7pro-oled-g', 'CODE128', '6932644401148', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1095, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A515/A516/M31S', 'flycdi-for-a515a516m31s', 'CODE128', '6932644402923', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1096, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A70', 'flycdi-for-a70', 'CODE128', '6977577259978', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1097, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A730', 'flycdi-for-a730', 'CODE128', '6932644401438', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1098, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A750', 'flycdi-for-a750', 'CODE128', '6977577259947', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1099, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A20', 'flycdi-for-a20', 'CODE128', '6932644400684', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1100, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR BKL A30S', 'flycdi-for-bkl-a30s', 'CODE128', '6932644400691', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1101, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A30/A50/A50S OLED', 'flycdi-for-a30a50a50s-oled', 'CODE128', '6932644401070', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1102, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A30/A50/A50S OLED WF', 'flycdi-for-a30a50a50s-oled-wf', 'CODE128', '6932644401933', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1103, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A30S OLED', 'flycdi-for-a30s-oled', 'CODE128', '6932644401087', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1104, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A30S OLED WF', 'flycdi-for-a30s-oled-wf', 'CODE128', '6932644401940', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1105, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR M30S/ M30/M21S/M31/M21 OLED', 'flycdi-for-m30s-m30m21sm31m21-oled', 'CODE128', '6932644401094', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1106, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR M30S/M30/M21S/M31/M21 OLED WF', 'flycdi-for-m30sm30m21sm31m21-oled-wf', 'CODE128', '6932644401957', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1107, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A20 OLED', 'flycdi-for-a20-oled', 'CODE128', '6932644401063', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1108, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A20 OLED WF', 'flycdi-for-a20-oled-wf', 'CODE128', '6932644401926', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1109, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/F A20', 'flycdi-for-wf-a20', 'CODE128', '6932644400790', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1110, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/F A30S', 'flycdi-for-wf-a30s', 'CODE128', '6932644400806', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1111, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/F A225/A22 4G/M225/F225 OLED', 'flycdi-for-wf-a225a22-4gm225f225-oled', 'CODE128', '6932644402176', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1112, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/F A12/A02/M02/A125/A127/M127', 'flycdi-for-wf-a12a02m02a125a127m127', 'CODE128', '6932644402183', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1113, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/F A20S', 'flycdi-for-wf-a20s', 'CODE128', '6932644402190', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1114, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/F S20U 4G/5G OLED', 'flycdi-for-wf-s20u-4g5g-oled', 'CODE128', '6932644402268', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1115, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR J8/J810 OLED', 'flycdi-for-j8j810-oled', 'CODE128', '6932644402329', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1116, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/F A525/A526/A528', 'flycdi-for-wf-a525a526a528', 'CODE128', '6932644402497', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1117, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/FA10', 'flycdi-for-wfa10', 'CODE128', '6932644402541', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1118, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/FA10S', 'flycdi-for-wfa10s', 'CODE128', '6932644402558', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1119, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/FA11/M11/A115', 'flycdi-for-wfa11m11a115', 'CODE128', '6932644402572', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1120, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/FA715/A71 4G/M515/F62/E625', 'flycdi-for-wfa715a71-4gm515f62e625', 'CODE128', '6932644402596', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1121, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/FA136/A13 5G', 'flycdi-for-wfa136a13-5g', 'CODE128', '6932644402626', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1122, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/F A326', 'flycdi-for-wf-a326', 'CODE128', '6932644402640', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1123, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR GSY W/F A135/A13 4G', 'flycdi-for-gsy-wf-a135a13-4g', 'CODE128', '6932644402657', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1124, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Note20 +WF', 'flycdi-for-note20-wf', 'CODE128', '6932644402718', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1125, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR S20+ +WF', 'flycdi-for-s20-wf', 'CODE128', '6932644402725', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1126, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A736/A73 5G +WF', 'flycdi-for-a736a73-5g-wf', 'CODE128', '6932644402749', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1127, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR ORGW/FA515/A516', 'flycdi-for-orgwfa515a516', 'CODE128', '6932644402916', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1128, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A715/A714GOLED Soft', 'flycdi-for-a715a714goled-soft', 'CODE128', '6932644402954', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1129, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A715/A714GOLED Soft W/F', 'flycdi-for-a715a714goled-soft-wf', 'CODE128', '6932644402961', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1130, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A30 W/F', 'flycdi-for-a30-wf', 'CODE128', '6932644403265', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1131, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A22 W/F', 'flycdi-for-a22-wf', 'CODE128', '6932644403272', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1132, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A32 W/F', 'flycdi-for-a32-wf', 'CODE128', '6932644403296', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1133, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR M30 W/F', 'flycdi-for-m30-wf', 'CODE128', '6932644403326', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1134, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S8 FLYCDI Original', 'flycdi-org-for-s8-flycdi-original', 'CODE128', '6932644440536', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1135, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S8PLUS FLYCDI Original', 'flycdi-org-for-s8plus-flycdi-original', 'CODE128', '6932644440543', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1136, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S9 FLYCDI Original', 'flycdi-org-for-s9-flycdi-original', 'CODE128', '6932644440550', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1137, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S9PLUS FLYCDI Original', 'flycdi-org-for-s9plus-flycdi-original', 'CODE128', '6932644440567', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1138, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S10 FLYCDI Original', 'flycdi-org-for-s10-flycdi-original', 'CODE128', '6932644439745', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1139, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S10LITE FLYCDI Original', 'flycdi-org-for-s10lite-flycdi-original', 'CODE128', '6932644440642', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1140, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S10+ FLYCDI Original', 'flycdi-org-for-s10', 'CODE128', '6932644439752', 'product_j1fgg6muzvd0sbih7sa2.jpg', 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-03 04:11:22'),
(1141, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S20 FLYCDI Original', 'flycdi-org-for-s20-flycdi-original', 'CODE128', '6932644439769', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1142, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S20+ FLYCDI Original', 'flycdi-org-for-s20-flycdi-original', 'CODE128', '6932644439776', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1143, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S20ULTRA FLYCDI Original', 'flycdi-org-for-s20ultra-flycdi-original', 'CODE128', '6932644439783', 'product_nt9uauugyon9ji60okpb.jpg', 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-03 04:05:14'),
(1144, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S21 FLYCDI Original', 'flycdi-org-for-s21-flycdi-original', 'CODE128', '6932644439790', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1145, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S21+ FLYCDI Original', 'flycdi-org-for-s21-flycdi-original', 'CODE128', '6932644439806', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1146, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S21ULTRA FLYCDI Original', 'flycdi-org-for-s21ultra-flycdi-original', 'CODE128', '6932644439813', 'product_l1lfjqxavunzsea7eukr.jpg', 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-03 04:05:37'),
(1147, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S22 FLYCDI Original', 'flycdi-org-for-s22-flycdi-original', 'CODE128', '6932644439820', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1148, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S22+ FLYCDI Original', 'flycdi-org-for-s22-flycdi-original', 'CODE128', '6932644439837', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1149, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S22ULTRA FLYCDI Original', 'flycdi-org-for-s22ultra-flycdi-original', 'CODE128', '6932644439844', 'product_hcknm8njauqcrbqu6dck.jpg', 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:33:43'),
(1150, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S23 FLYCDI Original', 'flycdi-org-for-s23-flycdi-original', 'CODE128', '6932644439851', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1151, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S23+ FLYCDI Original', 'flycdi-org-for-s23-flycdi-original', 'CODE128', '6932644439868', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1152, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S23ULTRA FLYCDI Original', 'flycdi-org-for-s23ultra-flycdi-original', 'CODE128', '6932644439875', 'product_fkimhlgtlaujek08q0yt.jpg', 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-03 04:03:36'),
(1153, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S24 FLYCDI Original', 'flycdi-org-for-s24-flycdi-original', 'CODE128', '6932644440659', 'product_fqmjp941g8kud2oe1yex.jpg', 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-03 04:11:40'),
(1154, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S24PLUS FLYCDI Original', 'flycdi-org-for-s24plus-flycdi-original', 'CODE128', '6932644440666', 'product_p0odp8lfz6kgiic2qq9v.jpg', 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-03 04:05:23'),
(1155, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR S24ULTRA FLYCDI Original', 'flycdi-org-for-s24ultra-flycdi-original', 'CODE128', '6932644440673', 'product_bwmsgdeu3q4vtoazrbcv.jpg', 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-03 04:03:03'),
(1156, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR NOTE8 FLYCDI Original', 'flycdi-org-for-note8-flycdi-original', 'CODE128', '6932644440574', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1157, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR NOTE9 FLYCDI Original', 'flycdi-org-for-note9-flycdi-original', 'CODE128', '6932644440581', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1158, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR NOTE10 FLYCDI Original', 'flycdi-org-for-note10-flycdi-original', 'CODE128', '6932644440598', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1159, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR NOTE10LITE FLYCDI Original', 'flycdi-org-for-note10lite-flycdi-original', 'CODE128', '6932644440635', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1160, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR NOTE10PLUS FLYCDI Original', 'flycdi-org-for-note10plus-flycdi-original', 'CODE128', '6932644440604', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1161, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR NOTE20 FLYCDI Original', 'flycdi-org-for-note20-flycdi-original', 'CODE128', '6932644440611', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1162, 3, 4, 'single', NULL, NULL, 'FLYCDI ORG FOR NOTE20ULTRA FLYCDI Original', 'flycdi-org-for-note20ultra-flycdi-original', 'CODE128', '6932644440628', 'product_wwuxg8nauoohocgipvum.jpg', 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-03 04:05:01'),
(1163, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A20S', 'service-for-a20s', 'CODE128', '6932644404231', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1164, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A11/A115', 'service-for-a11a115', 'CODE128', '6932644404002', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1165, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A02S/A03S/A03/A04E/F04/M04/F02S/M02S UNIVERSAL', 'service-for-a02sa03sa03a04ef04m04f02sm02s-universal', 'CODE128', '6932644405702', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1166, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A10', 'service-for-a10', 'CODE128', '6932644404255', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1167, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A10S', 'service-for-a10s', 'CODE128', '6932644404224', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1168, 3, 4, 'single', NULL, NULL, 'SERVICE FOR M20/M205F/M205N', 'service-for-m20m205fm205n', 'CODE128', '6932644403999', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1169, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A21S/A217', 'service-for-a21sa217', 'CODE128', '6932644404279', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1170, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A03 CORE/A032', 'service-for-a03-corea032', 'CODE128', '6932644403982', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1171, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A235/A23 4G/A23 5G/M336/A135/A13 4G', 'service-for-a235a23-4ga23-5gm336a135a13-4g', 'CODE128', '6932644404170', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1172, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A136/A04S/A13-5G/A047F', 'service-for-a136a04sa13-5ga047f', 'CODE128', '6932644404187', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1173, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A01-SML', 'service-for-a01-sml', 'CODE128', '6932644404194', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1174, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A01-BIG', 'service-for-a01-big', 'CODE128', '6932644404200', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1175, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A12/A02/M02/A125/A326/A127/M127/F12', 'service-for-a12a02m02a125a326a127m127f12', 'CODE128', '6932644404545', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1176, 3, 4, 'single', NULL, NULL, 'SERVICE FOR J610/J410', 'service-for-j610j410', 'CODE128', '6932644404316', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1177, 3, 4, 'single', NULL, NULL, 'SERVICE FOR J260', 'service-for-j260', 'CODE128', '6932644404439', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1178, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A226/A22 5G', 'service-for-a226a22-5g', 'CODE128', '6932644404217', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1179, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A04 ORI SIZE', 'service-for-a04-ori-size', 'CODE128', '6932644405160', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1180, 3, 4, 'single', NULL, NULL, 'SERVICE FOR G610/J7PRIME', 'service-for-g610j7prime', 'CODE128', '6932644405283', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1181, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A05/A055', 'service-for-a05a055', 'CODE128', '6932644405290', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1182, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A715/A71 4G/M515/F62/E625', 'service-for-a715a71-4gm515f62e625', 'CODE128', '6932644405467', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1183, 3, 4, 'single', NULL, NULL, 'SERVICE FOR G570/J5PRIME BLK', 'service-for-g570j5prime-blk', 'CODE128', '6932644405429', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1184, 3, 4, 'single', NULL, NULL, 'SERVICE FOR G570/J5PRIME W', 'service-for-g570j5prime-w', 'CODE128', '6932644405436', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1185, 3, 4, 'single', NULL, NULL, 'SERVICE FOR G570/J5PRIME G', 'service-for-g570j5prime-g', 'CODE128', '6932644405443', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1186, 3, 4, 'single', NULL, NULL, 'SERVICE FOR J8/J810', 'service-for-j8j810', 'CODE128', '6932644405474', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1187, 3, 4, 'single', NULL, NULL, 'SERVICE FOR J730/J7PRO OLED BLK', 'service-for-j730j7pro-oled-blk', 'CODE128', '6932644405375', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1188, 3, 4, 'single', NULL, NULL, 'SERVICE FOR J730/J7PRO OLED W/BLUE', 'service-for-j730j7pro-oled-wblue', 'CODE128', '6932644405382', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1189, 3, 4, 'single', NULL, NULL, 'SERVICE FOR J730/J7PRO OLED G', 'service-for-j730j7pro-oled-g', 'CODE128', '6932644405399', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1190, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A515/A516/M31S', 'service-for-a515a516m31s', 'CODE128', '6932644405481', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1191, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A70', 'service-for-a70', 'CODE128', '6932644405313', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1192, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A730', 'service-for-a730', 'CODE128', '6932644405412', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1193, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A750', 'service-for-a750', 'CODE128', '6932644405405', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1194, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A20', 'service-for-a20', 'CODE128', '6932644405450', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1195, 3, 4, 'single', NULL, NULL, 'SERVICE FOR BKL A30S', 'service-for-bkl-a30s', 'CODE128', '6932644405320', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1196, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A30/A50/A50S OLED', 'service-for-a30a50a50s-oled', 'CODE128', '6932644405337', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1197, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A30/A50/A50S OLED WF', 'service-for-a30a50a50s-oled-wf', 'CODE128', '6932644405511', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1198, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A30S OLED', 'service-for-a30s-oled', 'CODE128', '6932644405344', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1199, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A30S OLED WF', 'service-for-a30s-oled-wf', 'CODE128', '6932644405535', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1200, 3, 4, 'single', NULL, NULL, 'SERVICE FOR M30S/ M30/M21S/M31/M21 OLED', 'service-for-m30s-m30m21sm31m21-oled', 'CODE128', '6932644405368', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1201, 3, 4, 'single', NULL, NULL, 'SERVICE FOR M30S/M30/M21S/M31/M21 OLED WF', 'service-for-m30sm30m21sm31m21-oled-wf', 'CODE128', '6932644405528', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1202, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A20 OLED', 'service-for-a20-oled', 'CODE128', '6932644405351', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1203, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A20 OLED WF', 'service-for-a20-oled-wf', 'CODE128', '6932644405504', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1204, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A04E', 'service-for-a04e', 'CODE128', '6932644415643', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1205, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A02S', 'service-for-a02s', 'CODE128', '6932644405580', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1206, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A03 CORE', 'service-for-a03-core', 'CODE128', '6932644405597', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1207, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A03S', 'service-for-a03s', 'CODE128', '6932644405603', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1208, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A21S', 'service-for-a21s', 'CODE128', '6932644434283', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1209, 3, 4, 'single', NULL, NULL, 'MK FOR A11/A115', 'mk-for-a11a115', 'CODE128', '6932644418207', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1210, 3, 4, 'single', NULL, NULL, 'MK FOR A10S', 'mk-for-a10s', 'CODE128', '6932644408239', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1211, 3, 4, 'single', NULL, NULL, 'MK FOR A235/A23 4G/A23 5G/M336/A135/A13 4G', 'mk-for-a235a23-4ga23-5gm336a135a13-4g', 'CODE128', '6932644414728', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1212, 3, 4, 'single', NULL, NULL, 'MK FOR A12/A02/M02/A125/A326/A127/M127/F12', 'mk-for-a12a02m02a125a326a127m127f12', 'CODE128', '6932644414018', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1213, 3, 4, 'single', NULL, NULL, 'MK FOR A04 ORI SIZE', 'mk-for-a04-ori-size', 'CODE128', '6932644419112', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1214, 3, 4, 'single', NULL, NULL, 'MK FOR G5308/G530/G531/G532', 'mk-for-g5308g530g531g532', 'CODE128', '6932644439967', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1215, 3, 4, 'single', NULL, NULL, 'MK FOR J730OLED', 'mk-for-j730oled', 'CODE128', '6932644407706', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1216, 3, 4, 'single', NULL, NULL, 'MK FOR J730 OLED', 'mk-for-j730-oled', 'CODE128', '6932644407713', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1217, 3, 4, 'single', NULL, NULL, 'MK FOR J700/J7 OLED', 'mk-for-j700j7-oled', 'CODE128', '6932644407768', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1218, 3, 4, 'single', NULL, NULL, 'MK FOR J700/J7OLED', 'mk-for-j700j7oled', 'CODE128', '6932644407782', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1219, 3, 4, 'single', NULL, NULL, 'MK FOR J610/J6+/J4+/J410', 'mk-for-j610j6j4j410', 'CODE128', '6932644407812', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1220, 3, 4, 'single', NULL, NULL, 'MK FOR A70 OLED', 'mk-for-a70-oled', 'CODE128', '6932644408055', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1221, 3, 4, 'single', NULL, NULL, 'MK FOR A70 OLED WF', 'mk-for-a70-oled-wf', 'CODE128', '6932644408062', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1222, 3, 4, 'single', NULL, NULL, 'MK FOR A50S/A30/A50 OLED WF', 'mk-for-a50sa30a50-oled-wf', 'CODE128', '6932644415644', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1223, 3, 4, 'single', NULL, NULL, 'MK FOR A30S OLED WF', 'mk-for-a30s-oled-wf', 'CODE128', '6932644408161', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1224, 3, 4, 'single', NULL, NULL, 'MK FOR A30/A50/A50S OLED', 'mk-for-a30a50a50s-oled', 'CODE128', '6932644408178', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1225, 3, 4, 'single', NULL, NULL, 'MK FOR A20S/A207', 'mk-for-a20sa207', 'CODE128', '6932644408192', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1226, 3, 4, 'single', NULL, NULL, 'MK FOR A10  BLACK', 'mk-for-a10-black', 'CODE128', '6932644408246', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1227, 3, 4, 'single', NULL, NULL, 'MK FOR J260', 'mk-for-j260', 'CODE128', '6932644409670', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1228, 3, 4, 'single', NULL, NULL, 'MK FOR J530 OLED', 'mk-for-j530-oled', 'CODE128', '6932644409861', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1229, 3, 4, 'single', NULL, NULL, 'MK FOR A01', 'mk-for-a01', 'CODE128', '6932644410157', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1230, 3, 4, 'single', NULL, NULL, 'MK FOR A02S/A03S', 'mk-for-a02sa03s', 'CODE128', '6932644410201', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1231, 3, 4, 'single', NULL, NULL, 'MK FOR A715/A71 4G oled W/F', 'mk-for-a715a71-4g-oled-wf', 'CODE128', '6932644410249', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1232, 3, 4, 'single', NULL, NULL, 'MK FOR A30/A50/A50S', 'mk-for-a30a50a50s', 'CODE128', '6932644411352', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1233, 3, 4, 'single', NULL, NULL, 'MK FOR A730', 'mk-for-a730', 'CODE128', '6932644411475', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1234, 3, 4, 'single', NULL, NULL, 'MK FOR M30OLED WF', 'mk-for-m30oled-wf', 'CODE128', '6932644411666', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1235, 3, 4, 'single', NULL, NULL, 'MK FOR A70 OLED W/F', 'mk-for-a70-oled-wf', 'CODE128', '6932644411680', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1236, 3, 4, 'single', NULL, NULL, 'MK FOR J810 OLED', 'mk-for-j810-oled', 'CODE128', '6932644411697', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1237, 3, 4, 'single', NULL, NULL, 'MK FOR J330', 'mk-for-j330', 'CODE128', '6932644411864', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1238, 3, 4, 'single', NULL, NULL, 'MK FOR J5/J500 OLED', 'mk-for-j5j500-oled', 'CODE128', '6932644412342', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1239, 3, 4, 'single', NULL, NULL, 'MK FOR J320OLED', 'mk-for-j320oled', 'CODE128', '6932644412359', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1240, 3, 4, 'single', NULL, NULL, 'MK FOR J710OLED', 'mk-for-j710oled', 'CODE128', '6932644412816', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1241, 3, 4, 'single', NULL, NULL, 'MK FOR J720OLED', 'mk-for-j720oled', 'CODE128', '6932644412847', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1242, 3, 4, 'single', NULL, NULL, 'MK FOR J510 OLED  BLACK', 'mk-for-j510-oled-black', 'CODE128', '6932644412878', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1243, 3, 4, 'single', NULL, NULL, 'MK FOR J510 OLEDGOLD', 'mk-for-j510-oledgold', 'CODE128', '6932644412892', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1244, 3, 4, 'single', NULL, NULL, 'MK FOR G610/J7PRIME', 'mk-for-g610j7prime', 'CODE128', '6932644413035', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1245, 3, 4, 'single', NULL, NULL, 'MK FOR M30/M30S/M21S/M31/M21', 'mk-for-m30m30sm21sm31m21', 'CODE128', '6932644413264', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1246, 3, 4, 'single', NULL, NULL, 'MK FOR A013', 'mk-for-a013', 'CODE128', '6932644413943', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1247, 3, 4, 'single', NULL, NULL, 'MK FOR A20', 'mk-for-a20', 'CODE128', '6932644415645', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1248, 3, 4, 'single', NULL, NULL, 'MK FOR A510 OLED', 'mk-for-a510-oled', 'CODE128', '6932644415794', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1249, 3, 4, 'single', NULL, NULL, 'MK FOR S20 Ultra W/F', 'mk-for-s20-ultra-wf', 'CODE128', '6932644415848', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1250, 3, 4, 'single', NULL, NULL, 'MK FOR W/F A70', 'mk-for-wf-a70', 'CODE128', '6932644416272', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1251, 3, 4, 'single', NULL, NULL, 'MK FOR A715/A71 4G oled', 'mk-for-a715a71-4g-oled', 'CODE128', '6932644417316', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1252, 3, 4, 'single', NULL, NULL, 'MK FOR A260', 'mk-for-a260', 'CODE128', '6932644417347', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1253, 3, 4, 'single', NULL, NULL, 'MK FOR W/F A315/A31', 'mk-for-wf-a315a31', 'CODE128', '6932644419440', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1254, 3, 4, 'single', NULL, NULL, 'MK FOR A21S W/F', 'mk-for-a21s-wf', 'CODE128', '6932644419631', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1255, 3, 4, 'single', NULL, NULL, 'MK FOR W/F A11/M11/A115', 'mk-for-wf-a11m11a115', 'CODE128', '6932644419969', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1256, 3, 4, 'single', NULL, NULL, 'MK FOR ORM20', 'mk-for-orm20', 'CODE128', '6932644420620', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1257, 3, 4, 'single', NULL, NULL, 'MK FOR A14/A14 4G', 'mk-for-a14a14-4g', 'CODE128', '6932644421306', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1258, 3, 4, 'single', NULL, NULL, 'MK FOR A146/A14 5G', 'mk-for-a146a14-5g', 'CODE128', '6932644421634', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1259, 3, 4, 'single', NULL, NULL, 'MK FOR A315 /A31 OLED', 'mk-for-a315-a31-oled', 'CODE128', '6932644422082', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1260, 3, 4, 'single', NULL, NULL, 'MK FOR A53 5G OLED W/F', 'mk-for-a53-5g-oled-wf', 'CODE128', '6932644422273', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1261, 3, 4, 'single', NULL, NULL, 'MK FOR M515 OLED W/F', 'mk-for-m515-oled-wf', 'CODE128', '6932644422563', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1262, 3, 4, 'single', NULL, NULL, 'MK FOR S23ultra W/F', 'mk-for-s23ultra-wf', 'CODE128', '6932644422891', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1263, 3, 4, 'single', NULL, NULL, 'MK FOR A750 OLED', 'mk-for-a750-oled', 'CODE128', '6932644422952', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1264, 3, 4, 'single', NULL, NULL, 'MK FOR S5OLED', 'mk-for-s5oled', 'CODE128', '6932644426028', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1265, 3, 4, 'single', NULL, NULL, 'MK FOR A515 OLED', 'mk-for-a515-oled', 'CODE128', '6932644413462', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1266, 3, 4, 'single', NULL, NULL, 'A15 Eagle Glasses head Lens film', 'a15-eagle-glasses-head-lens-film', 'CODE128', '6977577253594', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1267, 3, 4, 'single', NULL, NULL, 'A25 Eagle Glasses head Lens film', 'a25-eagle-glasses-head-lens-film', 'CODE128', '6977577253600', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1268, 3, 4, 'single', NULL, NULL, 'A35 Eagle Glasses head Lens film', 'a35-eagle-glasses-head-lens-film', 'CODE128', '6977577253617', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1269, 3, 4, 'single', NULL, NULL, 'A55 Eagle Glasses head Lens film', 'a55-eagle-glasses-head-lens-film', 'CODE128', '6977577253624', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1270, 3, 4, 'single', NULL, NULL, 'A05 Eagle Glasses head Lens film', 'a05-eagle-glasses-head-lens-film', 'CODE128', '6977577253631', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1271, 3, 4, 'single', NULL, NULL, 'A05S Eagle Glasses head Lens film', 'a05s-eagle-glasses-head-lens-film', 'CODE128', '6977577253648', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1272, 3, 4, 'single', NULL, NULL, 'S24 Eagle Glasses head Lens film', 's24-eagle-glasses-head-lens-film', 'CODE128', '6977577253655', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1273, 3, 4, 'single', NULL, NULL, 'S24PLUS Eagle Glasses head Lens film', 's24plus-eagle-glasses-head-lens-film', 'CODE128', '6977577253662', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1274, 3, 4, 'single', NULL, NULL, 'S24Ultra/S23Ultra Eagle Glasses head Lens film', 's24ultras23ultra-eagle-glasses-head-lens-film', 'CODE128', '6977577253679', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1275, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS FHD REDMI 9 GLOBAL/9 PRIME/FOR:XIAOMI POCO M2/FOR:Samsung A20S', 'tempered-glass-fhd-redmi-9-global9-primeforxiaomi-poco-m2forsamsung-a20s', 'CODE128', '6977577250487', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1276, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS FHD Samsung A05S', 'tempered-glass-fhd-samsung-a05s', 'CODE128', '6977577250203', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1277, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS FHD Samsung A14 4G/5G/M14 5G/F14 5G/JUMP3', 'tempered-glass-fhd-samsung-a14-4g5gm14-5gf14-5gjump3', 'CODE128', '6977577250210', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1278, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS FHD Samsung A15/A24 4G/M34 5G/F34', 'tempered-glass-fhd-samsung-a15a24-4gm34-5gf34', 'CODE128', '6977577250227', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1279, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS FHD Samsung A22 5G/F42 5G', 'tempered-glass-fhd-samsung-a22-5gf42-5g', 'CODE128', '6977577250234', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1280, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS FHD Samsung A30/A50/A20/A30S/A50S/M30/M30S/M10S/M21/M21 2021/M21S/M31/M31 PRIME/F41', 'tempered-glass-fhd-samsung-a30a50a20a30sa50sm30m30sm10sm21m21-2021m21sm31m31-primef41', 'CODE128', '6977577250241', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1281, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS FHD Samsung A31/M32/F22/A32 4G/A22 4G/M22/A33 5G/FOR:VIVO Y100/T2(India)/IQOO Z7 5G/Z7S 5G', 'tempered-glass-fhd-samsung-a31m32f22a32-4ga22-4gm22a33-5gforvivo-y100t2indiaiqoo-z7-5gz7s-5g', 'CODE128', '6977577250258', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1282, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS FHD Samsung A34 5G', 'tempered-glass-fhd-samsung-a34-5g', 'CODE128', '6977577250265', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1283, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS FHD Samsung A54 5G/S23 FE', 'tempered-glass-fhd-samsung-a54-5gs23-fe', 'CODE128', '6977577250289', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1284, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A12/M12/A32 5G', 'tempered-glass-privacy-sx-a12m12a32-5g', 'CODE128', '6977577251750', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1285, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A02S', 'tempered-glass-privacy-sx-a02s', 'CODE128', '6977577251767', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1286, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A23/A13 4G 5G', 'tempered-glass-privacy-sx-a23a13-4g-5g', 'CODE128', '6977577251774', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1287, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A04S / A04', 'tempered-glass-privacy-sx-a04s-a04', 'CODE128', '6977577251781', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1288, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A42', 'tempered-glass-privacy-sx-a42', 'CODE128', '6977577251798', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1289, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A04E/A02', 'tempered-glass-privacy-sx-a04ea02', 'CODE128', '6977577251804', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1290, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A14', 'tempered-glass-privacy-sx-a14', 'CODE128', '6977577251811', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1291, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A05', 'tempered-glass-privacy-sx-a05', 'CODE128', '6977577251828', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1292, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A05S', 'tempered-glass-privacy-sx-a05s', 'CODE128', '6977577251835', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1293, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  S21', 'tempered-glass-privacy-sx-s21', 'CODE128', '6977577251842', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1294, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  S21+', 'tempered-glass-privacy-sx-s21', 'CODE128', '6977577251859', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1295, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  S22', 'tempered-glass-privacy-sx-s22', 'CODE128', '6977577251866', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1296, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  S24', 'tempered-glass-privacy-sx-s24', 'CODE128', '6977577251873', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1297, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  S23FE', 'tempered-glass-privacy-sx-s23fe', 'CODE128', '6977577251880', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1298, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  S23+', 'tempered-glass-privacy-sx-s23', 'CODE128', '6977577251897', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1299, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  S24+', 'tempered-glass-privacy-sx-s24', 'CODE128', '6977577251903', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1300, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A70', 'tempered-glass-privacy-sx-a70', 'CODE128', '6977577251910', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1301, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A71', 'tempered-glass-privacy-sx-a71', 'CODE128', '6977577251927', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1302, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A72', 'tempered-glass-privacy-sx-a72', 'CODE128', '6977577251934', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1303, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A73', 'tempered-glass-privacy-sx-a73', 'CODE128', '6977577251941', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1304, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A51', 'tempered-glass-privacy-sx-a51', 'CODE128', '6977577251958', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1305, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A52/A52S', 'tempered-glass-privacy-sx-a52a52s', 'CODE128', '6977577251965', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1306, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A24', 'tempered-glass-privacy-sx-a24', 'CODE128', '6977577251972', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1307, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A25', 'tempered-glass-privacy-sx-a25', 'CODE128', '6977577251989', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1308, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A31 5G', 'tempered-glass-privacy-sx-a31-5g', 'CODE128', '6977577251996', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1309, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A34', 'tempered-glass-privacy-sx-a34', 'CODE128', '6977577252009', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1310, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A35 5G / A55 5G', 'tempered-glass-privacy-sx-a35-5g-a55-5g', 'CODE128', '6977577252016', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1311, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A32 4G', 'tempered-glass-privacy-sx-a32-4g', 'CODE128', '6977577252023', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1312, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A22 5G', 'tempered-glass-privacy-sx-a22-5g', 'CODE128', '6977577252245', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1313, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A15 5G', 'tempered-glass-privacy-sx-a15-5g', 'CODE128', '6977577252252', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1314, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  NOTE10LITE', 'tempered-glass-privacy-sx-note10lite', 'CODE128', '6977577252269', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1315, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  S24PLUS', 'tempered-glass-privacy-sx-s24plus', 'CODE128', '6977577259817', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1316, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  M54 5G / F54 5G', 'tempered-glass-privacy-sx-m54-5g-f54-5g', 'CODE128', '6977577252283', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1317, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A50', 'tempered-glass-privacy-sx-a50', 'CODE128', '6977577252290', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1318, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX  A54', 'tempered-glass-privacy-sx-a54', 'CODE128', '6977577252306', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1319, 3, 4, 'single', NULL, NULL, 'TEMPERED GLASS PRIVACY SX AO4CORE', 'tempered-glass-privacy-sx-ao4core', 'CODE128', '6977577252313', NULL, 33, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1320, 3, 4, 'single', NULL, NULL, 'A10', 'a10', 'CODE128', '6932644408253', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1321, 3, 4, 'single', NULL, NULL, 'S21ULTRA WF OLED', 's21ultra-wf-oled', 'CODE128', '6932644403050', NULL, 10, 4, 3, NULL, 9, '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1322, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y7PRO 2019/Y7 2019/CX9', 'flycdi-for-y7pro-2019y7-2019cx9', 'CODE128', '6932644403159', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1323, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y6PRO 2019/8A/Y6 2019', 'flycdi-for-y6pro-20198ay6-2019', 'CODE128', '6932644402732', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1324, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y9 2019/9P COF', 'flycdi-for-y9-20199p-cof', 'CODE128', '6932644401537', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11');
INSERT INTO `products` (`id`, `company_id`, `warehouse_id`, `product_type`, `parent_id`, `parent_item_code`, `name`, `slug`, `barcode_symbology`, `item_code`, `image`, `category_id`, `brand_id`, `unit_id`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1325, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y9Prime 2019/10PLUS COG', 'flycdi-for-y9prime-201910plus-cog', 'CODE128', '6932644401520', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1326, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y9S/9X COG', 'flycdi-for-y9s9x-cog', 'CODE128', '6932644402404', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1327, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y9S/9X COF', 'flycdi-for-y9s9x-cof', 'CODE128', '6932644402503', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1328, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y9Prime 2019/10PLUS COF', 'flycdi-for-y9prime-201910plus-cof', 'CODE128', '6932644402510', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1329, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR HONOR 8X COG', 'flycdi-for-honor-8x-cog', 'CODE128', '6932644401544', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1330, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Enjoy20SE/Y7A/PSMART2021/X10LITE', 'flycdi-for-enjoy20sey7apsmart2021x10lite', 'CODE128', '6932644401032', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1331, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR X7', 'flycdi-for-x7', 'CODE128', '6932644403258', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1332, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR NOVA3I', 'flycdi-for-nova3i', 'CODE128', '6932644400783', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1333, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y6P2020/Y6 2020/9A/10E', 'flycdi-for-y6p2020y6-20209a10e', 'CODE128', '6932644400714', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1334, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR NOVA5T/honor20 COF', 'flycdi-for-nova5thonor20-cof', 'CODE128', '6932644403234', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1335, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR P30PROoled', 'flycdi-for-p30prooled', 'CODE128', '6932644403012', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1336, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y7PRO 2019/Y7 2019/CX9', 'service-for-y7pro-2019y7-2019cx9', 'CODE128', '6932644404385', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1337, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y6PRO 2019/8A/Y6 2019', 'service-for-y6pro-20198ay6-2019', 'CODE128', '6932644404392', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1338, 3, 4, 'single', NULL, NULL, 'SERVICE FOR HONOR 8X COF', 'service-for-honor-8x-cof', 'CODE128', '6932644404408', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1339, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y9 2019/9P COF', 'service-for-y9-20199p-cof', 'CODE128', '6932644404484', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1340, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y9 2019/9P COG', 'service-for-y9-20199p-cog', 'CODE128', '6932644404781', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1341, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y9Prime 2019/10PLUS COG', 'service-for-y9prime-201910plus-cog', 'CODE128', '6932644404477', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1342, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y9S/9X COG', 'service-for-y9s9x-cog', 'CODE128', '6932644404774', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1343, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y9S/9X COF', 'service-for-y9s9x-cof', 'CODE128', '6932644404675', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1344, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y9Prime 2019/10PLUS COF', 'service-for-y9prime-201910plus-cof', 'CODE128', '6932644404682', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1345, 3, 4, 'single', NULL, NULL, 'SERVICE FOR HONOR 8X COG', 'service-for-honor-8x-cog', 'CODE128', '6932644404750', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1346, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X7A/enjoy 40PLUS/R PLAY7T', 'service-for-x7aenjoy-40plusr-play7t', 'CODE128', '6932644404880', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1347, 3, 4, 'single', NULL, NULL, 'SERVICE FOR PLAY 30PLUS/PLAY 6T/X7', 'service-for-play-30plusplay-6tx7', 'CODE128', '6932644404965', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1348, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y70/Y70PLUS/maiman 11/CX50', 'service-for-y70y70plusmaiman-11cx50', 'CODE128', '6932644405009', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1349, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Enjoy20SE/Y7A/PSMART2021/X10LITE', 'service-for-enjoy20sey7apsmart2021x10lite', 'CODE128', '6932644405047', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1350, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X20/HONOR 50LITE/NOVA8I', 'service-for-x20honor-50litenova8i', 'CODE128', '6932644405054', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1351, 3, 4, 'single', NULL, NULL, 'SERVICE FOR P30LITE/NOVA4E COF', 'service-for-p30litenova4e-cof', 'CODE128', '6932644405061', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1352, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X10/Y9A/CX20PLUS COF', 'service-for-x10y9acx20plus-cof', 'CODE128', '6932644405030', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1353, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X10MAX/X30MAX COF', 'service-for-x10maxx30max-cof', 'CODE128', '6932644405306', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1354, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X6 4G/X6 5G/X6S/X8 5G/enjoy30/honor PLAY6C/X8A 5G/HONOR 70LITE5G', 'service-for-x6-4gx6-5gx6sx8-5genjoy30honor-play6cx8a-5ghonor-70lite5g', 'CODE128', '6932644405795', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1355, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X7', 'service-for-x7', 'CODE128', '6932644405801', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1356, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X8', 'service-for-x8', 'CODE128', '6932644405818', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1357, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X9', 'service-for-x9', 'CODE128', '6932644405825', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1358, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X8A/HONOR90IiTE/X50I', 'service-for-x8ahonor90iitex50i', 'CODE128', '6932644405832', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1359, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X7B', 'service-for-x7b', 'CODE128', '6932644405849', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1360, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X8B/X50I+ OLED', 'service-for-x8bx50i-oled', 'CODE128', '6932644405856', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1361, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X9B/X50', 'service-for-x9bx50', 'CODE128', '6932644405863', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1362, 3, 4, 'single', NULL, NULL, 'SERVICE FOR NOVA3I', 'service-for-nova3i', 'CODE128', '6932644405870', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1363, 3, 4, 'single', NULL, NULL, 'SERVICE FOR NOVA 9SE/NOVA9SE/HONOR50SE/maiman20/NOVA10LITE/??60PRO/NOVE11I', 'service-for-nova-9senova9sehonor50semaiman20nova10lite60pronove11i', 'CODE128', '6932644405887', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1364, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y7P2020/PIAY3/??10/PIAY4E/P40LITE/9C', 'service-for-y7p2020piay310piay4ep40lite9c', 'CODE128', '6932644406686', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1365, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y6P2020/Y6 2020/9A/10E', 'service-for-y6p2020y6-20209a10e', 'CODE128', '6932644406198', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1366, 3, 4, 'single', NULL, NULL, 'SERVICE FOR NOVA5T/honor20 COF', 'service-for-nova5thonor20-cof', 'CODE128', '6932644435297', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1367, 3, 4, 'single', NULL, NULL, 'SERVICE FOR NOVA7I/NOVA5I/P40LITE/P20LITE2019', 'service-for-nova7inova5ip40litep20lite2019', 'CODE128', '6932644435303', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1368, 3, 4, 'single', NULL, NULL, 'SERVICE FOR X7 2022/CW30PLUS/PLAY6T', 'service-for-x7-2022cw30plusplay6t', 'CODE128', '6932644404873', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1369, 3, 4, 'single', NULL, NULL, 'MK FOR Y6PRO 2019/8A/Y6 2019', 'mk-for-y6pro-20198ay6-2019', 'CODE128', '6932644410218', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1370, 3, 4, 'single', NULL, NULL, 'MK FOR Y9 2019/9P COG', 'mk-for-y9-20199p-cog', 'CODE128', '6932644410140', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1371, 3, 4, 'single', NULL, NULL, 'MK FOR Y9Prime 2019/10PLUS COG', 'mk-for-y9prime-201910plus-cog', 'CODE128', '6932644409342', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1372, 3, 4, 'single', NULL, NULL, 'MK FOR Y70/Y70PLUS/maiman 11/CX50', 'mk-for-y70y70plusmaiman-11cx50', 'CODE128', '6932644415039', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1373, 3, 4, 'single', NULL, NULL, 'MK FOR Enjoy20SE/Y7A/PSMART2021/X10LITE', 'mk-for-enjoy20sey7apsmart2021x10lite', 'CODE128', '6932644417859', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1374, 3, 4, 'single', NULL, NULL, 'MK FOR NOVA3I', 'mk-for-nova3i', 'CODE128', '6932644417743', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1375, 3, 4, 'single', NULL, NULL, 'MK FOR NOVA7I/NOVA5I/P40LITE/P20LITE2019', 'mk-for-nova7inova5ip40litep20lite2019', 'CODE128', '6932644422341', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1376, 3, 4, 'single', NULL, NULL, 'MK FOR Y6P2020/Y6-2020/9A/10E', 'mk-for-y6p2020y6-20209a10e', 'CODE128', '6932644409380', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1377, 3, 4, 'single', NULL, NULL, 'MK FOR Y5-2019 2.2', 'mk-for-y5-2019-22', 'CODE128', '6932644409403', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1378, 3, 4, 'single', NULL, NULL, 'MK FOR T1-701', 'mk-for-t1-701', 'CODE128', '6932644409434', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1379, 3, 4, 'single', NULL, NULL, 'MK FOR NOVA5T/Honor20 COF', 'mk-for-nova5thonor20-cof', 'CODE128', '6932644409465', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1380, 3, 4, 'single', NULL, NULL, 'MK FOR NOVA3IOR', 'mk-for-nova3ior', 'CODE128', '6932644409472', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1381, 3, 4, 'single', NULL, NULL, 'MK FOR 7A/Y6-2018', 'mk-for-7ay6-2018', 'CODE128', '6932644409526', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1382, 3, 4, 'single', NULL, NULL, 'MK FOR maimang6/nova2i/mate10lite', 'mk-for-maimang6nova2imate10lite', 'CODE128', '6932644410119', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1383, 3, 4, 'single', NULL, NULL, 'MK FOR HONOR10lite/Honor10lite/Honor20iCOG', 'mk-for-honor10litehonor10litehonor20icog', 'CODE128', '6932644410263', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1384, 3, 4, 'single', NULL, NULL, 'MK FOR cof NOVA7I/NOVA5I/P40LITE/P20LITE2019', 'mk-for-cof-nova7inova5ip40litep20lite2019', 'CODE128', '6932644410515', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1385, 3, 4, 'single', NULL, NULL, 'MK FOR Y9-2019 COF', 'mk-for-y9-2019-cof', 'CODE128', '6932644411024', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1386, 3, 4, 'single', NULL, NULL, 'MK FOR Psmart2019/Honor10/RY10 COG', 'mk-for-psmart2019honor10ry10-cog', 'CODE128', '6932644411109', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1387, 3, 4, 'single', NULL, NULL, 'MK FOR Y8P/Honor20lite/RY20lite', 'mk-for-y8phonor20litery20lite', 'CODE128', '6932644411130', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1388, 3, 4, 'single', NULL, NULL, 'MK FOR maimang7/MATE20LITE', 'mk-for-maimang7mate20lite', 'CODE128', '6932644411154', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1389, 3, 4, 'single', NULL, NULL, 'MK FOR Y7-2020/Y7P2020', 'mk-for-y7-2020y7p2020', 'CODE128', '6932644411161', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1390, 3, 4, 'single', NULL, NULL, 'MK FOR NOVA Y60', 'mk-for-nova-y60', 'CODE128', '6932644411192', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1391, 3, 4, 'single', NULL, NULL, 'MK FOR Y9S   COG', 'mk-for-y9s-cog', 'CODE128', '6932644411369', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1392, 3, 4, 'single', NULL, NULL, 'MK FOR p30pro W/F', 'mk-for-p30pro-wf', 'CODE128', '6932644413288', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1393, 3, 4, 'single', NULL, NULL, 'MK FOR Y9PRIME2019/10P/PSAMRT Z COF', 'mk-for-y9prime201910ppsamrt-z-cof', 'CODE128', '6932644413660', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1394, 3, 4, 'single', NULL, NULL, 'MK FOR Y9PRIME2019/10P/PSAMRT Z COG SMO', 'mk-for-y9prime201910ppsamrt-z-cog-smo', 'CODE128', '6932644413769', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1395, 3, 4, 'single', NULL, NULL, 'MK FOR W/F p20pro', 'mk-for-wf-p20pro', 'CODE128', '6932644414971', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1396, 3, 4, 'single', NULL, NULL, 'MK FOR NOVA5T/Honor20 COG', 'mk-for-nova5thonor20-cog', 'CODE128', '6932644416449', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1397, 3, 4, 'single', NULL, NULL, 'MK FOR GR5 2017/6X', 'mk-for-gr5-20176x', 'CODE128', '6932644416913', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1398, 3, 4, 'single', NULL, NULL, 'MK FOR P10LITE', 'mk-for-p10lite', 'CODE128', '6932644416951', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1399, 3, 4, 'single', NULL, NULL, 'MK FOR 8C', 'mk-for-8c', 'CODE128', '6932644417668', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1400, 3, 4, 'single', NULL, NULL, 'MK FOR NOVA Y90', 'mk-for-nova-y90', 'CODE128', '6932644417910', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1401, 3, 4, 'single', NULL, NULL, 'MK FOR NOVA8I COF', 'mk-for-nova8i-cof', 'CODE128', '6932644418092', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1402, 3, 4, 'single', NULL, NULL, 'MK FOR HONOR10lite/Honor10lite/Honor20iCOF', 'mk-for-honor10litehonor10litehonor20icof', 'CODE128', '6932644418122', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1403, 3, 4, 'single', NULL, NULL, 'MK FOR 7X/GR5-2018', 'mk-for-7xgr5-2018', 'CODE128', '6932644418245', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1404, 3, 4, 'single', NULL, NULL, 'MK FOR HONOR50lite/X20/ 8i COG', 'mk-for-honor50litex20-8i-cog', 'CODE128', '6932644418559', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1405, 3, 4, 'single', NULL, NULL, 'MK FOR 8XCOF', 'mk-for-8xcof', 'CODE128', '6932644418634', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1406, 3, 4, 'single', NULL, NULL, 'MK FOR Honor play', 'mk-for-honor-play', 'CODE128', '6932644419280', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1407, 3, 4, 'single', NULL, NULL, 'MK FOR NOVA7SE', 'mk-for-nova7se', 'CODE128', '6932644419303', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1408, 3, 4, 'single', NULL, NULL, 'MK FOR cof NOVA7I/NOVA5I/P40LITE/P20LITE2019 OR', 'mk-for-cof-nova7inova5ip40litep20lite2019-or', 'CODE128', '6932644420361', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1409, 3, 4, 'single', NULL, NULL, 'MK FOR Psmart2019/Honor10/RY10 COF', 'mk-for-psmart2019honor10ry10-cof', 'CODE128', '6932644421184', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1410, 3, 4, 'single', NULL, NULL, 'MK FOR P10 PLUS', 'mk-for-p10-plus', 'CODE128', '6932644422358', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1411, 3, 4, 'single', NULL, NULL, 'MK FOR Y5-20194.4', 'mk-for-y5-201944', 'CODE128', '6932644422983', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1412, 3, 4, 'single', NULL, NULL, 'MK FOR NOVA10SE', 'mk-for-nova10se', 'CODE128', '6932644424284', NULL, 10, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1413, 3, 4, 'single', NULL, NULL, 'Pura 70 Eagle Glasses head film', 'pura-70-eagle-glasses-head-film', 'CODE128', '6977577253686', NULL, 33, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1414, 3, 4, 'single', NULL, NULL, 'Pura 70Pro Eagle Glasses head film', 'pura-70pro-eagle-glasses-head-film', 'CODE128', '6977577253693', NULL, 33, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1415, 3, 4, 'single', NULL, NULL, 'FHD HUAWEI NOVA 9SE/HUAWEI SE 5G/HUAWEI NOVA 10 YOUTH/HUAWEI NOVA 11i/HUAWEI 20/HONOR 50SE/HONOR VO IQOO NEO 7/HONOR NEO 7SE/HONOR NEO7 RACING/HONOR NEO 7 PRO/HONOR NEO8/HONOR NEO8 PRO/HONOR IQOO 9(CHINA)/HONOR 10/HONOR 11S/HONOR 12', 'fhd-huawei-nova-9sehuawei-se-5ghuawei-nova-10-youthhuawei-nova-11ihuawei-20honor-50sehonor-vo-iqoo-neo-7honor-neo-7sehonor-neo7-racinghonor-neo-7-prohonor-neo8honor-neo8-prohonor-iqoo-9chinahonor-10honor-11shonor-12', 'CODE128', '6977577250418', NULL, 33, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1416, 3, 4, 'single', NULL, NULL, 'FHD HUAWEI NOVA Y90/HUAWEI ENJOY 50 PRO/HONOR X7B/HONOR X8 4G/HONOR X8A/HONOR X30i/HONOR X40i/HONOR X50i/HONOR PLAY 6T PRO/HONOR PLAY 7T PRO/HONOR PLAY 8T/HONOR PLAY 50 PLUS/HONOR 90 LITE/', 'fhd-huawei-nova-y90huawei-enjoy-50-prohonor-x7bhonor-x8-4ghonor-x8ahonor-x30ihonor-x40ihonor-x50ihonor-play-6t-prohonor-play-7t-prohonor-play-8thonor-play-50-plushonor-90-lite', 'CODE128', '6977577250432', NULL, 33, 12, 3, NULL, 9, '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1417, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A16/C25/A16S/C25S/A54S/Narzo 50A', 'flycdi-for-a16c25a16sc25sa54snarzo-50a', 'CODE128', '6932644400608', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1418, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A3S/A5/REALME C1/REALME2/AX5/A12E', 'flycdi-for-a3sa5realme-c1realme2ax5a12e', 'CODE128', '6932644400769', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1419, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A57/A58/A57S/A57 5G/A17/A17K/A58 5G/A77 4G/A77 5G/N20SE/A57S/A57E', 'flycdi-for-a57a58a57sa57-5ga17a17ka58-5ga77-4ga77-5gn20sea57sa57e', 'CODE128', '6932644402688', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1420, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A54 4G/A55 4G', 'flycdi-for-a54-4ga55-4g', 'CODE128', '6932644402022', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1421, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A11X/A11/narzo 20A/A8/C3I/C3/A31/5I/6I/A5 2020', 'flycdi-for-a11xa11narzo-20aa8c3ic3a315i6ia5-2020', 'CODE128', '6932644400189', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1422, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A5S/A7/A7N/A5S/AX5S/A11K/A12/A12S/REALME3/REALME3I', 'flycdi-for-a5sa7a7na5sax5sa11ka12a12srealme3realme3i', 'CODE128', '6932644402374', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1423, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR F11/A9/A9X', 'flycdi-for-f11a9a9x', 'CODE128', '6932644402527', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1424, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR F9/A7X/REALME Ul', 'flycdi-for-f9a7xrealme-ul', 'CODE128', '6932644400905', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1425, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A1K/C2', 'flycdi-for-a1kc2', 'CODE128', '6932644401902', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1426, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR F7/A3', 'flycdi-for-f7a3', 'CODE128', '6932644400868', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1427, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR F5/A73 black', 'flycdi-for-f5a73-black', 'CODE128', '6932644401100', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1428, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR F5/A73 white', 'flycdi-for-f5a73-white', 'CODE128', '6932644401117', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1429, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A52/A72/A92', 'flycdi-for-a52a72a92', 'CODE128', '6932644400820', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1430, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR RENO5 4G/RENO6 4G/RENO6 5G/RENO5 5G/RENO7/RENO7 5G/RENO5K/K9 5G/K9PRO 5G/REALME GT NEO/REALME GT NEO???/REALME Q3PRO???/REALME Q3PRO 5G/1+NORD 5G/FIND X3 LITE 5G/REALME GT???/REALME GT/REALME X7MAX', 'flycdi-for-reno5-4greno6-4greno6-5greno5-5greno7reno7-5greno5kk9-5gk9pro-5grealme-gt-neorealme-gt-neorealme-q3prorealme-q3pro-5g1nord-5gfind-x3-lite-5grealme-gtrealme-gtrealme-x7max', 'CODE128', '6932644401483', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1431, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A36/A76', 'flycdi-for-a36a76', 'CODE128', '6932644403661', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1432, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A59/F1S   BLACK', 'flycdi-for-a59f1s-black', 'CODE128', '6932644400226', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1433, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A59/F1S   WHITE', 'flycdi-for-a59f1s-white', 'CODE128', '6932644400233', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1434, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR K3/realmeX/reno2Z/RENO2F', 'flycdi-for-k3realmexreno2zreno2f', 'CODE128', '6932644403302', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1435, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A16/C25/A16S/C25S/A54S/Narzo 50A', 'service-for-a16c25a16sc25sa54snarzo-50a', 'CODE128', '6932644404057', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1436, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A3S/A5/REALME C1/REALME2/AX5/A12E', 'service-for-a3sa5realme-c1realme2ax5a12e', 'CODE128', '6932644404019', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1437, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A57/A58/A57S/A57 5G/A17/A17K/A58 5G/A77 4G/A77 5G/N20SE/A57S/A57E', 'service-for-a57a58a57sa57-5ga17a17ka58-5ga77-4ga77-5gn20sea57sa57e', 'CODE128', '6932644403975', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1438, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A54 4G/A55 4G', 'service-for-a54-4ga55-4g', 'CODE128', '6932644404088', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1439, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A11X/A11/narzo 20A/A8/C3I/C3/A31/5I/6I/A5 2020', 'service-for-a11xa11narzo-20aa8c3ic3a315i6ia5-2020', 'CODE128', '6932644404330', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1440, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A5S/A7/A7N/A5S/AX5S/A11K/A12/A12S/REALME3/REALME3I', 'service-for-a5sa7a7na5sax5sa11ka12a12srealme3realme3i', 'CODE128', '6932644404323', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1441, 3, 4, 'single', NULL, NULL, 'SERVICE FOR F11/A9/A9X', 'service-for-f11a9a9x', 'CODE128', '6932644404354', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1442, 3, 4, 'single', NULL, NULL, 'SERVICE FOR F9/A7X/REALME Ul', 'service-for-f9a7xrealme-ul', 'CODE128', '6932644404446', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1443, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A1K/C2', 'service-for-a1kc2', 'CODE128', '6932644404569', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1444, 3, 4, 'single', NULL, NULL, 'SERVICE FOR F7/A3', 'service-for-f7a3', 'CODE128', '6932644404460', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1445, 3, 4, 'single', NULL, NULL, 'SERVICE FOR F5/A73 black', 'service-for-f5a73-black', 'CODE128', '6932644404453', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1446, 3, 4, 'single', NULL, NULL, 'SERVICE FOR F5/A73 white', 'service-for-f5a73-white', 'CODE128', '6932644404668', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1447, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A52/A72/A92', 'service-for-a52a72a92', 'CODE128', '6932644404866', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1448, 3, 4, 'single', NULL, NULL, 'SERVICE FOR RENO7Z/RENO8Z/A74/A94 4G/A94 5G/A95 5G/A96 5G/RENO4SE/RENO5F/RENO5Z/RENO5LITE/RENO6Z/RENO6LITE/F19/F19S/F19PRO/F19PRO+/REALME X7/REALME V15 5G/REALME Q2PRO/REALME 8/REALME8PRO/REALME7PRO(??12??????)', 'service-for-reno7zreno8za74a94-4ga94-5ga95-5ga96-5greno4sereno5freno5zreno5litereno6zreno6litef19f19sf19prof19prorealme-x7realme-v15-5grealme-q2prorealme-8realme8prorealme7pro12', 'CODE128', '6932644404941', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1449, 3, 4, 'single', NULL, NULL, 'SERVICE FOR RENO5 4G/RENO6 4G/RENO6 5G/RENO5 5G/RENO7/RENO7 5G/RENO5K/K9 5G/K9PRO 5G/REALME GT NEO/REALME GT NEO???/REALME Q3PRO???/REALME Q3PRO 5G/1+NORD 5G/FIND X3 LITE 5G/REALME GT???/REALME GT/REALME X7MAX', 'service-for-reno5-4greno6-4greno6-5greno5-5greno7reno7-5greno5kk9-5gk9pro-5grealme-gt-neorealme-gt-neorealme-q3prorealme-q3pro-5g1nord-5gfind-x3-lite-5grealme-gtrealme-gtrealme-x7max', 'CODE128', '6932644404958', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1450, 3, 4, 'single', NULL, NULL, 'SERVICE FOR F11PRO', 'service-for-f11pro', 'CODE128', '6932644405214', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1451, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A36/A76', 'service-for-a36a76', 'CODE128', '6932644405559', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1452, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A59/F1S   BLACK', 'service-for-a59f1s-black', 'CODE128', '6932644405764', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1453, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A59/F1S   WHITE', 'service-for-a59f1s-white', 'CODE128', '6932644405771', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1454, 3, 4, 'single', NULL, NULL, 'SERVICE FOR RENO7 5G', 'service-for-reno7-5g', 'CODE128', '6932644406204', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1455, 3, 4, 'single', NULL, NULL, 'MK FOR A16/C25/A16S/C25S/A54S/Narzo 50A', 'mk-for-a16c25a16sc25sa54snarzo-50a', 'CODE128', '6932644408482', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1456, 3, 4, 'single', NULL, NULL, 'MK FOR A3S/A5/REALME C1/REALME2/AX5/A12E', 'mk-for-a3sa5realme-c1realme2ax5a12e', 'CODE128', '6932644408833', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1457, 3, 4, 'single', NULL, NULL, 'MK FOR A57/A58/A57S/A57 5G/A17/A17K/A58 5G/A77 4G/A77 5G/N20SE/A57S/A57E', 'mk-for-a57a58a57sa57-5ga17a17ka58-5ga77-4ga77-5gn20sea57sa57e', 'CODE128', '6932644424499', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1458, 3, 4, 'single', NULL, NULL, 'MK FOR A54 4G/A55 4G', 'mk-for-a54-4ga55-4g', 'CODE128', '6932644416289', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1459, 3, 4, 'single', NULL, NULL, 'MK FOR A11X/A11/narzo 20A/A8/C3I/C3/A31/5I/6I/A5 2020', 'mk-for-a11xa11narzo-20aa8c3ic3a315i6ia5-2020', 'CODE128', '6932644408888', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1460, 3, 4, 'single', NULL, NULL, 'MK FOR A5S/A7/A7N/A5S/AX5S/A11K/A12/A12S/REALME3/REALME3I', 'mk-for-a5sa7a7na5sax5sa11ka12a12srealme3realme3i', 'CODE128', '6932644408734', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1461, 3, 4, 'single', NULL, NULL, 'MK FOR F11/A9/A9X', 'mk-for-f11a9a9x', 'CODE128', '6932644408673', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1462, 3, 4, 'single', NULL, NULL, 'MK FOR F9/A7X/REALME Ul', 'mk-for-f9a7xrealme-ul', 'CODE128', '6932644408598', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1463, 3, 4, 'single', NULL, NULL, 'MK FOR A1K/C2', 'mk-for-a1kc2', 'CODE128', '6932644408864', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1464, 3, 4, 'single', NULL, NULL, 'MK FOR A52/A72/A92', 'mk-for-a52a72a92', 'CODE128', '6932644416081', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1465, 3, 4, 'single', NULL, NULL, 'MK FOR RENO5 4G/RENO6 4G/RENO6 5G/RENO5 5G/RENO7/RENO7 5G/RENO5K/K9 5G/K9PRO 5G/REALME GT NEO/REALME GT NEO???/REALME Q3PRO???/REALME Q3PRO 5G/1+NORD 5G/FIND X3 LITE 5G/REALME GT???/REALME GT/REALME X7MAX', 'mk-for-reno5-4greno6-4greno6-5greno5-5greno7reno7-5greno5kk9-5gk9pro-5grealme-gt-neorealme-gt-neorealme-q3prorealme-q3pro-5g1nord-5gfind-x3-lite-5grealme-gtrealme-gtrealme-x7max', 'CODE128', '6932644410461', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1466, 3, 4, 'single', NULL, NULL, 'MK FOR F11PRO', 'mk-for-f11pro', 'CODE128', '6932644424345', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1467, 3, 4, 'single', NULL, NULL, 'MK FOR A37  BLACK OPPO', 'mk-for-a37-black-oppo', 'CODE128', '6932644408840', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1468, 3, 4, 'single', NULL, NULL, 'MK FOR A37  WHITE', 'mk-for-a37-white', 'CODE128', '6932644408857', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1469, 3, 4, 'single', NULL, NULL, 'MK FOR A36  BLACK OPPO', 'mk-for-a36-black-oppo', 'CODE128', '6932644413929', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1470, 3, 4, 'single', NULL, NULL, 'MK FOR A71', 'mk-for-a71', 'CODE128', '6932644416111', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1471, 3, 4, 'single', NULL, NULL, 'MK FOR RENO2', 'mk-for-reno2', 'CODE128', '6932644417095', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1472, 3, 4, 'single', NULL, NULL, 'MK FOR A93 4G/RENO 4', 'mk-for-a93-4greno-4', 'CODE128', '6932644420125', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1473, 3, 4, 'single', NULL, NULL, 'MK FOR F5/A73', 'mk-for-f5a73', 'CODE128', '6932644416241', NULL, 10, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1474, 3, 4, 'single', NULL, NULL, 'FHD OPPO REALME C2/OPPO C2 2022/OPPO C2S/OPPO A1K', 'fhd-oppo-realme-c2oppo-c2-2022oppo-c2soppo-a1k', 'CODE128', '6977577250784', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1475, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  Reno7Z', 'privacy-op-reno7z', 'CODE128', '6977577251507', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1476, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  RENO8Z', 'privacy-op-reno8z', 'CODE128', '6977577251514', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1477, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  REALME10PRO', 'privacy-op-realme10pro', 'CODE128', '6977577251538', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1478, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  Realme 6', 'privacy-op-realme-6', 'CODE128', '6977577251545', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1479, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  RealmeC3', 'privacy-op-realmec3', 'CODE128', '6977577251552', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1480, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  Realme C15', 'privacy-op-realme-c15', 'CODE128', '6977577251569', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1481, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  Realme 7i', 'privacy-op-realme-7i', 'CODE128', '6977577251576', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1482, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  RealmeC21Y/C25Y', 'privacy-op-realmec21yc25y', 'CODE128', '6977577251583', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1483, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  Realme C35', 'privacy-op-realme-c35', 'CODE128', '6977577251590', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1484, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  REALMEC30', 'privacy-op-realmec30', 'CODE128', '6977577251606', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1485, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  REALMEC30S', 'privacy-op-realmec30s', 'CODE128', '6977577251613', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1486, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  REALME10 4G', 'privacy-op-realme10-4g', 'CODE128', '6977577251637', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1487, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  RENO8T', 'privacy-op-reno8t', 'CODE128', '6977577251651', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1488, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  REALMEC55', 'privacy-op-realmec55', 'CODE128', '6977577251668', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1489, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  REALEMC53/C51', 'privacy-op-realemc53c51', 'CODE128', '6977577251675', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1490, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  REALME C67', 'privacy-op-realme-c67', 'CODE128', '6977577251699', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1491, 3, 4, 'single', NULL, NULL, 'PRIVACY OP  REALME C67 4G', 'privacy-op-realme-c67-4g', 'CODE128', '6977577251712', NULL, 33, 6, 3, NULL, 9, '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1811, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y3/Y3/Y3S/Y11/Y12/Y15/Y17/U3X/U10', 'flycdi-for-y3y3y3sy11y12y15y17u3xu10', 'CODE128', '6932644401391', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1812, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y20/Y20A/Y20I/Y12S/Y20S/Y20G/Y20SG/U1X/Y20A-2021/Y20-2021/Y12S-2021/Y12S-2021/Y3S/Y30G/Y20A/Y20-V2043/Y15A', 'flycdi-for-y20y20ay20iy12sy20sy20gy20sgu1xy20a-2021y20-2021y12s-2021y12s-2021y3sy30gy20ay20-v2043y15a', 'CODE128', '6932644400172', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1813, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y93/Y1S/Y90/Y91/Y91I/Y91C/Y93S/Y95/U1', 'flycdi-for-y93y1sy90y91y91iy91cy93sy95u1', 'CODE128', '6932644400479', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1814, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y21/Y33S/Y21T/Y32/Y33E/Y32S/Y21E/Y21G/Y21S/Y02S/Y21A/Y31???/Y51S/Y16', 'flycdi-for-y21y33sy21ty32y33ey32sy21ey21gy21sy02sy21ay31y51sy16', 'CODE128', '6932644401513', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1815, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y52S/U3X/Y31/Y31S/Y72', 'flycdi-for-y52su3xy31y31sy72', 'CODE128', '6932644401056', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1816, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y19/Y5S/Z5I/U20', 'flycdi-for-y19y5sz5iu20', 'CODE128', '6932644402534', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1817, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y71', 'flycdi-for-y71', 'CODE128', '6932644400998', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1818, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y71 White', 'flycdi-for-y71-white', 'CODE128', '6932644401001', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1819, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR V15/S1', 'flycdi-for-v15s1', 'CODE128', '6932644403135', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1820, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y85/V9', 'flycdi-for-y85v9', 'CODE128', '6932644400851', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1821, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y81/Y81I/Y81S/Y83/Y83A', 'flycdi-for-y81y81iy81sy83y83a', 'CODE128', '6932644401049', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1822, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y30/Y30I', 'flycdi-for-y30y30i', 'CODE128', '6932644402039', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1823, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y67/V5  BLACK', 'flycdi-for-y67v5-black', 'CODE128', '6932644400240', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1824, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y67/V5  WHITE', 'flycdi-for-y67v5-white', 'CODE128', '6932644400257', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1825, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y79/V7+  BLACK', 'flycdi-for-y79v7-black', 'CODE128', '6932644401018', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1826, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR Y79/V7+  WHITE', 'flycdi-for-y79v7-white', 'CODE128', '6932644401025', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1827, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR W/F Y93/Y1S/Y90/Y91/Y91I/Y91C/Y93S/Y95/U1', 'flycdi-for-wf-y93y1sy90y91y91iy91cy93sy95u1', 'CODE128', '6932644402756', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1828, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y3/Y3/Y3S/Y11/Y12/Y15/Y17/U3X/U10', 'service-for-y3y3y3sy11y12y15y17u3xu10', 'CODE128', '6932644404026', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1829, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y20/Y20A/Y20I/Y12S/Y20S/Y20G/Y20SG/U1X/Y20A-2021/Y20-2021/Y12S-2021/Y12S-2021/Y3S/Y30G/Y20A/Y20-V2043/Y15A', 'service-for-y20y20ay20iy12sy20sy20gy20sgu1xy20a-2021y20-2021y12s-2021y12s-2021y3sy30gy20ay20-v2043y15a', 'CODE128', '6932644404064', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1830, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y93/Y1S/Y90/Y91/Y91I/Y91C/Y93S/Y95/U1', 'service-for-y93y1sy90y91y91iy91cy93sy95u1', 'CODE128', '6932644404040', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1831, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y21/Y33S/Y21T/Y32/Y33E/Y32S/Y21E/Y21G/Y21S/Y02S/Y21A/Y31???/Y51S/Y16', 'service-for-y21y33sy21ty32y33ey32sy21ey21gy21sy02sy21ay31y51sy16', 'CODE128', '6932644404378', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1832, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y52S/U3X/Y31/Y31S/Y72', 'service-for-y52su3xy31y31sy72', 'CODE128', '6932644404286', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1833, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y19/Y5S/Z5I/U20', 'service-for-y19y5sz5iu20', 'CODE128', '6932644404514', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1834, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y71', 'service-for-y71', 'CODE128', '6932644404590', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1835, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y71 White', 'service-for-y71-white', 'CODE128', '6932644404620', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1836, 3, 4, 'single', NULL, NULL, 'SERVICE FOR V15/S1', 'service-for-v15s1', 'CODE128', '6932644404644', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1837, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y85/V9', 'service-for-y85v9', 'CODE128', '6932644404651', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1838, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y50', 'service-for-y50', 'CODE128', '6932644404804', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1839, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y35 4G', 'service-for-y35-4g', 'CODE128', '6932644404897', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1840, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y81/Y81I/Y81S/Y83/Y83A', 'service-for-y81y81iy81sy83y83a', 'CODE128', '6932644404972', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1841, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y30/Y30I', 'service-for-y30y30i', 'CODE128', '6932644405238', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1842, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y17S/Y22/Y36/Y28/Y22S/Y36I/Y36M/Y28 5G', 'service-for-y17sy22y36y28y22sy36iy36my28-5g', 'CODE128', '6932644406174', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1843, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y53S/Y33S 4G/ Y51/Y75 5G/Y77 5G/Y55S/Y72 5G/Y76 5G /Y75 5G/Y51/Y31/Y51A/Y56 5G/T2X 5G/Y56 5G/Y76S/Y76 5G', 'service-for-y53sy33s-4g-y51y75-5gy77-5gy55sy72-5gy76-5g-y75-5gy51y31y51ay56-5gt2x-5gy56-5gy76sy76-5g', 'CODE128', '6932644406747', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1844, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y15S', 'service-for-y15s', 'CODE128', '6932644406181', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1845, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Y02/Y02T', 'service-for-y02y02t', 'CODE128', '6932644406815', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1846, 3, 4, 'single', NULL, NULL, 'MK FOR Y3/Y3/Y3S/Y11/Y12/Y15/Y17/U3X/U10', 'mk-for-y3y3y3sy11y12y15y17u3xu10', 'CODE128', '6932644407461', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1847, 3, 4, 'single', NULL, NULL, 'MK FOR Y20/Y20A/Y20I/Y12S/Y20S/Y20G/Y20SG/U1X/Y20A-2021/Y20-2021/Y12S-2021/Y12S-2021/Y3S/Y30G/Y20A/Y20-V2043/Y15A', 'mk-for-y20y20ay20iy12sy20sy20gy20sgu1xy20a-2021y20-2021y12s-2021y12s-2021y3sy30gy20ay20-v2043y15a', 'CODE128', '6932644407478', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1848, 3, 4, 'single', NULL, NULL, 'MK FOR Y21/Y33S/Y21T/Y32/Y33E/Y32S/Y21E/Y21G/Y21S/Y02S/Y21A/Y31???/Y51S/Y16', 'mk-for-y21y33sy21ty32y33ey32sy21ey21gy21sy02sy21ay31y51sy16', 'CODE128', '6932644418016', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1849, 3, 4, 'single', NULL, NULL, 'MK FOR Y19/Y5S/Z5I/U20', 'mk-for-y19y5sz5iu20', 'CODE128', '6932644407485', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1850, 3, 4, 'single', NULL, NULL, 'MK FOR Y85/V9/V9PRO/Z1/Z1I /Z3X', 'mk-for-y85v9v9proz1z1i-z3x', 'CODE128', '6932644407270', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1851, 3, 4, 'single', NULL, NULL, 'MK FOR Y81/Y81I/Y81S/Y83/Y83A', 'mk-for-y81y81iy81sy83y83a', 'CODE128', '6932644407294', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1852, 3, 4, 'single', NULL, NULL, 'MK FOR Y75/V7', 'mk-for-y75v7', 'CODE128', '6932644407331', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1853, 3, 4, 'single', NULL, NULL, 'MK FOR Y52S/Y53S/Y3S 2020/Y31 2020/Y51 2020/Y31S/IQOOU3/IQOOU3X/Z3', 'mk-for-y52sy53sy3s-2020y31-2020y51-2020y31siqoou3iqoou3xz3', 'CODE128', '6932644407430', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1854, 3, 4, 'single', NULL, NULL, 'MK FOR Y31/Y53S/T1X/Y52S/Y31S/U3/U3X/Z3/Y51/Y51A/Y71 5G/Z5X', 'mk-for-y31y53st1xy52sy31su3u3xz3y51y51ay71-5gz5x', 'CODE128', '6932644413417', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1855, 3, 4, 'single', NULL, NULL, 'MK FOR Y71/Y73', 'mk-for-y71y73', 'CODE128', '6932644413554', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1856, 3, 4, 'single', NULL, NULL, 'MK FOR V17', 'mk-for-v17', 'CODE128', '6932644414599', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1857, 3, 4, 'single', NULL, NULL, 'MK FOR Y50', 'mk-for-y50', 'CODE128', '6932644416234', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1858, 3, 4, 'single', NULL, NULL, 'MK FOR Y85/V9/V9PRO/Z1/Z1I /Z3X SMO', 'mk-for-y85v9v9proz1z1i-z3x-smo', 'CODE128', '6932644417507', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1859, 3, 4, 'single', NULL, NULL, 'MK FOR Y79/V7+  BLACK', 'mk-for-y79v7-black', 'CODE128', '6932644417934', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1860, 3, 4, 'single', NULL, NULL, 'MK FOR Y79/V7+  WHITE', 'mk-for-y79v7-white', 'CODE128', '6932644417941', NULL, 10, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1861, 3, 4, 'single', NULL, NULL, 'FHD VIVO Y01/Y02/Y02A/Y02S/Y02T/Y3S/Y11 2023/Y11S/Y12 2023/Y12S/Y12A/Y15S/Y16/Y17S/Y20/Y20I/Y20G/Y20A/Y21/Y21S/Y21T/Y21A/Y21G/Y22/Y22S/Y30 CHINA/Y31/Y31S 5G/Y32/Y33/Y33S/Y33S 5G/Y33T/Y33E/Y35/Y35M/Y35M+/Y36(CHINA)/Y36i/Y36M/Y51A/Y52 5G/Y52T 5G/Y52S/Y52S T1/Y51 2020 DEC/Y53S/Y55 5G/Y55S 5G/Y56 5G/Y72 5G/Y73T 5G/Y75 5G/Y75S 5G/Y76 5G/Y76S 5G/Y77 5G/Y77E/T1 5G/T1X/T1X 4G/T2X/T2X(INDIA)/IQOO U5/Z3/Z5X/Z6/Z6X/Z6 LITE/Z7i/FOR:REDMI 10 5G/10 PRIME+ 5G/11 PRIME/10X 5G/11 PRIME 5G/NOTE 11E/NOTE 11R/A1/A1+/A2/A2+/FOR:XIAOMI POCO M4 5G/M5/C50/C51/FOR:ONE PLUS NORD N20 SE/NORD N300 5G/MI 10 LITE/10 YOUTH 5G', 'fhd-vivo-y01y02y02ay02sy02ty3sy11-2023y11sy12-2023y12sy12ay15sy16y17sy20y20iy20gy20ay21y21sy21ty21ay21gy22y22sy30-chinay31y31s-5gy32y33y33sy33s-5gy33ty33ey35y35my35my36chinay36iy36my51ay52-5gy52t-5gy52sy52s-t1y51-2020-decy53sy55-5gy55s-5gy56-5gy72-5gy73t-5gy75-5gy75s-5gy76-5gy76s-5gy77-5gy77et1-5gt1xt1x-4gt2xt2xindiaiqoo-u5z3z5xz6z6xz6-litez7iforredmi-10-5g10-prime-5g11-prime10x-5g11-prime-5gnote-11enote-11ra1a1a2a2forxiaomi-poco-m4-5gm5c50c51forone-plus-nord-n20-senord-n300-5gmi-10-lite10-youth-5g', 'CODE128', '6977577250647', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1862, 3, 4, 'single', NULL, NULL, 'FHD VIVO Y3/Y11/Y12/Y12i/Y15/Y17/U10', 'fhd-vivo-y3y11y12y12iy15y17u10', 'CODE128', '6977577250654', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1863, 3, 4, 'single', NULL, NULL, 'FHD VO S9/S7/S7T/V20 Pro/S10/S10 Pro/S12/V23 5g', 'fhd-vo-s9s7s7tv20-pros10s10-pros12v23-5g', 'CODE128', '6977577250678', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1864, 3, 4, 'single', NULL, NULL, 'PRIVACY VI  Y11/Y17', 'privacy-vi-y11y17', 'CODE128', '6977577252320', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1865, 3, 4, 'single', NULL, NULL, 'PRIVACY VI  Y19', 'privacy-vi-y19', 'CODE128', '6977577252344', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1866, 3, 4, 'single', NULL, NULL, 'PRIVACY VI  Y30', 'privacy-vi-y30', 'CODE128', '6977577252368', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1867, 3, 4, 'single', NULL, NULL, 'PRIVACY VI  Y20', 'privacy-vi-y20', 'CODE128', '6977577252375', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1868, 3, 4, 'single', NULL, NULL, 'PRIVACY VI  Y91/Y95', 'privacy-vi-y91y95', 'CODE128', '6977577252399', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1869, 3, 4, 'single', NULL, NULL, 'PRIVACY VI  Y33S', 'privacy-vi-y33s', 'CODE128', '6977577252412', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1870, 3, 4, 'single', NULL, NULL, 'PRIVACY VI  Y12A', 'privacy-vi-y12a', 'CODE128', '6977577252429', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1871, 3, 4, 'single', NULL, NULL, 'PRIVACY VI  Y78/Y36', 'privacy-vi-y78y36', 'CODE128', '6977577252498', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1872, 3, 4, 'single', NULL, NULL, 'PRIVACY VI  Y02T', 'privacy-vi-y02t', 'CODE128', '6977577252528', NULL, 33, 7, 3, NULL, 9, '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1907, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR C21Y/C25Y', 'flycdi-for-c21yc25y', 'CODE128', '6932644401889', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1908, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR REALME6/REALME6S/REALME6I/REALME7/REALME NARZO 20PRO/REALME NARZO 30 4G', 'flycdi-for-realme6realme6srealme6irealme7realme-narzo-20prorealme-narzo-30-4g', 'CODE128', '6932644400813', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1909, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR REALME7I/A53/A32/A33/A53S/REALMEC17', 'flycdi-for-realme7ia53a32a33a53srealmec17', 'CODE128', '6932644446996', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1910, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR C30/C33', 'flycdi-for-c30c33', 'CODE128', '6932644402442', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1911, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR A15S/A15/A35/NARZO 30A/REALME V3/C11/C12/C15/A16K', 'flycdi-for-a15sa15a35narzo-30arealme-v3c11c12c15a16k', 'CODE128', '6932644400516', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30');
INSERT INTO `products` (`id`, `company_id`, `warehouse_id`, `product_type`, `parent_id`, `parent_item_code`, `name`, `slug`, `barcode_symbology`, `item_code`, `image`, `category_id`, `brand_id`, `unit_id`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1912, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR C20/C11 2021', 'flycdi-for-c20c11-2021', 'CODE128', '6932644402015', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1913, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR REALME 5Pro/REALME Q', 'flycdi-for-realme-5prorealme-q', 'CODE128', '6932644402053', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1914, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR REALME C31', 'flycdi-for-realme-c31', 'CODE128', '6932644402367', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1915, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR REALME 3PRO/REALME X', 'flycdi-for-realme-3prorealme-x', 'CODE128', '6932644402046', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1916, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR C35', 'flycdi-for-c35', 'CODE128', '6932644402343', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1917, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR REALME C51/C53/N53/NOTE50/C60', 'flycdi-for-realme-c51c53n53note50c60', 'CODE128', '6932644450542', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1918, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR REALME 8I/9I/NARZO 50/K10/A96 4G ??', 'flycdi-for-realme-8i9inarzo-50k10a96-4g', 'CODE128', '6932644449669', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1919, 3, 4, 'single', NULL, NULL, 'SERVICE FOR C21Y/C25Y', 'service-for-c21yc25y', 'CODE128', '6932644404071', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1920, 3, 4, 'single', NULL, NULL, 'SERVICE FOR REALME6/REALME6S/REALME6I/REALME7/REALME NARZO 20PRO/REALME NARZO 30 4G', 'service-for-realme6realme6srealme6irealme7realme-narzo-20prorealme-narzo-30-4g', 'CODE128', '6932644404156', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1921, 3, 4, 'single', NULL, NULL, 'SERVICE FOR REALME7I/A53/A32/A33/A53S/REALMEC17', 'service-for-realme7ia53a32a33a53srealmec17', 'CODE128', '6932644404309', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1922, 3, 4, 'single', NULL, NULL, 'SERVICE FOR C30/C33', 'service-for-c30c33', 'CODE128', '6932644404293', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1923, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A15S/A15/A35/NARZO 30A/REALME V3/C11/C12/C15/A16K', 'service-for-a15sa15a35narzo-30arealme-v3c11c12c15a16k', 'CODE128', '6932644404699', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1924, 3, 4, 'single', NULL, NULL, 'SERVICE FOR REALME 8 5G/A93S 5G/K9X 5G/REALME V13 5G/REALME Q3I 5G /REALME 8S 5G/REALME 9 5G', 'service-for-realme-8-5ga93s-5gk9x-5grealme-v13-5grealme-q3i-5g-realme-8s-5grealme-9-5g', 'CODE128', '6932644404262', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1925, 3, 4, 'single', NULL, NULL, 'SERVICE FOR C20/C11 2021', 'service-for-c20c11-2021', 'CODE128', '6932644404361', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1926, 3, 4, 'single', NULL, NULL, 'SERVICE FOR REALME 5Pro/REALME Q', 'service-for-realme-5prorealme-q', 'CODE128', '6932644404415', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1927, 3, 4, 'single', NULL, NULL, 'SERVICE FOR REALME C31', 'service-for-realme-c31', 'CODE128', '6932644404422', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1928, 3, 4, 'single', NULL, NULL, 'SERVICE FOR REALME 3PRO/REALME X', 'service-for-realme-3prorealme-x', 'CODE128', '6932644404538', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1929, 3, 4, 'single', NULL, NULL, 'SERVICE FOR A72 5G/A73 5G/A53 5G/K7X/REALME Q2/REALME V5/REALME 7 5G/NARZO30PRO', 'service-for-a72-5ga73-5ga53-5gk7xrealme-q2realme-v5realme-7-5gnarzo30pro', 'CODE128', '6932644404576', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1930, 3, 4, 'single', NULL, NULL, 'SERVICE FOR C35', 'service-for-c35', 'CODE128', '6932644405153', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1931, 3, 4, 'single', NULL, NULL, 'SERVICE FOR Realme C67 4G', 'service-for-realme-c67-4g', 'CODE128', '6932644406679', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1932, 3, 4, 'single', NULL, NULL, 'SERVICE FOR REALME C51/C53/N53/NOTE50/C60', 'service-for-realme-c51c53n53note50c60', 'CODE128', '6932644406150', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1933, 3, 4, 'single', NULL, NULL, 'SERVICE FOR C65', 'service-for-c65', 'CODE128', '6932644400318', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1934, 3, 4, 'single', NULL, NULL, 'SERVICE FOR C63/N63/C61', 'service-for-c63n63c61', 'CODE128', '6932644400486', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1935, 3, 4, 'single', NULL, NULL, 'SERVICE FOR REALME C67 5G/REALME C55/OPPO K11X 5G/OPPO A1 5G/0PPO F23 5G/A98 5G/REALME 11 5G/REALME NARZO N55/1+ NORD N30 5G/1+ NORD CE3 LITE 5G/REALME 11X 5G/REALME NARZO 60X 5G/A58 4G/OPPO A79 5G/RLM V50/RLM V5OS/OPPO A2 5G/1+NORD N30SE 5G/RLM 11 5G', 'service-for-realme-c67-5grealme-c55oppo-k11x-5goppo-a1-5g0ppo-f23-5ga98-5grealme-11-5grealme-narzo-n551-nord-n30-5g1-nord-ce3-lite-5grealme-11x-5grealme-narzo-60x-5ga58-4goppo-a79-5grlm-v50rlm-v5osoppo-a2-5g1nord-n30se-5grlm-11-5g', 'CODE128', '6932644445166', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1936, 3, 4, 'single', NULL, NULL, 'SERVICE FOR C30S', 'service-for-c30s', 'CODE128', '6932644406808', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1937, 3, 4, 'single', NULL, NULL, 'SERVICE FOR REALME 8I/9I/NARZO 50/K10/A96 4G ??', 'service-for-realme-8i9inarzo-50k10a96-4g', 'CODE128', '6932644406143', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1938, 3, 4, 'single', NULL, NULL, 'MK FOR C21Y/C25Y', 'mk-for-c21yc25y', 'CODE128', '6932644408499', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1939, 3, 4, 'single', NULL, NULL, 'MK FOR REALME6/REALME6S/REALME6I/REALME7/REALME NARZO 20PRO/REALME NARZO 30 4G', 'mk-for-realme6realme6srealme6irealme7realme-narzo-20prorealme-narzo-30-4g', 'CODE128', '6932644409533', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1940, 3, 4, 'single', NULL, NULL, 'MK FOR C30/C33', 'mk-for-c30c33', 'CODE128', '6932644418627', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1941, 3, 4, 'single', NULL, NULL, 'MK FOR A15S/A15/A35/NARZO 30A/REALME V3/C11/C12/C15/A16K', 'mk-for-a15sa15a35narzo-30arealme-v3c11c12c15a16k', 'CODE128', '6932644415862', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1942, 3, 4, 'single', NULL, NULL, 'MK FOR REALME 8 5G/A93S 5G/K9X 5G/REALME V13 5G/REALME Q3I 5G /REALME 8S 5G/REALME 9 5G', 'mk-for-realme-8-5ga93s-5gk9x-5grealme-v13-5grealme-q3i-5g-realme-8s-5grealme-9-5g', 'CODE128', '6932644421047', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1943, 3, 4, 'single', NULL, NULL, 'MK FOR C20/C11 2021', 'mk-for-c20c11-2021', 'CODE128', '6932644408512', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1944, 3, 4, 'single', NULL, NULL, 'MK FOR REALME 5Pro/REALME Q', 'mk-for-realme-5prorealme-q', 'CODE128', '6932644408550', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1945, 3, 4, 'single', NULL, NULL, 'MK FOR C35', 'mk-for-c35', 'CODE128', '6932644416067', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1946, 3, 4, 'single', NULL, NULL, 'MK FOR REALME C51/C53/N53/NOTE50/C60', 'mk-for-realme-c51c53n53note50c60', 'CODE128', '6932644423119', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1947, 3, 4, 'single', NULL, NULL, 'MK FOR C30S', 'mk-for-c30s', 'CODE128', '6932644421733', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1948, 3, 4, 'single', NULL, NULL, 'MK FOR REALME 8I/9I/NARZO 50/K10/A96 4G ??', 'mk-for-realme-8i9inarzo-50k10a96-4g', 'CODE128', '6932644421856', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1949, 3, 4, 'single', NULL, NULL, 'MK FOR 3PRO/REALMEX', 'mk-for-3prorealmex', 'CODE128', '6932644408567', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1950, 3, 4, 'single', NULL, NULL, 'MK FOR REALME7I A32/A33/A53/A53S/REALMEC17', 'mk-for-realme7i-a32a33a53a53srealmec17', 'CODE128', '6932644429708', NULL, 10, 8, 3, NULL, 9, '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1951, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 6.2/NOK 7.2/NOK 6.7', 'mk-for-nok-62nok-72nok-67', 'CODE128', '6932644412229', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1952, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 1.4', 'mk-for-nok-14', 'CODE128', '6932644413325', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1953, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 5.1plus', 'mk-for-nok-51plus', 'CODE128', '6932644413905', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1954, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 2.3', 'mk-for-nok-23', 'CODE128', '6932644416135', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1955, 3, 4, 'single', NULL, NULL, 'MK FOR NOK3.4', 'mk-for-nok34', 'CODE128', '6932644417682', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1956, 3, 4, 'single', NULL, NULL, 'MK FOR NOK C2', 'mk-for-nok-c2', 'CODE128', '6932644418405', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1957, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 3.2', 'mk-for-nok-32', 'CODE128', '6932644419174', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1958, 3, 4, 'single', NULL, NULL, 'MK FOR NOK C10', 'mk-for-nok-c10', 'CODE128', '6932644419808', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1959, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 6.1PLUS', 'mk-for-nok-61plus', 'CODE128', '6932644420651', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1960, 3, 4, 'single', NULL, NULL, 'MK FOR NOK C3', 'mk-for-nok-c3', 'CODE128', '6932644420668', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1961, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 2', 'mk-for-nok-2', 'CODE128', '6932644420675', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1962, 3, 4, 'single', NULL, NULL, 'MK FOR NOK G50', 'mk-for-nok-g50', 'CODE128', '6932644420699', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1963, 3, 4, 'single', NULL, NULL, 'MK FOR NOK C1 PLUS', 'mk-for-nok-c1-plus', 'CODE128', '6932644420712', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1964, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 1.3', 'mk-for-nok-13', 'CODE128', '6932644420729', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1965, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 2.1', 'mk-for-nok-21', 'CODE128', '6932644420736', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1966, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 2.2', 'mk-for-nok-22', 'CODE128', '6932644420743', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1967, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 3', 'mk-for-nok-3', 'CODE128', '6932644420750', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1968, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 6', 'mk-for-nok-6', 'CODE128', '6932644420774', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1969, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 1 OR', 'mk-for-nok-1-or', 'CODE128', '6932644420781', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1970, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 6.1', 'mk-for-nok-61', 'CODE128', '6932644420798', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1971, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 3.1', 'mk-for-nok-31', 'CODE128', '6932644420880', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1972, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 5', 'mk-for-nok-5', 'CODE128', '6932644420897', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1973, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 6.2', 'mk-for-nok-62', 'CODE128', '6932644420903', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1974, 3, 4, 'single', NULL, NULL, 'MK FOR NOK 3.1SMO', 'mk-for-nok-31smo', 'CODE128', '6932644423393', NULL, 10, 14, 3, NULL, 9, '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1975, 3, 4, 'single', NULL, NULL, 'SERVICE FOR MI6X/A2', 'service-for-mi6xa2', 'CODE128', '6932644405023', NULL, 10, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1976, 3, 4, 'single', NULL, NULL, 'MK FOR POCOx3/NOTE9PRO 5g', 'mk-for-pocox3note9pro-5g', 'CODE128', '6932644410171', NULL, 10, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1977, 3, 4, 'single', NULL, NULL, 'MK FOR MI9T/K20/K20pro/Mi9Tpro', 'mk-for-mi9tk20k20promi9tpro', 'CODE128', '6932644416432', NULL, 10, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1978, 3, 4, 'single', NULL, NULL, 'MK FOR POCO X3 GT/Redmi note 10 pro 5g', 'mk-for-poco-x3-gtredmi-note-10-pro-5g', 'CODE128', '6932644419990', NULL, 10, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1979, 3, 4, 'single', NULL, NULL, 'MK FOR NOTE10 OLED', 'mk-for-note10-oled', 'CODE128', '6932644421276', NULL, 10, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1980, 3, 4, 'single', NULL, NULL, 'FHD REDMI  10C/10 INDIA/10 POWER/RM 12C/RM 11A/FOR:XIAOMI POCO C40/C55', 'fhd-redmi-10c10-india10-powerrm-12crm-11aforxiaomi-poco-c40c55', 'CODE128', '6977577250449', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1981, 3, 4, 'single', NULL, NULL, 'FHD REDMI 10 4G/10 2022/10 PRIME/10 PRIME 2022/NOTE 10 5G/10T 5G/\nNOTE 11 4G/NOTE 11SE/POCO M3 PRO/M3 PRO 5G', 'fhd-redmi-10-4g10-202210-prime10-prime-2022note-10-5g10t-5g-note-11-4gnote-11sepoco-m3-prom3-pro-5g', 'CODE128', '6977577250456', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1982, 3, 4, 'single', NULL, NULL, 'FHD REDMI 12 4G/5G/RM NOTE 12R/POCO M6 PRO', 'fhd-redmi-12-4g5grm-note-12rpoco-m6-pro', 'CODE128', '6977577250470', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1983, 3, 4, 'single', NULL, NULL, 'FHD REDMI NOTE 10 4G/NOTE 10S/NOTE 11 2022/\n11S 2022/NOTE 12S/NOTE 11SE (india)/FOR:XIAOMI POCO M4 PRO 2022/M5S', 'fhd-redmi-note-10-4gnote-10snote-11-2022-11s-2022note-12snote-11se-indiaforxiaomi-poco-m4-pro-2022m5s', 'CODE128', '6977577250500', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1984, 3, 4, 'single', NULL, NULL, 'FHD REDMI NOTE 11 5G CHINA/11T 5G 2021/11S 5G/POCO M4 PRO 5G', 'fhd-redmi-note-11-5g-china11t-5g-202111s-5gpoco-m4-pro-5g', 'CODE128', '6977577250524', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1985, 3, 4, 'single', NULL, NULL, 'FHD REDMI NOTE 11T PRO/NOTE 11T PRO+/NOTE 12T PRO/RM K50i/POCO X4 GT', 'fhd-redmi-note-11t-pronote-11t-pronote-12t-prorm-k50ipoco-x4-gt', 'CODE128', '6977577250531', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1986, 3, 4, 'single', NULL, NULL, 'FHD REDMI NOTE 7/7 PRO/7S/Y3', 'fhd-redmi-note-77-pro7sy3', 'CODE128', '6977577250562', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1987, 3, 4, 'single', NULL, NULL, 'PRIVACY XM RedmiNOTE 10(4G)/5(G)', 'privacy-xm-redminote-104g5g', 'CODE128', '6977577252689', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1988, 3, 4, 'single', NULL, NULL, 'PRIVACY XM RedmiNOTE 10PRO', 'privacy-xm-redminote-10pro', 'CODE128', '6977577252696', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1989, 3, 4, 'single', NULL, NULL, 'PRIVACY XM  REDMI A1/A2', 'privacy-xm-redmi-a1a2', 'CODE128', '6977577252702', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1990, 3, 4, 'single', NULL, NULL, 'PRIVACY XM  NOTE12PRO/XM POCO X5 PRO', 'privacy-xm-note12proxm-poco-x5-pro', 'CODE128', '6977577252573', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1991, 3, 4, 'single', NULL, NULL, 'PRIVACY XM  REDMI12', 'privacy-xm-redmi12', 'CODE128', '6977577252719', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1992, 3, 4, 'single', NULL, NULL, 'PRIVACY XM  RedmiK40', 'privacy-xm-redmik40', 'CODE128', '6977577252733', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1993, 3, 4, 'single', NULL, NULL, 'PRIVACY XM  Redmi note11 4G/11S/125S', 'privacy-xm-redmi-note11-4g11s125s', 'CODE128', '6977577252757', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1994, 3, 4, 'single', NULL, NULL, 'PRIVACY XM  REDMI12C', 'privacy-xm-redmi12c', 'CODE128', '6977577252771', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1995, 3, 4, 'single', NULL, NULL, 'PRIVACY XM  NOTE12 4G', 'privacy-xm-note12-4g', 'CODE128', '6977577252634', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1996, 3, 4, 'single', NULL, NULL, 'PRIVACY XM  NOTE13PRO', 'privacy-xm-note13pro', 'CODE128', '6977577252665', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1997, 3, 4, 'single', NULL, NULL, 'PRIVACY XM  REDMI13C', 'privacy-xm-redmi13c', 'CODE128', '6977577252849', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1998, 3, 4, 'single', NULL, NULL, 'PRIVACY XM  REDMI A3', 'privacy-xm-redmi-a3', 'CODE128', '6977577252856', NULL, 33, 5, 3, NULL, 9, '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1999, 3, 4, 'single', NULL, NULL, 'MK FOR Itel A15/F1/F2', 'mk-for-itel-a15f1f2', 'CODE128', '6932644415646', NULL, 10, 19, 3, NULL, 9, '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2000, 3, 4, 'single', NULL, NULL, 'MK FOR Itel A16/A33/A23', 'mk-for-itel-a16a33a23', 'CODE128', '6932644415647', NULL, 10, 19, 3, NULL, 9, '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2001, 3, 4, 'single', NULL, NULL, 'MK FOR P33plus', 'mk-for-p33plus', 'CODE128', '6932644416838', NULL, 10, 19, 3, NULL, 9, '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2002, 3, 4, 'single', NULL, NULL, 'MK FOR A37  BLACK iTELL', 'mk-for-a37-black-itell', 'CODE128', '6932644418894', NULL, 10, 19, 3, NULL, 9, '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2003, 3, 4, 'single', NULL, NULL, 'MK FOR A37', 'mk-for-a37', 'CODE128', '6932644419372', NULL, 10, 19, 3, NULL, 9, '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2004, 3, 4, 'single', NULL, NULL, 'MK FOR A56', 'mk-for-a56', 'CODE128', '6932644419396', NULL, 10, 19, 3, NULL, 9, '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2005, 3, 4, 'single', NULL, NULL, 'MK FOR P36PLAY', 'mk-for-p36play', 'CODE128', '6932644419839', NULL, 10, 19, 3, NULL, 9, '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2006, 3, 4, 'single', NULL, NULL, 'MK FOR A58LITE', 'mk-for-a58lite', 'CODE128', '6932644420286', NULL, 10, 19, 3, NULL, 9, '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2007, 3, 4, 'single', NULL, NULL, 'MK FOR A35 /A25', 'mk-for-a35-a25', 'CODE128', '6932644420439', NULL, 10, 19, 3, NULL, 9, '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2008, 3, 4, 'single', NULL, NULL, 'MK FOR Pixel 7A orgOLED', 'mk-for-pixel-7a-orgoled', 'CODE128', '6932644425144', NULL, 10, 11, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2009, 3, 4, 'single', NULL, NULL, 'MK FOR Pixel 7 orgOLED', 'mk-for-pixel-7-orgoled', 'CODE128', '6932644425151', NULL, 10, 11, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2010, 3, 4, 'single', NULL, NULL, 'MK FOR Pixel 6OLED', 'mk-for-pixel-6oled', 'CODE128', '6932644425182', NULL, 10, 11, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2011, 3, 4, 'single', NULL, NULL, 'MK FOR Pixel 4A 5G -orgOLED', 'mk-for-pixel-4a-5g-orgoled', 'CODE128', '6932644425199', NULL, 10, 11, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2012, 3, 4, 'single', NULL, NULL, 'MK FOR Pixel 4A 4G -orgOLED', 'mk-for-pixel-4a-4g-orgoled', 'CODE128', '6932644425205', NULL, 10, 11, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2013, 3, 4, 'single', NULL, NULL, 'MK FOR Pixel 3 WF org OLED', 'mk-for-pixel-3-wf-org-oled', 'CODE128', '6932644425250', NULL, 10, 11, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2014, 3, 4, 'single', NULL, NULL, 'MK FOR PIXEL 5', 'mk-for-pixel-5', 'CODE128', '6932644428244', NULL, 10, 11, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2015, 3, 4, 'single', NULL, NULL, 'MK FOR Pixel 7PROOLED', 'mk-for-pixel-7prooled', 'CODE128', '6932644428336', NULL, 10, 11, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2016, 3, 4, 'single', NULL, NULL, 'SERVICE FOR E7/E7 POWER/E7i POWER', 'service-for-e7e7-powere7i-power', 'CODE128', '6932644405085', NULL, 10, 9, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2017, 3, 4, 'single', NULL, NULL, 'SERVICE FOR G10/G30', 'service-for-g10g30', 'CODE128', '6932644405092', NULL, 10, 9, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2018, 3, 4, 'single', NULL, NULL, 'SERVICE FOR G8POWERLITE', 'service-for-g8powerlite', 'CODE128', '6932644405108', NULL, 10, 9, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2019, 3, 4, 'single', NULL, NULL, 'SERVICE FOR G9 PLAY/E7PLUS', 'service-for-g9-playe7plus', 'CODE128', '6932644405115', NULL, 10, 9, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2020, 3, 4, 'single', NULL, NULL, 'SERVICE FOR W/FE7', 'service-for-wfe7', 'CODE128', '6932644405122', NULL, 10, 9, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2021, 3, 4, 'single', NULL, NULL, 'SERVICE FOR W/FG9 PLAY/E7PLUS', 'service-for-wfg9-playe7plus', 'CODE128', '6932644405139', NULL, 10, 9, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2022, 3, 4, 'single', NULL, NULL, 'SERVICE FOR W/FE7POWER', 'service-for-wfe7power', 'CODE128', '6932644405146', NULL, 10, 9, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2023, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR OLED ONE PLUS7/1+7T OLED', 'flycdi-for-oled-one-plus717t-oled', 'CODE128', '6932644402930', NULL, 10, 10, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2024, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR OLED ONE PLUS6/1+6T OLED', 'flycdi-for-oled-one-plus616t-oled', 'CODE128', '6932644402947', NULL, 10, 10, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2025, 3, 4, 'single', NULL, NULL, 'MK FOR ONE PLUS6 /1+6 OLED', 'mk-for-one-plus6-16-oled', 'CODE128', '6932644419334', NULL, 10, 10, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2026, 3, 4, 'single', NULL, NULL, 'MK FOR ONE PLUS 3/1+3/ ONE PLUS 3T/1+3TOLED', 'mk-for-one-plus-313-one-plus-3t13toled', 'CODE128', '6932644424390', NULL, 10, 10, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2027, 3, 4, 'single', NULL, NULL, 'MK FOR K12', 'mk-for-k12', 'CODE128', '6932644420910', NULL, 10, 15, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2028, 3, 4, 'single', NULL, NULL, 'MK FOR TAB M7 - 7306', 'mk-for-tab-m7-7306', 'CODE128', '6932644425298', NULL, 10, 15, 3, NULL, 9, '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2030, 3, 4, 'single', NULL, NULL, 'FLYCDI FOR NOTE11/NOTE12/X663/X663B/X633C/X663D/X670', 'flycdi-for-note11note12x663x663bx633cx663dx670', 'CODE128', '6932640000000', NULL, 10, 17, 3, NULL, 9, '2025-07-18 13:45:42', '2025-07-18 13:45:42'),
(2033, 3, 4, 'variable', NULL, NULL, 'Iphone 17 PRO MAX', 'iphone-17-pro-max-fbu4mw5p', 'CODE128', '731022458', NULL, 11, 3, 3, NULL, 9, '2025-07-22 08:46:41', '2025-07-22 08:46:41'),
(2034, 3, 4, 'single', 2033, '731022458', 'Iphone 17 PRO MAX - FLYCDI', 'iphone-17-pro-max-flycdi', 'CODE128', '4391163853', NULL, 11, 3, 3, NULL, 9, '2025-07-22 08:49:53', '2025-07-22 08:49:53'),
(2035, 3, 4, 'single', NULL, NULL, 'XYZ', 'xyz-srv4nsmq', 'CODE128', '7439288180', NULL, 11, 3, 3, NULL, 9, '2025-07-22 09:05:41', '2025-07-22 09:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_custom_fields`
--

CREATE TABLE `product_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `field_name` varchar(191) NOT NULL,
  `field_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `current_stock` double(8,2) NOT NULL DEFAULT 0.00,
  `mrp` double DEFAULT NULL,
  `purchase_price` double NOT NULL,
  `sales_price` double NOT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_tax_type` varchar(10) DEFAULT 'exclusive',
  `sales_tax_type` varchar(10) DEFAULT 'exclusive',
  `stock_quantitiy_alert` int(11) DEFAULT NULL,
  `opening_stock` int(11) DEFAULT NULL,
  `opening_stock_date` date DEFAULT NULL,
  `wholesale_price` double DEFAULT NULL,
  `wholesale_quantity` int(11) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'in_stock',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `warehouse_id`, `current_stock`, `mrp`, `purchase_price`, `sales_price`, `tax_id`, `purchase_tax_type`, `sales_tax_type`, `stock_quantitiy_alert`, `opening_stock`, `opening_stock_date`, `wholesale_price`, `wholesale_quantity`, `status`, `created_at`, `updated_at`) VALUES
(1068, 1071, 4, 0.00, 42.888888888889, 21.444444444444, 61.269841269841, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 61.269841269841, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1069, 1072, 4, 0.00, 49.555555555556, 24.777777777778, 70.793650793651, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 70.793650793651, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1070, 1073, 4, 0.00, 47.333333333333, 23.666666666667, 67.619047619048, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 67.619047619048, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1071, 1074, 4, 0.00, 42.888888888889, 21.444444444444, 61.269841269841, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 61.269841269841, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1072, 1075, 4, 0.00, 42.888888888889, 21.444444444444, 61.269841269841, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 61.269841269841, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1073, 1076, 4, 0.00, 45.111111111111, 22.555555555556, 64.444444444445, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 64.444444444445, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1074, 1077, 4, 0.00, 46.222222222222, 23.111111111111, 66.031746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.031746031746, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1075, 1078, 4, 0.00, 53.111111111111, 26.555555555556, 75.873015873016, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 75.873015873016, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1076, 1079, 4, 0.00, 46.222222222222, 23.111111111111, 66.031746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.031746031746, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1077, 1080, 4, 0.00, 41.777777777778, 20.888888888889, 59.68253968254, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 59.68253968254, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1078, 1081, 4, 0.00, 44, 22, 62.857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.857142857143, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1079, 1082, 4, 0.00, 45.777777777778, 22.888888888889, 65.396825396825, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 65.396825396825, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1080, 1083, 4, 0.00, 41.111111111111, 20.555555555556, 58.730158730159, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 58.730158730159, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1081, 1084, 4, 0.00, 44, 22, 62.857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.857142857143, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1082, 1085, 4, 0.00, 45.111111111111, 22.555555555556, 64.444444444445, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 64.444444444445, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1083, 1086, 4, 0.00, 44, 22, 62.857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.857142857143, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1084, 1087, 4, 0.00, 58.666666666667, 29.333333333333, 83.809523809524, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 83.809523809524, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1085, 1088, 4, 0.00, 39.555555555556, 19.777777777778, 56.507936507937, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 56.507936507937, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1086, 1089, 4, 0.00, 39.555555555556, 19.777777777778, 56.507936507937, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 56.507936507937, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1087, 1090, 4, 0.00, 39.555555555556, 19.777777777778, 56.507936507937, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 56.507936507937, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1088, 1091, 4, 0.00, 44, 22, 62.857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.857142857143, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1089, 1092, 4, 0.00, 110.44444444444, 55.222222222222, 157.77777777778, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 157.77777777778, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1090, 1093, 4, 0.00, 110.44444444444, 55.222222222222, 157.77777777778, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 157.77777777778, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1091, 1094, 4, 0.00, 110.44444444444, 55.222222222222, 157.77777777778, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 157.77777777778, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1092, 1095, 4, 8.00, 62, 31, 88.571428571429, NULL, 'exclusive', 'exclusive', 5, 8, '0000-00-00', 88.571428571429, 5, 'in_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1093, 1096, 4, 0.00, 57.555555555556, 28.777777777778, 82.222222222222, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 82.222222222222, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1094, 1097, 4, 0.00, 62, 31, 88.571428571429, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 88.571428571429, 5, 'out_of_stock', '2025-07-02 04:18:46', '2025-07-02 04:18:46'),
(1095, 1098, 4, 0.00, 52, 26, 74.285714285714, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 74.285714285714, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1096, 1099, 4, 0.00, 46.222222222222, 23.111111111111, 66.031746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.031746031746, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1097, 1100, 4, 0.00, 50.666666666667, 25.333333333333, 72.380952380952, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 72.380952380952, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1098, 1101, 4, 0.00, 133.11111111111, 66.555555555556, 190.15873015873, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 190.15873015873, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1099, 1102, 4, 0.00, 144.44444444444, 72.222222222222, 206.34920634921, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 206.34920634921, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1100, 1103, 4, 1.00, 121.31519274376, 60.657596371882, 173.30741820538, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 173.30741820538, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1101, 1104, 4, 0.00, 144.44444444444, 72.222222222222, 206.34920634921, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 206.34920634921, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1102, 1105, 4, 0.00, 127.55555555556, 63.777777777778, 182.22222222222, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 182.22222222222, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1103, 1106, 4, 0.00, 138.66666666667, 69.333333333333, 198.09523809524, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 198.09523809524, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1104, 1107, 4, 0.00, 127.55555555556, 63.777777777778, 182.22222222222, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 182.22222222222, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1105, 1108, 4, 0.00, 144.44444444444, 72.222222222222, 206.34920634921, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 206.34920634921, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1106, 1109, 4, 48.00, 63.245614035088, 31.622807017544, 90.350877192983, NULL, 'exclusive', 'exclusive', 5, 48, '0000-00-00', 90.350877192983, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1107, 1110, 4, 32.00, 63.245614035088, 31.622807017544, 90.350877192983, NULL, 'exclusive', 'exclusive', 5, 32, '0000-00-00', 90.350877192983, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1108, 1111, 4, 60.00, 136.73099415205, 68.365497076023, 195.32999164578, NULL, 'exclusive', 'exclusive', 5, 60, '0000-00-00', 195.32999164578, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1109, 1112, 4, 9.00, 48.78947368421, 24.394736842105, 69.699248120301, NULL, 'exclusive', 'exclusive', 5, 9, '0000-00-00', 69.699248120301, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1110, 1113, 4, 29.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 29, '0000-00-00', NULL, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1111, 1114, 4, 20.00, 458.38011695906, 229.19005847953, 654.82873851295, NULL, 'exclusive', 'exclusive', 5, 20, '0000-00-00', 654.82873851295, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1112, 1115, 4, 4.00, 169.25730994152, 84.62865497076, 241.79615705931, NULL, 'exclusive', 'exclusive', 5, 4, '0000-00-00', 241.79615705931, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1113, 1116, 4, 10.00, 178.89473684211, 89.447368421053, 255.56390977444, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', 255.56390977444, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1114, 1117, 4, 17.00, 44.573099415205, 22.286549707602, 63.675856307435, NULL, 'exclusive', 'exclusive', 5, 17, '0000-00-00', 63.675856307435, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1115, 1118, 4, 20.00, 44.573099415205, 22.286549707602, 63.675856307435, NULL, 'exclusive', 'exclusive', 5, 20, '0000-00-00', 63.675856307435, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1116, 1119, 4, 10.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', NULL, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1117, 1120, 4, 15.00, 74.087719298246, 37.043859649123, 105.83959899749, NULL, 'exclusive', 'exclusive', 5, 15, '0000-00-00', 105.83959899749, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1118, 1121, 4, 20.00, 47.343859649123, 23.671929824561, 67.634085213033, NULL, 'exclusive', 'exclusive', 5, 20, '0000-00-00', 67.634085213033, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1119, 1122, 4, 19.00, 46.259649122807, 23.129824561404, 66.085213032582, NULL, 'exclusive', 'exclusive', 5, 19, '0000-00-00', 66.085213032582, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1120, 1123, 4, 22.00, 47.343859649123, 23.671929824561, 67.634085213033, NULL, 'exclusive', 'exclusive', 5, 22, '0000-00-00', 67.634085213033, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1121, 1124, 4, 16.00, 482.47368421053, 241.23684210526, 689.24812030075, NULL, 'exclusive', 'exclusive', 5, 16, '0000-00-00', 689.24812030075, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1122, 1125, 4, 16.00, 325.86549707602, 162.93274853801, 465.52213868003, NULL, 'exclusive', 'exclusive', 5, 16, '0000-00-00', 465.52213868003, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1123, 1126, 4, 20.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 20, '0000-00-00', NULL, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1124, 1127, 4, 3.00, 74.087719298246, 37.043859649123, 105.83959899749, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 105.83959899749, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1125, 1128, 4, 20.00, 171.66666666667, 85.833333333333, 245.2380952381, NULL, 'exclusive', 'exclusive', 5, 20, '0000-00-00', 245.2380952381, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1126, 1129, 4, 5.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 5, '0000-00-00', NULL, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1127, 1130, 4, 10.00, 68.06432748538, 34.03216374269, 97.234753550543, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', 97.234753550543, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1128, 1131, 4, 10.00, 68.06432748538, 34.03216374269, 97.234753550543, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', 97.234753550543, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1129, 1132, 4, 5.00, 72.883040935672, 36.441520467836, 104.1186299081, NULL, 'exclusive', 'exclusive', 5, 5, '0000-00-00', 104.1186299081, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1130, 1133, 4, 10.00, 68.06432748538, 34.03216374269, 97.234753550543, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', 97.234753550543, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1131, 1134, 4, 0.00, 493.82716049383, 246.91358024691, 705.46737213404, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 705.46737213404, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1132, 1135, 4, 0.00, 666.66666666667, 333.33333333333, 952.38095238095, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 952.38095238095, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1133, 1136, 4, 0.00, 555.55555555556, 277.77777777778, 793.65079365079, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 793.65079365079, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1134, 1137, 4, 0.00, 641.97530864198, 320.98765432099, 917.10758377425, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 917.10758377425, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1135, 1138, 4, 0.00, 716.04938271605, 358.02469135802, 1022.9276895943, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1022.9276895943, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1136, 1139, 4, 0.00, 691.35802469136, 345.67901234568, 987.65432098765, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 987.65432098765, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1137, 1140, 4, 0.00, 962.96296296296, 481.48148148148, 1375.6613756614, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1375.6613756614, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1138, 1141, 4, 0.00, 753.08641975309, 376.54320987654, 1075.8377425044, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1075.8377425044, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1139, 1142, 4, 0.00, 901.23456790124, 450.61728395062, 1287.4779541446, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1287.4779541446, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1140, 1143, 4, 0.00, 1135.8024691358, 567.9012345679, 1622.5749559083, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1622.5749559083, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1141, 1144, 4, 0.00, 617.28395061728, 308.64197530864, 881.83421516755, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 881.83421516755, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1142, 1145, 4, 0.00, 617.28395061728, 308.64197530864, 881.83421516755, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 881.83421516755, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1143, 1146, 4, 0.00, 1012.3456790124, 506.17283950617, 1446.2081128748, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1446.2081128748, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1144, 1147, 4, 0.00, 888.88888888889, 444.44444444444, 1269.8412698413, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1269.8412698413, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1145, 1148, 4, 0.00, 740.74074074074, 370.37037037037, 1058.2010582011, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1058.2010582011, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1146, 1149, 4, 0.00, 1432.0987654321, 716.04938271605, 2045.8553791887, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 2045.8553791887, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1147, 1150, 4, 0.00, 901.23456790124, 450.61728395062, 1287.4779541446, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1287.4779541446, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1148, 1151, 4, 0.00, 654.32098765432, 327.16049382716, 934.7442680776, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 934.7442680776, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1149, 1152, 4, 0.00, 1296.2962962963, 648.14814814815, 1851.8518518518, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1851.8518518518, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1150, 1153, 4, 0.00, 913.58024691358, 456.79012345679, 1305.114638448, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1305.114638448, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1151, 1154, 4, 0.00, 1049.3827160494, 524.69135802469, 1499.1181657848, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1499.1181657848, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1152, 1155, 4, 0.00, 1419.7530864197, 709.87654320988, 2028.2186948854, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 2028.2186948854, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1153, 1156, 4, 0.00, 654.32098765432, 327.16049382716, 934.7442680776, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 934.7442680776, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1154, 1157, 4, 0.00, 703.7037037037, 351.85185185185, 1005.291005291, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1005.291005291, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1155, 1158, 4, 0.00, 691.35802469136, 345.67901234568, 987.65432098765, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 987.65432098765, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1156, 1159, 4, 0.00, 864.1975308642, 432.0987654321, 1234.5679012346, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1234.5679012346, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1157, 1160, 4, 0.00, 888.88888888889, 444.44444444444, 1269.8412698413, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1269.8412698413, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1158, 1161, 4, 0.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', NULL, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1159, 1162, 4, 0.00, 1197.5308641975, 598.76543209877, 1710.758377425, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 1710.758377425, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1160, 1163, 4, 88.00, 37.414965986395, 18.707482993197, 53.449951409135, NULL, 'exclusive', 'exclusive', 5, 88, '0000-00-00', 53.449951409135, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1161, 1164, 4, 79.00, 40.249433106576, 20.124716553288, 57.499190152251, NULL, 'exclusive', 'exclusive', 5, 79, '0000-00-00', 57.499190152251, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1162, 1165, 4, 3.00, 36.848072562358, 18.424036281179, 52.640103660512, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 52.640103660512, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1163, 1166, 4, 91.00, 34.013605442177, 17.006802721088, 48.590864917395, NULL, 'exclusive', 'exclusive', 5, 91, '0000-00-00', 48.590864917395, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1164, 1167, 4, 0.00, 37.777777777778, 18.888888888889, 53.968253968254, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 53.968253968254, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1165, 1168, 4, 0.00, 42.222222222222, 21.111111111111, 60.31746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 60.31746031746, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1166, 1169, 4, 16.00, 37.981859410431, 18.990929705215, 54.259799157758, NULL, 'exclusive', 'exclusive', 5, 16, '0000-00-00', 54.259799157758, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1167, 1170, 4, 27.00, 35.147392290249, 17.573696145125, 50.210560414642, NULL, 'exclusive', 'exclusive', 5, 27, '0000-00-00', 50.210560414642, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1168, 1171, 4, 229.00, 45.351473922902, 22.675736961451, 64.787819889861, NULL, 'exclusive', 'exclusive', 5, 229, '0000-00-00', 64.787819889861, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1169, 1172, 4, 25.00, 37.981859410431, 18.990929705215, 54.259799157758, NULL, 'exclusive', 'exclusive', 5, 25, '0000-00-00', 54.259799157758, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1170, 1173, 4, 576.00, 36.281179138322, 18.140589569161, 51.830255911889, NULL, 'exclusive', 'exclusive', 5, 576, '0000-00-00', 51.830255911889, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1171, 1174, 4, 114.00, 36.281179138322, 18.140589569161, 51.830255911889, NULL, 'exclusive', 'exclusive', 5, 114, '0000-00-00', 51.830255911889, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1172, 1175, 4, 4.00, 37.414965986395, 18.707482993197, 53.449951409135, NULL, 'exclusive', 'exclusive', 5, 4, '0000-00-00', 53.449951409135, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1173, 1176, 4, 773.00, 32.879818594104, 16.439909297052, 46.971169420149, NULL, 'exclusive', 'exclusive', 5, 773, '0000-00-00', 46.971169420149, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1174, 1177, 4, 57.00, 31.179138321996, 15.589569160998, 44.541626174279, NULL, 'exclusive', 'exclusive', 5, 57, '0000-00-00', 44.541626174279, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1175, 1178, 4, 25.00, 47.619047619048, 23.809523809524, 68.027210884354, NULL, 'exclusive', 'exclusive', 5, 25, '0000-00-00', 68.027210884354, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1176, 1179, 4, 0.00, 40, 20, 57.142857142857, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.142857142857, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1177, 1180, 4, 0.00, 37.777777777778, 18.888888888889, 53.968253968254, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 53.968253968254, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1178, 1181, 4, 0.00, 42.222222222222, 21.111111111111, 60.31746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 60.31746031746, 5, 'out_of_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1179, 1182, 4, 26.00, 51.111111111111, 25.555555555556, 73.015873015873, NULL, 'exclusive', 'exclusive', 5, 26, '0000-00-00', 73.015873015873, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1180, 1183, 4, 76.00, 30.612244897959, 15.30612244898, 43.731778425656, NULL, 'exclusive', 'exclusive', 5, 76, '0000-00-00', 43.731778425656, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1181, 1184, 4, 41.00, 30.612244897959, 15.30612244898, 43.731778425656, NULL, 'exclusive', 'exclusive', 5, 41, '0000-00-00', 43.731778425656, 5, 'in_stock', '2025-07-02 04:18:47', '2025-07-02 04:18:47'),
(1182, 1185, 4, 69.00, 30.612244897959, 15.30612244898, 43.731778425656, NULL, 'exclusive', 'exclusive', 5, 69, '0000-00-00', 43.731778425656, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1183, 1186, 4, 20.00, 40, 20, 57.142857142857, NULL, 'exclusive', 'exclusive', 5, 20, '0000-00-00', 57.142857142857, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1184, 1187, 4, 170.00, 103.1746031746, 51.587301587302, 147.39229024943, NULL, 'exclusive', 'exclusive', 5, 170, '0000-00-00', 147.39229024943, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1185, 1188, 4, 13.00, 103.1746031746, 51.587301587302, 147.39229024943, NULL, 'exclusive', 'exclusive', 5, 13, '0000-00-00', 147.39229024943, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1186, 1189, 4, 47.00, 103.1746031746, 51.587301587302, 147.39229024943, NULL, 'exclusive', 'exclusive', 5, 47, '0000-00-00', 147.39229024943, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1187, 1190, 4, 0.00, 48.888888888889, 24.444444444444, 69.84126984127, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 69.84126984127, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1188, 1191, 4, 13.00, 48.888888888889, 24.444444444444, 69.84126984127, NULL, 'exclusive', 'exclusive', 5, 13, '0000-00-00', 69.84126984127, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1189, 1192, 4, 10.00, 158.73015873016, 79.365079365079, 226.75736961451, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', 226.75736961451, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1190, 1193, 4, 0.00, 46.666666666667, 23.333333333333, 66.666666666667, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.666666666667, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1191, 1194, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1192, 1195, 4, 14.00, 46.666666666667, 23.333333333333, 66.666666666667, NULL, 'exclusive', 'exclusive', 5, 14, '0000-00-00', 66.666666666667, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1193, 1196, 4, 15.00, 121.31519274376, 60.657596371882, 173.30741820538, NULL, 'exclusive', 'exclusive', 5, 15, '0000-00-00', 173.30741820538, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1194, 1197, 4, 12.00, 126.98412698413, 63.492063492063, 181.40589569161, NULL, 'exclusive', 'exclusive', 5, 12, '0000-00-00', 181.40589569161, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1195, 1198, 4, 0.00, 124.44444444444, 62.222222222222, 177.77777777778, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 177.77777777778, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1196, 1199, 4, 16.00, 126.98412698413, 63.492063492063, 181.40589569161, NULL, 'exclusive', 'exclusive', 5, 16, '0000-00-00', 181.40589569161, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1197, 1200, 4, 14.00, 122.44897959184, 61.224489795918, 174.92711370262, NULL, 'exclusive', 'exclusive', 5, 14, '0000-00-00', 174.92711370262, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1198, 1201, 4, 4.00, 129.25170068027, 64.625850340136, 184.6452866861, NULL, 'exclusive', 'exclusive', 5, 4, '0000-00-00', 184.6452866861, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1199, 1202, 4, 13.00, 121.31519274376, 60.657596371882, 173.30741820538, NULL, 'exclusive', 'exclusive', 5, 13, '0000-00-00', 173.30741820538, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1200, 1203, 4, 15.00, 128.1179138322, 64.0589569161, 183.02559118886, NULL, 'exclusive', 'exclusive', 5, 15, '0000-00-00', 183.02559118886, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1201, 1204, 4, 3.00, 39.754385964912, 19.877192982456, 56.791979949875, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 56.791979949875, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1202, 1205, 4, 14.00, 39.754385964912, 19.877192982456, 56.791979949875, NULL, 'exclusive', 'exclusive', 5, 14, '0000-00-00', 56.791979949875, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1203, 1206, 4, 27.00, 46.741520467836, 23.370760233918, 66.773600668337, NULL, 'exclusive', 'exclusive', 5, 27, '0000-00-00', 66.773600668337, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1204, 1207, 4, 7.00, 54.812865497076, 27.406432748538, 78.304093567251, NULL, 'exclusive', 'exclusive', 5, 7, '0000-00-00', 78.304093567251, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1205, 1208, 4, 22.00, 46.741520467836, 23.370760233918, 66.773600668337, NULL, 'exclusive', 'exclusive', 5, 22, '0000-00-00', 66.773600668337, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1206, 1209, 4, 2.00, 37.414965986395, 18.707482993197, 53.449951409135, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 53.449951409135, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1207, 1210, 4, 0.00, 35.555555555556, 17.777777777778, 50.793650793651, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 50.793650793651, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1208, 1211, 4, 0.00, 37.777777777778, 18.888888888889, 53.968253968254, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 53.968253968254, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1209, 1212, 4, 0.00, 37.777777777778, 18.888888888889, 53.968253968254, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 53.968253968254, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1210, 1213, 4, 0.00, 37.777777777778, 18.888888888889, 53.968253968254, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 53.968253968254, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1211, 1214, 4, 1673.00, 24.093567251462, 12.046783625731, 34.419381787803, NULL, 'exclusive', 'exclusive', 5, 1673, '0000-00-00', 34.419381787803, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1212, 1215, 4, 82.00, 110.22807017544, 55.114035087719, 157.4686716792, NULL, 'exclusive', 'exclusive', 5, 82, '0000-00-00', 157.4686716792, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1213, 1216, 4, 53.00, 110.22807017544, 55.114035087719, 157.4686716792, NULL, 'exclusive', 'exclusive', 5, 53, '0000-00-00', 157.4686716792, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1214, 1217, 4, 7.00, 110.22807017544, 55.114035087719, 157.4686716792, NULL, 'exclusive', 'exclusive', 5, 7, '0000-00-00', 157.4686716792, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1215, 1218, 4, 37.00, 110.22807017544, 55.114035087719, 157.4686716792, NULL, 'exclusive', 'exclusive', 5, 37, '0000-00-00', 157.4686716792, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1216, 1219, 4, 1.00, 33.12865497076, 16.56432748538, 47.326649958229, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 47.326649958229, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1217, 1220, 4, 35.00, 225.87719298246, 112.93859649123, 322.68170426065, NULL, 'exclusive', 'exclusive', 5, 35, '0000-00-00', 322.68170426065, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1218, 1221, 4, 1.00, 136.73099415205, 68.365497076023, 195.32999164578, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 195.32999164578, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1219, 1222, 4, 1.00, 135.52631578947, 67.763157894737, 193.60902255639, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 193.60902255639, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1220, 1223, 4, 0.00, 135.52631578947, 67.763157894737, 193.60902255639, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 193.60902255639, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1221, 1224, 4, 331.00, 129.50292397661, 64.751461988304, 185.00417710944, NULL, 'exclusive', 'exclusive', 5, 331, '0000-00-00', 185.00417710944, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1222, 1225, 4, 1.00, 37.947368421053, 18.973684210526, 54.210526315789, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 54.210526315789, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1223, 1226, 4, 67.00, 35.538011695906, 17.769005847953, 50.768588137009, NULL, 'exclusive', 'exclusive', 5, 67, '0000-00-00', 50.768588137009, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1224, 1227, 4, 20.00, 31.923976608187, 15.961988304094, 45.605680868839, NULL, 'exclusive', 'exclusive', 5, 20, '0000-00-00', 45.605680868839, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1225, 1228, 4, 4.00, 109.02339181287, 54.511695906433, 155.74770258981, NULL, 'exclusive', 'exclusive', 5, 4, '0000-00-00', 155.74770258981, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1226, 1229, 4, 61.00, 34.333333333333, 17.166666666667, 49.047619047619, NULL, 'exclusive', 'exclusive', 5, 61, '0000-00-00', 49.047619047619, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1227, 1230, 4, 4.00, 36.74269005848, 18.37134502924, 52.489557226399, NULL, 'exclusive', 'exclusive', 5, 4, '0000-00-00', 52.489557226399, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1228, 1231, 4, 3.00, 171.66666666667, 85.833333333333, 245.2380952381, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 245.2380952381, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1229, 1232, 4, 206.00, 42.766081871345, 21.383040935673, 61.09440267335, NULL, 'exclusive', 'exclusive', 5, 206, '0000-00-00', 61.09440267335, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1230, 1233, 4, 31.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 31, '0000-00-00', 62.81537176274, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1231, 1234, 4, 15.00, 137.93567251462, 68.96783625731, 197.05096073517, NULL, 'exclusive', 'exclusive', 5, 15, '0000-00-00', 197.05096073517, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1232, 1235, 4, 15.00, 231.90058479532, 115.95029239766, 331.2865497076, NULL, 'exclusive', 'exclusive', 5, 15, '0000-00-00', 331.2865497076, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1233, 1236, 4, 78.00, 169.25730994152, 84.62865497076, 241.79615705931, NULL, 'exclusive', 'exclusive', 5, 78, '0000-00-00', 241.79615705931, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1234, 1237, 4, 77.00, 31.923976608187, 15.961988304094, 45.605680868839, NULL, 'exclusive', 'exclusive', 5, 77, '0000-00-00', 45.605680868839, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1235, 1238, 4, 56.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 56, '0000-00-00', NULL, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1236, 1239, 4, 47.00, 119.86549707602, 59.932748538012, 171.23642439432, NULL, 'exclusive', 'exclusive', 5, 47, '0000-00-00', 171.23642439432, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1237, 1240, 4, 14.00, 110.22807017544, 55.114035087719, 157.4686716792, NULL, 'exclusive', 'exclusive', 5, 14, '0000-00-00', 157.4686716792, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1238, 1241, 4, 6.00, 110.22807017544, 55.114035087719, 157.4686716792, NULL, 'exclusive', 'exclusive', 5, 6, '0000-00-00', 157.4686716792, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1239, 1242, 4, 17.00, 119.86549707602, 59.932748538012, 171.23642439432, NULL, 'exclusive', 'exclusive', 5, 17, '0000-00-00', 171.23642439432, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1240, 1243, 4, 28.00, 119.86549707602, 59.932748538012, 171.23642439432, NULL, 'exclusive', 'exclusive', 5, 28, '0000-00-00', 171.23642439432, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1241, 1244, 4, 1.00, 33.12865497076, 16.56432748538, 47.326649958229, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 47.326649958229, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1242, 1245, 4, 32.00, 131.91228070175, 65.956140350877, 188.44611528822, NULL, 'exclusive', 'exclusive', 5, 32, '0000-00-00', 188.44611528822, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1243, 1246, 4, 10.00, 31.923976608187, 15.961988304094, 45.605680868839, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', 45.605680868839, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1244, 1247, 4, 2.00, 36.74269005848, 18.37134502924, 52.489557226399, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 52.489557226399, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1245, 1248, 4, 36.00, 119.86549707602, 59.932748538012, 171.23642439432, NULL, 'exclusive', 'exclusive', 5, 36, '0000-00-00', 171.23642439432, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1246, 1249, 4, 5.00, 458.38011695906, 229.19005847953, 654.82873851295, NULL, 'exclusive', 'exclusive', 5, 5, '0000-00-00', 654.82873851295, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1247, 1250, 4, 2.00, 52.40350877193, 26.201754385965, 74.862155388471, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 74.862155388471, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1248, 1251, 4, 50.00, 134.3216374269, 67.16081871345, 191.888053467, NULL, 'exclusive', 'exclusive', 5, 50, '0000-00-00', 191.888053467, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1249, 1252, 4, 2.00, 31.321637426901, 15.66081871345, 44.745196324144, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 44.745196324144, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1250, 1253, 4, 0.00, 46.380116959064, 23.190058479532, 66.25730994152, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.25730994152, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1251, 1254, 4, 1.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 62.81537176274, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1252, 1255, 4, 7.00, 51.198830409357, 25.599415204678, 73.141186299081, NULL, 'exclusive', 'exclusive', 5, 7, '0000-00-00', 73.141186299081, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1253, 1256, 4, 22.00, 38.549707602339, 19.27485380117, 55.071010860485, NULL, 'exclusive', 'exclusive', 5, 22, '0000-00-00', 55.071010860485, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1254, 1257, 4, 163.00, 37.947368421053, 18.973684210526, 54.210526315789, NULL, 'exclusive', 'exclusive', 5, 163, '0000-00-00', 54.210526315789, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1255, 1258, 4, 42.00, 45.777777777778, 22.888888888889, 65.396825396825, NULL, 'exclusive', 'exclusive', 5, 42, '0000-00-00', 65.396825396825, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1256, 1259, 4, 2.00, 140.34502923977, 70.172514619883, 200.49289891395, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 200.49289891395, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1257, 1260, 4, 36.00, 178.89473684211, 89.447368421053, 255.56390977444, NULL, 'exclusive', 'exclusive', 5, 36, '0000-00-00', 255.56390977444, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1258, 1261, 4, 10.00, 172.87134502924, 86.43567251462, 246.95906432749, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', 246.95906432749, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1259, 1262, 4, 7.00, 482.47368421053, 241.23684210526, 689.24812030075, NULL, 'exclusive', 'exclusive', 5, 7, '0000-00-00', 689.24812030075, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1260, 1263, 4, 1.00, 169.25730994152, 84.62865497076, 241.79615705931, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 241.79615705931, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1261, 1264, 4, 10.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', NULL, 5, 'in_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1262, 1265, 4, 1.00, 148.77777777778, 74.388888888889, 212.53968253968, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 212.53968253968, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1263, 1266, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1264, 1267, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1265, 1268, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1266, 1269, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1267, 1270, 4, 0.00, 3, 1.5, 4.2857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 4.2857142857143, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1268, 1271, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1269, 1272, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1270, 1273, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1271, 1274, 4, 0.00, 6.9444444444444, 3.4722222222222, 9.9206349206349, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 9.9206349206349, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1272, 1275, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1273, 1276, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:48', '2025-07-02 04:18:48'),
(1274, 1277, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1275, 1278, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1276, 1279, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1277, 1280, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1278, 1281, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1279, 1282, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1280, 1283, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1281, 1284, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1282, 1285, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1283, 1286, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1284, 1287, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1285, 1288, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1286, 1289, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1287, 1290, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1288, 1291, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1289, 1292, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1290, 1293, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1291, 1294, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1292, 1295, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1293, 1296, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1294, 1297, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1295, 1298, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1296, 1299, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1297, 1300, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1298, 1301, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1299, 1302, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1300, 1303, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1301, 1304, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1302, 1305, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1303, 1306, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1304, 1307, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1305, 1308, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1306, 1309, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1307, 1310, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1308, 1311, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1309, 1312, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1310, 1313, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1311, 1314, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1312, 1315, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49');
INSERT INTO `product_details` (`id`, `product_id`, `warehouse_id`, `current_stock`, `mrp`, `purchase_price`, `sales_price`, `tax_id`, `purchase_tax_type`, `sales_tax_type`, `stock_quantitiy_alert`, `opening_stock`, `opening_stock_date`, `wholesale_price`, `wholesale_quantity`, `status`, `created_at`, `updated_at`) VALUES
(1313, 1316, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1314, 1317, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1315, 1318, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1316, 1319, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1317, 1320, 4, 1.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', NULL, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1318, 1321, 4, 3.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', NULL, 5, 'out_of_stock', '2025-07-02 04:18:49', '2025-07-02 04:18:49'),
(1319, 1322, 4, 0.00, 46.222222222222, 23.111111111111, 66.031746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.031746031746, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1320, 1323, 4, 0.00, 44, 22, 62.857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.857142857143, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1321, 1324, 4, 0.00, 47.333333333333, 23.666666666667, 67.619047619048, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 67.619047619048, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1322, 1325, 4, 1213.00, 45.351473922902, 22.675736961451, 64.787819889861, NULL, 'exclusive', 'exclusive', 5, 1213, '0000-00-00', 64.787819889861, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1323, 1326, 4, 0.00, 56.444444444444, 28.222222222222, 80.634920634921, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 80.634920634921, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1324, 1327, 4, 0.00, 78.888888888889, 39.444444444444, 112.69841269841, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 112.69841269841, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1325, 1328, 4, 0.00, 78.888888888889, 39.444444444444, 112.69841269841, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 112.69841269841, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1326, 1329, 4, 0.00, 58.666666666667, 29.333333333333, 83.809523809524, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 83.809523809524, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1327, 1330, 4, 0.00, 51.333333333333, 25.666666666667, 73.333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 73.333333333333, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1328, 1331, 4, 0.00, 50.666666666667, 25.333333333333, 72.380952380952, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 72.380952380952, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1329, 1332, 4, 463.00, 39.68253968254, 19.84126984127, 56.689342403628, NULL, 'exclusive', 'exclusive', 5, 463, '0000-00-00', 56.689342403628, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1330, 1333, 4, 0.00, 54.222222222222, 27.111111111111, 77.460317460317, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 77.460317460317, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1331, 1334, 4, 0.00, 75.555555555556, 37.777777777778, 107.93650793651, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 107.93650793651, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1332, 1335, 4, 10.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', NULL, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1333, 1336, 4, 144.00, 37.414965986395, 18.707482993197, 53.449951409135, NULL, 'exclusive', 'exclusive', 5, 144, '0000-00-00', 53.449951409135, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1334, 1337, 4, 70.00, 31.746031746032, 15.873015873016, 45.351473922903, NULL, 'exclusive', 'exclusive', 5, 70, '0000-00-00', 45.351473922903, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1335, 1338, 4, 0.00, 66.666666666667, 33.333333333333, 95.238095238095, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 95.238095238095, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1336, 1339, 4, 155.00, 60.090702947846, 30.045351473923, 85.843861354065, NULL, 'exclusive', 'exclusive', 5, 155, '0000-00-00', 85.843861354065, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1337, 1340, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1338, 1341, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1339, 1342, 4, 6.00, 48.75283446712, 24.37641723356, 69.6469063816, NULL, 'exclusive', 'exclusive', 5, 6, '0000-00-00', 69.6469063816, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1340, 1343, 4, 44.00, 60.090702947846, 30.045351473923, 85.843861354065, NULL, 'exclusive', 'exclusive', 5, 44, '0000-00-00', 85.843861354065, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1341, 1344, 4, 80.00, 60.090702947846, 30.045351473923, 85.843861354065, NULL, 'exclusive', 'exclusive', 5, 80, '0000-00-00', 85.843861354065, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1342, 1345, 4, 4.00, 48.75283446712, 24.37641723356, 69.6469063816, NULL, 'exclusive', 'exclusive', 5, 4, '0000-00-00', 69.6469063816, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1343, 1346, 4, 1.00, 39.68253968254, 19.84126984127, 56.689342403628, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 56.689342403628, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1344, 1347, 4, 0.00, 42.222222222222, 21.111111111111, 60.31746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 60.31746031746, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1345, 1348, 4, 618.00, 37.414965986395, 18.707482993197, 53.449951409135, NULL, 'exclusive', 'exclusive', 5, 618, '0000-00-00', 53.449951409135, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1346, 1349, 4, 3.00, 39.68253968254, 19.84126984127, 56.689342403628, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 56.689342403628, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1347, 1350, 4, 0.00, 80, 40, 114.28571428571, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 114.28571428571, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1348, 1351, 4, 0.00, 68.888888888889, 34.444444444444, 98.412698412698, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 98.412698412698, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1349, 1352, 4, 545.00, 39.68253968254, 19.84126984127, 56.689342403628, NULL, 'exclusive', 'exclusive', 5, 545, '0000-00-00', 56.689342403628, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1350, 1353, 4, 0.00, 146.66666666667, 73.333333333333, 209.52380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 209.52380952381, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1351, 1354, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1352, 1355, 4, 234.00, 37.414965986395, 18.707482993197, 53.449951409135, NULL, 'exclusive', 'exclusive', 5, 234, '0000-00-00', 53.449951409135, 5, 'in_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1353, 1356, 4, 0.00, 53.333333333333, 26.666666666667, 76.190476190476, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 76.190476190476, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1354, 1357, 4, 0.00, 73.333333333333, 36.666666666667, 104.76190476191, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 104.76190476191, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1355, 1358, 4, 0.00, 53.333333333333, 26.666666666667, 76.190476190476, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 76.190476190476, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1356, 1359, 4, 0.00, 68.888888888889, 34.444444444444, 98.412698412698, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 98.412698412698, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1357, 1360, 4, 0.00, 168.88888888889, 84.444444444444, 241.26984126984, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 241.26984126984, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1358, 1361, 4, 0.00, 231.11111111111, 115.55555555556, 330.15873015873, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 330.15873015873, 5, 'out_of_stock', '2025-07-03 07:32:11', '2025-07-03 07:32:11'),
(1359, 1362, 4, 274.00, 39.68253968254, 19.84126984127, 56.689342403628, NULL, 'exclusive', 'exclusive', 5, 274, '0000-00-00', 56.689342403628, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1360, 1363, 4, 0.00, 86.666666666667, 43.333333333333, 123.80952380952, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 123.80952380952, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1361, 1364, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1362, 1365, 4, 78.00, 40.816326530612, 20.408163265306, 58.309037900875, NULL, 'exclusive', 'exclusive', 5, 78, '0000-00-00', 58.309037900875, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1363, 1366, 4, 40.00, 48.75283446712, 24.37641723356, 69.6469063816, NULL, 'exclusive', 'exclusive', 5, 40, '0000-00-00', 69.6469063816, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1364, 1367, 4, 0.00, 66.666666666667, 33.333333333333, 95.238095238095, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 95.238095238095, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1365, 1368, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1366, 1369, 4, 2.00, 34.013605442177, 17.006802721088, 48.590864917395, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 48.590864917395, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1367, 1370, 4, 0.00, 40, 20, 57.142857142857, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.142857142857, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1368, 1371, 4, 6.00, 37.414965986395, 18.707482993197, 53.449951409135, NULL, 'exclusive', 'exclusive', 5, 6, '0000-00-00', 53.449951409135, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1369, 1372, 4, 311.00, 37.414965986395, 18.707482993197, 53.449951409135, NULL, 'exclusive', 'exclusive', 5, 311, '0000-00-00', 53.449951409135, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1370, 1373, 4, 0.00, 40, 20, 57.142857142857, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.142857142857, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1371, 1374, 4, 0.00, 42.222222222222, 21.111111111111, 60.31746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 60.31746031746, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1372, 1375, 4, 0.00, 42.222222222222, 21.111111111111, 60.31746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 60.31746031746, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1373, 1376, 4, 41.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 41, '0000-00-00', 57.65246449457, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1374, 1377, 4, 95.00, 35.538011695906, 17.769005847953, 50.768588137009, NULL, 'exclusive', 'exclusive', 5, 95, '0000-00-00', 50.768588137009, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1375, 1378, 4, 10.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', NULL, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1376, 1379, 4, 41.00, 65.654970760234, 32.827485380117, 93.792815371763, NULL, 'exclusive', 'exclusive', 5, 41, '0000-00-00', 93.792815371763, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1377, 1380, 4, 1.00, 42.163742690058, 21.081871345029, 60.233918128655, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 60.233918128655, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1378, 1381, 4, 64.00, 37.345029239766, 18.672514619883, 53.350041771094, NULL, 'exclusive', 'exclusive', 5, 64, '0000-00-00', 53.350041771094, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1379, 1382, 4, 26.00, 42.766081871345, 21.383040935673, 61.09440267335, NULL, 'exclusive', 'exclusive', 5, 26, '0000-00-00', 61.09440267335, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1380, 1383, 4, 2.00, 39.152046783626, 19.576023391813, 55.93149540518, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 55.93149540518, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1381, 1384, 4, 165.00, 65.654970760234, 32.827485380117, 93.792815371763, NULL, 'exclusive', 'exclusive', 5, 165, '0000-00-00', 93.792815371763, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1382, 1385, 4, 6.00, 60.836257309942, 30.418128654971, 86.908939014202, NULL, 'exclusive', 'exclusive', 5, 6, '0000-00-00', 86.908939014202, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1383, 1386, 4, 3.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 57.65246449457, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1384, 1387, 4, 218.00, 45.175438596491, 22.587719298246, 64.536340852131, NULL, 'exclusive', 'exclusive', 5, 218, '0000-00-00', 64.536340852131, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1385, 1388, 4, 13.00, 42.766081871345, 21.383040935673, 61.09440267335, NULL, 'exclusive', 'exclusive', 5, 13, '0000-00-00', 61.09440267335, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1386, 1389, 4, 4.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 4, '0000-00-00', 57.65246449457, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1387, 1390, 4, 6.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 6, '0000-00-00', 57.65246449457, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1388, 1391, 4, 1.00, 40.959064327485, 20.479532163743, 58.512949039265, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 58.512949039265, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1389, 1392, 4, 1.00, 325.86549707602, 162.93274853801, 465.52213868003, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 465.52213868003, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1390, 1393, 4, 1.00, 64.450292397661, 32.22514619883, 92.071846282373, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 92.071846282373, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1391, 1394, 4, 2.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 57.65246449457, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1392, 1395, 4, 4.00, 139.14035087719, 69.570175438596, 198.77192982456, NULL, 'exclusive', 'exclusive', 5, 4, '0000-00-00', 198.77192982456, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1393, 1396, 4, 6.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 6, '0000-00-00', 62.81537176274, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1394, 1397, 4, 66.00, 37.947368421053, 18.973684210526, 54.210526315789, NULL, 'exclusive', 'exclusive', 5, 66, '0000-00-00', 54.210526315789, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1395, 1398, 4, 16.00, 46.380116959064, 23.190058479532, 66.25730994152, NULL, 'exclusive', 'exclusive', 5, 16, '0000-00-00', 66.25730994152, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1396, 1399, 4, 14.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 14, '0000-00-00', 57.65246449457, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1397, 1400, 4, 1.00, 51.198830409357, 25.599415204678, 73.141186299081, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 73.141186299081, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1398, 1401, 4, 2.00, 70.473684210526, 35.236842105263, 100.67669172932, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 100.67669172932, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1399, 1402, 4, 142.00, 65.654970760234, 32.827485380117, 93.792815371763, NULL, 'exclusive', 'exclusive', 5, 142, '0000-00-00', 93.792815371763, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1400, 1403, 4, 20.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 20, '0000-00-00', 57.65246449457, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1401, 1404, 4, 80.00, 54.812865497076, 27.406432748538, 78.304093567251, NULL, 'exclusive', 'exclusive', 5, 80, '0000-00-00', 78.304093567251, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1402, 1405, 4, 66.00, 60.836257309942, 30.418128654971, 86.908939014202, NULL, 'exclusive', 'exclusive', 5, 66, '0000-00-00', 86.908939014202, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1403, 1406, 4, 13.00, 42.163742690058, 21.081871345029, 60.233918128655, NULL, 'exclusive', 'exclusive', 5, 13, '0000-00-00', 60.233918128655, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1404, 1407, 4, 3.00, 54.812865497076, 27.406432748538, 78.304093567251, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 78.304093567251, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1405, 1408, 4, 2.00, 65.654970760234, 32.827485380117, 93.792815371763, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 93.792815371763, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1406, 1409, 4, 97.00, 63.847953216374, 31.923976608187, 91.211361737677, NULL, 'exclusive', 'exclusive', 5, 97, '0000-00-00', 91.211361737677, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1407, 1410, 4, 49.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 49, '0000-00-00', NULL, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1408, 1411, 4, 84.00, 37.947368421053, 18.973684210526, 54.210526315789, NULL, 'exclusive', 'exclusive', 5, 84, '0000-00-00', 54.210526315789, 5, 'in_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1409, 1412, 4, 1.00, 157.21052631579, 78.605263157895, 224.58646616541, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 224.58646616541, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1410, 1413, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1411, 1414, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1412, 1415, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1413, 1416, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 07:32:12', '2025-07-03 07:32:12'),
(1414, 1417, 4, 0.00, 45.111111111111, 22.555555555556, 64.444444444445, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 64.444444444445, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1415, 1418, 4, 0.00, 45.111111111111, 22.555555555556, 64.444444444445, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 64.444444444445, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1416, 1419, 4, 0.00, 44, 22, 62.857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.857142857143, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1417, 1420, 4, 0.00, 47.333333333333, 23.666666666667, 67.619047619048, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 67.619047619048, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1418, 1421, 4, 0.00, 44.666666666667, 22.333333333333, 63.809523809524, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.809523809524, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1419, 1422, 4, 0.00, 44, 22, 62.857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.857142857143, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1420, 1423, 4, 0.00, 45.111111111111, 22.555555555556, 64.444444444445, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 64.444444444445, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1421, 1424, 4, 10.00, 38.548752834467, 19.274376417234, 55.069646906382, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', 55.069646906382, 5, 'in_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1422, 1425, 4, 0.00, 40.666666666667, 20.333333333333, 58.095238095238, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 58.095238095238, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1423, 1426, 4, 0.00, 48.444444444444, 24.222222222222, 69.206349206349, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 69.206349206349, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1424, 1427, 4, 0.00, 47.333333333333, 23.666666666667, 67.619047619048, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 67.619047619048, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1425, 1428, 4, 0.00, 47.333333333333, 23.666666666667, 67.619047619048, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 67.619047619048, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1426, 1429, 4, 0.00, 49.555555555556, 24.777777777778, 70.793650793651, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 70.793650793651, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1427, 1430, 4, 0.00, 58.666666666667, 29.333333333333, 83.809523809524, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 83.809523809524, 5, 'out_of_stock', '2025-07-03 07:51:19', '2025-07-03 07:51:19'),
(1428, 1431, 4, 0.00, 54.222222222222, 27.111111111111, 77.460317460317, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 77.460317460317, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1429, 1432, 4, 0.00, 37.333333333333, 18.666666666667, 53.333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 53.333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1430, 1433, 4, 0.00, 37.333333333333, 18.666666666667, 53.333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 53.333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1431, 1434, 4, 6.00, 53.608187134503, 26.804093567251, 76.583124477861, NULL, 'exclusive', 'exclusive', 5, 6, '0000-00-00', 76.583124477861, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1432, 1435, 4, 56.00, 35.147392290249, 17.573696145125, 50.210560414642, NULL, 'exclusive', 'exclusive', 5, 56, '0000-00-00', 50.210560414642, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1433, 1436, 4, 47.00, 35.147392290249, 17.573696145125, 50.210560414642, NULL, 'exclusive', 'exclusive', 5, 47, '0000-00-00', 50.210560414642, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1434, 1437, 4, 0.00, 40, 20, 57.142857142857, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.142857142857, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1435, 1438, 4, 2.00, 36.281179138322, 18.140589569161, 51.830255911889, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 51.830255911889, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1436, 1439, 4, 22.00, 35.714285714286, 17.857142857143, 51.020408163265, NULL, 'exclusive', 'exclusive', 5, 22, '0000-00-00', 51.020408163265, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1437, 1440, 4, 160.00, 35.147392290249, 17.573696145125, 50.210560414642, NULL, 'exclusive', 'exclusive', 5, 160, '0000-00-00', 50.210560414642, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1438, 1441, 4, 415.00, 36.281179138322, 18.140589569161, 51.830255911889, NULL, 'exclusive', 'exclusive', 5, 415, '0000-00-00', 51.830255911889, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1439, 1442, 4, 81.00, 38.548752834467, 19.274376417234, 55.069646906382, NULL, 'exclusive', 'exclusive', 5, 81, '0000-00-00', 55.069646906382, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1440, 1443, 4, 141.00, 32.312925170068, 16.156462585034, 46.161321671526, NULL, 'exclusive', 'exclusive', 5, 141, '0000-00-00', 46.161321671526, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1441, 1444, 4, 10.00, 39.68253968254, 19.84126984127, 56.689342403628, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', 56.689342403628, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1442, 1445, 4, 31.00, 40.816326530612, 20.408163265306, 58.309037900875, NULL, 'exclusive', 'exclusive', 5, 31, '0000-00-00', 58.309037900875, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1443, 1446, 4, 41.00, 40.816326530612, 20.408163265306, 58.309037900875, NULL, 'exclusive', 'exclusive', 5, 41, '0000-00-00', 58.309037900875, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1444, 1447, 4, 139.00, 38.548752834467, 19.274376417234, 55.069646906382, NULL, 'exclusive', 'exclusive', 5, 139, '0000-00-00', 55.069646906382, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1445, 1448, 4, 0.00, 46.666666666667, 23.333333333333, 66.666666666667, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.666666666667, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1446, 1449, 4, 850.00, 48.75283446712, 24.37641723356, 69.6469063816, NULL, 'exclusive', 'exclusive', 5, 850, '0000-00-00', 69.6469063816, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1447, 1450, 4, 0.00, 51.111111111111, 25.555555555556, 73.015873015873, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 73.015873015873, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1448, 1451, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1449, 1452, 4, 47.00, 27.777777777778, 13.888888888889, 39.68253968254, NULL, 'exclusive', 'exclusive', 5, 47, '0000-00-00', 39.68253968254, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1450, 1453, 4, 33.00, 27.777777777778, 13.888888888889, 39.68253968254, NULL, 'exclusive', 'exclusive', 5, 33, '0000-00-00', 39.68253968254, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1451, 1454, 4, 0.00, 62.222222222222, 31.111111111111, 88.888888888889, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 88.888888888889, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1452, 1455, 4, 9.00, 33.219954648526, 16.609977324263, 47.457078069323, NULL, 'exclusive', 'exclusive', 5, 9, '0000-00-00', 47.457078069323, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1453, 1456, 4, 0.00, 35.555555555556, 17.777777777778, 50.793650793651, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 50.793650793651, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1454, 1457, 4, 2.00, 34.013605442177, 17.006802721088, 48.590864917395, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 48.590864917395, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1455, 1458, 4, 0.00, 35.555555555556, 17.777777777778, 50.793650793651, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 50.793650793651, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1456, 1459, 4, 0.00, 33.333333333333, 16.666666666667, 47.619047619048, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 47.619047619048, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1457, 1460, 4, 1.00, 33.446712018141, 16.72335600907, 47.781017168772, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 47.781017168772, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1458, 1461, 4, 3.00, 38.321995464853, 19.160997732426, 54.745707806932, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 54.745707806932, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1459, 1462, 4, 69.00, 33.446712018141, 16.72335600907, 47.781017168772, NULL, 'exclusive', 'exclusive', 5, 69, '0000-00-00', 47.781017168772, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1460, 1463, 4, 236.00, 30.045351473923, 15.022675736961, 42.921930677033, NULL, 'exclusive', 'exclusive', 5, 236, '0000-00-00', 42.921930677033, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1461, 1464, 4, 5.00, 37.414965986395, 18.707482993197, 53.449951409135, NULL, 'exclusive', 'exclusive', 5, 5, '0000-00-00', 53.449951409135, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1462, 1465, 4, 0.00, 46.666666666667, 23.333333333333, 66.666666666667, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.666666666667, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1463, 1466, 4, 149.00, 41.950113378685, 20.975056689342, 59.928733398121, NULL, 'exclusive', 'exclusive', 5, 149, '0000-00-00', 59.928733398121, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1464, 1467, 4, 23.00, 30.719298245614, 15.359649122807, 43.884711779449, NULL, 'exclusive', 'exclusive', 5, 23, '0000-00-00', 43.884711779449, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1465, 1468, 4, 1.00, 30.719298245614, 15.359649122807, 43.884711779449, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 43.884711779449, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1466, 1469, 4, 82.00, 46.982456140351, 23.491228070175, 67.117794486215, NULL, 'exclusive', 'exclusive', 5, 82, '0000-00-00', 67.117794486215, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1467, 1470, 4, 44.00, 33.12865497076, 16.56432748538, 47.326649958229, NULL, 'exclusive', 'exclusive', 5, 44, '0000-00-00', 47.326649958229, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1468, 1471, 4, 17.00, 48.78947368421, 24.394736842105, 69.699248120301, NULL, 'exclusive', 'exclusive', 5, 17, '0000-00-00', 69.699248120301, 5, 'in_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1469, 1472, 4, 1.00, 54.21052631579, 27.105263157895, 77.443609022557, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 77.443609022557, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1470, 1473, 4, 2.00, 38.549707602339, 19.27485380117, 55.071010860485, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 55.071010860485, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1471, 1474, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1472, 1475, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1473, 1476, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1474, 1477, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1475, 1478, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1476, 1479, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1477, 1480, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1478, 1481, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1479, 1482, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1480, 1483, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1481, 1484, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1482, 1485, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1483, 1486, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1484, 1487, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1485, 1488, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1486, 1489, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1487, 1490, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1488, 1491, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 07:51:20', '2025-07-03 07:51:20'),
(1808, 1811, 4, 0.00, 45.111111111111, 22.555555555556, 64.444444444445, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 64.444444444445, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1809, 1812, 4, 0.00, 44.666666666667, 22.333333333333, 63.809523809524, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.809523809524, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1810, 1813, 4, 0.00, 44, 22, 62.857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.857142857143, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1811, 1814, 4, 0.00, 45.111111111111, 22.555555555556, 64.444444444445, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 64.444444444445, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1812, 1815, 4, 0.00, 53.111111111111, 26.555555555556, 75.873015873016, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 75.873015873016, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1813, 1816, 4, 0.00, 45.111111111111, 22.555555555556, 64.444444444445, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 64.444444444445, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1814, 1817, 4, 0.00, 42.888888888889, 21.444444444444, 61.269841269841, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 61.269841269841, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1815, 1818, 4, 0.00, 42.888888888889, 21.444444444444, 61.269841269841, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 61.269841269841, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1816, 1819, 4, 0.00, 48.444444444444, 24.222222222222, 69.206349206349, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 69.206349206349, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1817, 1820, 4, 0.00, 46.222222222222, 23.111111111111, 66.031746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.031746031746, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1818, 1821, 4, 0.00, 47.333333333333, 23.666666666667, 67.619047619048, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 67.619047619048, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1819, 1822, 4, 0.00, 47.333333333333, 23.666666666667, 67.619047619048, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 67.619047619048, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1820, 1823, 4, 10.00, 31.923976608187, 15.961988304094, 45.605680868839, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', 45.605680868839, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1821, 1824, 4, 3.00, 31.923976608187, 15.961988304094, 45.605680868839, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 45.605680868839, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1822, 1825, 4, 44.00, 39.152046783626, 19.576023391813, 55.93149540518, NULL, 'exclusive', 'exclusive', 5, 44, '0000-00-00', 55.93149540518, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1823, 1826, 4, 42.00, 39.152046783626, 19.576023391813, 55.93149540518, NULL, 'exclusive', 'exclusive', 5, 42, '0000-00-00', 55.93149540518, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1824, 1827, 4, 10.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 10, '0000-00-00', NULL, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1825, 1828, 4, 19.00, 35.714285714286, 17.857142857143, 51.020408163265, NULL, 'exclusive', 'exclusive', 5, 19, '0000-00-00', 51.020408163265, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1826, 1829, 4, 1.00, 35.147392290249, 17.573696145125, 50.210560414642, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 50.210560414642, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1827, 1830, 4, 252.00, 35.147392290249, 17.573696145125, 50.210560414642, NULL, 'exclusive', 'exclusive', 5, 252, '0000-00-00', 50.210560414642, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1828, 1831, 4, 5.00, 36.281179138322, 18.140589569161, 51.830255911889, NULL, 'exclusive', 'exclusive', 5, 5, '0000-00-00', 51.830255911889, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1829, 1832, 4, 521.00, 49.319727891156, 24.659863945578, 70.456754130223, NULL, 'exclusive', 'exclusive', 5, 521, '0000-00-00', 70.456754130223, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1830, 1833, 4, 25.00, 36.281179138322, 18.140589569161, 51.830255911889, NULL, 'exclusive', 'exclusive', 5, 25, '0000-00-00', 51.830255911889, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1831, 1834, 4, 53.00, 35.147392290249, 17.573696145125, 50.210560414642, NULL, 'exclusive', 'exclusive', 5, 53, '0000-00-00', 50.210560414642, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1832, 1835, 4, 123.00, 35.147392290249, 17.573696145125, 50.210560414642, NULL, 'exclusive', 'exclusive', 5, 123, '0000-00-00', 50.210560414642, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1833, 1836, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1834, 1837, 4, 52.00, 36.281179138322, 18.140589569161, 51.830255911889, NULL, 'exclusive', 'exclusive', 5, 52, '0000-00-00', 51.830255911889, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1835, 1838, 4, 114.00, 39.68253968254, 19.84126984127, 56.689342403628, NULL, 'exclusive', 'exclusive', 5, 114, '0000-00-00', 56.689342403628, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1836, 1839, 4, 597.00, 45.351473922902, 22.675736961451, 64.787819889861, NULL, 'exclusive', 'exclusive', 5, 597, '0000-00-00', 64.787819889861, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1837, 1840, 4, 648.00, 35.714285714286, 17.857142857143, 51.020408163265, NULL, 'exclusive', 'exclusive', 5, 648, '0000-00-00', 51.020408163265, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1838, 1841, 4, 31.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 31, '0000-00-00', 63.492063492063, 5, 'in_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1839, 1842, 4, 0.00, 42.222222222222, 21.111111111111, 60.31746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 60.31746031746, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1840, 1843, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1841, 1844, 4, 0.00, 40, 20, 57.142857142857, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.142857142857, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1842, 1845, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-03 11:12:46', '2025-07-03 11:12:46'),
(1843, 1846, 4, 0.00, 35.555555555556, 17.777777777778, 50.793650793651, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 50.793650793651, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1844, 1847, 4, 0.00, 33.333333333333, 16.666666666667, 47.619047619048, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 47.619047619048, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1845, 1848, 4, 1.00, 33.446712018141, 16.72335600907, 47.781017168772, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 47.781017168772, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1846, 1849, 4, 257.00, 34.920634920635, 17.460317460317, 49.886621315193, NULL, 'exclusive', 'exclusive', 5, 257, '0000-00-00', 49.886621315193, 5, 'in_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1847, 1850, 4, 0.00, 38.549707602339, 19.27485380117, 55.071010860485, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 55.071010860485, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1848, 1851, 4, 97.00, 37.345029239766, 18.672514619883, 53.350041771094, NULL, 'exclusive', 'exclusive', 5, 97, '0000-00-00', 53.350041771094, 5, 'in_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1849, 1852, 4, 37.00, 35.538011695906, 17.769005847953, 50.768588137009, NULL, 'exclusive', 'exclusive', 5, 37, '0000-00-00', 50.768588137009, 5, 'in_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1850, 1853, 4, 144.00, 46.982456140351, 23.491228070175, 67.117794486215, NULL, 'exclusive', 'exclusive', 5, 144, '0000-00-00', 67.117794486215, 5, 'in_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1851, 1854, 4, 4.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 4, '0000-00-00', 57.65246449457, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1852, 1855, 4, 18.00, 34.333333333333, 17.166666666667, 49.047619047619, NULL, 'exclusive', 'exclusive', 5, 18, '0000-00-00', 49.047619047619, 5, 'in_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1853, 1856, 4, 23.00, 53.608187134503, 26.804093567251, 76.583124477861, NULL, 'exclusive', 'exclusive', 5, 23, '0000-00-00', 76.583124477861, 5, 'in_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1854, 1857, 4, 11.00, 35.538011695906, 17.769005847953, 50.768588137009, NULL, 'exclusive', 'exclusive', 5, 11, '0000-00-00', 50.768588137009, 5, 'in_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1855, 1858, 4, 0.00, 38.549707602339, 19.27485380117, 55.071010860485, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 55.071010860485, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1856, 1859, 4, 58.00, 34.93567251462, 17.46783625731, 49.908103592314, NULL, 'exclusive', 'exclusive', 5, 58, '0000-00-00', 49.908103592314, 5, 'in_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1857, 1860, 4, 45.00, 34.93567251462, 17.46783625731, 49.908103592314, NULL, 'exclusive', 'exclusive', 5, 45, '0000-00-00', 49.908103592314, 5, 'in_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1858, 1861, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1859, 1862, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1860, 1863, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1861, 1864, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1862, 1865, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1863, 1866, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1864, 1867, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1865, 1868, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1866, 1869, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1867, 1870, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1868, 1871, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1869, 1872, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:12:47', '2025-07-03 11:12:47'),
(1904, 1907, 4, 0.00, 45.111111111111, 22.555555555556, 64.444444444445, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 64.444444444445, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1905, 1908, 4, 0.00, 54.222222222222, 27.111111111111, 77.460317460317, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 77.460317460317, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1906, 1909, 4, 0.00, 44, 22, 62.857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.857142857143, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1907, 1910, 4, 0.00, 46.222222222222, 23.111111111111, 66.031746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.031746031746, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1908, 1911, 4, 0.00, 44.666666666667, 22.333333333333, 63.809523809524, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.809523809524, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1909, 1912, 4, 0.00, 46.888888888889, 23.444444444444, 66.984126984127, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.984126984127, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1910, 1913, 4, 0.00, 44, 22, 62.857142857143, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.857142857143, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30');
INSERT INTO `product_details` (`id`, `product_id`, `warehouse_id`, `current_stock`, `mrp`, `purchase_price`, `sales_price`, `tax_id`, `purchase_tax_type`, `sales_tax_type`, `stock_quantitiy_alert`, `opening_stock`, `opening_stock_date`, `wholesale_price`, `wholesale_quantity`, `status`, `created_at`, `updated_at`) VALUES
(1911, 1914, 4, 0.00, 45.111111111111, 22.555555555556, 64.444444444445, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 64.444444444445, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1912, 1915, 4, 0.00, 56.444444444444, 28.222222222222, 80.634920634921, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 80.634920634921, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1913, 1916, 4, 5.00, 36.848072562358, 18.424036281179, 52.640103660512, NULL, 'exclusive', 'exclusive', 5, 5, '0000-00-00', 52.640103660512, 5, 'in_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1914, 1917, 4, 0.00, 41.777777777778, 20.888888888889, 59.68253968254, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 59.68253968254, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1915, 1918, 4, 0.00, 53.111111111111, 26.555555555556, 75.873015873016, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 75.873015873016, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1916, 1919, 4, 3.00, 36.281179138322, 18.140589569161, 51.830255911889, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 51.830255911889, 5, 'out_of_stock', '2025-07-03 11:52:30', '2025-07-03 11:52:30'),
(1917, 1920, 4, 1.00, 45.351473922902, 22.675736961451, 64.787819889861, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 64.787819889861, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1918, 1921, 4, 142.00, 36.281179138322, 18.140589569161, 51.830255911889, NULL, 'exclusive', 'exclusive', 5, 142, '0000-00-00', 51.830255911889, 5, 'in_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1919, 1922, 4, 608.00, 37.414965986395, 18.707482993197, 53.449951409135, NULL, 'exclusive', 'exclusive', 5, 608, '0000-00-00', 53.449951409135, 5, 'in_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1920, 1923, 4, 17.00, 35.714285714286, 17.857142857143, 51.020408163265, NULL, 'exclusive', 'exclusive', 5, 17, '0000-00-00', 51.020408163265, 5, 'in_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1921, 1924, 4, 1.00, 43.650793650794, 21.825396825397, 62.358276643991, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 62.358276643991, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1922, 1925, 4, 0.00, 42.222222222222, 21.111111111111, 60.31746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 60.31746031746, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1923, 1926, 4, 235.00, 36.848072562358, 18.424036281179, 52.640103660512, NULL, 'exclusive', 'exclusive', 5, 235, '0000-00-00', 52.640103660512, 5, 'in_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1924, 1927, 4, 0.00, 44.444444444444, 22.222222222222, 63.492063492063, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 63.492063492063, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1925, 1928, 4, 68.00, 37.981859410431, 18.990929705215, 54.259799157758, NULL, 'exclusive', 'exclusive', 5, 68, '0000-00-00', 54.259799157758, 5, 'in_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1926, 1929, 4, 0.00, 53.333333333333, 26.666666666667, 76.190476190476, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 76.190476190476, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1927, 1930, 4, 0.00, 42.222222222222, 21.111111111111, 60.31746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 60.31746031746, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1928, 1931, 4, 0.00, 53.333333333333, 26.666666666667, 76.190476190476, 5, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 76.190476190476, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-25 11:04:53'),
(1929, 1932, 4, 0.00, 42.222222222222, 21.111111111111, 60.31746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 60.31746031746, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1930, 1933, 4, 0.00, 51.111111111111, 25.555555555556, 73.015873015873, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 73.015873015873, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1931, 1934, 4, 0.00, 46.666666666667, 23.333333333333, 66.666666666667, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.666666666667, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1932, 1935, 4, 0.00, 48.888888888889, 24.444444444444, 69.84126984127, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 69.84126984127, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1933, 1936, 4, 0.00, 42.222222222222, 21.111111111111, 60.31746031746, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 60.31746031746, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1934, 1937, 4, 0.00, 51.111111111111, 25.555555555556, 73.015873015873, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 73.015873015873, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1935, 1938, 4, 19.00, 31.746031746032, 15.873015873016, 45.351473922903, NULL, 'exclusive', 'exclusive', 5, 19, '0000-00-00', 45.351473922903, 5, 'in_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1936, 1939, 4, 2.00, 43.650793650794, 21.825396825397, 62.358276643991, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 62.358276643991, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1937, 1940, 4, 0.00, 35.555555555556, 17.777777777778, 50.793650793651, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 50.793650793651, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1938, 1941, 4, 5.00, 33.446712018141, 16.72335600907, 47.781017168772, NULL, 'exclusive', 'exclusive', 5, 5, '0000-00-00', 47.781017168772, 5, 'in_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1939, 1942, 4, 0.00, 46.666666666667, 23.333333333333, 66.666666666667, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.666666666667, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1940, 1943, 4, 1.00, 31.746031746032, 15.873015873016, 45.351473922903, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 45.351473922903, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1941, 1944, 4, 2.00, 34.580498866213, 17.290249433107, 49.400712666019, NULL, 'exclusive', 'exclusive', 5, 2, '0000-00-00', 49.400712666019, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1942, 1945, 4, 0.00, 37.777777777778, 18.888888888889, 53.968253968254, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 53.968253968254, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1943, 1946, 4, 0.00, 37.777777777778, 18.888888888889, 53.968253968254, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 53.968253968254, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1944, 1947, 4, 0.00, 40, 20, 57.142857142857, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.142857142857, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1945, 1948, 4, 0.00, 46.666666666667, 23.333333333333, 66.666666666667, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.666666666667, 5, 'out_of_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1946, 1949, 4, 7.00, 35.538011695906, 17.769005847953, 50.768588137009, NULL, 'exclusive', 'exclusive', 5, 7, '0000-00-00', 50.768588137009, 5, 'in_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1947, 1950, 4, 7.00, 35.538011695906, 17.769005847953, 50.768588137009, NULL, 'exclusive', 'exclusive', 5, 7, '0000-00-00', 50.768588137009, 5, 'in_stock', '2025-07-03 11:52:31', '2025-07-03 11:52:31'),
(1948, 1951, 4, 0.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.81537176274, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1949, 1952, 4, 0.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.65246449457, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1950, 1953, 4, 0.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.81537176274, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1951, 1954, 4, 0.00, 40.959064327485, 20.479532163743, 58.512949039265, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 58.512949039265, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1952, 1955, 4, 0.00, 46.380116959064, 23.190058479532, 66.25730994152, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.25730994152, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1953, 1956, 4, 0.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.65246449457, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1954, 1957, 4, 0.00, 42.766081871345, 21.383040935673, 61.09440267335, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 61.09440267335, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1955, 1958, 4, 0.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.65246449457, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1956, 1959, 4, 0.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.81537176274, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1957, 1960, 4, 0.00, 42.766081871345, 21.383040935673, 61.09440267335, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 61.09440267335, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1958, 1961, 4, 0.00, 39.152046783626, 19.576023391813, 55.93149540518, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 55.93149540518, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1959, 1962, 4, 0.00, 52.40350877193, 26.201754385965, 74.862155388471, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 74.862155388471, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1960, 1963, 4, 0.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.81537176274, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1961, 1964, 4, 0.00, 46.380116959064, 23.190058479532, 66.25730994152, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 66.25730994152, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1962, 1965, 4, 0.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.65246449457, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1963, 1966, 4, 0.00, 42.766081871345, 21.383040935673, 61.09440267335, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 61.09440267335, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1964, 1967, 4, 0.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.81537176274, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1965, 1968, 4, 0.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.65246449457, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1966, 1969, 4, 0.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', NULL, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1967, 1970, 4, 0.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 57.65246449457, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1968, 1971, 4, 0.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.81537176274, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1969, 1972, 4, 0.00, 42.766081871345, 21.383040935673, 61.09440267335, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 61.09440267335, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1970, 1973, 4, 0.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.81537176274, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1971, 1974, 4, 0.00, 43.970760233918, 21.985380116959, 62.81537176274, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 62.81537176274, 5, 'out_of_stock', '2025-07-03 11:53:52', '2025-07-03 11:53:52'),
(1972, 1975, 4, 25.00, 48.187134502924, 24.093567251462, 68.838763575606, NULL, 'exclusive', 'exclusive', 5, 25, '0000-00-00', 68.838763575606, 5, 'in_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1973, 1976, 4, 1.00, 48.187134502924, 24.093567251462, 68.838763575606, NULL, 'exclusive', 'exclusive', 5, 1, '0000-00-00', 68.838763575606, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1974, 1977, 4, 4.00, 48.78947368421, 24.394736842105, 69.699248120301, NULL, 'exclusive', 'exclusive', 5, 4, '0000-00-00', 69.699248120301, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1975, 1978, 4, 6.00, 48.78947368421, 24.394736842105, 69.699248120301, NULL, 'exclusive', 'exclusive', 5, 6, '0000-00-00', 69.699248120301, 5, 'in_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1976, 1979, 4, 3.00, 142.75438596491, 71.377192982456, 203.93483709273, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 203.93483709273, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1977, 1980, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1978, 1981, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1979, 1982, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1980, 1983, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1981, 1984, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1982, 1985, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1983, 1986, 4, 0.00, 4.1666666666667, 2.0833333333333, 5.952380952381, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 5.952380952381, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1984, 1987, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1985, 1988, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1986, 1989, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1987, 1990, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1988, 1991, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1989, 1992, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1990, 1993, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1991, 1994, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1992, 1995, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1993, 1996, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1994, 1997, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1995, 1998, 4, 0.00, 5.8333333333333, 2.9166666666667, 8.3333333333333, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 8.3333333333333, 5, 'out_of_stock', '2025-07-03 11:55:02', '2025-07-03 11:55:02'),
(1996, 1999, 4, 470.00, 20.479532163743, 10.239766081871, 29.256474519632, NULL, 'exclusive', 'exclusive', 5, 470, '0000-00-00', 29.256474519632, 5, 'in_stock', '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(1997, 2000, 4, 1312.00, 20.479532163743, 10.239766081871, 29.256474519632, NULL, 'exclusive', 'exclusive', 5, 1312, '0000-00-00', 29.256474519632, 5, 'in_stock', '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(1998, 2001, 4, 106.00, 39.152046783626, 19.576023391813, 55.93149540518, NULL, 'exclusive', 'exclusive', 5, 106, '0000-00-00', 55.93149540518, 5, 'in_stock', '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(1999, 2002, 4, 3.00, 36.74269005848, 18.37134502924, 52.489557226399, NULL, 'exclusive', 'exclusive', 5, 3, '0000-00-00', 52.489557226399, 5, 'out_of_stock', '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2000, 2003, 4, 21.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 21, '0000-00-00', 57.65246449457, 5, 'in_stock', '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2001, 2004, 4, 140.00, 38.549707602339, 19.27485380117, 55.071010860485, NULL, 'exclusive', 'exclusive', 5, 140, '0000-00-00', 55.071010860485, 5, 'in_stock', '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2002, 2005, 4, 50.00, 42.766081871345, 21.383040935673, 61.09440267335, NULL, 'exclusive', 'exclusive', 5, 50, '0000-00-00', 61.09440267335, 5, 'in_stock', '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2003, 2006, 4, 5.00, 40.356725146199, 20.178362573099, 57.65246449457, NULL, 'exclusive', 'exclusive', 5, 5, '0000-00-00', 57.65246449457, 5, 'in_stock', '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2004, 2007, 4, 40.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 40, '0000-00-00', NULL, 5, 'in_stock', '2025-07-03 11:56:19', '2025-07-03 11:56:19'),
(2005, 2008, 4, 56.00, 554.75438596491, 277.37719298246, 792.50626566416, NULL, 'exclusive', 'exclusive', 5, 56, '0000-00-00', 792.50626566416, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2006, 2009, 4, 55.00, 590.8947368421, 295.44736842105, 844.13533834586, NULL, 'exclusive', 'exclusive', 5, 55, '0000-00-00', 844.13533834586, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2007, 2010, 4, 12.00, 217.44444444444, 108.72222222222, 310.63492063492, NULL, 'exclusive', 'exclusive', 5, 12, '0000-00-00', 310.63492063492, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2008, 2011, 4, 20.00, 506.56725146199, 253.28362573099, 723.66750208855, NULL, 'exclusive', 'exclusive', 5, 20, '0000-00-00', 723.66750208855, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2009, 2012, 4, 22.00, 398.14619883041, 199.0730994152, 568.78028404344, NULL, 'exclusive', 'exclusive', 5, 22, '0000-00-00', 568.78028404344, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2010, 2013, 4, 19.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 19, '0000-00-00', NULL, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2011, 2014, 4, 50.00, 627.0350877193, 313.51754385965, 895.76441102757, NULL, 'exclusive', 'exclusive', 5, 50, '0000-00-00', 895.76441102757, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2012, 2015, 4, 39.00, 217.44444444444, 108.72222222222, 310.63492063492, NULL, 'exclusive', 'exclusive', 5, 39, '0000-00-00', 310.63492063492, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2013, 2016, 4, 8.00, 42.284210526316, 21.142105263158, 60.406015037594, NULL, 'exclusive', 'exclusive', 5, 8, '0000-00-00', 60.406015037594, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2014, 2017, 4, 27.00, 41.2, 20.6, 58.857142857143, NULL, 'exclusive', 'exclusive', 5, 27, '0000-00-00', 58.857142857143, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2015, 2018, 4, 30.00, 41.681871345029, 20.840935672515, 59.545530492899, NULL, 'exclusive', 'exclusive', 5, 30, '0000-00-00', 59.545530492899, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2016, 2019, 4, 37.00, 41.2, 20.6, 58.857142857143, NULL, 'exclusive', 'exclusive', 5, 37, '0000-00-00', 58.857142857143, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2017, 2020, 4, 47.00, 49.030409356725, 24.515204678363, 70.043441938179, NULL, 'exclusive', 'exclusive', 5, 47, '0000-00-00', 70.043441938179, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2018, 2021, 4, 48.00, 47.946198830409, 23.973099415205, 68.494569757728, NULL, 'exclusive', 'exclusive', 5, 48, '0000-00-00', 68.494569757728, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2019, 2022, 4, 42.00, 49.030409356725, 24.515204678363, 70.043441938179, NULL, 'exclusive', 'exclusive', 5, 42, '0000-00-00', 70.043441938179, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2020, 2023, 4, 5.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 5, '0000-00-00', NULL, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2021, 2024, 4, 8.00, NULL, 0, 0, NULL, 'exclusive', 'exclusive', 5, 8, '0000-00-00', NULL, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2022, 2025, 4, 16.00, 121.0701754386, 60.535087719298, 172.95739348371, NULL, 'exclusive', 'exclusive', 5, 16, '0000-00-00', 172.95739348371, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2023, 2026, 4, 53.00, 109.02339181287, 54.511695906433, 155.74770258981, NULL, 'exclusive', 'exclusive', 5, 53, '0000-00-00', 155.74770258981, 5, 'in_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2024, 2027, 4, 0.00, 48.78947368421, 24.394736842105, 69.699248120301, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 69.699248120301, 5, 'out_of_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2025, 2028, 4, 0.00, 68.06432748538, 34.03216374269, 97.234753550543, NULL, 'exclusive', 'exclusive', 5, 0, '0000-00-00', 97.234753550543, 5, 'out_of_stock', '2025-07-03 11:57:43', '2025-07-03 11:57:43'),
(2027, 2030, 4, 5.00, 68, 24, 68, NULL, 'exclusive', 'exclusive', 5, 5, '0000-00-00', 68, 5, 'in_stock', '2025-07-18 13:45:42', '2025-07-18 13:45:42'),
(2029, 2034, 4, 38.00, 50, 20, 25, NULL, 'exclusive', 'exclusive', NULL, 50, '2025-07-22', NULL, NULL, 'in_stock', '2025-07-22 08:49:53', '2025-07-22 08:58:28'),
(2030, 2035, 4, 49.00, 0, 20, 50, 5, 'exclusive', 'exclusive', 5, 50, '2025-07-22', NULL, NULL, 'in_stock', '2025-07-22 09:05:41', '2025-07-22 09:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `variant_value_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `variant_value_id`, `created_at`, `updated_at`) VALUES
(11, 2034, 45, 46, '2025-07-22 08:49:53', '2025-07-22 08:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `company_id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(2, 3, 'admin', 'Admin', 'Admin is allowed to manage everything of the app.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `setting_type` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `name_key` varchar(191) NOT NULL,
  `credentials` text DEFAULT NULL,
  `other_data` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `is_global`, `company_id`, `setting_type`, `name`, `name_key`, `credentials`, `other_data`, `status`, `verified`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'storage', 'Local', 'local', NULL, NULL, 1, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(2, 1, 1, 'storage', 'AWS', 'aws', '{\"driver\":\"s3\",\"key\":\"\",\"secret\":\"\",\"region\":\"\",\"bucket\":\"\"}', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(3, 1, 1, 'email', 'SMTP', 'smtp', '{\"from_name\":\"FLY CDI ERP\",\"from_email\":\"superadmin@flycdi.ae\",\"host\":\"mail.flycdi.ae\",\"port\":\"465\",\"encryption\":\"ssl\",\"username\":\"superadmin@flycdi.ae\",\"password\":\"9ddtmsM.r7m4\",\"enable_mail_queue\":\"yes\"}', NULL, 1, 1, '2025-03-19 03:06:21', '2025-03-19 05:30:24'),
(4, 1, 1, 'website_settings', 'Website Settings', 'en', '{\"lang_key\":\"en\",\"app_name\":\"Stockifly SAAS\",\"header_logo\":\"website_onrfwiwasmjtqiezpe0v.png\",\"header_logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_onrfwiwasmjtqiezpe0v.png\",\"header_sidebar_logo\":\"website_r4ykpmmpmm3jw6bcyfdl.png\",\"header_sidebar_logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_r4ykpmmpmm3jw6bcyfdl.png\",\"home_text\":\"Home\",\"features_text\":\"Features\",\"pricing_text\":\"Pricing\",\"contact_text\":\"Contact\",\"register_text\":\"Register\",\"login_button_show\":\"1\",\"login_button_text\":\"Login\",\"register_button_show\":\"1\",\"register_button_text\":\"Register\",\"header_title\":\"Billing & Inventory Management with POS and Online Store\",\"header_sub_title\":\"Manage Your inventory In Easy Way\",\"header_description\":\"Best-rated  billing and inventory management application for small to large scale business. It\\u2019s built using Vue and Laravel. Stockifly have all major features related to inventory  managed to improve your business growth\",\"header_button1_show\":\"1\",\"header_button1_text\":\"Start Free Trail\",\"header_button1_url\":\"https:\\/\\/saas.stockifly.in\\/register\",\"header_button2_show\":\"1\",\"header_button2_text\":\"Explore All Features\",\"header_button2_url\":\"https:\\/\\/saas.stockifly.in\\/features\",\"header_features\":[\"No hidden fees\",\"Start with a free account\",\"Edit online, no software needed\",\"Multiple Language Support\",\"Safe and Secure\"],\"header_background_image\":\"website_nq7ee8hmgiuyvzdseeu9.png\",\"header_background_image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_nq7ee8hmgiuyvzdseeu9.png\",\"header_client_show\":\"0\",\"header_client_image\":\"\",\"header_client_image_url\":\"\",\"header_client_name\":\"Denny Jones, founder of Growthio\",\"header_client_text\":\"\\u201cYou made it so simple. My new team is so much faster and easier to work with than my old site. I just choose the page, make the change.\\u201d\",\"contact_details\":\"Contact Details\",\"contact_title\":\"Get connected\",\"contact_description\":\"Lorem ipsum dolor sit amet, to the con adipiscing. Volutpat tempor to the condimentum vitae vel purus.\",\"contact_email_text\":\"Send Email\",\"contact_phone_text\":\"Call Us\",\"contact_address_text\":\"Address\",\"contact_email\":\"contact@stockifly.com\",\"contact_phone\":\"123456789\",\"contact_address\":\"1 Stree City State Country TN, 38401\",\"contact_form_title\":\"Get connected\",\"contact_form_description\":\"Contact Us\",\"contact_form_heading\":\"Send us a message to know more about us or just chit-chat.\",\"contact_form_name_text\":\"Name\",\"contact_form_email_text\":\"Email\",\"contact_form_message_text\":\"Message\",\"contact_form_send_message_text\":\"Send Message\",\"contact_form_background_image\":\"website_p5sbnqcicgxxnyj2zogs.jpeg\",\"contact_form_background_image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_p5sbnqcicgxxnyj2zogs.jpeg\",\"contact_us_submit_message_text\":\"Thanks for contacting us. We will catch you soon.\",\"register_title\":\"Join Stockifly for free\",\"register_description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada tellus vestibulum, commodo pulvinar.\",\"register_background\":\"website_xk2pcyjxncee3duknp26.svg\",\"register_background_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_xk2pcyjxncee3duknp26.svg\",\"register_company_name_text\":\"Company Name\",\"register_email_text\":\"Email\",\"register_password_text\":\"Password\",\"register_confirm_password_text\":\"Confirm Passwrod\",\"register_submit_button_text\":\"SIGN UP FOR Free\",\"register_agree_text\":\"I agree to the Terms & Conditions of Stockifly\",\"register_agree_url\":\"I agree to the Terms & Conditions of Stockifly\",\"error_contact_support\":\"Some error occurred when inserting the data. Please try again or contact support\",\"register_success_text\":\"Thank you for registration. Please login to get started\",\"call_to_action_title\":\"Connect with experts\",\"call_to_action_description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim.\",\"call_to_action_widgets\":[{\"title\":\"Successful Projects\",\"value\":\"195+\"},{\"title\":\"Experienced Experts\",\"value\":\"23 years\"},{\"title\":\"Success Rate\",\"value\":\"98.99%\"}],\"call_to_action_no_email_sell_text\":\"We don\\u2019t share or sell your email address publicly\",\"call_to_action_email_text\":\"Enter email to get started\",\"call_to_action_submit_button_text\":\"Join Now\",\"feature_title\":\"Features which will increase your business growth and increase your business profit...\",\"feature_description\":\"Great & Powerful Features\",\"home_feature_points\":[\"Accounting Management\",\"Billing Management\",\"Multiple Warehouses\",\"Product Management\",\"Stock Management\",\"POS\",\"Online Stores\",\"Expenses\",\"Users\",\"Roles\",\"Permissions\",\"Reports\",\"Multi Languages\",\"Invoices\",\"Payment In\",\"Taxes\",\"Units\",\"Currencies\",\"Payment Modes\",\"Suppliers\",\"Customers\"],\"price_title\":\"Choose a Plan\",\"price_description\":\"Manage your projects and your talent in a single system, resulting in empowered teams.\",\"price_card_title\":\"Trusted by secure payment service\",\"pricing_free_text\":\"Free\",\"pricing_no_card_text\":\"No credit card required\",\"pricing_billed_monthly_text\":\"Billed Monthly\",\"pricing_billed_yearly_text\":\"Billed Yearly\",\"pricing_monthly_text\":\"Monthly\",\"pricing_yearly_text\":\"Yearly\",\"pricing_month_text\":\"month\",\"pricing_year_text\":\"year\",\"pricing_get_started_button_text\":\"Get Started Now\",\"most_popular_image\":\"website_clesobqaxv8w3xatjdpm.png\",\"most_popular_image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_clesobqaxv8w3xatjdpm.png\",\"testimonial_title\":\"Loved by Many Business Across The World\",\"testimonial_description\":\"\",\"favourite_apps_title\":\"\",\"favourite_apps_description\":\"\",\"faq_sub_title\":\"HAVE ANY QUESTIONS?\",\"faq_title\":\"Frequently Asked Questions\",\"faq_still_have_question_text\":\"Still have any questions?\",\"faq_contact_us_text\":\"Contact Us\",\"faq_background_image\":\"website_6nqk1wjfnphw5gyrc5md.svg\",\"faq_background_image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_6nqk1wjfnphw5gyrc5md.svg\",\"client_title\":\"Trusted by Companies around the World\",\"client_description\":\"Vetted by leaders within the Meat Processing Industry.\",\"footer_description\":\"Don\'t hesitate, Our experts will show you how our application can streamline the way your team works.\",\"footer_copyright_text\":\"Copyright 2021 @ Stockifly, All rights reserved\",\"footer_logo\":\"website_jazw9qtjklv4ohh7q9fd.png\",\"footer_logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_jazw9qtjklv4ohh7q9fd.png\",\"footer_links_text\":\"Links\",\"footer_pages_text\":\"Pages\",\"footer_contact_us_text\":\"Contact Us\",\"facebook_url\":\"#\",\"twitter_url\":\"#\",\"linkedin_url\":\"#\",\"instagram_url\":\"#\",\"youtube_url\":\"#\"}', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(5, 1, 1, 'website_clients', 'Website Clients Settings', 'en', '[{\"id\":\"1hexby4e6ap\",\"name\":\"Client 1\",\"logo\":\"website_u4ung1evutmg2dwo1ufu.png\",\"logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_u4ung1evutmg2dwo1ufu.png\"},{\"id\":\"2hexby4e6ap\",\"name\":\"Client 2\",\"logo\":\"website_igdjafcxhacqpfmdkrwm.png\",\"logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_igdjafcxhacqpfmdkrwm.png\"},{\"id\":\"3hexby4e6ap\",\"name\":\"Client 3\",\"logo\":\"website_qtjysnlaub9pk6r2k4aw.png\",\"logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_qtjysnlaub9pk6r2k4aw.png\"},{\"id\":\"4hexby4e6ap\",\"name\":\"Client 4\",\"logo\":\"website_sxskjzwysg6mmlzjjhi5.png\",\"logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_sxskjzwysg6mmlzjjhi5.png\"},{\"id\":\"5hexby4e6ap\",\"name\":\"Client 5\",\"logo\":\"website_f6maqhagg70vfhg5bt56.png\",\"logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_f6maqhagg70vfhg5bt56.png\"}]', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(6, 1, 1, 'header_features', 'Header Features', 'en', '[{\"id\":\"21hexby4e6ap\",\"name\":\"Reports\",\"description\":\"All Business Reports\",\"image\":\"website_osxd8td7yropdc1zqiab.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_osxd8td7yropdc1zqiab.png\"},{\"id\":\"22hexby4e6ap\",\"name\":\"Units\",\"description\":\"Manage Multi Units\",\"image\":\"website_4d3qmboclpmif7mishbg.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_4d3qmboclpmif7mishbg.png\"},{\"id\":\"23hexby4e6ap\",\"name\":\"Taxes\",\"description\":\"Create Taxes On Demand\",\"image\":\"website_jah8jlamrepyhftea6gl.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_jah8jlamrepyhftea6gl.png\"},{\"id\":\"24hexby4e6ap\",\"name\":\"Multi Users\",\"description\":\"Staff, Customers, Suppliers\",\"image\":\"website_qgny179no4wq6hfmhmgs.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_qgny179no4wq6hfmhmgs.png\"},{\"id\":\"25hexby4e6ap\",\"name\":\"Expense Management\",\"description\":\"Manage Your Expenses\",\"image\":\"website_ezyntikwghro0phnzacj.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_ezyntikwghro0phnzacj.png\"},{\"id\":\"26hexby4e6ap\",\"name\":\"POS\",\"description\":\"Simple But Effective POS\",\"image\":\"website_pnomguirqhunrq9hn7o2.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_pnomguirqhunrq9hn7o2.png\"},{\"id\":\"27hexby4e6ap\",\"name\":\"Multi Languages\",\"description\":\"Multi Languages Support\",\"image\":\"website_ir3byphfcg6u0yq9yotm.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_ir3byphfcg6u0yq9yotm.png\"},{\"id\":\"28hexby4e6ap\",\"name\":\"Multi Warehouse\\/Store\",\"description\":\"Manage Multiple Stores\",\"image\":\"website_roviquvyjyprsjg9vhsw.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_roviquvyjyprsjg9vhsw.png\"}]', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(7, 1, 1, 'features_page', 'Features Page', 'en', '[{\"id\":\"pu6o43vpo9\",\"title\":\"Accounting & Billing\",\"description\":\"It is a long established fact that a reader will\",\"features\":[{\"id\":\"b5e58xp1h6m\",\"title\":\"Payments In \\/ Out\",\"description\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is tha\",\"image\":\"website_dgzeoaztuacepf2cnz7r.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_dgzeoaztuacepf2cnz7r.png\"},{\"id\":\"omlc24r338\",\"title\":\"Expenses\",\"description\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is tha\",\"image\":\"website_umy0jlxqfhcxjd2j6uek.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_umy0jlxqfhcxjd2j6uek.png\"},{\"id\":\"musykhbq37\",\"title\":\"Cash & Bank\",\"description\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is tha\",\"image\":\"website_x1q094qrxffantpaqfwt.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_x1q094qrxffantpaqfwt.png\"}]},{\"id\":\"uz2fpijzmk\",\"title\":\"Inventory Management\",\"description\":\"Mange your stock and manage your inventory\",\"features\":[{\"id\":\"gki0xl9xwl\",\"title\":\"Purchase, Sales and Returns\",\"description\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,\",\"image\":\"website_d7z5w6myjjfengk0dxgw.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_d7z5w6myjjfengk0dxgw.png\"},{\"id\":\"8y1suzijyb\",\"title\":\"POS\",\"description\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is tha\",\"image\":\"website_oyjswztfteqpyfuppads.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_oyjswztfteqpyfuppads.png\"},{\"id\":\"bsfitmrezvu\",\"title\":\"Stock Transfer\",\"description\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is tha\",\"image\":\"website_sicmupgrzuaiaehrlgqv.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_sicmupgrzuaiaehrlgqv.png\"}]},{\"id\":\"u5kx5li1zwk\",\"title\":\"Product Management\",\"description\":\"Manage your business products, brands, categories in simple and easy steps\",\"features\":[{\"id\":\"app8vxzlk3\",\"title\":\"Product Management\",\"description\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is tha\",\"image\":\"website_ctwdrplxv2ubpyhfrno5.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_ctwdrplxv2ubpyhfrno5.png\"},{\"id\":\"gkmyw3ppqxv\",\"title\":\"Brand Management\",\"description\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,\",\"image\":\"website_r7t5ahprkcgaqcudsyoo.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_r7t5ahprkcgaqcudsyoo.png\"},{\"id\":\"91hq9yjf38\",\"title\":\"Category Management\",\"description\":\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is tha\",\"image\":\"website_zh3vzylsdy1bfvcmlrvf.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_zh3vzylsdy1bfvcmlrvf.png\"}]}]', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(8, 1, 1, 'website_testimonials', 'Website Testimonials Settings', 'en', '[{\"id\":\"jbcfuvor1ef\",\"name\":\"Mitch\",\"image\":\"website_umglm6u0pifn4djq1z0e.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_umglm6u0pifn4djq1z0e.png\",\"comment\":\"The easy of the Stockifly software allowed me to migrate out current workflow into the system along with train our employees without hardship.\",\"rating\":5},{\"id\":\"8i20kbnxkrh\",\"name\":\"Aaron\",\"image\":\"website_yclshvui5dn2wmq2lidu.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_yclshvui5dn2wmq2lidu.png\",\"comment\":\"Leveraging modern technology and passion for supporting local Ag, Stockifly is the next evolutionary stage in the procurement of software to streamline workflow for processors.\",\"rating\":5},{\"id\":\"y8h9ukt9fxm\",\"name\":\"William\",\"image\":\"website_zt0jcb4tkeqxaklrqob4.png\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_zt0jcb4tkeqxaklrqob4.png\",\"comment\":\"Having the ability to streamline my teams from processing to retail with one system has changed the way we do business.\",\"rating\":5}]', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(9, 1, 1, 'website_features', 'Website Features Settings', 'en', '[{\"id\":\"8jzmhcpnshn\",\"title\":\"Multiple Warehouse \\/ Shopes\",\"description\":\"Manage your multiple store or warehouse. You can directly receive your warehouse order from online url.\",\"image\":\"website_rrydgq523mum7ii2u4of.webp\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_rrydgq523mum7ii2u4of.webp\",\"features\":[\"Add Multiple Stores\",\"Powerful Dashboard According To Stores\",\"Filter Purchases, Sales, Returns, Expenses According To Stores\",\"Receive Online Order From Multiple Stores\"]},{\"id\":\"k8u7cwrwnt\",\"title\":\"Inventory \\/ Stock Management\",\"description\":\"Now manage your stock purchase, sales, sales return, and purchase returns in easy steps... Also record your payment in and out so that you can find your profit and loss...\",\"image\":\"website_4hooep1ngw7ezbvyxmyw.webp\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_4hooep1ngw7ezbvyxmyw.webp\",\"features\":[\"Purchase, Sales, Sales Return, Purchase Returns\",\"Manage Paid \\/ Due Amount For Your Customers And Suppliers\",\"Get Inventory Stock Details\",\"Sales Products Using POS\"]},{\"id\":\"vfxekis7pcd\",\"title\":\"Powerful Reports System\",\"description\":\"Stockifly comes with powerful reporting tools which will help you to control your business. You can download reports in multiple formats so that you can use them later\",\"image\":\"website_qx3ee00qpexlljrersp4.webp\",\"image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_qx3ee00qpexlljrersp4.webp\",\"features\":[\"View Reports and Download Them\",\"Payment, User, Store Wise Reports\",\"Profit & Loss reports\",\"View Warehouse Reports Using FilterAnd Search\"]}]', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(10, 1, 1, 'website_faqs', 'Website Faq Settings', 'en', '[{\"id\":\"ly41sgvy9hh\",\"question\":\"Why do I need your software solutions?\",\"answer\":\"We love this question because it does two things: it allows you to tell people why they can benefit from SaaS, and it allows you to sell your services specifically. Notice that we don\\u2019t ask \\u201cif\\u201d people need SaaS,\"},{\"id\":\"uxt7phaojq\",\"question\":\"How can I check compatibility?\",\"answer\":\"Here\\u2019s a common logistics and tech issue: compatibility. People want to make sure that your software solutions are compatible with the tools that they already use. Some might be investing in a new tool and want to make sure it works with their existing SaaS solutions from you.\"},{\"id\":\"1z7cdfd25vz\",\"question\":\"What is Software-as-a-Service (SaaS)?\",\"answer\":\"This is always number one. So many people don\\u2019t understand SaaS or what it means to their business. Others just aren\\u2019t sure how it differs from a typical software product or company. There\\u2019s a lot to cover here, but even addressing the question shows your audience that you are ready to do so and be transparent about what you offer.\"}]', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(11, 1, 1, 'pricing_cards', 'Pricing Cards', 'en', '[{\"id\":\"1nv8m1ua7w4\",\"name\":\"itune\",\"logo\":\"website_wkrtqwt6xndjyqyn1hwe.svg\",\"logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_wkrtqwt6xndjyqyn1hwe.svg\"},{\"id\":\"bhxt4mzpgsq\",\"name\":\"amex\",\"logo\":\"website_qpqj0ndkodnlkwschfhr.svg\",\"logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_qpqj0ndkodnlkwschfhr.svg\"},{\"id\":\"ugxjxtffre\",\"name\":\"Visa\",\"logo\":\"website_wte2yems7ahxl2bqnmmx.svg\",\"logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_wte2yems7ahxl2bqnmmx.svg\"},{\"id\":\"aogu39r25jr\",\"name\":\"Stripe\",\"logo\":\"website_x16mxi6xbpfbqinkv2pq.svg\",\"logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_x16mxi6xbpfbqinkv2pq.svg\"},{\"id\":\"hojcguj4k9j\",\"name\":\"MasterCard\",\"logo\":\"website_7dxcjzr4drnjti3fuxzt.svg\",\"logo_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_7dxcjzr4drnjti3fuxzt.svg\"}]', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(12, 1, 1, 'footer_pages', 'Footers Pages', 'en', '[]', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(13, 1, 1, 'website_seo', 'SEO Details', 'en', '[{\"id\":\"1jzmhcpnshn\",\"page_key\":\"home\",\"seo_title\":\"Home\",\"seo_author\":\"stockifly\",\"seo_keywords\":\"stockifly saas\",\"seo_description\":\"stockifly saas\",\"seo_image\":\"website_cldv2lidmrtm4uxqwz42.png\",\"seo_image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_r4ykpmmpmm3jw6bcyfdl.png\"},{\"id\":\"2jzmhcpnshn\",\"page_key\":\"register\",\"seo_title\":\"Register\",\"seo_author\":\"stockifly\",\"seo_keywords\":\"register, stockifly\",\"seo_description\":\"stockifly saas register\",\"seo_image\":\"website_cldv2lidmrtm4uxqwz42.png\",\"seo_image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_r4ykpmmpmm3jw6bcyfdl.png\"},{\"id\":\"3jzmhcpnshn\",\"page_key\":\"features\",\"seo_title\":\"Features\",\"seo_author\":\"stockifly\",\"seo_keywords\":\"features\",\"seo_description\":\"stockifly features page\",\"seo_image\":\"website_cldv2lidmrtm4uxqwz42.png\",\"seo_image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_r4ykpmmpmm3jw6bcyfdl.png\"},{\"id\":\"4jzmhcpnshn\",\"page_key\":\"contact\",\"seo_title\":\"Contact Us\",\"seo_author\":\"stockifly\",\"seo_keywords\":\"contact us\",\"seo_description\":\"stockifly contact us page\",\"seo_image\":\"website_cldv2lidmrtm4uxqwz42.png\",\"seo_image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_r4ykpmmpmm3jw6bcyfdl.png\"},{\"id\":\"5jzmhcpnshn\",\"page_key\":\"pricing\",\"seo_title\":\"Pricing\",\"seo_author\":\"stockifly\",\"seo_keywords\":\"pricing\",\"seo_description\":\"stockifly pricing page\",\"seo_image\":\"website_cldv2lidmrtm4uxqwz42.png\",\"seo_image_url\":\"https:\\/\\/saas.stockifly.in\\/uploads\\/website\\/website_r4ykpmmpmm3jw6bcyfdl.png\"}]', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(14, 1, 1, 'payment_settings', 'Paypal Payment Settings', 'paypal', '{\"paypal_client_id\":\"\",\"paypal_secret\":\"\",\"paypal_mode\":\"sandbox\",\"paypal_status\":\"inactive\"}', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(15, 1, 1, 'payment_settings', 'Stripe Payment Settings', 'stripe', '{\"stripe_api_key\":\"\",\"stripe_api_secret\":\"\",\"stripe_webhook_key\":\"\",\"stripe_status\":\"inactive\"}', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(16, 1, 1, 'payment_settings', 'Razorpay Payment Settings', 'razorpay', '{\"razorpay_key\":\"\",\"razorpay_secret\":\"\",\"razorpay_webhook_secret\":\"\",\"razorpay_status\":\"inactive\"}', NULL, 1, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(17, 1, 1, 'payment_settings', 'Paystack Payment Settings', 'paystack', '{\"paystack_client_id\":\"\",\"paystack_secret\":\"\",\"paystack_merchant_email\":\"\",\"paystack_status\":\"inactive\"}', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(18, 1, 1, 'payment_settings', 'Mollie Payment Settings', 'mollie', '{\"mollie_api_key\":\"\",\"mollie_status\":\"inactive\"}', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(19, 1, 1, 'payment_settings', 'Authorize Payment Settings', 'authorize', '{\"authorize_api_login_id\":\"\",\"authorize_transaction_key\":\"\",\"authorize_signature_key\":\"\",\"authorize_environment\":\"sandbox\",\"authorize_status\":\"inactive\"}', NULL, 0, 0, '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(46, 0, 3, 'send_mail_settings', 'Send mail to warehouse', 'warehouse', '[]', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(47, 0, 3, 'shortcut_menus', 'Add Menu', 'shortcut_menus', '[\"staff_member\",\"customer\",\"supplier\",\"brand\",\"category\",\"product\",\"purchase\",\"sales\",\"expense_category\",\"expense\",\"warehouse\",\"currency\",\"unit\",\"language\",\"role\",\"tax\",\"payment_mode\"]', NULL, 1, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(48, 0, 3, 'email_templates', 'Stock adjustment created', 'stock_adjustment_create', '{\"title\":\"Stock adjustment created\",\"content\":\"Stock adjustment created by ##staff_member_name## for warehouse ##warehouse_name## for product ##product_name## with ##stock_adjustment_quantity## (##stock_adjustment_type##) quantity\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(49, 0, 3, 'email_templates', 'Stock adjustment updated', 'stock_adjustment_update', '{\"title\":\"Stock adjustment updated\",\"content\":\"Stock adjustment updated by ##staff_member_name## for warehouse ##warehouse_name## for product ##product_name## with ##stock_adjustment_quantity## (##stock_adjustment_type##) quantity\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(50, 0, 3, 'email_templates', 'Stock adjustment deleted', 'stock_adjustment_delete', '{\"title\":\"Stock adjustment deleted\",\"content\":\"Stock adjustment deleted by ##staff_member_name## for warehouse ##warehouse_name## for product ##product_name## with ##stock_adjustment_quantity## (##stock_adjustment_type##) quantity\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(51, 0, 3, 'email_templates', 'Staff Member created', 'staff_member_create', '{\"title\":\"Staff Member created\",\"content\":\"A new staff Member added with ##staff_member_name## name in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(52, 0, 3, 'email_templates', 'Staff Member updated', 'staff_member_update', '{\"title\":\"Staff Member updated\",\"content\":\"Staff Member with name ##staff_member_name## updated in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(53, 0, 3, 'email_templates', 'Staff Member deleted', 'staff_member_delete', '{\"title\":\"Staff Member deleted\",\"content\":\"Staff member with name ##staff_member_name## deleted from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(54, 0, 3, 'email_templates', 'Purchase created', 'purchases_create', '{\"title\":\"Purchase created\",\"content\":\"A new purhcase added by ##staff_member_name## in your warehouse ##warehouse_name## with invoice number ##invoice_number##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(55, 0, 3, 'email_templates', 'Purchase updated', 'purchases_update', '{\"title\":\"Purchase updated\",\"content\":\"Purchase with invoice number ##invoice_number## updated by ##staff_member_name## in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(56, 0, 3, 'email_templates', 'Purchase deleted', 'purchases_delete', '{\"title\":\"Purchase deleted\",\"content\":\"Purchase with invoice number ##invoice_number## deleted by ##staff_member_name## from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(57, 0, 3, 'email_templates', 'Purchase created', 'purchase_returns_create', '{\"title\":\"Purchase created\",\"content\":\"A new purhcase return added by ##staff_member_name## in your warehouse ##warehouse_name## with invoice number ##invoice_number##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(58, 0, 3, 'email_templates', 'Purchase updated', 'purchase_returns_update', '{\"title\":\"Purchase updated\",\"content\":\"Purchase return with invoice number ##invoice_number## updated by ##staff_member_name## in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(59, 0, 3, 'email_templates', 'Purchase return deleted', 'purchase_returns_delete', '{\"title\":\"Purchase return deleted\",\"content\":\"Purchase return with invoice number ##invoice_number## deleted by ##staff_member_name## from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(60, 0, 3, 'email_templates', 'Sales created', 'sales_create', '{\"title\":\"Sales created\",\"content\":\"A new sales added by ##staff_member_name## name in your warehouse ##warehouse_name## with invoice number ##invoice_number##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(61, 0, 3, 'email_templates', 'Sales updated', 'sales_update', '{\"title\":\"Sales updated\",\"content\":\"Sales with invoice number ##invoice_number## updated by ##staff_member_name## in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(62, 0, 3, 'email_templates', 'Sales deleted', 'sales_delete', '{\"title\":\"Sales deleted\",\"content\":\"Sales with invoice number ##invoice_number## deleted by ##staff_member_name## from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(63, 0, 3, 'email_templates', 'Sales return created', 'sales_returns_create', '{\"title\":\"Sales return created\",\"content\":\"A new sales return added by ##staff_member_name## in your warehouse ##warehouse_name## with invoice number ##invoice_number##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(64, 0, 3, 'email_templates', 'Sales return updated', 'sales_returns_update', '{\"title\":\"Sales return updated\",\"content\":\"Sales return with invoice number ##invoice_number## updated by ##staff_member_name## in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(65, 0, 3, 'email_templates', 'Sales return deleted', 'sales_returns_delete', '{\"title\":\"Sales return deleted\",\"content\":\"Sales return with invoice number ##invoice_number## deleted by ##staff_member_name## from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(66, 0, 3, 'email_templates', 'Quotations created', 'quotations_create', '{\"title\":\"Quotations created\",\"content\":\"A new quotations added by ##staff_member_name## name in your warehouse ##warehouse_name## with invoice number ##invoice_number##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(67, 0, 3, 'email_templates', 'Quotations updated', 'quotations_update', '{\"title\":\"Quotations updated\",\"content\":\"Quotations with invoice number ##invoice_number## updated by ##staff_member_name## in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(68, 0, 3, 'email_templates', 'Quotations deleted', 'quotations_delete', '{\"title\":\"Quotations deleted\",\"content\":\"Quotations with invoice number ##invoice_number## deleted by ##staff_member_name## from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(69, 0, 3, 'email_templates', 'Expense created', 'expense_create', '{\"title\":\"Expense created\",\"content\":\"A new expense added by ##staff_member_name## in your warehouse ##warehouse_name## with amount ##expense_amount##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(70, 0, 3, 'email_templates', 'Expense updated', 'expense_update', '{\"title\":\"Expense updated\",\"content\":\"Expense updated by ##staff_member_name## in your warehouse ##warehouse_name## with amount ##expense_amount##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37'),
(71, 0, 3, 'email_templates', 'Expense deleted', 'expense_delete', '{\"title\":\"Expense deleted\",\"content\":\"Expense deleted by ##staff_member_name## from your warehouse ##warehouse_name## with amount ##expense_amount##.\"}', NULL, 0, 0, '2025-06-01 09:02:37', '2025-06-01 09:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `clock_in_time` time NOT NULL,
  `clock_out_time` time NOT NULL,
  `late_mark_after` int(11) DEFAULT NULL,
  `early_clock_in_time` int(11) DEFAULT NULL,
  `allow_clock_out_till` int(11) DEFAULT NULL,
  `self_clocking` tinyint(1) NOT NULL DEFAULT 1,
  `allowed_ip_address` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustments`
--

CREATE TABLE `stock_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `adjustment_type` varchar(20) NOT NULL DEFAULT 'add',
  `notes` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_history`
--

CREATE TABLE `stock_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `old_quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `order_type` varchar(20) DEFAULT 'sales',
  `stock_type` varchar(20) NOT NULL DEFAULT 'in',
  `action_type` varchar(20) NOT NULL DEFAULT 'add',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_history`
--

INSERT INTO `stock_history` (`id`, `company_id`, `warehouse_id`, `product_id`, `quantity`, `old_quantity`, `order_type`, `stock_type`, `action_type`, `created_by`, `created_at`, `updated_at`) VALUES
(13, 3, 4, 2034, 10.00, 0.00, 'sales', 'out', 'add', 9, '2025-07-22 08:53:49', '2025-07-22 08:53:49'),
(14, 3, 4, 2034, 1.00, 0.00, 'sales', 'out', 'add', 9, '2025-07-22 08:57:28', '2025-07-22 08:57:28'),
(15, 3, 4, 2034, 1.00, 0.00, 'sales', 'out', 'add', 9, '2025-07-22 08:58:28', '2025-07-22 08:58:28'),
(16, 3, 4, 2035, 1.00, 0.00, 'sales', 'out', 'add', 9, '2025-07-22 09:06:31', '2025-07-22 09:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(20) NOT NULL DEFAULT 'stripe',
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `stripe_status` varchar(191) DEFAULT NULL,
  `stripe_price` varchar(191) DEFAULT NULL,
  `stripe_plan` varchar(191) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `token` varchar(191) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `plan_id` varchar(191) DEFAULT NULL,
  `plan_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) NOT NULL,
  `stripe_product` varchar(191) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_price` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `annual_price` double NOT NULL DEFAULT 0,
  `monthly_price` double NOT NULL DEFAULT 0,
  `max_products` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modules` text DEFAULT NULL,
  `default` varchar(20) NOT NULL DEFAULT 'no',
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `billing_cycle` tinyint(4) DEFAULT NULL,
  `stripe_monthly_plan_id` varchar(191) DEFAULT NULL,
  `stripe_annual_plan_id` varchar(191) DEFAULT NULL,
  `razorpay_monthly_plan_id` varchar(191) DEFAULT NULL,
  `razorpay_annual_plan_id` varchar(191) DEFAULT NULL,
  `paystack_monthly_plan_id` varchar(191) DEFAULT NULL,
  `paystack_annual_plan_id` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `duration` int(11) DEFAULT 30,
  `notify_before` int(11) DEFAULT NULL,
  `position` smallint(6) DEFAULT NULL,
  `features` text DEFAULT NULL,
  `currency_code` varchar(191) DEFAULT 'USD',
  `currency_symbol` varchar(191) DEFAULT '$',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`id`, `name`, `description`, `annual_price`, `monthly_price`, `max_products`, `modules`, `default`, `is_popular`, `is_private`, `billing_cycle`, `stripe_monthly_plan_id`, `stripe_annual_plan_id`, `razorpay_monthly_plan_id`, `razorpay_annual_plan_id`, `paystack_monthly_plan_id`, `paystack_annual_plan_id`, `active`, `duration`, `notify_before`, `position`, `features`, `currency_code`, `currency_symbol`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'Its a default package and cannot be deleted', 0, 0, 5, '[\"stock_transfer\",\"stock_adjustment\",\"expense\",\"quotation\"]', 'yes', 0, 0, NULL, 'default_plan', 'default_plan', NULL, NULL, NULL, NULL, 1, 30, NULL, NULL, '[]', 'USD', '$', '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(2, 'Trail', 'Its a trial package', 0, 0, 5, '[\"pos\",\"stock_transfer\",\"stock_adjustment\",\"online_store\",\"expense\",\"quotation\",\"purchase_return\",\"sales_return\",\"reports\",\"reports_download\"]', 'trial', 0, 0, NULL, 'trial_plan', 'trial_plan', NULL, NULL, NULL, NULL, 1, 30, NULL, NULL, NULL, 'USD', '$', '2025-03-19 03:06:21', '2025-03-19 03:06:21'),
(3, 'Subscription', 'Free Subscription', 0, 0, 1000000, '[\"pos\",\"online_store\",\"purchase_return\",\"reports_download\",\"sales_return\",\"expense\",\"stock_transfer\",\"stock_adjustment\",\"quotation\",\"reports\"]', 'no', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '[]', 'USD', '$', '2025-03-19 03:38:39', '2025-03-19 03:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(20) DEFAULT 'single',
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `rate` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `parent_id`, `tax_type`, `company_id`, `name`, `rate`, `created_at`, `updated_at`) VALUES
(5, NULL, 'single', 3, 'VAT', 5.00, '2025-07-22 09:03:40', '2025-07-22 09:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group` varchar(191) NOT NULL,
  `key` text NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang_id`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'common', 'enabled', 'Enabled', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(2, 1, 'common', 'disabled', 'Disabled', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(3, 1, 'common', 'id', 'Id', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(4, 1, 'common', 'action', 'Action', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(5, 1, 'common', 'placeholder_default_text', 'Please Enter {0}', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(6, 1, 'common', 'placeholder_social_text', 'Please Enter {0} Url', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(7, 1, 'common', 'placeholder_search_text', 'Search By {0}', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(8, 1, 'common', 'select_default_text', 'Select {0}...', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(9, 1, 'common', 'create', 'Create', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(10, 1, 'common', 'edit', 'Edit', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(11, 1, 'common', 'update', 'Update', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(12, 1, 'common', 'cancel', 'Cancel', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(13, 1, 'common', 'delete', 'Delete', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(14, 1, 'common', 'success', 'Success', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(15, 1, 'common', 'error', 'Error', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(16, 1, 'common', 'yes', 'Yes', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(17, 1, 'common', 'no', 'No', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(18, 1, 'common', 'fix_errors', 'Please Fix Below Errors.', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(19, 1, 'common', 'cancelled', 'Cancelled', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(20, 1, 'common', 'pending', 'Pending', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(21, 1, 'common', 'paid', 'Paid', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(22, 1, 'common', 'completed', 'Completed', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(23, 1, 'common', 'save', 'Save', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(24, 1, 'common', 'all', 'All', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(25, 1, 'common', 'name', 'Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(26, 1, 'common', 'back', 'Back', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(27, 1, 'common', 'max_amount', 'Max. Amount', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(28, 1, 'common', 'date_time', 'Date Time', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(29, 1, 'common', 'select_time', 'Select Time', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(30, 1, 'common', 'start_date', 'Start Date', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(31, 1, 'common', 'end_date', 'End Date', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(32, 1, 'common', 'search', 'Search', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(33, 1, 'common', 'date', 'Date', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(34, 1, 'common', 'out_of_stock', 'Out Of Stock', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(35, 1, 'common', 'pay', 'Pay', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(36, 1, 'common', 'received', 'Received', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(37, 1, 'common', 'with_tax', 'With Tax', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(38, 1, 'common', 'without_tax', 'Without Tax', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(39, 1, 'common', 'invoice_number', 'Invoice Number', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(40, 1, 'common', 'ordered', 'Ordered', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(41, 1, 'common', 'confirmed', 'Confirmed', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(42, 1, 'common', 'processing', 'Processing', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(43, 1, 'common', 'shipping', 'Shipping', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(44, 1, 'common', 'delivered', 'Delivered', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(45, 1, 'common', 'confirm', 'Confirm', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(46, 1, 'common', 'title', 'Title', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(47, 1, 'common', 'value', 'Value', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(48, 1, 'common', 'add', 'Add', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(49, 1, 'common', 'view', 'View', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(50, 1, 'common', 'download', 'Download', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(51, 1, 'common', 'change_order_status', 'Change Order Status', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(52, 1, 'common', 'total', 'Total', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(53, 1, 'common', 'print_invoice', 'Print Invoice', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(54, 1, 'common', 'email', 'Email', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(55, 1, 'common', 'phone', 'Phone', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(56, 1, 'common', 'item', 'Item', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(57, 1, 'common', 'items', 'Items', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(58, 1, 'common', 'qty', 'Qty', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(59, 1, 'common', 'rate', 'Rate', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(60, 1, 'common', 'purchase_code', 'Purchase Code', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(61, 1, 'common', 'verify_purchase', 'Verify Purchase', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(62, 1, 'common', 'buy_now', 'Buy Now', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(63, 1, 'common', 'install', 'Install', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(64, 1, 'common', 'installing', 'Installing', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(65, 1, 'common', 'updating', 'Updating', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(66, 1, 'common', 'free', 'Free', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(67, 1, 'common', 'domain', 'Domain', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(68, 1, 'common', 'verify', 'Verify', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(69, 1, 'common', 'send', 'Send', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(70, 1, 'common', 'upload', 'Upload', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(71, 1, 'common', 'view_all', 'View All', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(72, 1, 'common', 'unpaid', 'Unpaid', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(73, 1, 'common', 'loading', 'Loading', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(74, 1, 'common', 'update_app', 'Update App', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(75, 1, 'common', 'welcome_back', 'Welcome {0}', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(76, 1, 'common', 'off', 'Off', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(77, 1, 'common', 'on_create', 'On Create', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(78, 1, 'common', 'on_update', 'On Update', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(79, 1, 'common', 'on_delete', 'On Delete', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(80, 1, 'common', 'demo_account_credentials', 'Demo account login credentials', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(81, 1, 'common', 'balance', 'Balance', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(82, 1, 'common', 'party', 'Party', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(83, 1, 'common', 'created_by', 'Created By', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(84, 1, 'common', 'import', 'Import', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(85, 1, 'common', 'file', 'File', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(86, 1, 'common', 'copy_url', 'Copy Url', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(87, 1, 'common', 'print', 'Print', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(88, 1, 'common', 'pdf', 'Pdf', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(89, 1, 'common', 'particulars', 'Particulars', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(90, 1, 'common', 'amount', 'Amount', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(91, 1, 'common', 'profit', 'Profit', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(92, 1, 'common', 'profit_reports_by_orders', 'Profit Reports By Orders', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(93, 1, 'common', 'profit_reports_by_payments', 'Profit Reports By Payments', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(94, 1, 'common', 'status', 'Status', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(95, 1, 'common', 'active', 'Active', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(96, 1, 'common', 'inactive', 'Inactive', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(97, 1, 'common', 'verified', 'Verified', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(98, 1, 'common', 'configure', 'Configure', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(99, 1, 'common', 'logo', 'Logo', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(100, 1, 'common', 'comment', 'Comment', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(101, 1, 'common', 'rating', 'Rating', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(102, 1, 'common', 'page_content', 'Page Content', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(103, 1, 'common', 'slug', 'Slug', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(104, 1, 'common', 'question', 'Question', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(105, 1, 'common', 'answer', 'Answer', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(106, 1, 'common', 'description', 'Description', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(107, 1, 'common', 'image', 'Image', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(108, 1, 'common', 'address', 'Address', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(109, 1, 'common', 'not_allowed', 'Not Allowed', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(110, 1, 'common', 'details', 'Details', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(111, 1, 'common', 'excel', 'Excel', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(112, 1, 'common', 'daily_income', 'Daily Income', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(113, 1, 'common', 'average_price', 'Average Price', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(114, 1, 'common', 'module', 'Module', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(115, 1, 'common', 'save_and_new', 'Save & New', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(116, 1, 'common', 'save_and_continue', 'Save & Continue', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(117, 1, 'common', 'clear', 'Clear', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(118, 1, 'common', 'filters', 'Filters', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(119, 1, 'common', 'reset', 'Reset', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(120, 1, 'common', 'preview', 'Preview', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(121, 1, 'common', 'minutes', 'Minutes', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(122, 1, 'common', 'approved', 'Approved', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(123, 1, 'common', 'rejected', 'Rejected', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(124, 1, 'common', 'january', 'January', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(125, 1, 'common', 'february', 'February', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(126, 1, 'common', 'march', 'March', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(127, 1, 'common', 'april', 'April', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(128, 1, 'common', 'may', 'May', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(129, 1, 'common', 'june', 'June', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(130, 1, 'common', 'july', 'July', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(131, 1, 'common', 'august', 'August', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(132, 1, 'common', 'september', 'September', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(133, 1, 'common', 'october', 'October', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(134, 1, 'common', 'november', 'November', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(135, 1, 'common', 'december', 'December', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(136, 1, 'common', 'hrm_permissions', 'HRM Permissions', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(137, 1, 'common', 'am', 'AM', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(138, 1, 'common', 'pm', 'PM', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(139, 1, 'common', 'approved_message', 'Are you sure you want to change status to approved?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(140, 1, 'common', 'rejected_message', 'Are you sure you want to change status to rejected?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(141, 1, 'common', 'status_changed', 'Status Changed', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(142, 1, 'common', 'holiday', 'Holiday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(143, 1, 'common', 'weekends', 'Weekends', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(144, 1, 'common', 'month', 'Month', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(145, 1, 'common', 'generated', 'Salary Generated Sucessfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(146, 1, 'common', 'assign_to_all', 'Assign To All', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(147, 1, 'common', 'edit_all', 'Edit All', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(148, 1, 'common', 'delete_all', 'Delete All', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(149, 1, 'common', 'approve_reject', 'Approve/Reject', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(150, 1, 'common', 'summary', 'Summary', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(151, 1, 'common', 'leave', 'Leave', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(152, 1, 'common', 'time', 'Time', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(153, 1, 'common', 'sunday', 'Sunday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(154, 1, 'common', 'monday', 'Monday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(155, 1, 'common', 'tuesday', 'Tuesday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(156, 1, 'common', 'wednesday', 'Wednesday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(157, 1, 'common', 'thursday', 'Thursday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(158, 1, 'common', 'friday', 'Friday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(159, 1, 'common', 'saturday', 'Saturday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(160, 1, 'common', 'pos_invoice', 'POS Invoice', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(161, 1, 'common', 'download_invoice', 'Download Invoice', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(162, 1, 'menu', 'dashboard', 'Dashboard', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(163, 1, 'menu', 'stock_management', 'Stock Manager', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(164, 1, 'menu', 'purchase', 'Purchase', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(165, 1, 'menu', 'purchases', 'Purchases', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(166, 1, 'menu', 'purchase_returns', 'Purchase Return / Dr. Note', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(167, 1, 'menu', 'sales', 'Sales', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(168, 1, 'menu', 'sales_return', 'Sales Return', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(169, 1, 'menu', 'sales_returns', 'Sales Return / Cr. Note', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(170, 1, 'menu', 'product_manager', 'Product Manager', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(171, 1, 'menu', 'brands', 'Brands', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(172, 1, 'menu', 'categories', 'Categories', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(173, 1, 'menu', 'products', 'Products', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(174, 1, 'menu', 'expense_manager', 'Expenses', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(175, 1, 'menu', 'expense_categories', 'Expense Categories', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(176, 1, 'menu', 'expenses', 'Expenses', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(177, 1, 'menu', 'users', 'Users', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(178, 1, 'menu', 'parties', 'Parties', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(179, 1, 'menu', 'staff_members', 'Staff Members', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(180, 1, 'menu', 'customers', 'Customers', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(181, 1, 'menu', 'suppliers', 'Suppliers', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(182, 1, 'menu', 'settings', 'Settings', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(183, 1, 'menu', 'company', 'Company Settings', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(184, 1, 'menu', 'profile', 'Profile', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(185, 1, 'menu', 'translations', 'Translations', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(186, 1, 'menu', 'languages', 'Languages', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(187, 1, 'menu', 'warehouses', 'Warehouses', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(188, 1, 'menu', 'roles', 'Role & Permissions', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(189, 1, 'menu', 'taxes', 'Taxes', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(190, 1, 'menu', 'currencies', 'Currencies', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(191, 1, 'menu', 'payment_modes', 'Payment Modes', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(192, 1, 'menu', 'units', 'Units', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(193, 1, 'menu', 'login', 'Login', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(194, 1, 'menu', 'logout', 'Logout', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(195, 1, 'menu', 'reports', 'Reports', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(196, 1, 'menu', 'order_payments', 'Order Payments', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(197, 1, 'menu', 'payments', 'Payments', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(198, 1, 'menu', 'stock_alert', 'Stock Alert', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(199, 1, 'menu', 'users_reports', 'Users Reports', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(200, 1, 'menu', 'warehouses_reports', 'Warehouses Reports', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(201, 1, 'menu', 'pos', 'POS', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(202, 1, 'menu', 'stock_adjustment', 'Stock Adjustment', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(203, 1, 'menu', 'verify_product', 'Verify Product', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(204, 1, 'menu', 'modules', 'Modules', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(205, 1, 'menu', 'storage_settings', 'Storage Settings', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(206, 1, 'menu', 'email_settings', 'Email Settings', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(207, 1, 'menu', 'update_app', 'Update App', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(208, 1, 'menu', 'custom_fields', 'Custom Fields', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(209, 1, 'menu', 'payment_in', 'Payment In', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(210, 1, 'menu', 'payment_out', 'Payment Out', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(211, 1, 'menu', 'cash_bank', 'Cash & Bank', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(212, 1, 'menu', 'sales_summary', 'Sales Summary', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(213, 1, 'menu', 'stock_summary', 'Stock Summary', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(214, 1, 'menu', 'rate_list', 'Rate List', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(215, 1, 'menu', 'product_sales_summary', 'Product Sales Summary', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(216, 1, 'menu', 'homepage', 'Buy online products', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(217, 1, 'menu', 'online_orders', 'Online Orders', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(218, 1, 'menu', 'website_setup', 'Website Setup', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(219, 1, 'menu', 'product_cards', 'Product Cards', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(220, 1, 'menu', 'front_settings', 'Front Settings', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(221, 1, 'menu', 'orders', 'Orders', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(222, 1, 'menu', 'quotations', 'Quotations', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(223, 1, 'menu', 'quotation', 'Quotation', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(224, 1, 'menu', 'quotation_estimate', 'Quotation / Estimate', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(225, 1, 'menu', 'database_backup', 'Database Backup', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(226, 1, 'menu', 'stock_transfer', 'Stock Transfer', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(227, 1, 'menu', 'stock_transfers', 'Stock Transfers', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(228, 1, 'menu', 'profit_loss', 'Profit & Loss', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(229, 1, 'menu', 'companies', 'Companies', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(230, 1, 'menu', 'pos_settings', 'POS Settings', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(231, 1, 'menu', 'setup_company', 'Setup Company', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(232, 1, 'menu', 'expense_reports', 'Expense Reports', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(233, 1, 'menu', 'variations', 'Variations', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(234, 1, 'menu', 'print_barcodes', 'Print Barcode', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(235, 1, 'menu', 'reset_password', 'Reset Password', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(236, 1, 'menu', 'reset', 'Reset', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(237, 1, 'menu', 'submit', 'Submit', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(238, 1, 'menu', 'menu', 'Menu', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(239, 1, 'menu', 'create_account', 'Create Account', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(240, 1, 'menu', 'already_account_login_here', 'Already Registered? Login here', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(241, 1, 'menu', 'departments', 'Departments', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(242, 1, 'menu', 'designations', 'Designations', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(243, 1, 'menu', 'hrm', 'HRM', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(244, 1, 'menu', 'holidays', 'Holidays', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(245, 1, 'menu', 'weekends', 'Weekends', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(246, 1, 'menu', 'leaves_types', 'Leave Types', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(247, 1, 'menu', 'leaves', 'Leaves', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(248, 1, 'menu', 'shifts', 'Shifts', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(249, 1, 'menu', 'pre_payments', 'Pre Payments', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(250, 1, 'menu', 'attendances', 'Attendance', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(251, 1, 'menu', 'staff', 'Staff', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(252, 1, 'menu', 'all_holidays', 'All Holidays', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(253, 1, 'menu', 'leave_types', 'Leave Types', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(254, 1, 'menu', 'remaining_leaves', 'Remaining Leaves', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(255, 1, 'menu', 'unpaid_leaves', 'Unpaid Leaves', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(256, 1, 'menu', 'summary', 'Summary', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(257, 1, 'menu', 'awards', 'Awards', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(258, 1, 'menu', 'appreciations', 'Appreciations', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(259, 1, 'menu', 'increments_promotions', 'Increment/Promotion', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(260, 1, 'menu', 'payrolls', 'Payroll', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(261, 1, 'menu', 'dashboards', 'HRM Dashboard', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(262, 1, 'menu', 'attendance_details', 'Attendance Details', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(263, 1, 'menu', 'attendance_summary', 'Attendance Summary', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(264, 1, 'menu', 'basic_salaries', 'Basic Salary', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(265, 1, 'menu', 'hrm_settings', 'HRM Settings', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(266, 1, 'mobile_app', 'welcome_your_business_overview', 'Welcome, your business overview', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(267, 1, 'mobile_app', 'today', 'Today', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(268, 1, 'mobile_app', 'yesterday', 'Yesterday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(269, 1, 'mobile_app', 'weekly', 'Weekly', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(270, 1, 'mobile_app', 'monthly', 'Monthly', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(271, 1, 'mobile_app', 'yearly', 'Yearly', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(272, 1, 'mobile_app', 'how_to_use_the_app', 'How to use the app', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(273, 1, 'mobile_app', 'have_not_any_account', 'Haven\'t any account?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(274, 1, 'mobile_app', 'register', 'Register', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(275, 1, 'department', 'add', 'Add New Department', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(276, 1, 'department', 'edit', 'Edit Department', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(277, 1, 'department', 'created', 'Department Created Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(278, 1, 'department', 'updated', 'Department Updated Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(279, 1, 'department', 'deleted', 'Department Deleted Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(280, 1, 'department', 'department_details', 'Department Details', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(281, 1, 'department', 'delete_message', 'Are you sure you want to delete this department?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(282, 1, 'department', 'selected_delete_message', 'Are you sure you want to delete selected department?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(283, 1, 'department', 'display_name', 'Display Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(284, 1, 'department', 'name', 'Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(285, 1, 'department', 'user_id', 'User', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(286, 1, 'department', 'shift_id', 'Shift', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(287, 1, 'increment_promotion', 'add', 'Add New Increment/Promotion', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(288, 1, 'increment_promotion', 'edit', 'Edit Increment/Promotion', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(289, 1, 'increment_promotion', 'created', 'Increment/Promotion Created Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(290, 1, 'increment_promotion', 'updated', 'Increment/Promotion Updated Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(291, 1, 'increment_promotion', 'deleted', 'Increment/Promotion Deleted Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(292, 1, 'increment_promotion', 'increment_and_promotion_details', 'Increment/Promotion Details', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(293, 1, 'increment_promotion', 'delete_message', 'Are you sure you want to delete this increment/promotion?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(294, 1, 'increment_promotion', 'selected_delete_message', 'Are you sure you want to delete selected increment/promotion?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(295, 1, 'increment_promotion', 'type', 'Type', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(296, 1, 'increment_promotion', 'date', 'Date', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(297, 1, 'increment_promotion', 'user_id', 'User', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(298, 1, 'increment_promotion', 'total_duration', 'Total Duration', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(299, 1, 'increment_promotion', 'description', 'Description', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(300, 1, 'increment_promotion', 'net_salary', 'Net Salary', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(301, 1, 'increment_promotion', 'promoted_designation_id', 'Promoted Designation', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(302, 1, 'increment_promotion', 'current_designation_id', 'Current Designation', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(303, 1, 'increment_promotion', 'increment', 'Increment', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(304, 1, 'increment_promotion', 'promotion', 'Promotion', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(305, 1, 'increment_promotion', 'increment_promotion', 'Increment/Promotion', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(306, 1, 'increment_promotion', 'details', 'Details', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(307, 1, 'increment_promotion', 'update_basic_salary', 'Update Basic Salary', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(308, 1, 'increment_promotion', 'update_designation', 'Update Designation', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(309, 1, 'designation', 'add', 'Add New Designation', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(310, 1, 'designation', 'edit', 'Edit Designation', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(311, 1, 'designation', 'created', 'Designation Created Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(312, 1, 'designation', 'updated', 'Designation Updated Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(313, 1, 'designation', 'deleted', 'Designation Deleted Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(314, 1, 'designation', 'designation_details', 'Designation Details', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(315, 1, 'designation', 'delete_message', 'Are you sure you want to delete this designation?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(316, 1, 'designation', 'selected_delete_message', 'Are you sure you want to delete selected designation?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(317, 1, 'designation', 'display_name', 'Display Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(318, 1, 'designation', 'name', 'Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(319, 1, 'holiday', 'add', 'Add New Holiday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(320, 1, 'holiday', 'edit', 'Edit Holiday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(321, 1, 'holiday', 'created', 'Holiday Created Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(322, 1, 'holiday', 'updated', 'Holiday Updated Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(323, 1, 'holiday', 'deleted', 'Holiday Deleted Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(324, 1, 'holiday', 'holiday_details', 'Holiday Details', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(325, 1, 'holiday', 'delete_message', 'Are you sure you want to delete this holiday?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(326, 1, 'holiday', 'selected_delete_message', 'Are you sure you want to delete selected holiday?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(327, 1, 'holiday', 'display_name', 'Display Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(328, 1, 'holiday', 'name', 'Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(329, 1, 'holiday', 'year', 'Year', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(330, 1, 'holiday', 'date', 'Date', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(331, 1, 'holiday', 'mark_weekend_holiday', 'Mark Weekend Holiday', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(332, 1, 'holiday', 'created_by', 'Created By', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(333, 1, 'holiday', 'from', 'From', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(334, 1, 'holiday', 'to', 'To', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(335, 1, 'holiday', 'month', 'Month', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(336, 1, 'holiday', 'ocassion_name', 'Ocassion Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(337, 1, 'holiday', 'weekend_marked_successfully', 'Weekend marked successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(338, 1, 'leave_type', 'add', 'Add New Leave Type', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(339, 1, 'leave_type', 'edit', 'Edit Leave Type', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(340, 1, 'leave_type', 'created', 'Leave Type Created Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(341, 1, 'leave_type', 'updated', 'Leave Type Updated Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(342, 1, 'leave_type', 'deleted', 'Leave Type Deleted Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(343, 1, 'leave_type', 'leave_type_details', 'LeaveType Details', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(344, 1, 'leave_type', 'delete_message', 'Are you sure you want to delete this leave type?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(345, 1, 'leave_type', 'selected_delete_message', 'Are you sure you want to delete selected leave type?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(346, 1, 'leave_type', 'display_name', 'Display Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(347, 1, 'leave_type', 'name', 'Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(348, 1, 'leave_type', 'is_paid', 'Is Paid', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(349, 1, 'leave_type', 'total_leaves', 'Total Leaves', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(350, 1, 'leave_type', 'leave_interval_count', 'Leave Interval Count', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(351, 1, 'leave_type', 'max_leaves_per_month', 'Max Leaves Per Month', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(352, 1, 'leave', 'add', 'Add New Leave', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(353, 1, 'leave', 'edit', 'Edit Leave', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(354, 1, 'leave', 'created', 'Leave Created Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(355, 1, 'leave', 'updated', 'Leave Updated Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(356, 1, 'leave', 'deleted', 'Leave Deleted Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(357, 1, 'leave', 'leave_details', 'LeaveType Details', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(358, 1, 'leave', 'delete_message', 'Are you sure you want to delete this leave?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(359, 1, 'leave', 'selected_delete_message', 'Are you sure you want to delete selected leave?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(360, 1, 'leave', 'display_name', 'Display Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(361, 1, 'leave', 'user_id', 'User', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(362, 1, 'leave', 'leave_type', 'Leave Type', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(363, 1, 'leave', 'is_paid', 'Is Paid', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(364, 1, 'leave', 'start_date', 'Start Date', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(365, 1, 'leave', 'end_date', 'End Date', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(366, 1, 'leave', 'is_half_day', 'Is Half Day', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(367, 1, 'leave', 'reason', 'Reason', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(368, 1, 'leave', 'file', 'File', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(369, 1, 'leave', 'status', 'Status', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(370, 1, 'leave', 'bill', 'Bill', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(371, 1, 'leave', 'date', 'Date', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(372, 1, 'leave', 'user', 'User', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(373, 1, 'leave', 'leave_status', 'Leave Status', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(374, 1, 'leave', 'department', 'Department', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(375, 1, 'leave', 'employees', 'Employees', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(376, 1, 'leave', 'mark_attendance', 'Mark Attendance By', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(377, 1, 'leave', 'clock_out', 'Clock Out', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(378, 1, 'leave', 'clock_in', 'Clock In', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(379, 1, 'leave', 'late', 'Late', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(380, 1, 'leave', 'half_day', 'Half Day', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(381, 1, 'leave', 'multiple_date', 'You can select multiple dates', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(382, 1, 'leave', 'clock_in_month', 'Clock in Month', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(383, 1, 'leave', 'attendance_overwrite', 'Attendance Overwrite', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(384, 1, 'leave', 'add_multiple', 'Add Multiple Attendance', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(385, 1, 'award', 'add', 'Add New Award', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(386, 1, 'award', 'edit', 'Edit Award', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(387, 1, 'award', 'created', 'Award Created Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(388, 1, 'award', 'updated', 'Award Updated Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(389, 1, 'award', 'deleted', 'Award Deleted Successfully', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(390, 1, 'award', 'award_details', 'Arwad Details', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(391, 1, 'award', 'delete_message', 'Are you sure you want to delete this award?', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(392, 1, 'award', 'name', 'Name', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(393, 1, 'award', 'active', 'Active', '2025-03-19 03:06:13', '2025-03-19 03:06:13'),
(394, 1, 'award', 'description', 'Description', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(395, 1, 'award', 'award_price', 'Award Price', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(396, 1, 'appreciation', 'add', 'Add New Appreciation', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(397, 1, 'appreciation', 'edit', 'Edit Appreciation', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(398, 1, 'appreciation', 'created', 'Appreciation Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(399, 1, 'appreciation', 'updated', 'Appreciation Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(400, 1, 'appreciation', 'deleted', 'Appreciation Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(401, 1, 'appreciation', 'appreciation_details', 'Arwad Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(402, 1, 'appreciation', 'delete_message', 'Are you sure you want to delete this appreciation?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(403, 1, 'appreciation', 'date', 'Date', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(404, 1, 'appreciation', 'description', 'Description', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(405, 1, 'appreciation', 'user', 'User', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(406, 1, 'appreciation', 'award', 'Award', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(407, 1, 'appreciation', 'price_amount', 'Price Amount', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(408, 1, 'appreciation', 'price_given', 'Price Given', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(409, 1, 'appreciation', 'add_price_given', 'Add Price Given', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(410, 1, 'appreciation', 'price_given_placeholder', 'Holiday Vouchar, Movie Tickets etc...', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(411, 1, 'shift', 'add', 'Add New Shift', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(412, 1, 'shift', 'edit', 'Edit Shift', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(413, 1, 'shift', 'created', 'Shift Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(414, 1, 'shift', 'updated', 'Shift Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(415, 1, 'shift', 'deleted', 'Shift Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(416, 1, 'shift', 'shift_details', 'Shift Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(417, 1, 'shift', 'delete_message', 'Are you sure you want to delete this shift?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(418, 1, 'shift', 'selected_delete_message', 'Are you sure you want to delete selected shift?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(419, 1, 'shift', 'display_name', 'Display Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(420, 1, 'shift', 'name', 'Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(421, 1, 'shift', 'clock_in_time', 'Clock In Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(422, 1, 'shift', 'clock_out_time', 'Clock Out Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(423, 1, 'shift', 'late_mark_after', 'Late Mark After', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(424, 1, 'shift', 'self_clocking', 'Self Clocking', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(425, 1, 'shift', 'allowed_ip_address', 'Allowed IP Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(426, 1, 'shift', 'add_new_ip_address', 'Add New IP Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(427, 1, 'shift', 'allow_clock_out_till', 'Allow Clock Out Till', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(428, 1, 'shift', 'early_clock_in_time', 'Early Clock In Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(429, 1, 'pre_payment', 'add', 'Add New Pre Payment', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(430, 1, 'pre_payment', 'edit', 'Edit Pre Payment', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(431, 1, 'pre_payment', 'created', 'Pre Payment Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(432, 1, 'pre_payment', 'updated', 'Pre Payment Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(433, 1, 'pre_payment', 'deleted', 'Pre Payment Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(434, 1, 'pre_payment', 'pre_payment_details', 'Pre Payment Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(435, 1, 'pre_payment', 'delete_message', 'Are you sure you want to delete this Pre Payment?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(436, 1, 'pre_payment', 'selected_delete_message', 'Are you sure you want to delete selected Pre Payment?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(437, 1, 'pre_payment', 'user_id', 'User', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(438, 1, 'pre_payment', 'payment_mode_id', 'Payment Mode', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(439, 1, 'pre_payment', 'date_time', 'Date', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(440, 1, 'pre_payment', 'amount', 'Amount', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(441, 1, 'pre_payment', 'notes', 'Notes', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(442, 1, 'pre_payment', 'month', 'Month', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(443, 1, 'pre_payment', 'deduct_from_payroll', 'Deduct From Payroll', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(444, 1, 'pre_payment', 'payroll_month', 'Payroll Month', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(445, 1, 'pre_payment', 'payroll_year', 'Payroll Year', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(446, 1, 'pre_payment', 'on_given_payment_month', 'On Given Payment Month', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(447, 1, 'pre_payment', 'another_month', 'Another Month', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(448, 1, 'pre_payment', 'deduct_month', 'Deduct Month', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(449, 1, 'attendance', 'add', 'Add New Attendance', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(450, 1, 'attendance', 'edit', 'Edit Attendance', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(451, 1, 'attendance', 'created', 'Attendance Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(452, 1, 'attendance', 'updated', 'Attendance Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(453, 1, 'attendance', 'deleted', 'Attendance Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(454, 1, 'attendance', 'delete_message', 'Are you sure you want to delete this attendance?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(455, 1, 'attendance', 'selected_delete_message', 'Are you sure you want to delete selected attendance?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(456, 1, 'attendance', 'month', 'Month', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(457, 1, 'attendance', 'year', 'Year', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(458, 1, 'attendance', 'user_id', 'Staff Members', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(459, 1, 'attendance', 'name', 'Staff Members', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(460, 1, 'attendance', 'present', 'Present', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(461, 1, 'attendance', 'present_days', 'Present Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(462, 1, 'attendance', 'working_days', 'Working Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(463, 1, 'attendance', 'total_office_time', 'Total Office Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(464, 1, 'attendance', 'half_day', 'Half Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(465, 1, 'attendance', 'absent', 'Absent', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(466, 1, 'attendance', 'holiday', 'Holiday', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(467, 1, 'attendance', 'date', 'Date', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(468, 1, 'attendance', 'on_leave', 'On Leave', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(469, 1, 'attendance', 'status', 'Status', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(470, 1, 'attendance', 'clock_in', 'Clock In', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(471, 1, 'attendance', 'clock_out', 'Clock Out', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(472, 1, 'attendance', 'clocked_time', 'Clocked Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(473, 1, 'attendance', 'other_details', 'Other Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(474, 1, 'attendance', 'clock_in_ip', 'Clock-In IP', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(475, 1, 'attendance', 'clock_out_ip', 'Clock-Out IP', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(476, 1, 'attendance', 'hours', 'hrs', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(477, 1, 'attendance', 'minutes', 'mins', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(478, 1, 'attendance', 'late', 'Late', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(479, 1, 'attendance', 'not_marked', 'Not Marked', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(480, 1, 'attendance', 'total_worked_time', 'Total Worked Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(481, 1, 'attendance', 'present_working_days', 'Present / Working Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(482, 1, 'attendance', 'clock_in_date_time', 'Clock In Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(483, 1, 'attendance', 'clock_out_date_time', 'Clock Out Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(484, 1, 'attendance', 'clock_in_ip_address', 'Clock In IP Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(485, 1, 'attendance', 'clock_out_ip_address', 'Clock Out IP Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(486, 1, 'attendance', 'days', 'Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(487, 1, 'attendance', 'total_duration', 'Total Duration', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(488, 1, 'attendance', 'is_late', 'Is Late', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(489, 1, 'attendance', 'admin', 'Admin', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(490, 1, 'attendance', 'is_half_day', 'Is Half Day', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(491, 1, 'attendance', 'leave_type', 'Leave Type', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(492, 1, 'attendance', 'user', 'Users', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(493, 1, 'attendance', 'half_days', 'Half Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(494, 1, 'attendance', 'reason', 'Reason', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(495, 1, 'payroll', 'add', 'Add New Payroll', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(496, 1, 'payroll', 'edit', 'Edit Payroll', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(497, 1, 'payroll', 'created', 'Payroll Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(498, 1, 'payroll', 'updated', 'Payroll Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(499, 1, 'payroll', 'deleted', 'Payroll Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(500, 1, 'payroll', 'payroll_details', 'Payroll Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(501, 1, 'payroll', 'delete_message', 'Are you sure you want to delete this payroll?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(502, 1, 'payroll', 'month', 'Month', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(503, 1, 'payroll', 'year', 'Year', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(504, 1, 'payroll', 'user_id', 'User', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(505, 1, 'payroll', 'net_salary', 'Net Salary', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(506, 1, 'payroll', 'status', 'Status', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(507, 1, 'payroll', 'payment_date', 'Payment Date', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(508, 1, 'payroll', 'generate', 'Generate', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(509, 1, 'payroll', 'generated', 'Generated', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(510, 1, 'payroll', 'regenerate', 'Regenerate', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(511, 1, 'payroll', 'regenerated', 'Regenerated', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(512, 1, 'payroll', 'bonus', 'Bonus', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(513, 1, 'payroll', 'earning', 'Earning', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(514, 1, 'payroll', 'amount', 'Amount', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(515, 1, 'payroll', 'add_earning', 'Add Earning', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(516, 1, 'payroll', 'deduction', 'Deduction', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(517, 1, 'payroll', 'total_days', 'Total Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(518, 1, 'payroll', 'working_days', 'Working Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(519, 1, 'payroll', 'present_days', 'Present Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14');
INSERT INTO `translations` (`id`, `lang_id`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(520, 1, 'payroll', 'total_office_time', 'Total Office Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(521, 1, 'payroll', 'total_worked_time', 'Total Worked Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(522, 1, 'payroll', 'half_days', 'Half Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(523, 1, 'payroll', 'late_days', 'Late Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(524, 1, 'payroll', 'paid_leaves', 'Paid Leaves', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(525, 1, 'payroll', 'unpaid_leaves', 'Unpaid Leaves', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(526, 1, 'payroll', 'holiday_count', 'Holiday Count', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(527, 1, 'payroll', 'leaves', 'Leaves', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(528, 1, 'payroll', 'holiday', 'Holiday', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(529, 1, 'payroll', 'summary', 'Summary', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(530, 1, 'payroll', 'pre_payment_deduction', 'Pre Payment Deduction', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(531, 1, 'payroll', 'salary_component', 'Salary Component', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(532, 1, 'payroll', 'expense_claim', 'Expense Claim', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(533, 1, 'payroll', 'basic_salary', 'Basic Salary', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(534, 1, 'payroll', 'salary_amount', 'Salary Amount', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(535, 1, 'payroll', 'paid', 'Paid', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(536, 1, 'payroll', 'payroll_status', 'Payroll Status', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(537, 1, 'payroll', 'date', 'Date', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(538, 1, 'payroll', 'payment_mode_id', 'Payment Mode', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(539, 1, 'payroll', 'status_generated', 'Status Updated Sucessfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(540, 1, 'payroll', 'setup_basic_salary_to_generate_payroll', 'If you want to generate payroll for an employee then first setup basic salary for that employee.', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(541, 1, 'payroll', 'basic_salary_setup', 'Basic Salary Setup', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(542, 1, 'hrm_dashboard', 'today_attendance', 'Today Attendance', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(543, 1, 'hrm_dashboard', 'current_ip_address', 'Current IP Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(544, 1, 'hrm_dashboard', 'current_time', 'Current Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(545, 1, 'hrm_dashboard', 'clock_in', 'Clock In', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(546, 1, 'hrm_dashboard', 'clocked_in', 'Clocked In', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(547, 1, 'hrm_dashboard', 'clock_out', 'Clock Out', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(548, 1, 'hrm_dashboard', 'clocked_out', 'Clocked Out', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(549, 1, 'hrm_dashboard', 'office_hours_expired', 'Times Up: Office Hours Expired. Ensure Timely Clock-In and Clock-Out to Keep Attendance Records Accurate.', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(550, 1, 'hrm_dashboard', 'pening_approvals', 'Pending Approvals', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(551, 1, 'hrm_dashboard', 'not_marked', 'Not Marked', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(552, 1, 'hrm_dashboard', 'present', 'Present', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(553, 1, 'hrm_dashboard', 'absent', 'Absent', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(554, 1, 'hrm_dashboard', 'today_is_holiday', 'Today is holiday...', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(555, 1, 'hrm_dashboard', 'you_are_on_leave', 'You are on leave so you cannot clock-in... Enjoy your leave.', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(556, 1, 'hrm_dashboard', 'self_clocking_is_disabled', 'Self clocking is disabled by admin', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(557, 1, 'basic_salary', 'add', 'Add New Basic Salary', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(558, 1, 'basic_salary', 'edit', 'Edit Basic Salary', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(559, 1, 'basic_salary', 'created', 'Basic Salary Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(560, 1, 'basic_salary', 'updated', 'Basic Salary Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(561, 1, 'basic_salary', 'deleted', 'Basic Salary Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(562, 1, 'basic_salary', 'basic_salary_details', 'Basic Salary Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(563, 1, 'basic_salary', 'delete_message', 'Are you sure you want to delete this basic salary?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(564, 1, 'basic_salary', 'user_id', 'User', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(565, 1, 'basic_salary', 'active', 'Active', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(566, 1, 'basic_salary', 'basic_salary', 'Basic Salary', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(567, 1, 'hrm_settings', 'updated', 'HRM Setting Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(568, 1, 'hrm_settings', 'leave_start_month', 'Leave Start Month', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(569, 1, 'hrm_settings', 'late_mark_after', 'Late Mark After', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(570, 1, 'hrm_settings', 'clock_in_time', 'Clock In Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(571, 1, 'hrm_settings', 'clock_out_time', 'Clock Out Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(572, 1, 'hrm_settings', 'self_clocking', 'Self Clocking', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(573, 1, 'hrm_settings', 'allowed_ip_address', 'Allowed Ip Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(574, 1, 'hrm_settings', 'early_clock_in_time', 'Early Clock In Time', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(575, 1, 'hrm_settings', 'allow_clock_out_till', 'Allow Clock Out till', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(576, 1, 'dashboard', 'dashboard', 'Dashboard', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(577, 1, 'dashboard', 'recent_stock_history', 'Recent Stock History', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(578, 1, 'dashboard', 'top_selling_product', 'Top Selling Product', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(579, 1, 'dashboard', 'sales_purchases', 'Sales & Purchases', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(580, 1, 'dashboard', 'total_sales', 'Total Sales', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(581, 1, 'dashboard', 'top_customers', 'Top Customers', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(582, 1, 'dashboard', 'total_expenses', 'Total Expenses', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(583, 1, 'dashboard', 'payment_sent', 'Payment Sent', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(584, 1, 'dashboard', 'payment_received', 'Payment Received', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(585, 1, 'dashboard', 'total_sales_items', 'Total Sales Items', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(586, 1, 'dashboard', 'total_sales_returns_items', 'Total Sales Returns Items', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(587, 1, 'dashboard', 'total_purchases_items', 'Total Purchase Items', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(588, 1, 'dashboard', 'total_purchase_returns_items', 'Total Purchase Returns Items', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(589, 1, 'dashboard', 'today', 'Today', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(590, 1, 'dashboard', 'last_7_days', 'Last 7 Days', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(591, 1, 'dashboard', 'this_month', 'This Month', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(592, 1, 'dashboard', 'this_year', 'This Year', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(593, 1, 'dashboard', 'yesterday', 'Yesterday', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(594, 1, 'user', 'email_phone', 'Email or Phone', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(595, 1, 'user', 'user', 'User', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(596, 1, 'user', 'name', 'Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(597, 1, 'user', 'created_at', 'Created At', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(598, 1, 'user', 'email', 'Email', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(599, 1, 'user', 'password', 'Password', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(600, 1, 'user', 'login_enabled', 'Login Enabled', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(601, 1, 'user', 'profile_image', 'Profile Image', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(602, 1, 'user', 'company_name', 'Company Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(603, 1, 'user', 'phone', 'Phone Number', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(604, 1, 'user', 'address', 'Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(605, 1, 'user', 'city', 'City', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(606, 1, 'user', 'state', 'State', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(607, 1, 'user', 'country', 'Country', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(608, 1, 'user', 'zipcode', 'Zipcode', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(609, 1, 'user', 'billing_address', 'Billing Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(610, 1, 'user', 'shipping_address', 'Shipping Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(611, 1, 'user', 'opening_balance', 'Opening Balance', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(612, 1, 'user', 'credit_period', 'Credit Period', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(613, 1, 'user', 'credit_limit', 'Credit Limit', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(614, 1, 'user', 'to_receive', 'To Collect', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(615, 1, 'user', 'to_pay', 'To Pay', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(616, 1, 'user', 'receive', 'Receive', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(617, 1, 'user', 'pay', 'Pay', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(618, 1, 'user', 'status', 'Status', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(619, 1, 'user', 'role', 'Role', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(620, 1, 'user', 'days', 'Day(s)', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(621, 1, 'user', 'profile_updated', 'Profile Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(622, 1, 'user', 'password_blank', 'Leave blank if you don\'t want to update password.', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(623, 1, 'user', 'total_sales', 'Total Sales', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(624, 1, 'user', 'total_purchases', 'Total Purchases', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(625, 1, 'user', 'walk_in_customer', 'Walk In Customer', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(626, 1, 'user', 'staff_members_details', 'Staff Member Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(627, 1, 'user', 'customers_details', 'Customer Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(628, 1, 'user', 'suppliers_details', 'Supplier Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(629, 1, 'user', 'admin_account_details', 'Admin Account Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(630, 1, 'user', 'tax_number', 'Tax Number', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(631, 1, 'user', 'warehouse_not_changable', 'Warehouse Can Not Be Changed', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(632, 1, 'user', 'sign_in', 'Sign In', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(633, 1, 'user', 'new_password', 'New Password', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(634, 1, 'user', 'confirm_password', 'Confirm Password', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(635, 1, 'user', 'department_id', 'Department', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(636, 1, 'user', 'designation_id', 'Designation', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(637, 1, 'user', 'shift_id', 'Shift', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(638, 1, 'user', 'staff', 'Staff', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(639, 1, 'user', 'basic_salary', 'Basic Salary', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(640, 1, 'print_barcode', 'warehouse', 'Warehouse', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(641, 1, 'print_barcode', 'paper_size', 'Paper Size', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(642, 1, 'print_barcode', 'quantity', 'Quantity', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(643, 1, 'print_barcode', 'name', 'Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(644, 1, 'print_barcode', 'delete_message', 'Are you sure you want to delete this product?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(645, 1, 'print_barcode', 'select_name', 'Select Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(646, 1, 'print_barcode', 'select_price', 'Select Price', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(647, 1, 'staff_member', 'add', 'Add New Staff Member', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(648, 1, 'staff_member', 'edit', 'Edit Staff Member', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(649, 1, 'staff_member', 'created', 'Staff Member Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(650, 1, 'staff_member', 'updated', 'Staff Member Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(651, 1, 'staff_member', 'deleted', 'Staff Member Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(652, 1, 'staff_member', 'staff_member_details', 'Staff Member Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(653, 1, 'staff_member', 'staff_member', 'Staff Member', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(654, 1, 'staff_member', 'delete_message', 'Are you sure you want to delete this staff member?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(655, 1, 'staff_member', 'selected_delete_message', 'Are you sure you want to delete selected staff member?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(656, 1, 'staff_member', 'import_staff_members', 'Import Staff Members', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(657, 1, 'customer', 'add', 'Add New Customer', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(658, 1, 'customer', 'edit', 'Edit Customer', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(659, 1, 'customer', 'created', 'Customer Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(660, 1, 'customer', 'updated', 'Customer Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(661, 1, 'customer', 'deleted', 'Customer Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(662, 1, 'customer', 'customer_details', 'Customer Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(663, 1, 'customer', 'delete_message', 'Are you sure you want to delete this customer?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(664, 1, 'customer', 'selected_delete_message', 'Are you sure you want to delete selected customer?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(665, 1, 'customer', 'import_customers', 'Import Customers', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(666, 1, 'supplier', 'add', 'Add New Supplier', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(667, 1, 'supplier', 'edit', 'Edit Supplier', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(668, 1, 'supplier', 'created', 'Supplier Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(669, 1, 'supplier', 'updated', 'Supplier Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(670, 1, 'supplier', 'deleted', 'Supplier Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(671, 1, 'supplier', 'supplier_details', 'Supplier Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(672, 1, 'supplier', 'delete_message', 'Are you sure you want to delete this supplier?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(673, 1, 'supplier', 'selected_delete_message', 'Are you sure you want to delete selected supplier?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(674, 1, 'supplier', 'import_suppliers', 'Import Suppliers', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(675, 1, 'warehouse', 'add', 'Add New Warehouse', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(676, 1, 'warehouse', 'edit', 'Edit Warehouse', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(677, 1, 'warehouse', 'created', 'Warehouse Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(678, 1, 'warehouse', 'updated', 'Warehouse Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(679, 1, 'warehouse', 'deleted', 'Warehouse Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(680, 1, 'warehouse', 'warehouse_details', 'Warehouse Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(681, 1, 'warehouse', 'warehouse', 'Warehouse', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(682, 1, 'warehouse', 'logo', 'Logo', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(683, 1, 'warehouse', 'dark_logo', 'Dark Logo', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(684, 1, 'warehouse', 'name', 'Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(685, 1, 'warehouse', 'slug', 'Slug', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(686, 1, 'warehouse', 'email', 'Email', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(687, 1, 'warehouse', 'phone', 'Phone', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(688, 1, 'warehouse', 'address', 'Billing Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(689, 1, 'warehouse', 'show_email_on_invoice', 'Show email on invoice', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(690, 1, 'warehouse', 'show_phone_on_invoice', 'Show phone on invoice', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(691, 1, 'warehouse', 'terms_condition', 'Terms & Conditions', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(692, 1, 'warehouse', 'bank_details', 'Bank Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(693, 1, 'warehouse', 'signature', 'Signature', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(694, 1, 'warehouse', 'delete_message', 'Are you sure you want to delete this warehouse?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(695, 1, 'warehouse', 'selected_delete_message', 'Are you sure you want to delete selected warehouse?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(696, 1, 'warehouse', 'details_will_be_shown_on_invoice', 'Note: Details added below will be shown on your invoices', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(697, 1, 'warehouse', 'online_store', 'Online Store', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(698, 1, 'warehouse', 'online_store_status_updated', 'Online store status updated successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(699, 1, 'warehouse', 'no_online_store_exists', 'No online store exists for this url. Please contact to admin for support.', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(700, 1, 'warehouse', 'view_online_store', 'View Online Store', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(701, 1, 'warehouse', 'default_pos_order_status', 'POS Default Status', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(702, 1, 'warehouse', 'basic_details', 'Basic Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(703, 1, 'warehouse', 'visibility', 'Visibility', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(704, 1, 'warehouse', 'customers_visibility', 'Customers Visibility', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(705, 1, 'warehouse', 'suppliers_visibility', 'Suppliers Visibility', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(706, 1, 'warehouse', 'products_visibility', 'Products Visibility', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(707, 1, 'warehouse', 'view_all_customers', 'View All Customers', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(708, 1, 'warehouse', 'view_warehouse_customers', 'View Only Warehouse Customers', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(709, 1, 'warehouse', 'view_all_suppliers', 'View All Suppliers', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(710, 1, 'warehouse', 'view_warehouse_suppliers', 'View Only Warehouse Suppliers', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(711, 1, 'warehouse', 'view_all_products', 'View All Products', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(712, 1, 'warehouse', 'view_warehouse_products', 'View Only Warehouse Products', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(713, 1, 'warehouse', 'show_mrp_on_invoice', 'Show MRP On Invoice', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(714, 1, 'warehouse', 'show_discount_tax_on_invoice', 'Show discount & Tax On Invoice', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(715, 1, 'warehouse', 'barcode_type', 'Barcode Type', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(716, 1, 'warehouse', 'barcode', 'Barcode', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(717, 1, 'warehouse', 'qrcode', 'QR Code', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(718, 1, 'front_website', 'home', 'Home', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(719, 1, 'front_website', 'features', 'Features', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(720, 1, 'front_website', 'pricing', 'Pricing', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(721, 1, 'front_website', 'contact', 'Contact', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(722, 1, 'front_website', 'links', 'Links', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(723, 1, 'front_website', 'pages', 'Pages', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(724, 1, 'front_website', 'register', 'Register', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(725, 1, 'front_website', 'company_name', 'Company Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(726, 1, 'front_website', 'email', 'Email', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(727, 1, 'front_website', 'password', 'Password', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(728, 1, 'front_website', 'confirm_password', 'Confirm Password', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(729, 1, 'front_website', 'login', 'Login', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(730, 1, 'front_website', 'first_name', 'First Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(731, 1, 'front_website', 'last_name', 'Last Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(732, 1, 'front_website', 'address', 'Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(733, 1, 'front_website', 'phone', 'Phone', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(734, 1, 'front_website', 'send_message', 'Send Message', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(735, 1, 'front_website', 'register_thank_you', 'Thank you for registration. Please login to get started', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(736, 1, 'front_website', 'error_contact_support', 'Some error occurred when inserting the data. Please try again or contact support', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(737, 1, 'front_website', 'contact_us_submit_message', 'Thanks for contacting us. We will catch you soon.', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(738, 1, 'role', 'add', 'Add New Role', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(739, 1, 'role', 'edit', 'Edit Role', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(740, 1, 'role', 'created', 'Role Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(741, 1, 'role', 'updated', 'Role Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(742, 1, 'role', 'deleted', 'Role Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(743, 1, 'role', 'role_details', 'Role Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(744, 1, 'role', 'delete_message', 'Are you sure you want to delete this role?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(745, 1, 'role', 'selected_delete_message', 'Are you sure you want to delete selected role?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(746, 1, 'role', 'display_name', 'Display Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(747, 1, 'role', 'role_name', 'Role Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(748, 1, 'role', 'description', 'Description', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(749, 1, 'role', 'user_management', 'User Management', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(750, 1, 'role', 'permissions', 'Permissions', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(751, 1, 'role', 'approve_reject_leaves', 'Approve/Reject Leaves', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(752, 1, 'role', 'mark_weekend', 'Mark Weekend', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(753, 1, 'report', 'by_order', 'By Orders', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(754, 1, 'report', 'by_dates', 'By Dates', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(755, 1, 'report', 'select_date', 'Select Date', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(756, 1, 'report', 'select_date_message', 'Select a date to view the report', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(757, 1, 'company', 'add', 'Add New Company', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(758, 1, 'company', 'edit', 'Edit Company', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(759, 1, 'company', 'created', 'Company Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(760, 1, 'company', 'updated', 'Company Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(761, 1, 'company', 'deleted', 'Company Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(762, 1, 'company', 'currency_details', 'Company Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(763, 1, 'company', 'delete_message', 'Are you sure you want to delete this company?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(764, 1, 'company', 'selected_delete_message', 'Are you sure you want to delete selected company?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(765, 1, 'company', 'name', 'Company Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(766, 1, 'company', 'short_name', 'Company Short Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(767, 1, 'company', 'email', 'Company Email', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(768, 1, 'company', 'phone', 'Company Phone', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(769, 1, 'company', 'address', 'Company Address', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(770, 1, 'company', 'currency', 'Currency', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(771, 1, 'company', 'logo', 'Company Logo', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(772, 1, 'company', 'left_sidebar_theme', 'Left Sidebar Theme', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(773, 1, 'company', 'dark', 'Dark', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(774, 1, 'company', 'light', 'Light', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(775, 1, 'company', 'dark_logo', 'Dark Logo', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(776, 1, 'company', 'light_logo', 'Light Logo', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(777, 1, 'company', 'small_dark_logo', 'Small Dark Logo', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(778, 1, 'company', 'small_light_logo', 'Small Light Logo', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(779, 1, 'company', 'primary_color', 'Primary Color', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(780, 1, 'company', 'default_timezone', 'Default Timezone', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(781, 1, 'company', 'date_format', 'Date Format', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(782, 1, 'company', 'time_format', 'Time Format', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(783, 1, 'company', 'auto_detect_timezone', 'Auto Detect Timezone', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(784, 1, 'company', 'app_debug', 'App Debug', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(785, 1, 'company', 'update_app_notification', 'Update App Notitication', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(786, 1, 'company', 'login_image', 'Login Image', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(787, 1, 'company', 'layout', 'Layout', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(788, 1, 'company', 'rtl', 'RTL', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(789, 1, 'company', 'ltr', 'LTR', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(790, 1, 'company', 'language', 'Language', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(791, 1, 'company', 'shortcut_menu_Placement', 'Add Menu Placement', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(792, 1, 'company', 'top_and_bottom', 'Top & Bottom', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(793, 1, 'company', 'top_header', 'Top Header', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(794, 1, 'company', 'bottom_corner', 'Bottom Conrer', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(795, 1, 'company', 'shortcut_menu_setting', 'Add Menu Settings', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(796, 1, 'company', 'menu_setting_updated', 'Menu Setting Updated', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(797, 1, 'company', 'basic_details', 'Basic Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(798, 1, 'company', 'details', 'Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(799, 1, 'company', 'register_date', 'Register Date', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(800, 1, 'company', 'total_users', 'Total Users', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(801, 1, 'tax', 'add', 'Add New Tax', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(802, 1, 'tax', 'edit', 'Edit Tax', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(803, 1, 'tax', 'created', 'Tax Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(804, 1, 'tax', 'updated', 'Tax Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(805, 1, 'tax', 'deleted', 'Tax Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(806, 1, 'tax', 'tax_details', 'Tax Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(807, 1, 'tax', 'delete_message', 'Are you sure you want to delete this tax?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(808, 1, 'tax', 'selected_delete_message', 'Are you sure you want to delete selected tax?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(809, 1, 'tax', 'display_name', 'Display Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(810, 1, 'tax', 'name', 'Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(811, 1, 'tax', 'rate', 'Tax Rate', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(812, 1, 'tax', 'no_tax', 'No Tax', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(813, 1, 'tax', 'tax_type', 'Tax Type', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(814, 1, 'tax', 'single', 'Single', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(815, 1, 'tax', 'multiple', 'Multiple', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(816, 1, 'tax', 'multiple_tax', 'Multiple Tax', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(817, 1, 'variation', 'add', 'Add New Variation', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(818, 1, 'variation', 'edit', 'Edit Variation', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(819, 1, 'variation', 'created', 'Variation Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(820, 1, 'variation', 'updated', 'Variation Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(821, 1, 'variation', 'deleted', 'Variation Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(822, 1, 'variation', 'variation_details', 'Variation Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(823, 1, 'variation', 'delete_message', 'Are you sure you want to delete this variation?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(824, 1, 'variation', 'selected_delete_message', 'Are you sure you want to delete selected variation?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(825, 1, 'variation', 'variation_name', 'Variation Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(826, 1, 'variation', 'name', 'Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(827, 1, 'variation', 'value', 'Value', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(828, 1, 'variation', 'add_new_value', 'Add New Value', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(829, 1, 'variation', 'variation_values', 'Variation Values', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(830, 1, 'currency', 'add', 'Add New Currency', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(831, 1, 'currency', 'edit', 'Edit Currency', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(832, 1, 'currency', 'created', 'Currency Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(833, 1, 'currency', 'updated', 'Currency Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(834, 1, 'currency', 'deleted', 'Currency Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(835, 1, 'currency', 'currency_details', 'Currency Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(836, 1, 'currency', 'delete_message', 'Are you sure you want to delete this currency?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(837, 1, 'currency', 'selected_delete_message', 'Are you sure you want to delete selected currency?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(838, 1, 'currency', 'name', 'Currency Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(839, 1, 'currency', 'symbol', 'Currency Symbol', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(840, 1, 'currency', 'position', 'Currency Position', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(841, 1, 'currency', 'front', 'Front', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(842, 1, 'currency', 'front_position_example', 'Example : $100', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(843, 1, 'currency', 'behind', 'Behind', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(844, 1, 'currency', 'behind_position_example', 'Example : 100$', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(845, 1, 'currency', 'code', 'Currency Code', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(846, 1, 'payment_mode', 'add', 'Add New Payment Mode', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(847, 1, 'payment_mode', 'edit', 'Edit Payment Mode', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(848, 1, 'payment_mode', 'created', 'Payment Mode Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(849, 1, 'payment_mode', 'updated', 'Payment Mode Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(850, 1, 'payment_mode', 'deleted', 'Payment Mode Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(851, 1, 'payment_mode', 'payment_mode_details', 'Payment Mode Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(852, 1, 'payment_mode', 'delete_message', 'Are you sure you want to delete this payment mode?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(853, 1, 'payment_mode', 'selected_delete_message', 'Are you sure you want to delete selected payment mode?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(854, 1, 'payment_mode', 'name', 'Payment Mode Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(855, 1, 'payment_mode', 'mode_type', 'Mode Type', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(856, 1, 'payment_mode', 'cash', 'Cash', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(857, 1, 'payment_mode', 'bank', 'Bank', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(858, 1, 'unit', 'add', 'Add New Unit', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(859, 1, 'unit', 'edit', 'Edit Unit', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(860, 1, 'unit', 'created', 'Unit Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(861, 1, 'unit', 'updated', 'Unit Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(862, 1, 'unit', 'deleted', 'Unit Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(863, 1, 'unit', 'delete_message', 'Are you sure you want to delete this unit?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(864, 1, 'unit', 'selected_delete_message', 'Are you sure you want to delete selected unit?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(865, 1, 'unit', 'unit_details', 'Unit Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(866, 1, 'unit', 'name', 'Unit Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(867, 1, 'unit', 'short_name', 'Short Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(868, 1, 'unit', 'base_unit', 'Base Unit', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(869, 1, 'unit', 'operator', 'Operator', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(870, 1, 'unit', 'multiply', 'Multiply (*)', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(871, 1, 'unit', 'divide', 'Divide (/)', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(872, 1, 'unit', 'operator_value', 'Operator Value', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(873, 1, 'custom_field', 'add', 'Add New Custom Field', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(874, 1, 'custom_field', 'edit', 'Edit Custom Field', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(875, 1, 'custom_field', 'created', 'Custom Field Created Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(876, 1, 'custom_field', 'updated', 'Custom Field Updated Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(877, 1, 'custom_field', 'deleted', 'Custom Field Deleted Successfully', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(878, 1, 'custom_field', 'delete_message', 'Are you sure you want to delete this custom field?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(879, 1, 'custom_field', 'selected_delete_message', 'Are you sure you want to delete selected custom field?', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(880, 1, 'custom_field', 'name', 'Field Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(881, 1, 'custom_field', 'value', 'Default Value', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(882, 1, 'custom_field', 'type', 'Field Type', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(883, 1, 'module', 'name', 'Module Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(884, 1, 'module', 'verified', 'Verified', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(885, 1, 'module', 'verify_purchase_code', 'Verify Purchase Code', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(886, 1, 'module', 'current_version', 'Current Version', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(887, 1, 'module', 'latest_version', 'Latest Version', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(888, 1, 'module', 'status', 'Status', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(889, 1, 'module', 'installed_modules', 'Installed Modules', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(890, 1, 'module', 'other_modules', 'Other Modules', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(891, 1, 'module', 'module_status_updated', 'Modules Status Updated', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(892, 1, 'module', 'downloading_completed', 'Download Completed', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(893, 1, 'module', 'extract_zip_file', 'Extract Zip File', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(894, 1, 'module', 'file_extracted', 'Zip File Extracted', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(895, 1, 'update_app', 'app_details', 'App Details', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(896, 1, 'update_app', 'name', 'Name', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(897, 1, 'update_app', 'value', 'Value', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(898, 1, 'update_app', 'php_version', 'PHP Version', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(899, 1, 'update_app', 'app_version', 'App Version', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(900, 1, 'update_app', 'laravel_version', 'Laravel Version', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(901, 1, 'update_app', 'mysql_version', 'MySQL Version', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(902, 1, 'update_app', 'vue_version', 'Vue Version', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(903, 1, 'update_app', 'update_app', 'Update App', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(904, 1, 'update_app', 'update_now', 'Update Now', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(905, 1, 'update_app', 'update_available', 'Update Available', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(906, 1, 'update_app', 'verify_again', 'Verify Again', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(907, 1, 'update_app', 'verify_failed', 'Verification Failed', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(908, 1, 'update_app', 'verify_failed_message', 'Your application is not registerd with us. Please verify it', '2025-03-19 03:06:14', '2025-03-19 03:06:14'),
(909, 1, 'update_app', 'verified_with_other_domain', 'Your purchase code is registerd with other doamin. Please verfiy your purhcase code', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(910, 1, 'expense_category', 'add', 'Add New Expense Category', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(911, 1, 'expense_category', 'edit', 'Edit Expense Category', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(912, 1, 'expense_category', 'created', 'Expense Category Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(913, 1, 'expense_category', 'updated', 'Expense Category Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(914, 1, 'expense_category', 'deleted', 'Expense Category Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(915, 1, 'expense_category', 'delete_message', 'Are you sure you want to delete this expense category?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(916, 1, 'expense_category', 'selected_delete_message', 'Are you sure you want to delete selected expense category?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(917, 1, 'expense_category', 'expense_category_details', 'Expense Category Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(918, 1, 'expense_category', 'name', 'Expense Category Name', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(919, 1, 'expense_category', 'description', 'Description', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(920, 1, 'expense', 'add', 'Add New Expense', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(921, 1, 'expense', 'edit', 'Edit Expense', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(922, 1, 'expense', 'created', 'Expense Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(923, 1, 'expense', 'updated', 'Expense Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(924, 1, 'expense', 'deleted', 'Expense Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(925, 1, 'expense', 'delete_message', 'Are you sure you want to delete this expense?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(926, 1, 'expense', 'selected_delete_message', 'Are you sure you want to delete selected expense?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(927, 1, 'expense', 'details', 'Expense Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(928, 1, 'expense', 'warehouse', 'Warehouse', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(929, 1, 'expense', 'expense_category', 'Expense Category', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(930, 1, 'expense', 'date', 'Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(931, 1, 'expense', 'amount', 'Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(932, 1, 'expense', 'bill', 'Expense Bill', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(933, 1, 'expense', 'user', 'User', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(934, 1, 'expense', 'created_by_user', 'User', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(935, 1, 'expense', 'notes', 'Notes', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(936, 1, 'brand', 'add', 'Add New Brand', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(937, 1, 'brand', 'edit', 'Edit Brand', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(938, 1, 'brand', 'created', 'Brand Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(939, 1, 'brand', 'updated', 'Brand Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(940, 1, 'brand', 'deleted', 'Brand Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(941, 1, 'brand', 'delete_message', 'Are you sure you want to delete this brand?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(942, 1, 'brand', 'selected_delete_message', 'Are you sure you want to delete selected brand?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(943, 1, 'brand', 'details', 'Brand Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(944, 1, 'brand', 'name', 'Name', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(945, 1, 'brand', 'slug', 'Slug', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(946, 1, 'brand', 'logo', 'Brand Logo', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(947, 1, 'brand', 'import_brands', 'Import Brands', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(948, 1, 'category', 'add', 'Add New Category', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(949, 1, 'category', 'edit', 'Edit Category', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(950, 1, 'category', 'created', 'Category Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(951, 1, 'category', 'updated', 'Category Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(952, 1, 'category', 'deleted', 'Category Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(953, 1, 'category', 'delete_message', 'Are you sure you want to delete this category?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(954, 1, 'category', 'selected_delete_message', 'Are you sure you want to delete selected category?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(955, 1, 'category', 'details', 'Category Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(956, 1, 'category', 'category', 'Category', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(957, 1, 'category', 'name', 'Name', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(958, 1, 'category', 'slug', 'Slug', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(959, 1, 'category', 'logo', 'Category Logo', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(960, 1, 'category', 'parent_category', 'Parent Category', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(961, 1, 'category', 'no_parent_category', 'No Parent Category', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(962, 1, 'category', 'import_categories', 'Import Categories', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(963, 1, 'product', 'add', 'Add New Product', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(964, 1, 'product', 'edit', 'Edit Product', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(965, 1, 'product', 'created', 'Product Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(966, 1, 'product', 'updated', 'Product Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(967, 1, 'product', 'deleted', 'Product Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(968, 1, 'product', 'delete_message', 'Are you sure you want to delete this product?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(969, 1, 'product', 'selected_delete_message', 'Are you sure you want to delete selected product?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(970, 1, 'product', 'details', 'Product Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(971, 1, 'product', 'name', 'Name', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(972, 1, 'product', 'slug', 'Slug', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(973, 1, 'product', 'sku', 'SKU', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(974, 1, 'product', 'image', 'Image', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(975, 1, 'product', 'quantitiy_alert', 'Quantity Alert', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(976, 1, 'product', 'brand', 'Brand', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(977, 1, 'product', 'category', 'Category', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(978, 1, 'product', 'price', 'Price', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(979, 1, 'product', 'mrp', 'MRP', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(980, 1, 'product', 'purchase_price', 'Purchase Price', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(981, 1, 'product', 'sales_price', 'Sales Price', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(982, 1, 'product', 'tax_type', 'Tax Type', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(983, 1, 'product', 'description', 'Description', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(984, 1, 'product', 'product', 'Product', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(985, 1, 'product', 'quantity', 'Quantity', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(986, 1, 'product', 'discount', 'Discount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(987, 1, 'product', 'tax', 'Tax', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(988, 1, 'product', 'subtotal', 'SubTotal', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(989, 1, 'product', 'unit', 'Unit', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(990, 1, 'product', 'unit_price', 'Unit Price', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(991, 1, 'product', 'avl_qty', 'Avl. qty:', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(992, 1, 'product', 'order_items', 'Order Items', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(993, 1, 'product', 'inclusive', 'Inclusive', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(994, 1, 'product', 'exclusive', 'Exclusive', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(995, 1, 'product', 'stocks', 'Stocks', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(996, 1, 'product', 'stock_quantity', 'Stock Quantity', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(997, 1, 'product', 'product_orders', 'Product Orders', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(998, 1, 'product', 'stock_history', 'Stock History', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(999, 1, 'product', 'current_stock', 'Current Stock', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1000, 1, 'product', 'item_code', 'Item Code', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1001, 1, 'product', 'barcode_symbology', 'Barcode Symbology', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1002, 1, 'product', 'barcode', 'Barcode', '2025-03-19 03:06:15', '2025-03-19 03:06:15');
INSERT INTO `translations` (`id`, `lang_id`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1003, 1, 'product', 'view_barcode', 'ViewCode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1004, 1, 'product', 'generate_barcode', 'Generate Barcode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1005, 1, 'product', 'generate_bar', 'Generate', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1006, 1, 'product', 'print_barcode', 'Print Barcode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1007, 1, 'product', 'price_tax', 'Price & Tax', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1008, 1, 'product', 'variant_details', 'Variants Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1009, 1, 'product', 'custom_fields', 'Custom Fields', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1010, 1, 'product', 'wholesale_rate', 'Wholesale Rate', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1011, 1, 'product', 'wholesale_price', 'Wholesale Price', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1012, 1, 'product', 'wholesale_quantity', 'Wholesale Quantity', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1013, 1, 'product', 'enter_min_quantity', 'Enter Minimum Quantity', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1014, 1, 'product', 'opening_stock', 'Opening Stock', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1015, 1, 'product', 'opening_stock_date', 'Opening Stock Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1016, 1, 'product', 'stock_value', 'Stock Value', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1017, 1, 'product', 'by_purchase', 'By Purchase', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1018, 1, 'product', 'by_sales', 'By Sales', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1019, 1, 'product', 'unit_sold', 'Unit Sold', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1020, 1, 'product', 'import_products', 'Import Products', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1021, 1, 'product', 'total_purchase_price', 'Total Purchase Price', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1022, 1, 'product', 'total_sales_price', 'Total Sales Price', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1023, 1, 'product', 'product_type', 'Product Type', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1024, 1, 'product', 'search_scan_product', 'Search Product Name / Item Code / Scan bar code', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1025, 1, 'product', 'product_history', 'Product History', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1026, 1, 'product', 'single', 'Single', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1027, 1, 'product', 'variable', 'Variable', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1028, 1, 'product', 'service', 'Service', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1029, 1, 'variations', 'add', 'Add Variation', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1030, 1, 'variations', 'edit', 'Edit Variation', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1031, 1, 'variations', 'add_variation_message', 'Select Variant and Variant Type From Below Dropdown and Then Click on + Add Variation Button', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1032, 1, 'variations', 'single_type_product', 'Single Type Product', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1033, 1, 'variations', 'variant_type_product', 'Variant Type Product', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1034, 1, 'variations', 'variation', 'Variation', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1035, 1, 'variations', 'variant_value', 'Variant Value', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1036, 1, 'variations', 'service_type_product', 'Service Type Product', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1037, 1, 'stock', 'order_type', 'Order Type', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1038, 1, 'stock', 'order_date', 'Order Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1039, 1, 'stock', 'warehouse', 'Warehouse', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1040, 1, 'stock', 'supplier', 'Supplier', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1041, 1, 'stock', 'customer', 'Customer', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1042, 1, 'stock', 'product', 'Product', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1043, 1, 'stock', 'invoice_number', 'Invoice Number', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1044, 1, 'stock', 'invoie_number_blank', 'Leave it blank to generate automatically', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1045, 1, 'stock', 'notes', 'Notes', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1046, 1, 'stock', 'status', 'Order Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1047, 1, 'stock', 'order_tax', 'Order Tax', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1048, 1, 'stock', 'discount', 'Discount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1049, 1, 'stock', 'shipping', 'Shipping', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1050, 1, 'stock', 'grand_total', 'Grand Total', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1051, 1, 'stock', 'remarks', 'Remarks', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1052, 1, 'stock', 'pay_now', 'Pay Now', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1053, 1, 'stock', 'reset', 'Reset', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1054, 1, 'stock', 'total_items', 'Total Items', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1055, 1, 'stock', 'paying_amount', 'Paying Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1056, 1, 'stock', 'payable_amount', 'Payable Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1057, 1, 'stock', 'change_return', 'Change Return', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1058, 1, 'stock', 'order_details', 'Order Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1059, 1, 'stock', 'order_canceled', 'Order Canceled Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1060, 1, 'stock', 'order_cancel_message', 'Are you sure you want to cancel this order?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1061, 1, 'stock', 'view_order', 'View Order', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1062, 1, 'stock', 'order_id', 'Order Id', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1063, 1, 'stock', 'shipping_address', 'Shipping Address', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1064, 1, 'stock', 'billing_address', 'Billing Address', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1065, 1, 'stock', 'order_taken_by', 'Order Taken By', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1066, 1, 'stock', 'no_product_found', 'No product found for selected resource', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1067, 1, 'stock', 'sold_by', 'Sold By', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1068, 1, 'stock', 'complete_order', 'Complete Order', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1069, 1, 'stock', 'add_order_item', 'Add Order Item', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1070, 1, 'stock', 'search_item_to_add', 'Search item to add in your order', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1071, 1, 'stock', 'add_pay', 'Add Pay', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1072, 1, 'stock', 'pay_amount', 'Pay Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1073, 1, 'stock', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1074, 1, 'stock', 'paid_payment', 'Paid Payment', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1075, 1, 'purchase', 'add', 'Add New Purchase', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1076, 1, 'purchase', 'edit', 'Edit Purchase', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1077, 1, 'purchase', 'details', 'Purchase Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1078, 1, 'purchase', 'created', 'Purchase Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1079, 1, 'purchase', 'updated', 'Purchase Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1080, 1, 'purchase', 'deleted', 'Purchase Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1081, 1, 'purchase', 'delete_message', 'Are you sure you want to delete this purchase?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1082, 1, 'purchase', 'selected_delete_message', 'Are you sure you want to delete selected purchase?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1083, 1, 'purchase', 'purchase_date', 'Purchase Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1084, 1, 'purchase', 'purchase_status', 'Purchase Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1085, 1, 'purchase', 'user', 'Supplier', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1086, 1, 'purchase', 'add_pay', 'Add Pay', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1087, 1, 'purchase', 'pay_amount', 'Pay Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1088, 1, 'purchase', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1089, 1, 'sales', 'add', 'Add New Sales', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1090, 1, 'sales', 'edit', 'Edit Sales', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1091, 1, 'sales', 'details', 'Sales Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1092, 1, 'sales', 'created', 'Sales Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1093, 1, 'sales', 'updated', 'Sales Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1094, 1, 'sales', 'deleted', 'Sales Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1095, 1, 'sales', 'delete_message', 'Are you sure you want to delete this sales?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1096, 1, 'sales', 'selected_delete_message', 'Are you sure you want to delete selected sales?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1097, 1, 'sales', 'sales_date', 'Sales Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1098, 1, 'sales', 'sales_status', 'Sales Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1099, 1, 'sales', 'user', 'Customer', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1100, 1, 'sales', 'tax_invoice', 'TAX INVOICE', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1101, 1, 'sales', 'invoice', 'Invoice', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1102, 1, 'sales', 'add_pay', 'Add Pay', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1103, 1, 'sales', 'pay_amount', 'Pay Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1104, 1, 'sales', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1105, 1, 'purchase_returns', 'add', 'Add New Purchase Return', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1106, 1, 'purchase_returns', 'edit', 'Edit Purchase Return', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1107, 1, 'purchase_returns', 'details', 'Purchase Return Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1108, 1, 'purchase_returns', 'created', 'Purchase Return Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1109, 1, 'purchase_returns', 'updated', 'Purchase Return Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1110, 1, 'purchase_returns', 'deleted', 'Purchase Return Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1111, 1, 'purchase_returns', 'delete_message', 'Are you sure you want to delete this purchase return?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1112, 1, 'purchase_returns', 'selected_delete_message', 'Are you sure you want to delete selected purchase return?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1113, 1, 'purchase_returns', 'purchase_returns_date', 'Return Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1114, 1, 'purchase_returns', 'purchase_returns_status', 'Return Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1115, 1, 'purchase_returns', 'user', 'Supplier', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1116, 1, 'purchase_returns', 'add_pay', 'Add Pay', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1117, 1, 'purchase_returns', 'pay_amount', 'Pay Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1118, 1, 'purchase_returns', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1119, 1, 'sales_returns', 'add', 'Add New Sales Return', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1120, 1, 'sales_returns', 'edit', 'Edit Sales Return', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1121, 1, 'sales_returns', 'details', 'Sales Return Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1122, 1, 'sales_returns', 'created', 'Sales Return Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1123, 1, 'sales_returns', 'updated', 'Sales Return Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1124, 1, 'sales_returns', 'deleted', 'Sales Return Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1125, 1, 'sales_returns', 'delete_message', 'Are you sure you want to delete this sales return?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1126, 1, 'sales_returns', 'selected_delete_message', 'Are you sure you want to delete selected sales return?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1127, 1, 'sales_returns', 'sales_returns_date', 'Return Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1128, 1, 'sales_returns', 'sales_returns_status', 'Return Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1129, 1, 'sales_returns', 'user', 'Customer', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1130, 1, 'sales_returns', 'add_pay', 'Add Pay', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1131, 1, 'sales_returns', 'pay_amount', 'Pay Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1132, 1, 'sales_returns', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1133, 1, 'quotation', 'add', 'Add New Quotation', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1134, 1, 'quotation', 'edit', 'Edit Quotation', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1135, 1, 'quotation', 'details', 'Quotation Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1136, 1, 'quotation', 'created', 'Quotation Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1137, 1, 'quotation', 'updated', 'Quotation Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1138, 1, 'quotation', 'deleted', 'Quotation Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1139, 1, 'quotation', 'delete_message', 'Are you sure you want to delete this quotation/estimate?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1140, 1, 'quotation', 'selected_delete_message', 'Are you sure you want to delete selected quotation/estimate?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1141, 1, 'quotation', 'quotation_date', 'Quotation Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1142, 1, 'quotation', 'quotation_status', 'Quotation Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1143, 1, 'quotation', 'user', 'Customer', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1144, 1, 'quotation', 'tax_invoice', 'TAX INVOICE', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1145, 1, 'quotation', 'invoice', 'Invoice', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1146, 1, 'quotation', 'convert_to_sale', 'Convert to sale', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1147, 1, 'quotation', 'convert_message', 'Are you really want to convert this quotation to sales?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1148, 1, 'quotation', 'quotation_converted_to_sales', 'Quotation converted to sales successfully.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1149, 1, 'quotation', 'add_pay', 'Add Pay', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1150, 1, 'quotation', 'pay_amount', 'Pay Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1151, 1, 'quotation', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1152, 1, 'payments', 'add', 'Add New Payment', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1153, 1, 'payments', 'edit', 'Edit Payment', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1154, 1, 'payments', 'details', 'Payment Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1155, 1, 'payments', 'created', 'Payment Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1156, 1, 'payments', 'updated', 'Payment Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1157, 1, 'payments', 'deleted', 'Payment Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1158, 1, 'payments', 'delete_message', 'Are you sure you want to delete this payment?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1159, 1, 'payments', 'selected_delete_message', 'Are you sure you want to delete selected payment?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1160, 1, 'payments', 'user', 'User', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1161, 1, 'payments', 'amount', 'Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1162, 1, 'payments', 'invoice_amount', 'Invoice Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1163, 1, 'payments', 'payment_number', 'Reference Number', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1164, 1, 'payments', 'payments', 'Payments', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1165, 1, 'payments', 'date', 'Payment Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1166, 1, 'payments', 'due_amount', 'Due Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1167, 1, 'payments', 'paid_amount', 'Paid Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1168, 1, 'payments', 'total_amount', 'Total Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1169, 1, 'payments', 'unused_amount', 'Unused Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1170, 1, 'payments', 'settled_amount', 'Settled Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1171, 1, 'payments', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1172, 1, 'payments', 'paid_total_amount', 'Paid/Total Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1173, 1, 'payments', 'notes', 'Notes', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1174, 1, 'payments', 'payment_status', 'Payment Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1175, 1, 'payments', 'unpaid', 'Unpaid', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1176, 1, 'payments', 'paid', 'Paid', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1177, 1, 'payments', 'transactions', 'Transactions', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1178, 1, 'payments', 'transaction_number', 'Txns No.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1179, 1, 'payments', 'partially_paid', 'Partially Paid', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1180, 1, 'payments', 'order_payment', 'Order Payment', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1181, 1, 'payments', 'settle_invoice_using_payment', 'Settle below invoices using this payment', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1182, 1, 'payments', 'payment_type', 'Payment Type', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1183, 1, 'payments', 'you_will_pay', 'You Will Pay', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1184, 1, 'payments', 'you_will_receive', 'You Will Receive', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1185, 1, 'payments', 'cash', 'Cash', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1186, 1, 'payments', 'bank', 'Bank', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1187, 1, 'payments', 'view_payments', 'View Payments', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1188, 1, 'payments', 'payment_details', 'Payment Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1189, 1, 'payments', 'invoice_number', 'Invoice Number', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1190, 1, 'payments', 'customer', 'Customer', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1191, 1, 'payments', 'status', 'Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1192, 1, 'langs', 'add', 'Add New Language', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1193, 1, 'langs', 'edit', 'Edit Language', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1194, 1, 'langs', 'details', 'Language Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1195, 1, 'langs', 'created', 'Language Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1196, 1, 'langs', 'updated', 'Language Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1197, 1, 'langs', 'deleted', 'Language Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1198, 1, 'langs', 'delete_message', 'Are you sure you want to delete this language?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1199, 1, 'langs', 'selected_delete_message', 'Are you sure you want to delete selected language?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1200, 1, 'langs', 'view_all_langs', 'View All Languages', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1201, 1, 'langs', 'status_updated', 'Langugage status updated', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1202, 1, 'langs', 'name', 'Name', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1203, 1, 'langs', 'key', 'Key', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1204, 1, 'langs', 'flag', 'Flag', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1205, 1, 'langs', 'enabled', 'Enabled', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1206, 1, 'translations', 'fetch_new_translations', 'Fetch New Translations', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1207, 1, 'translations', 'reload_translations', 'Reload Translations', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1208, 1, 'translations', 'reload_successfully', 'Translations Reload Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1209, 1, 'translations', 'fetched_successfully', 'Translations Fetch Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1210, 1, 'translations', 'import_translations', 'Import Translations', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1211, 1, 'storage_settings', 'updated', 'Storage Settings Updated', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1212, 1, 'storage_settings', 'storage', 'Storage', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1213, 1, 'storage_settings', 'local', 'Local', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1214, 1, 'storage_settings', 'aws', 'AWS S3 Storage', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1215, 1, 'storage_settings', 'aws_key', 'AWS Key', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1216, 1, 'storage_settings', 'aws_secret', 'AWS Secret', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1217, 1, 'storage_settings', 'aws_region', 'AWS Region', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1218, 1, 'storage_settings', 'aws_bucket', 'AWS Bucket', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1219, 1, 'mail_settings', 'updated', 'Mail Settings Updated', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1220, 1, 'mail_settings', 'mail_driver', 'Mail Driver', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1221, 1, 'mail_settings', 'none', 'None', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1222, 1, 'mail_settings', 'mail', 'Mail', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1223, 1, 'mail_settings', 'smtp', 'SMTP', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1224, 1, 'mail_settings', 'from_name', 'Mail From Name', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1225, 1, 'mail_settings', 'from_email', 'Mail From Email', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1226, 1, 'mail_settings', 'host', 'Host', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1227, 1, 'mail_settings', 'port', 'Port', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1228, 1, 'mail_settings', 'encryption', 'Encryption', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1229, 1, 'mail_settings', 'username', 'Username', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1230, 1, 'mail_settings', 'password', 'Password', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1231, 1, 'mail_settings', 'send_test_mail', 'Send Test Mail', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1232, 1, 'mail_settings', 'send_mail_setting_saved', 'Send mail setting saved', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1233, 1, 'mail_settings', 'enable_mail_queue', 'Enable Mail Queue', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1234, 1, 'mail_settings', 'send_mail_for', 'Send Mail For', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1235, 1, 'mail_settings', 'email', 'Email address for which you want to send test mail', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1236, 1, 'mail_settings', 'test_mail_sent_successfully', 'Test mail sent successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1237, 1, 'mail_settings', 'stock_adjustment_create', 'Stock Adjustment Create', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1238, 1, 'mail_settings', 'notificaiton_will_be_sent_to_warehouse', 'Notification will be sent to warehouse email', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1239, 1, 'online_orders', 'order_summary', 'Order Summary', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1240, 1, 'online_orders', 'cancel_order', 'Cancel Order', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1241, 1, 'online_orders', 'order_cancelled', 'Order cancelled successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1242, 1, 'online_orders', 'order_cancelled_message', 'This order has been cancelled.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1243, 1, 'online_orders', 'cancel_message', 'Are you sure you want to cancel this online order', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1244, 1, 'online_orders', 'deliver_message', 'Are you sure you want to this order as delivered', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1245, 1, 'online_orders', 'order_confirmed', 'Order confirmed successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1246, 1, 'online_orders', 'order_status_changed', 'Order status changed successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1247, 1, 'online_orders', 'online_orders_date', 'Order Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1248, 1, 'online_orders', 'online_orders_status', 'Order Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1249, 1, 'online_orders', 'update_orders_status', 'Update Order Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1250, 1, 'online_orders', 'confirm_delivery', 'Confirm Delivery', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1251, 1, 'online_orders', 'order_delivered', 'Order delivered successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1252, 1, 'online_orders', 'user', 'Customer', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1253, 1, 'online_orders', 'online_store_url', 'Online Store Url', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1254, 1, 'product_card', 'add', 'Add New Product Card', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1255, 1, 'product_card', 'edit', 'Edit Product Card', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1256, 1, 'product_card', 'details', 'Product Card Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1257, 1, 'product_card', 'created', 'Product Card Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1258, 1, 'product_card', 'updated', 'Product Card Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1259, 1, 'product_card', 'deleted', 'Product Card Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1260, 1, 'product_card', 'delete_message', 'Are you sure you want to delete this product card?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1261, 1, 'product_card', 'selected_delete_message', 'Are you sure you want to delete selected product card?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1262, 1, 'product_card', 'title', 'Title', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1263, 1, 'product_card', 'subtitle', 'Subtitle', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1264, 1, 'product_card', 'products', 'Products', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1265, 1, 'front_setting', 'products', 'Products', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1266, 1, 'front_setting', 'featured_categories', 'Featured Categories', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1267, 1, 'front_setting', 'featured_categories_title', 'Featured Categories Title', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1268, 1, 'front_setting', 'featured_categories_subtitle', 'Featured Categories Subtitle', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1269, 1, 'front_setting', 'featured_products', 'Featured Products', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1270, 1, 'front_setting', 'featured_products_title', 'Featured Products Title', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1271, 1, 'front_setting', 'featured_products_subtitle', 'Featured Products Subtitle', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1272, 1, 'front_setting', 'social_links', 'Social Links', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1273, 1, 'front_setting', 'facebook', 'Facebook', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1274, 1, 'front_setting', 'twitter', 'Twitter', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1275, 1, 'front_setting', 'instagram', 'Instagram', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1276, 1, 'front_setting', 'linkedin', 'Linkedin', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1277, 1, 'front_setting', 'youtube', 'Youttube', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1278, 1, 'front_setting', 'footer', 'Footer', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1279, 1, 'front_setting', 'banners', 'Banners', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1280, 1, 'front_setting', 'placeholder_social_text', 'Please Enter {0} Url', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1281, 1, 'front_setting', 'footers', 'Footers', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1282, 1, 'front_setting', 'copyright_text', 'Copyright Text', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1283, 1, 'front_setting', 'addLink', 'Add Link', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1284, 1, 'front_setting', 'addContactLink', 'Add Contact Link', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1285, 1, 'front_setting', 'addPageDetails', 'Add Pages Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1286, 1, 'front_setting', 'required_text', '{0} Required', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1287, 1, 'front_setting', 'footer_page_widget', 'Footer Page Widget', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1288, 1, 'front_setting', 'footer_contact_widget', 'Footer Contact Widget', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1289, 1, 'front_setting', 'footer_links_widget', 'Footer Links Widget', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1290, 1, 'front_setting', 'bottom_banners', 'Bottom Banners', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1291, 1, 'front_setting', 'top_banners_1', 'Top Banner 1', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1292, 1, 'front_setting', 'top_banners_2', 'Top Banner 2', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1293, 1, 'front_setting', 'top_banners_3', 'Top Banner 3', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1294, 1, 'front_setting', 'add_to_cart', 'Add To Cart', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1295, 1, 'front_setting', 'footer_company_description', 'Footer Company Description', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1296, 1, 'front_setting', 'useful_links', 'Useful Links', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1297, 1, 'front_setting', 'pages', 'Pages', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1298, 1, 'front_setting', 'contact', 'Contact', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1299, 1, 'front_setting', 'all_categories', 'All Categories', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1300, 1, 'front_setting', 'no_results', 'No Results', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1301, 1, 'front_setting', 'seo_keywords', 'SEO Keywords', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1302, 1, 'front_setting', 'seo_description', 'SEO Description', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1303, 1, 'stock_adjustment', 'add', 'Add New Adjustment', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1304, 1, 'stock_adjustment', 'edit', 'Edit Adjustment', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1305, 1, 'stock_adjustment', 'details', 'Adjustment Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1306, 1, 'stock_adjustment', 'created', 'Adjustment Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1307, 1, 'stock_adjustment', 'updated', 'Adjustment Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1308, 1, 'stock_adjustment', 'deleted', 'Adjustment Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1309, 1, 'stock_adjustment', 'delete_message', 'Are you sure you want to delete this stock adjustment?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1310, 1, 'stock_adjustment', 'selected_delete_message', 'Are you sure you want to delete selected stock adjustment?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1311, 1, 'stock_adjustment', 'notes', 'Notes', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1312, 1, 'stock_adjustment', 'current_stock', 'Current Stock', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1313, 1, 'stock_adjustment', 'quantity', 'Quantity', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1314, 1, 'stock_adjustment', 'adjustment_type', 'Adjustment Type', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1315, 1, 'stock_adjustment', 'adjustment_add', 'Add', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1316, 1, 'stock_adjustment', 'adjustment_subtract', 'Subtract', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1317, 1, 'stock_transfer', 'add', 'Add New Transfer', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1318, 1, 'stock_transfer', 'edit', 'Edit Transfer', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1319, 1, 'stock_transfer', 'details', 'Transfer Details', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1320, 1, 'stock_transfer', 'created', 'Transfer Created Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1321, 1, 'stock_transfer', 'updated', 'Transfer Updated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1322, 1, 'stock_transfer', 'deleted', 'Transfer Deleted Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1323, 1, 'stock_transfer', 'delete_message', 'Are you sure you want to delete this stock adjustment?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1324, 1, 'stock_transfer', 'selected_delete_message', 'Are you sure you want to delete selected stock adjustment?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1325, 1, 'stock_transfer', 'stock_transfer_date', 'Stock Transfer Date', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1326, 1, 'stock_transfer', 'stock_transfer_status', 'Stock Transfer Status', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1327, 1, 'stock_transfer', 'stock_transfer_transfered', 'Stock Transfer Transfered', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1328, 1, 'stock_transfer', 'stock_transfer_received', 'Stock Transfer Received', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1329, 1, 'stock_transfer', 'from_warehouse', 'From Warehouse', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1330, 1, 'stock_transfer', 'to_warehouse', 'To Warehouse', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1331, 1, 'stock_transfer', 'warehouse', 'Warehouse', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1332, 1, 'stock_transfer', 'products', 'Products', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1333, 1, 'stock_transfer', 'notes', 'Notes', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1334, 1, 'stock_transfer', 'quantity', 'Quantity', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1335, 1, 'stock_transfer', 'created_by', 'Created By', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1336, 1, 'stock_transfer', 'received', 'Received', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1337, 1, 'stock_transfer', 'transfered', 'Transfered', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1338, 1, 'stock_transfer', 'add_pay', 'Add Pay', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1339, 1, 'stock_transfer', 'pay_amount', 'Pay Amount', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1340, 1, 'stock_transfer', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1341, 1, 'database_backup', 'file', 'File', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1342, 1, 'database_backup', 'file_size', 'File Size', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1343, 1, 'database_backup', 'generate_backup', 'Generate Backup', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1344, 1, 'database_backup', 'delete_backup', 'Delete Backup', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1345, 1, 'database_backup', 'backup_generated_successfully', 'Backup Generated Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1346, 1, 'database_backup', 'are_you_sure_generate_backup', 'Are you sure you want to generate database backup?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1347, 1, 'database_backup', 'are_you_sure_delete_backup', 'Are you sure you want to delete this database backup?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1348, 1, 'database_backup', 'backup_locaion_is', 'All generated database file will be stored in storage/app/public/backup folder. ', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1349, 1, 'database_backup', 'settings', 'Command Settings', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1350, 1, 'database_backup', 'backup_command_setting', 'Backup Command Settings', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1351, 1, 'database_backup', 'mysqldump_command_path', 'mysqldump command path', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1352, 1, 'database_backup', 'command_updated', 'Command updated successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1353, 1, 'database_backup', 'window_command_path', 'If you use XAMPP then it will be => C:\\xampp\\mysql\\bin\\mysqldump.exe', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1354, 1, 'database_backup', 'laragon_command_path', 'If you use Laragon then it will be => C:\\laragon\\bin\\mysql\\mysql-5.7.24-winx64\\bin\\mysqldump.exe', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1355, 1, 'database_backup', 'linux_command_path', 'If you are on ubuntu or mac then run following command and enter output here => which mysqldump', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1356, 1, 'database_backup', 'put_dump_path_command_on_env_file', 'Find your MySQL dump path from below and then add it to the DUMP_PATH inside .env file', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1357, 1, 'messages', 'product_out_of_stock', 'Product is out of stock. Current Stock is {0} while required stock is {1}.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1358, 1, 'messages', 'leave_blank_to_create_parent_category', 'Leave it blank to create parent category', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1359, 1, 'messages', 'somehing_went_wrong', 'Something went wrong. Please contact to administrator.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1360, 1, 'messages', 'verify_success', 'Successfully verified. Redirect to app...', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1361, 1, 'messages', 'login_success', 'Successfully login. Redirect to app...', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1362, 1, 'messages', 'login_success_dashboard', 'Successfully logged into app.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1363, 1, 'messages', 'reset_success', 'Please check the link to set a new password on your gmail...', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1364, 1, 'messages', 'click_here_to_find_purchase_code', 'Click here to find your purchase code', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1365, 1, 'messages', 'verification_successfull', 'Verification successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1366, 1, 'messages', 'other_domain_linked', 'Other domain linked', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1367, 1, 'messages', 'other_domain_linked_with_purchase_code', 'Other domain is already linked with your purchase code. Please enter your purchase code for more details...', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1368, 1, 'messages', 'first_verify_module_message', 'To enable please \\n verify this module', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1369, 1, 'messages', 'are_you_sure_install_message', 'Are you sure you want to install?', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1370, 1, 'messages', 'downloading_started_message', 'Downloading started. Please wait ...', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1371, 1, 'messages', 'file_extracting_message', 'File extracteding. Please wait ...', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1372, 1, 'messages', 'installation_success', 'Installation successfully. Click here to reload page...', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1373, 1, 'messages', 'are_you_sure_update_message', 'Are you sure you want to update? Please take backup before update.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1374, 1, 'messages', 'stmp_success_message', 'Your SMTP settings are correct..', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1375, 1, 'messages', 'stmp_error_message', 'Your SMTP settings are incorrect. Please update it to send mails', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1376, 1, 'messages', 'uploading_failed', 'Uploading failed', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1377, 1, 'messages', 'loading_app_message', 'Please wait... we are preparing something amazing for you', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1378, 1, 'messages', 'fetching_product_details', 'We are fetching product details. Please wait...', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1379, 1, 'messages', 'product_is_upto_date', 'You are on the latest version of app.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1380, 1, 'messages', 'new_app_version_avaialbe', 'New app version {0} is available. Please update to get latest version.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1381, 1, 'messages', 'not_able_to_edit_order', 'Only order status editable, other fields can not be editable becuase this order linked to some payments. Delete those payment(s) and try again.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1382, 1, 'messages', 'click_here_to_download_sample_file', 'Click here to download sample csv file', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1383, 1, 'messages', 'imported_successfully', 'Imported Successfully', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1384, 1, 'messages', 'company_admin_password_message', 'Admin will login using this password. (Leave blank to keep current password)', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1385, 1, 'messages', 'email_setting_not_configured', 'Email setting not configured', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1386, 1, 'messages', 'please_configure_email_settings', 'Please configure your email settings to send emails. Click Here to configure email settings.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1387, 1, 'messages', 'please_login_to_your_account', 'Please login to your account', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1388, 1, 'messages', 'reset_password_massage', 'Great, you have reset your new password!', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1389, 1, 'popover', 'quantitiy_alert', 'After this stock quanity it will enable low stock warning.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1390, 1, 'popover', 'auto_detect_timezone', 'Allow auto detect timezone from browser for currently logged in user.', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1391, 1, 'popover', 'click_here_to_copy_credentials', 'Click here to copy {0} credentials', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1392, 1, 'invoice', 'purchase_invoice', 'Purchase Invoice', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1393, 1, 'invoice', 'purchase_return_invoice', 'Purchase Return Invoice', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1394, 1, 'invoice', 'sales_invoice', 'Sales Invoice', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1395, 1, 'invoice', 'sales_return_invoice', 'Sales Return Invoice', '2025-03-19 03:06:15', '2025-03-19 03:06:15'),
(1396, 1, 'invoice', 'invoice', 'Invoice', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1397, 1, 'invoice', 'order_date', 'Date', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1398, 1, 'invoice', 'order_status', 'Status', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1399, 1, 'invoice', 'payment_status', 'Payment Status', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1400, 1, 'invoice', 'bill_to', 'Bill To', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1401, 1, 'invoice', 'product', 'Product', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1402, 1, 'invoice', 'unit_price', 'Unit Price', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1403, 1, 'invoice', 'quantity', 'Quantity', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1404, 1, 'invoice', 'total', 'Total', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1405, 1, 'invoice', 'mrp', 'MRP', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1406, 1, 'invoice', 'notes', 'Notes', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1407, 1, 'invoice', 'subtotal', 'Subtotal', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1408, 1, 'invoice', 'tax', 'Tax', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1409, 1, 'invoice', 'discount', 'Discount', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1410, 1, 'invoice', 'shipping', 'Shipping', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1411, 1, 'invoice', 'total_items', 'Total Items', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1412, 1, 'invoice', 'qty', 'Qty', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1413, 1, 'invoice', 'paid_amount', 'Paid Amount', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1414, 1, 'invoice', 'due_amount', 'Due Amount', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1415, 1, 'invoice', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1416, 1, 'invoice', 'total_discount_on_mrp', 'Total Discount On MRP', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1417, 1, 'invoice', 'total_discount', 'Total Discount', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1418, 1, 'invoice', 'total_tax', 'Total Tax', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1419, 1, 'invoice', 'thanks_message', 'Thank You For Shopping With Us. Please Come Again', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1420, 1, 'invoice', 'quotation_invoice', 'Quotation Invoice', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1421, 1, 'invoice', 'terms_condition', 'Terms & Conditions', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1422, 1, 'invoice', 'ref', 'Ref', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1423, 1, 'invoice', 'sold_by', 'Sold By', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1424, 1, 'invoice', 'seller', 'Seller', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1425, 1, 'invoice', 'buyer', 'Buyer', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1426, 1, 'invoice', 'authorized_person', 'Authorized Person', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1427, 1, 'invoice', 'bank_details', 'Bank Details', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1428, 1, 'front', 'home', 'Home', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1429, 1, 'front', 'profile', 'Profile', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1430, 1, 'front', 'dashboard', 'Dashboard', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1431, 1, 'front', 'my_orders', 'My Orders', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1432, 1, 'front', 'my_profile', 'My Profile', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1433, 1, 'front', 'logout', 'Logout', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1434, 1, 'front', 'total_orders', 'Total Orders', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1435, 1, 'front', 'pending_orders', 'Pending Orders', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1436, 1, 'front', 'processing_orders', 'Processing Orders', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1437, 1, 'front', 'completed_orders', 'Completed Orders', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1438, 1, 'front', 'recent_orders', 'Recent Orders', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1439, 1, 'front', 'order_history', 'Order History', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1440, 1, 'front', 'profile_settings', 'Profile Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1441, 1, 'front', 'select_shipping_address', 'Select Shipping Address', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1442, 1, 'front', 'checkout_page', 'Checkout Page', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1443, 1, 'front', 'address_details', 'Address Details', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1444, 1, 'front', 'payment_details', 'Payment Details', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1445, 1, 'front', 'add_new_address', 'Add New Address', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1446, 1, 'front', 'cash_on_delivery', 'Cash On Delivery', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1447, 1, 'front', 'continue_shopping', 'Continue Shopping', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1448, 1, 'front', 'confirm_order', 'Confirm Order', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1449, 1, 'front', 'confirm_order_message', 'Are you sure you want to confirm this order?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1450, 1, 'front', 'order_placed', 'Order placeded.', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1451, 1, 'front', 'order_placed_message', 'Order placed successfully.', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1452, 1, 'front', 'all_orders', 'All Orders', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1453, 1, 'front', 'follow_us', 'Follow Us', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1454, 1, 'front', 'categories', 'Categories', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1455, 1, 'front', 'pages', 'Pages', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1456, 1, 'front', 'address_deleted', 'Address Deleted', '2025-03-19 03:06:16', '2025-03-19 03:06:16');
INSERT INTO `translations` (`id`, `lang_id`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1457, 1, 'front', 'address_saved', 'Address Saved', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1458, 1, 'front', 'address_delete_message', 'Are you sure you want to delete this address?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1459, 1, 'front', 'setting_updated_successfully', 'Setting updated successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1460, 1, 'front', 'login', 'Login', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1461, 1, 'front', 'login_using_email_password', 'Login using email and password', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1462, 1, 'front', 'logged_in_successfully', 'Logged in successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1463, 1, 'front', 'dont_have_account', 'Don\'t have account?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1464, 1, 'front', 'signup', 'Signup', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1465, 1, 'front', 'signup_using_email_password', 'Signup using email & password', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1466, 1, 'front', 'already_have_account', 'Already have account', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1467, 1, 'front', 'register_successfully', 'Registered successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1468, 1, 'front', 'click_here_to_login', 'Click here to login', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1469, 1, 'topbar_add_button', 'add_staff_member', 'Add Staff Member', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1470, 1, 'topbar_add_button', 'add_customer', 'Add Customer', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1471, 1, 'topbar_add_button', 'add_supplier', 'Add Supplier', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1472, 1, 'topbar_add_button', 'add_brand', 'Add Brand', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1473, 1, 'topbar_add_button', 'add_category', 'Add Category', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1474, 1, 'topbar_add_button', 'add_product', 'Add Product', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1475, 1, 'topbar_add_button', 'add_sales', 'Add Sales', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1476, 1, 'topbar_add_button', 'add_purchase', 'Add Purchase', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1477, 1, 'topbar_add_button', 'add_expense_cateogory', 'Add Expense Category', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1478, 1, 'topbar_add_button', 'add_expense', 'Add Expense', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1479, 1, 'topbar_add_button', 'add_currency', 'Add Currency', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1480, 1, 'topbar_add_button', 'add_warehouse', 'Add Warehouse', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1481, 1, 'topbar_add_button', 'add_unit', 'Add Unit', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1482, 1, 'topbar_add_button', 'add_language', 'Add Language', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1483, 1, 'topbar_add_button', 'add_role', 'Add Role', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1484, 1, 'topbar_add_button', 'add_tax', 'Add Tax', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1485, 1, 'topbar_add_button', 'add_payment_mode', 'Add Payment Mode', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1486, 1, 'setup_company', 'setup_not_completed', 'Setup Not Completed', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1487, 1, 'setup_company', 'setup_not_completed_description', 'Your company default settings not completed. Follow below setups to complete your company basic settings...', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1488, 1, 'setup_company', 'warehouse', 'Warehouse', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1489, 1, 'setup_company', 'add_first_warehouse', 'Add First Warehouse', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1490, 1, 'setup_company', 'currency', 'Currency', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1491, 1, 'setup_company', 'add_first_currency', 'Add First Currency', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1492, 1, 'setup_company', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1493, 1, 'setup_company', 'add_payment_mode', 'Add First Payment Mode', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1494, 1, 'setup_company', 'company_settings', 'Company Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1495, 1, 'setup_company', 'set_company_basic_settings', 'Setup Company Basic Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1496, 1, 'setup_company', 'previous_step', 'Previous Step', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1497, 1, 'setup_company', 'next_step', 'Next Step', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1498, 1, 'setup_company', 'basic_settings', 'Basic Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1499, 1, 'setup_company', 'theme_settings', 'Theme Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1500, 1, 'setup_company', 'logo_settings', 'Logo Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1501, 1, 'setup_company', 'save_finish_setup', 'Save & Finish Setup', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1502, 1, 'setup_company', 'go_to_dashboard', 'Go To Dashboard', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1503, 1, 'setup_company', 'setup_running_message', 'Please wait... we are setting up inital company settings.', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1504, 1, 'setup_company', 'setup_complete_message', 'Setup completed... Click on below link to view your app...', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1505, 1, 'menu', 'superadmins', 'Super Admin', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1506, 1, 'menu', 'subscription', 'Subscription', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1507, 1, 'menu', 'subscriptions', 'Subscriptions', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1508, 1, 'menu', 'subscription_plans', 'Subscription Plans', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1509, 1, 'menu', 'payment_settings', 'Payment Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1510, 1, 'menu', 'paypal', 'Paypal', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1511, 1, 'menu', 'stripe', 'Stripe', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1512, 1, 'menu', 'razorpay', 'Razorpay', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1513, 1, 'menu', 'paystack', 'Paystack', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1514, 1, 'menu', 'mollie', 'Mollie', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1515, 1, 'menu', 'authorize', 'Authorize', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1516, 1, 'menu', 'website_settings', 'Website Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1517, 1, 'menu', 'website_clients_settings', 'Clients Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1518, 1, 'menu', 'website_testimonials_settings', 'Testimonials Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1519, 1, 'menu', 'website_features_settings', 'Features Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1520, 1, 'menu', 'website_contact_settings', 'Contact Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1521, 1, 'menu', 'website_price_settings', 'Price Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1522, 1, 'menu', 'website_faq_settings', 'FAQ Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1523, 1, 'menu', 'website_footer_settings', 'Footer Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1524, 1, 'menu', 'website_seo_settings', 'SEO Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1525, 1, 'menu', 'website_header_settings', 'Header Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1526, 1, 'menu', 'website_register_settings', 'Register Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1527, 1, 'menu', 'website_call_to_action_settings', 'Call To Action Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1528, 1, 'menu', 'payment_transactions', 'Transcations', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1529, 1, 'menu', 'current_plan', 'Current Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1530, 1, 'menu', 'transcations', 'Transcations', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1531, 1, 'menu', 'change_plan', 'Change Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1532, 1, 'menu', 'offline_payment_modes', 'Offline Payment Modes', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1533, 1, 'menu', 'offline_requests', 'Offline Requests', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1534, 1, 'menu', 'white_label', 'White Label Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1535, 1, 'menu', 'email_queries', 'Email Queries', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1536, 1, 'subscription_plans', 'subscription_plan', 'Subscription Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1537, 1, 'subscription_plans', 'add', 'Add New Subscription Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1538, 1, 'subscription_plans', 'edit', 'Edit Subscription Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1539, 1, 'subscription_plans', 'created', 'Subscription Plan Created Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1540, 1, 'subscription_plans', 'updated', 'Subscription Plan Updated Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1541, 1, 'subscription_plans', 'deleted', 'Subscription Plan Deleted Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1542, 1, 'subscription_plans', 'super_admin_details', 'Subscription Plan Details', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1543, 1, 'subscription_plans', 'delete_message', 'Are you sure you want to delete this subscription plan?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1544, 1, 'subscription_plans', 'selected_delete_message', 'Are you sure you want to delete selected subscription plan?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1545, 1, 'subscription_plans', 'name', 'Name', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1546, 1, 'subscription_plans', 'description', 'Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1547, 1, 'subscription_plans', 'annual_price', 'Annual Price', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1548, 1, 'subscription_plans', 'monthly_price', 'Monthly Price', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1549, 1, 'subscription_plans', 'max_products', 'Max Products', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1550, 1, 'subscription_plans', 'pricing_details', 'Pricing Details', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1551, 1, 'subscription_plans', 'payment_gateway_details', 'Payment Gateway', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1552, 1, 'subscription_plans', 'stripe_monthly_plan_id', 'Stripe Monthly Plan ID', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1553, 1, 'subscription_plans', 'razorpay_monthly_plan_id', 'Razorpay Monthly Plan ID', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1554, 1, 'subscription_plans', 'paystack_monthly_plan_id', 'Paystack Monthly Plan ID', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1555, 1, 'subscription_plans', 'stripe_annual_plan_id', 'Stripe Annual Plan ID', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1556, 1, 'subscription_plans', 'razorpay_annual_plan_id', 'Razorpay Annual Plan ID', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1557, 1, 'subscription_plans', 'paystack_annual_plan_id', 'Paystack Annual Plan ID', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1558, 1, 'subscription_plans', 'enabled_modules', 'Enabled Modules', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1559, 1, 'subscription_plans', 'free_trail_settings', 'Free Trail Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1560, 1, 'subscription_plans', 'pos', 'POS', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1561, 1, 'subscription_plans', 'stock_transfer', 'Stock Transfer', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1562, 1, 'subscription_plans', 'stock_adjustment', 'Stock Adjustment', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1563, 1, 'subscription_plans', 'online_store', 'Online Store', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1564, 1, 'subscription_plans', 'expense', 'Expense', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1565, 1, 'subscription_plans', 'quotation', 'Quotation/Estimate', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1566, 1, 'subscription_plans', 'purchase_return', 'Purchase Return', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1567, 1, 'subscription_plans', 'sales_return', 'Sales Return', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1568, 1, 'subscription_plans', 'features', 'Features', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1569, 1, 'subscription_plans', 'add_feature', 'Add Feature', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1570, 1, 'subscription_plans', 'is_popular_plan', 'Is Popular', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1571, 1, 'subscription_plans', 'limit_exceed', 'Limit Exceed', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1572, 1, 'subscription_plans', 'upgrade_your_plan', 'Please Upgrade Your Subscription Plan To Perform Action', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1573, 1, 'subscription_plans', 'change_plan', 'Change Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1574, 1, 'subscription_plans', 'upgrade_plan', 'Upgrade Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1575, 1, 'subscription_plans', 'unlimited', 'Unlimited', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1576, 1, 'subscription_plans', 'out_of', 'out of', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1577, 1, 'subscription_plans', 'per_month', 'per month', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1578, 1, 'subscription_plans', 'per_year', 'per year', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1579, 1, 'subscription_plans', 'plan_type', 'Plan Type', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1580, 1, 'subscription_plans', 'monthly', 'Monthly', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1581, 1, 'subscription_plans', 'yearly', 'Yearly', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1582, 1, 'subscription_plans', 'annual', 'Annual', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1583, 1, 'subscription_plans', 'trial_duration', 'Trial Duration', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1584, 1, 'subscription_plans', 'notify_before', 'Notify Before Days', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1585, 1, 'subscription_plans', 'days', 'Day(s)', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1586, 1, 'subscription_plans', 'redirecting_please_wait', 'Redirecting Please Wait...', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1587, 1, 'subscription_plans', 'processing_payment', 'Processing Payment...', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1588, 1, 'subscription_plans', 'change', 'Change', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1589, 1, 'subscription_plans', 'change_subscription_plan', 'Change Subscription Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1590, 1, 'subscription_plans', 'plan_changed_successfully', 'Subscription Plan Changed Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1591, 1, 'subscription_plans', 'plan_expired', 'Plan Expired', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1592, 1, 'subscription_plans', 'plan_expired_message', 'Your subscription plan has expired on {0}. To keep using your applications without interruption, please renew your plan...', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1593, 1, 'subscription_plans', 'trial_plan', 'Trial Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1594, 1, 'subscription_plans', 'trial_plan_message', 'You are on trial version! Your trial ends on {0}', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1595, 1, 'subscription_plans', 'reports', 'Reports', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1596, 1, 'subscription_plans', 'reports_download', 'Reports Download', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1597, 1, 'subscription_plans', 'payment_success', 'Payment Successful... Please Give Us Some Time To Update...', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1598, 1, 'subscription_plans', 'payment_failed', 'Payment failed... contact to service admin', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1599, 1, 'superadmin_dashboard', 'dashboard', 'Dashboard', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1600, 1, 'superadmin_dashboard', 'total_companies', 'Total Companies', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1601, 1, 'superadmin_dashboard', 'active_companies', 'Active Companies', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1602, 1, 'superadmin_dashboard', 'license_expired', 'License Expired', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1603, 1, 'superadmin_dashboard', 'inactive_companies', 'Inactive Companies', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1604, 1, 'superadmin_dashboard', 'recently_registered_companies', 'Recently Registered Companies', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1605, 1, 'superadmin', 'add', 'Add New Super Admin', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1606, 1, 'superadmin', 'edit', 'Edit Super Admin', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1607, 1, 'superadmin', 'created', 'Super Admin Created Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1608, 1, 'superadmin', 'updated', 'Super Admin Updated Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1609, 1, 'superadmin', 'deleted', 'Super Admin Deleted Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1610, 1, 'superadmin', 'super_admin_details', 'Super Admin Details', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1611, 1, 'superadmin', 'delete_message', 'Are you sure you want to delete this super admin?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1612, 1, 'superadmin', 'selected_delete_message', 'Are you sure you want to delete selected super admin?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1613, 1, 'payment_settings', 'environment', 'Environment', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1614, 1, 'payment_settings', 'webhook_url', 'Webhook Url', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1615, 1, 'payment_settings', 'callback_url', 'Callback Url', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1616, 1, 'payment_settings', 'paypal_settings', 'Paypal Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1617, 1, 'payment_settings', 'paypal_client_id', 'Paypal Client Id', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1618, 1, 'payment_settings', 'paypal_secret', 'Paypal Secret', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1619, 1, 'payment_settings', 'paypal_status', 'Paypal Status', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1620, 1, 'payment_settings', 'paypal_mode', 'Paypal Mode', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1621, 1, 'payment_settings', 'stripe_settings', 'Stripe Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1622, 1, 'payment_settings', 'stripe_api_key', 'Publishable Key', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1623, 1, 'payment_settings', 'stripe_api_secret', 'Stripe Secret', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1624, 1, 'payment_settings', 'stripe_webhook_key', 'Stripe Webhook Secret', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1625, 1, 'payment_settings', 'stripe_status', 'Stripe Status', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1626, 1, 'payment_settings', 'razorpay_settings', 'Razorpay Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1627, 1, 'payment_settings', 'razorpay_key', 'Razorpay Key', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1628, 1, 'payment_settings', 'razorpay_secret', 'Razorpay Secret Key', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1629, 1, 'payment_settings', 'razorpay_webhook_secret', 'Razorpay Webhook Secret Key', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1630, 1, 'payment_settings', 'razorpay_status', 'Razorpay Status', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1631, 1, 'payment_settings', 'paystack_settings', 'Paystack Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1632, 1, 'payment_settings', 'paystack_client_id', 'Paystack Key', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1633, 1, 'payment_settings', 'paystack_secret', 'Paystack Secret Key', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1634, 1, 'payment_settings', 'paystack_merchant_email', 'Paystack merchant email', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1635, 1, 'payment_settings', 'paystack_status', 'Paystack Status', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1636, 1, 'payment_settings', 'mollie_settings', 'Paystack Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1637, 1, 'payment_settings', 'mollie_api_key', 'Mollie Api Key', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1638, 1, 'payment_settings', 'mollie_status', 'Mollie Status', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1639, 1, 'payment_settings', 'authorize_settings', 'Authorize Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1640, 1, 'payment_settings', 'authorize_api_login_id', 'Authorize Api Login Id', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1641, 1, 'payment_settings', 'authorize_transaction_key', 'Authorize Transaction Key', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1642, 1, 'payment_settings', 'authorize_signature_key', 'Authorize Signature Key', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1643, 1, 'payment_settings', 'authorize_environment', 'Select environment', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1644, 1, 'payment_settings', 'authorize_status', 'Authorize Status', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1645, 1, 'payment_settings', 'sandbox', 'Sandbox', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1646, 1, 'payment_settings', 'live', 'Live', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1647, 1, 'payment_settings', 'credential_saved', 'Credentials saved successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1648, 1, 'payment_settings', 'stripe_webhook_message', 'Add this webhook url on your stripe app settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1649, 1, 'payment_settings', 'stripe_customer_name', 'Name', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1650, 1, 'payment_settings', 'stripe_customer_line1', 'Line 1', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1651, 1, 'payment_settings', 'stripe_customer_city', 'City', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1652, 1, 'payment_settings', 'stripe_customer_state', 'State', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1653, 1, 'payment_settings', 'stripe_customer_country', 'Country', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1654, 1, 'payment_settings', 'stripe_card_details', 'Card Details', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1655, 1, 'payment_settings', 'complete_transcation', 'Complete Transcation', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1656, 1, 'payment_settings', 'required_message', '{0} is required', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1657, 1, 'payment_settings', 'payment_success_give_some_time', 'Payment Successful... Please Give Us Some Time To Update...', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1658, 1, 'payment_transaction', 'last_paid_on', 'Last Paid On', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1659, 1, 'payment_transaction', 'paid_on', 'Date', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1660, 1, 'payment_transaction', 'company', 'Company', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1661, 1, 'payment_transaction', 'transcation_id', 'Transcation ID', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1662, 1, 'payment_transaction', 'amount', 'Amount', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1663, 1, 'payment_transaction', 'next_payment_date', 'Next Payment Date', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1664, 1, 'payment_transaction', 'payment_method', 'Payment Method', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1665, 1, 'payment_transaction', 'license_expires_on', 'License Will Expires On', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1666, 1, 'payment_transaction', 'plan', 'Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1667, 1, 'payment_transaction', 'subscribe', 'Subscribe', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1668, 1, 'payment_transaction', 'paid_by', 'Paid By', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1669, 1, 'payment_transaction', 'subscription_plan', 'Subscription Plan', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1670, 1, 'payment_transaction', 'plan_type', 'Plan Type', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1671, 1, 'payment_transaction', 'no_date_selected', 'No Date Selected', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1672, 1, 'website_settings', 'website', 'Website', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1673, 1, 'website_settings', 'app_name', 'App Name', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1674, 1, 'website_settings', 'basic_text', 'Basic Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1675, 1, 'website_settings', 'basic_settings', 'Basic Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1676, 1, 'website_settings', 'header', 'Header', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1677, 1, 'website_settings', 'clients', 'Clients', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1678, 1, 'website_settings', 'testimonials', 'Testimonials', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1679, 1, 'website_settings', 'features', 'Features', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1680, 1, 'website_settings', 'home_page_feature_widget', 'Home Page Feature Widget', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1681, 1, 'website_settings', 'features_home_page', 'Home Page Features', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1682, 1, 'website_settings', 'features_page', 'Features Page', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1683, 1, 'website_settings', 'faq', 'FAQ', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1684, 1, 'website_settings', 'footer', 'Footer', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1685, 1, 'website_settings', 'seo', 'SEO', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1686, 1, 'website_settings', 'language', 'Language', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1687, 1, 'website_settings', 'features_lists', 'Features', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1688, 1, 'website_settings', 'pricing_cards', 'Pricing Cards', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1689, 1, 'website_settings', 'text_settings', 'Text Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1690, 1, 'website_settings', 'header_settings', 'Header Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1691, 1, 'website_settings', 'header_client', 'Header Client', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1692, 1, 'website_settings', 'header_features', 'Header Features', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1693, 1, 'website_settings', 'header_logo', 'Header Logo', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1694, 1, 'website_settings', 'header_sidebar_logo', 'Header Sidebar Logo', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1695, 1, 'website_settings', 'home_text', 'Home Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1696, 1, 'website_settings', 'features_text', 'Features Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1697, 1, 'website_settings', 'pricing_text', 'Pricing Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1698, 1, 'website_settings', 'register_text', 'Register Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1699, 1, 'website_settings', 'contact_text', 'Contact Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1700, 1, 'website_settings', 'login_button_show', 'Show Login Button', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1701, 1, 'website_settings', 'login_button_text', 'Login Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1702, 1, 'website_settings', 'register_button_show', 'Show Register Button', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1703, 1, 'website_settings', 'register_button_text', 'Register Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1704, 1, 'website_settings', 'header_title', 'Header Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1705, 1, 'website_settings', 'header_sub_title', 'Header Sub Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1706, 1, 'website_settings', 'header_description', 'Header Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1707, 1, 'website_settings', 'header_button1_show', 'Show Header Button 1', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1708, 1, 'website_settings', 'header_button1_text', 'Header Button 1 Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1709, 1, 'website_settings', 'header_button1_url', 'Header Button 1 Url', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1710, 1, 'website_settings', 'header_button2_show', 'Show Header Button 2', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1711, 1, 'website_settings', 'header_button2_text', 'Header Button 2 Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1712, 1, 'website_settings', 'header_button2_url', 'Header Button 2 Url', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1713, 1, 'website_settings', 'header_background_image', 'Header Background Image', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1714, 1, 'website_settings', 'header_client_show', 'Show Header Client', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1715, 1, 'website_settings', 'header_client_image', 'Header Client Image', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1716, 1, 'website_settings', 'header_client_name', 'Header Client Name', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1717, 1, 'website_settings', 'header_client_text', 'Header Client Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1718, 1, 'website_settings', 'contact_title', 'Contact Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1719, 1, 'website_settings', 'contact_description', 'Contact Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1720, 1, 'website_settings', 'contact_email_text', 'Email Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1721, 1, 'website_settings', 'contact_phone_text', 'Phone Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1722, 1, 'website_settings', 'contact_address_text', 'Address Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1723, 1, 'website_settings', 'contact_details', 'Contact Details', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1724, 1, 'website_settings', 'contact_form', 'Contact Form', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1725, 1, 'website_settings', 'contact_form_settings', 'Contact Form Settings', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1726, 1, 'website_settings', 'contact_form_title', 'Contact Form Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1727, 1, 'website_settings', 'contact_form_description', 'Contact Form Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1728, 1, 'website_settings', 'contact_form_background_image', 'Contact Form Background Image', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1729, 1, 'website_settings', 'contact_form_heading', 'Contact Form Heading', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1730, 1, 'website_settings', 'contact_form_name_text', 'Name Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1731, 1, 'website_settings', 'contact_form_email_text', 'Email Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1732, 1, 'website_settings', 'contact_form_message_text', 'Message Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1733, 1, 'website_settings', 'contact_form_send_message_text', 'Send Button Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1734, 1, 'website_settings', 'contact_us_submit_message_text', 'Contact Success Message', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1735, 1, 'website_settings', 'footer_title', 'Footer Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1736, 1, 'website_settings', 'footer_description', 'Footer Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1737, 1, 'website_settings', 'footer_logo', 'Footer Logo', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1738, 1, 'website_settings', 'footer_copyright_text', 'Footer Copyright', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1739, 1, 'website_settings', 'footer_links_text', 'Links Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1740, 1, 'website_settings', 'footer_pages_text', 'Pages', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1741, 1, 'website_settings', 'footer_contact_us_text', 'Contact Us', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1742, 1, 'website_settings', 'footer_pages', 'Pages', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1743, 1, 'website_settings', 'social_links', 'Social Links', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1744, 1, 'website_settings', 'facebook_url', 'Facebook Url', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1745, 1, 'website_settings', 'twitter_url', 'Twitter Url', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1746, 1, 'website_settings', 'linkedin_url', 'LinkedIn Url', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1747, 1, 'website_settings', 'instagram_url', 'Instagram Url', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1748, 1, 'website_settings', 'youtube_url', 'Youtube Url', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1749, 1, 'website_settings', 'register_title', 'Register Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1750, 1, 'website_settings', 'register_description', 'Register Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1751, 1, 'website_settings', 'register_background', 'Background Image', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1752, 1, 'website_settings', 'register_company_name_text', 'Company Name Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1753, 1, 'website_settings', 'register_email_text', 'Email Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1754, 1, 'website_settings', 'register_phone_text', 'Phone Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1755, 1, 'website_settings', 'register_password_text', 'Password Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1756, 1, 'website_settings', 'register_confirm_password_text', 'Confirm Passwrod Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1757, 1, 'website_settings', 'register_submit_button_text', 'Submit Button Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1758, 1, 'website_settings', 'register_agree_text', 'Terms & Condition Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1759, 1, 'website_settings', 'register_agree_url', 'Terms & Condition Url', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1760, 1, 'website_settings', 'error_contact_support', 'Error Contact Support Message', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1761, 1, 'website_settings', 'register_success_text', 'Register Success Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1762, 1, 'website_settings', 'call_to_action_title', 'Call To Action Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1763, 1, 'website_settings', 'call_to_action_description', 'Call To Action Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1764, 1, 'website_settings', 'call_to_action_widgets', 'Widgets', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1765, 1, 'website_settings', 'call_to_action_add_widget', 'Add Widget', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1766, 1, 'website_settings', 'call_to_action_submit_button_text', 'Submit Button Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1767, 1, 'website_settings', 'call_to_action_email_text', 'Email Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1768, 1, 'website_settings', 'call_to_action_no_email_sell_text', 'No Email Sell Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1769, 1, 'website_settings', 'setting_saved', 'Setting Saved Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1770, 1, 'website_settings', 'client_title', 'Client Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1771, 1, 'website_settings', 'client_description', 'Client Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1772, 1, 'website_settings', 'testimonial_title', 'Testimonial Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1773, 1, 'website_settings', 'testimonial_description', 'Testimonial Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1774, 1, 'website_settings', 'feature_title', 'Feature Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1775, 1, 'website_settings', 'feature_description', 'Feature Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1776, 1, 'website_settings', 'price_title', 'Price Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1777, 1, 'website_settings', 'price_description', 'Price Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1778, 1, 'website_settings', 'price_card_title', 'Price Card Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1779, 1, 'website_settings', 'pricing_month_text', 'Pricing Month Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1780, 1, 'website_settings', 'pricing_year_text', 'Pricing Year Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1781, 1, 'website_settings', 'pricing_monthly_text', 'Pricing Monthly Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1782, 1, 'website_settings', 'pricing_yearly_text', 'Pricing Yearly Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1783, 1, 'website_settings', 'pricing_billed_monthly_text', 'Billed Monthly Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1784, 1, 'website_settings', 'pricing_billed_yearly_text', 'Billed Yearly Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1785, 1, 'website_settings', 'most_popular_image', 'Most Popular Image', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1786, 1, 'website_settings', 'faq_title', 'FAQ Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1787, 1, 'website_settings', 'faq_sub_title', 'FAQ Sub Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1788, 1, 'website_settings', 'faq_still_have_question_text', 'Still Have Questions Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1789, 1, 'website_settings', 'faq_contact_us_text', 'Contact Us Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1790, 1, 'website_settings', 'faq_background_image', 'FAQ Background', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1791, 1, 'website_settings', 'pricing_get_started_button_text', 'Get Started ButtonText', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1792, 1, 'website_settings', 'pricing_no_card_text', 'No Credit Card Required Text', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1793, 1, 'website_settings', 'edit_seo', 'Edit SEO', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1794, 1, 'website_settings', 'seo_updated', 'SEO Details Updated Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1795, 1, 'website_settings', 'page_key', 'Page', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1796, 1, 'website_settings', 'seo_title', 'SEO Title', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1797, 1, 'website_settings', 'seo_description', 'SEO Description', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1798, 1, 'website_settings', 'seo_keywords', 'SEO Keywords', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1799, 1, 'website_settings', 'seo_author', 'SEO Author', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1800, 1, 'website_settings', 'seo_image', 'SEO Image', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1801, 1, 'website_settings', 'add_pricing_card', 'Add Pricing Card', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1802, 1, 'website_settings', 'edit_pricing_card', 'Edit Pricing Card', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1803, 1, 'website_settings', 'pricing_card_created', 'Pricing Card Created Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1804, 1, 'website_settings', 'pricing_card_updated', 'Pricing Card Updated Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1805, 1, 'website_settings', 'pricing_card_delete_message', 'Are you sure you want to delete this Pricing Card?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1806, 1, 'website_settings', 'pricing_card_deleted', 'Pricing Card Deleted Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1807, 1, 'website_settings', 'add_client', 'Add Client', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1808, 1, 'website_settings', 'edit_client', 'Edit Client', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1809, 1, 'website_settings', 'client_created', 'Client Created Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1810, 1, 'website_settings', 'client_updated', 'Client Updated Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1811, 1, 'website_settings', 'client_delete_message', 'Are you sure you want to delete this client?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1812, 1, 'website_settings', 'client_deleted', 'Client Deleted Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1813, 1, 'website_settings', 'add_testimonial', 'Add Testimonial', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1814, 1, 'website_settings', 'edit_testimonial', 'Edit Testimonial', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1815, 1, 'website_settings', 'testimonial_created', 'Testimonial Created Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1816, 1, 'website_settings', 'testimonial_updated', 'Testimonial Updated Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1817, 1, 'website_settings', 'testimonial_delete_message', 'Are you sure you want to delete this testimonial?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1818, 1, 'website_settings', 'testimonial_deleted', 'Testimonial Deleted Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1819, 1, 'website_settings', 'add_feature', 'Add Feature', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1820, 1, 'website_settings', 'edit_feature', 'Edit Feature', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1821, 1, 'website_settings', 'feature_created', 'Feature Created Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1822, 1, 'website_settings', 'feature_updated', 'Feature Updated Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1823, 1, 'website_settings', 'feature_delete_message', 'Are you sure you want to delete this feature?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1824, 1, 'website_settings', 'feature_deleted', 'Feature Deleted Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1825, 1, 'website_settings', 'add_faq', 'Add Faq', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1826, 1, 'website_settings', 'edit_faq', 'Edit Faq', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1827, 1, 'website_settings', 'faq_created', 'Faq Created Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1828, 1, 'website_settings', 'faq_updated', 'Faq Updated Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1829, 1, 'website_settings', 'faq_delete_message', 'Are you sure you want to delete this faq?', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1830, 1, 'website_settings', 'faq_deleted', 'Faq Deleted Successfully', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1831, 1, 'website_settings', 'add_footer_page', 'Add Footer Page', '2025-03-19 03:06:16', '2025-03-19 03:06:16'),
(1832, 1, 'website_settings', 'edit_footer_page', 'Edit Footer page', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1833, 1, 'website_settings', 'footer_page_created', 'Footer Page Created Successfully', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1834, 1, 'website_settings', 'footer_page_updated', 'Footer Page Updated Successfully', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1835, 1, 'website_settings', 'footer_page_delete_message', 'Are you sure you want to delete this footer page?', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1836, 1, 'website_settings', 'footer_page_deleted', 'Footer Page Deleted Successfully', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1837, 1, 'website_settings', 'rating_between_text', 'Rating must be between 1 - 5', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1838, 1, 'offline_payment_mode', 'add', 'Add New Offline Payment Mode', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1839, 1, 'offline_payment_mode', 'edit', 'Edit Offline Payment Mode', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1840, 1, 'offline_payment_mode', 'created', 'Offline Payment Mode Created Successfully', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1841, 1, 'offline_payment_mode', 'updated', 'Offline Payment Mode Updated Successfully', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1842, 1, 'offline_payment_mode', 'deleted', 'Offline Payment Mode Deleted Successfully', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1843, 1, 'offline_payment_mode', 'delete_message', 'Are you sure you want to delete this Offline Payment Mode?', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1844, 1, 'offline_payment_mode', 'selected_delete_message', 'Are you sure you want to delete selected Offline Payment Mode?', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1845, 1, 'offline_payment_mode', 'details', 'Offline Payment Mode Details', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1846, 1, 'offline_payment_mode', 'name', 'Name', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1847, 1, 'offline_payment_mode', 'description', 'Description', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1848, 1, 'offline_request', 'company', 'Company', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1849, 1, 'offline_request', 'created', 'Offline Request Created', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1850, 1, 'offline_request', 'created_message', 'Offline request submitted... Please wait for some time to get approved the request...', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1851, 1, 'offline_request', 'offline', 'Offline', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1852, 1, 'offline_request', 'offline_account_details', 'Offline Account Details', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1853, 1, 'offline_request', 'subscription_plan', 'Subscription Plan', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1854, 1, 'offline_request', 'plan_type', 'Plan Type', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1855, 1, 'offline_request', 'payment_mode', 'Payment Mode', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1856, 1, 'offline_request', 'payment_date', 'Payment Date', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1857, 1, 'offline_request', 'status', 'Status', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1858, 1, 'offline_request', 'proof_document', 'Proof Document', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1859, 1, 'offline_request', 'submit_description', 'Submit Description', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1860, 1, 'offline_request', 'request_submited_successfully', 'Request Submited Successfully', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1861, 1, 'offline_request', 'submitted_on', 'Submitted On', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1862, 1, 'offline_request', 'submitted_by', 'Submitted By', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1863, 1, 'offline_request', 'payment_method', 'Payment Method', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1864, 1, 'offline_request', 'pending', 'Pending', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1865, 1, 'offline_request', 'approved', 'Approved', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1866, 1, 'offline_request', 'rejected', 'Rejected', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1867, 1, 'offline_request', 'approve', 'Approve', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1868, 1, 'offline_request', 'rejecte', 'Rejecte', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1869, 1, 'offline_request', 'approve_request', 'Approve Request', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1870, 1, 'offline_request', 'reject_request', 'Reject Request', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1871, 1, 'offline_request', 'view_proof_document', 'View Proof Document', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1872, 1, 'offline_request', 'request_approved_successfully', 'Request Approved Successfully', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1873, 1, 'offline_request', 'are_you_sure_reject_request', 'Are you sure you want to reject this request', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1874, 1, 'offline_request', 'request_rejected_successfully', 'Request Rejected Successflly', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1875, 1, 'offline_request', 'yes_rejected', 'Yes Reject', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1876, 1, 'setup_superadmin_company', 'setup_not_completed', 'Setup Not Completed', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1877, 1, 'setup_superadmin_company', 'setup_not_completed_description', 'Your company default settings not completed. Follow below setups to complete your company basic settings...', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1878, 1, 'setup_superadmin_company', 'currency', 'Currency', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1879, 1, 'setup_superadmin_company', 'add_first_currency', 'Add First Currency', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1880, 1, 'setup_superadmin_company', 'white_label_settings', 'White Label Settings', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1881, 1, 'setup_superadmin_company', 'white_label_descrtipion', 'Default Logo Settings', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1882, 1, 'setup_superadmin_company', 'white_label_update_details', 'Change all default logo which will be displayed when a new user register a new company. Click on below image to change it...', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1883, 1, 'setup_superadmin_company', 'white_label_settings_completed', 'Are you sure you uploaded all logo', '2025-03-19 03:06:17', '2025-03-19 03:06:17');
INSERT INTO `translations` (`id`, `lang_id`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1884, 1, 'setup_superadmin_company', 'yes_uploaded', 'Yes Uploaded', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1885, 1, 'setup_superadmin_company', 'default_company_logo', 'Default Company Logo', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1886, 1, 'setup_superadmin_company', 'company_settings', 'Company Settings', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1887, 1, 'setup_superadmin_company', 'set_company_basic_settings', 'Setup Company Basic Settings', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1888, 1, 'setup_superadmin_company', 'previous_step', 'Previous Step', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1889, 1, 'setup_superadmin_company', 'next_step', 'Next Step', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1890, 1, 'setup_superadmin_company', 'basic_settings', 'Basic Settings', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1891, 1, 'setup_superadmin_company', 'theme_settings', 'Theme Settings', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1892, 1, 'setup_superadmin_company', 'logo_settings', 'Logo Settings', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1893, 1, 'setup_superadmin_company', 'save_finish_setup', 'Save & Finish Setup', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1894, 1, 'setup_superadmin_company', 'go_to_dashboard', 'Go To Dashboard', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1895, 1, 'setup_superadmin_company', 'setup_running_message', 'Please wait... we are setting up inital company settings.', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1896, 1, 'setup_superadmin_company', 'setup_complete_message', 'Setup completed... Click on below link to view your app...', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1897, 1, 'setup_superadmin_company', 'hard_reload_message', 'If logo not changed after upload.. Please hard reload your browser or clear your browser cache.', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1898, 1, 'email_queries', 'email_query_details', 'Email Query Details', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1899, 1, 'email_queries', 'date_time', 'Date Time', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1900, 1, 'email_queries', 'name', 'Name', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1901, 1, 'email_queries', 'email', 'Email', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1902, 1, 'email_queries', 'message', 'Message', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1903, 1, 'email_queries', 'subject', 'Subject', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1904, 1, 'email_queries', 'body', 'Body', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1905, 1, 'email_queries', 'send_mail', 'Send Mail', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1906, 1, 'email_queries', 'not_replied', 'Not Replied', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1907, 1, 'email_queries', 'replied', 'Replied', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1908, 1, 'email_queries', 'eamil_sent_successfully', 'Email sent successfully', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1909, 1, 'messages', 'register_business', 'Register Business', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1910, 1, 'messages', 'account_message', 'Please provide details for your account', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1911, 1, 'front_website', 'condition', 'I agree to the Terms & Conditions of Stockifly', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1912, 1, 'front_website', 'shop_name', 'Shop Name', '2025-03-19 03:06:17', '2025-03-19 03:06:17'),
(1913, 1, 'common', 'back_super_admin', 'Back to SuperAdmin', '2025-03-19 03:06:17', '2025-03-19 03:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `short_name` varchar(191) NOT NULL,
  `base_unit` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `operator` varchar(191) NOT NULL,
  `operator_value` varchar(191) NOT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `company_id`, `name`, `short_name`, `base_unit`, `parent_id`, `operator`, `operator_value`, `is_deletable`, `created_at`, `updated_at`) VALUES
(3, 3, 'Pieces', 'Pcs', NULL, NULL, 'multiply', '1', 1, '2025-06-01 10:25:47', '2025-06-01 10:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_superadmin` tinyint(1) NOT NULL DEFAULT 0,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'customers',
  `is_walkin_customer` tinyint(1) NOT NULL DEFAULT 0,
  `login_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `profile_image` varchar(191) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `shipping_address` varchar(1000) DEFAULT NULL,
  `email_verification_code` varchar(50) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'enabled',
  `reset_code` varchar(191) DEFAULT NULL,
  `timezone` varchar(50) NOT NULL DEFAULT 'Asia/Kolkata',
  `date_format` varchar(20) NOT NULL DEFAULT 'd-m-Y',
  `date_picker_format` varchar(20) NOT NULL DEFAULT 'dd-mm-yyyy',
  `time_format` varchar(20) NOT NULL DEFAULT 'h:i a',
  `tax_number` varchar(191) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reset_password_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `is_superadmin`, `warehouse_id`, `role_id`, `lang_id`, `user_type`, `is_walkin_customer`, `login_enabled`, `name`, `email`, `password`, `phone`, `profile_image`, `address`, `shipping_address`, `email_verification_code`, `status`, `reset_code`, `timezone`, `date_format`, `date_picker_format`, `time_format`, `tax_number`, `created_by`, `department_id`, `designation_id`, `shift_id`, `reset_password_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, 1, 'super_admins', 0, 1, 'Super Admin', 'superadmin@flycdi.ae', '$2y$10$04ke99pyXeaPygMYRRoHIeJxkOmSrKHopeNR5K9Rot3DIsomw1Rcm', '+923329373172', NULL, NULL, NULL, NULL, 'enabled', NULL, 'Asia/Kolkata', 'd-m-Y', 'dd-mm-yyyy', 'h:i a', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 03:06:21', '2025-06-01 08:50:57'),
(8, 3, 0, NULL, NULL, NULL, 'customers', 1, 0, 'Walk In Customer', 'walkin@email.com', NULL, '+911111111111', NULL, 'address', 'shipping address', NULL, 'enabled', NULL, 'Asia/Kolkata', 'd-m-Y', 'dd-mm-yyyy', 'h:i a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 3, 0, 4, 2, NULL, 'staff_members', 0, 1, 'Admin', 'manager@flycdi.ae', '$2y$10$vLrCr0RuWIXrVqTGU9egduHGGQBljpXixuJT8Md10BZeTvwoIChfK', NULL, NULL, NULL, NULL, 'RFsZ1fqlkpETPLOsmnWcGzOJ06r7PlwBQIZpg1xIg6qifYk513', 'enabled', NULL, 'Asia/Kolkata', 'd-m-Y', 'dd-mm-yyyy', 'h:i a', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-01 09:02:37', '2025-06-01 09:11:09'),
(10, 3, 0, 4, NULL, NULL, 'customers', 0, 1, 'ASLAM JAN', 'ceo@flycdi.ae', '$2y$10$RQw10GjBEkdAtASJGaY4tuN2IiaRsDB9wPsOcsBlLdJ.0X6G6QeeW', '0503177387', NULL, 'Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai', NULL, NULL, 'enabled', NULL, 'Asia/Kolkata', 'd-m-Y', 'dd-mm-yyyy', 'h:i a', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-03 13:08:13', '2025-07-03 13:08:13'),
(11, 3, 0, 4, NULL, NULL, 'customers', 0, 1, 'Usama Akbar', 'usama16803@gmail.com', '$2y$10$W9LYRFoU2/5hJfYDS7GG0e10zqID1DxHaLmAmgHv.D3eSrOYagEGy', '0521392955', NULL, NULL, NULL, NULL, 'enabled', NULL, 'Asia/Kolkata', 'd-m-Y', 'dd-mm-yyyy', 'h:i a', '123456789', NULL, NULL, NULL, NULL, NULL, '2025-07-22 08:52:37', '2025-07-22 08:52:37'),
(12, 3, 0, 4, 4, NULL, 'staff_members', 0, 1, 'Saliha Yousef', 'Saliha.flycdi@gmail.com', '$2y$10$BzRevZ2JLvJqPK6IJH7oU.QXUSSMylD47DhtlUAZRPcITYiTEUn62', '0503161709', 'user_8ffxthzbmmbitztfo7id.jpeg', 'Osha 2 - Retail 01, Ithra Street, Enrichment Project, Corniche Deira, 65565, Dubai', NULL, NULL, 'enabled', NULL, 'Asia/Kolkata', 'd-m-Y', 'dd-mm-yyyy', 'h:i a', NULL, 9, NULL, NULL, NULL, NULL, '2025-07-25 12:09:37', '2025-07-25 12:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `shipping_address` varchar(1000) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `opening_balance` double NOT NULL DEFAULT 0,
  `opening_balance_type` varchar(20) NOT NULL DEFAULT 'receive',
  `credit_period` int(11) NOT NULL DEFAULT 0,
  `credit_limit` double NOT NULL DEFAULT 0,
  `purchase_order_count` int(11) NOT NULL DEFAULT 0,
  `purchase_return_count` int(11) NOT NULL DEFAULT 0,
  `sales_order_count` int(11) NOT NULL DEFAULT 0,
  `sales_return_count` int(11) NOT NULL DEFAULT 0,
  `total_amount` double NOT NULL DEFAULT 0,
  `paid_amount` double NOT NULL DEFAULT 0,
  `due_amount` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `warehouse_id`, `user_id`, `opening_balance`, `opening_balance_type`, `credit_period`, `credit_limit`, `purchase_order_count`, `purchase_return_count`, `sales_order_count`, `sales_return_count`, `total_amount`, `paid_amount`, `due_amount`, `created_at`, `updated_at`) VALUES
(10, 4, 8, 0, 'receive', 30, 0, 0, 0, 1, 1, -52.5, 52.5, -105, '2025-06-01 09:07:07', '2025-07-22 09:06:32'),
(11, 4, 10, 0, 'receive', 30, 0, 0, 0, 0, 0, 0, 0, 0, '2025-07-03 13:08:13', '2025-07-03 13:08:13'),
(12, 4, 11, 0, 'receive', 0, 0, 0, 0, 3, 0, 300, 50, 250, '2025-07-22 08:52:37', '2025-07-22 08:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_warehouse`
--

CREATE TABLE `user_warehouse` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_warehouse`
--

INSERT INTO `user_warehouse` (`id`, `user_id`, `warehouse_id`, `created_at`, `updated_at`) VALUES
(3, 12, 4, '2025-07-25 12:19:08', '2025-07-25 12:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `company_id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(17, 3, 'Colour', NULL, '2025-06-01 10:19:04', '2025-06-01 10:19:04'),
(18, 3, 'Black', 17, '2025-06-01 10:19:04', '2025-06-01 10:19:04'),
(19, 3, 'White', 17, '2025-06-01 10:19:04', '2025-06-01 10:19:04'),
(20, 3, 'Blue', 17, '2025-06-01 10:19:04', '2025-06-01 10:19:04'),
(21, 3, 'Natural Titanium', 17, '2025-06-01 10:19:04', '2025-06-01 10:19:04'),
(22, 3, 'White Titanium', 17, '2025-06-01 10:19:04', '2025-06-01 10:19:04'),
(23, 3, 'Silver', 17, '2025-06-01 10:19:04', '2025-06-01 10:19:04'),
(24, 3, 'GB', NULL, '2025-06-10 06:46:19', '2025-06-10 06:46:19'),
(25, 3, '128GB', 24, '2025-06-10 06:46:19', '2025-06-10 06:46:19'),
(26, 3, '256GB', 24, '2025-06-10 06:46:19', '2025-06-10 06:46:19'),
(27, 3, '512GB', 24, '2025-06-10 06:46:19', '2025-06-10 06:46:19'),
(28, 3, '1TB', 24, '2025-06-10 06:46:19', '2025-06-10 06:46:19'),
(29, 3, '2TB', 24, '2025-06-10 06:46:19', '2025-06-10 06:46:19'),
(30, 3, 'Battery mAh', NULL, '2025-06-10 06:53:10', '2025-06-10 06:53:10'),
(31, 3, '3000mAh', 30, '2025-06-10 06:53:10', '2025-06-10 06:53:10'),
(32, 3, '4000mAh', 30, '2025-06-10 06:53:10', '2025-06-10 06:53:10'),
(33, 3, '4500mAh', 30, '2025-06-10 06:53:10', '2025-06-10 06:53:10'),
(34, 3, '5000mAh', 30, '2025-06-10 06:53:10', '2025-06-10 06:53:10'),
(35, 3, '6000mAh', 30, '2025-06-10 06:53:10', '2025-06-10 06:53:10'),
(36, 3, 'LCD Size', NULL, '2025-06-10 06:57:08', '2025-06-10 06:57:08'),
(37, 3, '5.5', 36, '2025-06-10 06:57:08', '2025-06-10 06:57:08'),
(38, 3, '6.0', 36, '2025-06-10 06:57:08', '2025-06-10 06:57:08'),
(39, 3, '6.1', 36, '2025-06-10 06:57:08', '2025-06-10 06:57:08'),
(40, 3, '6.4', 36, '2025-06-10 06:57:08', '2025-06-10 06:57:08'),
(41, 3, '6.5', 36, '2025-06-10 06:57:08', '2025-06-10 06:57:08'),
(42, 3, '6.8', 36, '2025-06-10 06:57:08', '2025-06-10 06:57:08'),
(43, 3, '6.9', 36, '2025-06-10 06:57:08', '2025-06-10 06:57:08'),
(44, 3, '7.2', 36, '2025-06-10 06:57:08', '2025-06-10 06:57:08'),
(45, 3, 'Manufacturer', NULL, '2025-07-19 07:21:19', '2025-07-19 07:21:19'),
(46, 3, 'FLYCDI', 45, '2025-07-19 07:21:19', '2025-07-19 07:21:19'),
(47, 3, 'MK', 45, '2025-07-19 07:21:19', '2025-07-19 07:21:19'),
(48, 3, 'LCD Quality', NULL, '2025-07-19 07:25:53', '2025-07-19 07:25:53'),
(49, 3, 'Soft OLED', 48, '2025-07-19 07:25:53', '2025-07-19 07:25:53'),
(50, 3, 'Hard OLED', 48, '2025-07-19 07:25:53', '2025-07-19 07:25:53'),
(51, 3, 'INCELL', 48, '2025-07-19 07:25:53', '2025-07-19 07:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `dark_logo` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `show_email_on_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `show_phone_on_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `address` varchar(191) DEFAULT NULL,
  `terms_condition` text DEFAULT NULL,
  `bank_details` text DEFAULT NULL,
  `signature` varchar(191) DEFAULT NULL,
  `online_store_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `customers_visibility` varchar(20) NOT NULL DEFAULT 'all',
  `suppliers_visibility` varchar(20) NOT NULL DEFAULT 'all',
  `products_visibility` varchar(20) NOT NULL DEFAULT 'all',
  `default_pos_order_status` varchar(20) NOT NULL DEFAULT 'delivered',
  `show_mrp_on_invoice` tinyint(1) NOT NULL DEFAULT 1,
  `show_discount_tax_on_invoice` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `barcode_type` varchar(20) NOT NULL DEFAULT 'barcode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `company_id`, `logo`, `dark_logo`, `name`, `slug`, `email`, `phone`, `show_email_on_invoice`, `show_phone_on_invoice`, `address`, `terms_condition`, `bank_details`, `signature`, `online_store_enabled`, `customers_visibility`, `suppliers_visibility`, `products_visibility`, `default_pos_order_status`, `show_mrp_on_invoice`, `show_discount_tax_on_invoice`, `created_at`, `updated_at`, `barcode_type`) VALUES
(4, 3, 'warehouses_vuslumm6tdxliwddx3wr.png', 'warehouses_ypxyjjiasdnhbmacj9pf.png', 'FLYCDI - Deira Showroom', 'flycdi-deira-showroom-vuexxv2s', 'info@flycdi.ae', '0547647186', 1, 1, 'Osha 2, Retail 01, Ithra Street Deira Enirchment Project Corniche Deira , 65565, Dubai', '1. Goods once sold will not be taken back or exchanged\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only', NULL, NULL, 1, 'all', 'all', 'all', 'delivered', 1, 1, '2025-06-01 09:07:07', '2025-06-01 09:07:07', 'barcode');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_history`
--

CREATE TABLE `warehouse_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expense_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `transaction_number` varchar(191) DEFAULT NULL,
  `staff_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_history`
--

INSERT INTO `warehouse_history` (`id`, `company_id`, `date`, `warehouse_id`, `user_id`, `order_id`, `order_item_id`, `product_id`, `payment_id`, `expense_id`, `amount`, `quantity`, `status`, `type`, `transaction_number`, `staff_user_id`, `updated_at`) VALUES
(10, 3, '2025-07-01', 4, 8, 5, NULL, NULL, NULL, NULL, 105, 1.00, NULL, 'sales-returns', 'SALE-RET-5', NULL, '2025-07-01 19:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_stocks`
--

CREATE TABLE `warehouse_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `stock_quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appreciations`
--
ALTER TABLE `appreciations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appreciations_company_id_foreign` (`company_id`),
  ADD KEY `appreciations_award_id_foreign` (`award_id`),
  ADD KEY `appreciations_user_id_foreign` (`user_id`),
  ADD KEY `appreciations_created_by_foreign` (`created_by`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_company_id_foreign` (`company_id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`),
  ADD KEY `attendances_leave_id_foreign` (`leave_id`),
  ADD KEY `attendances_leave_type_id_foreign` (`leave_type_id`),
  ADD KEY `attendances_holiday_id_foreign` (`holiday_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_company_id_foreign` (`company_id`),
  ADD KEY `awards_created_by_foreign` (`created_by`);

--
-- Indexes for table `basic_salaries`
--
ALTER TABLE `basic_salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `basic_salaries_company_id_foreign` (`company_id`),
  ADD KEY `basic_salaries_user_id_foreign` (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_company_id_foreign` (`company_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_company_id_foreign` (`company_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_currency_id_foreign` (`currency_id`),
  ADD KEY `companies_lang_id_foreign` (`lang_id`),
  ADD KEY `companies_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `companies_subscription_plan_id_foreign` (`subscription_plan_id`),
  ADD KEY `companies_stripe_id_index` (`stripe_id`),
  ADD KEY `companies_website_lang_id_foreign` (`website_lang_id`),
  ADD KEY `companies_payment_transcation_id_foreign` (`payment_transcation_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_company_id_foreign` (`company_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_company_id_foreign` (`company_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_company_id_foreign` (`company_id`),
  ADD KEY `departments_created_by_foreign` (`created_by`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_company_id_foreign` (`company_id`),
  ADD KEY `designations_created_by_foreign` (`created_by`);

--
-- Indexes for table `email_queries`
--
ALTER TABLE `email_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`),
  ADD KEY `expenses_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`),
  ADD KEY `expenses_company_id_foreign` (`company_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_categories_company_id_foreign` (`company_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `front_product_cards`
--
ALTER TABLE `front_product_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `front_product_cards_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `front_product_cards_company_id_foreign` (`company_id`);

--
-- Indexes for table `front_website_settings`
--
ALTER TABLE `front_website_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `front_website_settings_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `front_website_settings_company_id_foreign` (`company_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holidays_company_id_foreign` (`company_id`),
  ADD KEY `holidays_created_by_foreign` (`created_by`);

--
-- Indexes for table `increments_promotions`
--
ALTER TABLE `increments_promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `increments_promotions_company_id_foreign` (`company_id`),
  ADD KEY `increments_promotions_user_id_foreign` (`user_id`),
  ADD KEY `increments_promotions_promoted_designation_id_foreign` (`promoted_designation_id`),
  ADD KEY `increments_promotions_current_designation_id_foreign` (`current_designation_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_company_id_foreign` (`company_id`),
  ADD KEY `leaves_user_id_foreign` (`user_id`),
  ADD KEY `leaves_leave_type_id_foreign` (`leave_type_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_types_company_id_foreign` (`company_id`),
  ADD KEY `leave_types_created_by_foreign` (`created_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `offline_payment_modes`
--
ALTER TABLE `offline_payment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_tax_id_foreign` (`tax_id`),
  ADD KEY `orders_staff_user_id_foreign` (`staff_user_id`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_from_warehouse_id_foreign` (`from_warehouse_id`),
  ADD KEY `orders_company_id_foreign` (`company_id`);

--
-- Indexes for table `order_custom_fields`
--
ALTER TABLE `order_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_custom_fields_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_user_id_foreign` (`user_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_unit_id_foreign` (`unit_id`),
  ADD KEY `order_items_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `order_item_taxes`
--
ALTER TABLE `order_item_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_taxes_order_id_foreign` (`order_id`),
  ADD KEY `order_item_taxes_order_item_id_foreign` (`order_item_id`),
  ADD KEY `order_item_taxes_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payments_payment_id_foreign` (`payment_id`),
  ADD KEY `order_payments_order_id_foreign` (`order_id`),
  ADD KEY `order_payments_company_id_foreign` (`company_id`);

--
-- Indexes for table `order_shipping_address`
--
ALTER TABLE `order_shipping_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_shipping_address_order_id_foreign` (`order_id`),
  ADD KEY `order_shipping_address_company_id_foreign` (`company_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `payments_payment_mode_id_foreign` (`payment_mode_id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_staff_user_id_foreign` (`staff_user_id`),
  ADD KEY `payments_company_id_foreign` (`company_id`);

--
-- Indexes for table `payment_modes`
--
ALTER TABLE `payment_modes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_modes_company_id_foreign` (`company_id`);

--
-- Indexes for table `payment_transcations`
--
ALTER TABLE `payment_transcations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_transcations_company_id_foreign` (`company_id`),
  ADD KEY `payment_transcations_subscription_plan_id_foreign` (`subscription_plan_id`),
  ADD KEY `payment_transcations_submitted_by_id_foreign` (`submitted_by_id`),
  ADD KEY `payment_transcations_offline_payment_mode_id_foreign` (`offline_payment_mode_id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payrolls_company_id_foreign` (`company_id`),
  ADD KEY `payrolls_user_id_foreign` (`user_id`),
  ADD KEY `payrolls_created_by_foreign` (`created_by`),
  ADD KEY `payrolls_updated_by_foreign` (`updated_by`),
  ADD KEY `payrolls_payment_mode_id_foreign` (`payment_mode_id`);

--
-- Indexes for table `payroll_components`
--
ALTER TABLE `payroll_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_components_company_id_foreign` (`company_id`),
  ADD KEY `payroll_components_user_id_foreign` (`user_id`),
  ADD KEY `payroll_components_payroll_id_foreign` (`payroll_id`),
  ADD KEY `payroll_components_pre_payment_id_foreign` (`pre_payment_id`),
  ADD KEY `payroll_components_expense_id_foreign` (`expense_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `pre_payments`
--
ALTER TABLE `pre_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pre_payments_company_id_foreign` (`company_id`),
  ADD KEY `pre_payments_user_id_foreign` (`user_id`),
  ADD KEY `pre_payments_payment_mode_id_foreign` (`payment_mode_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_company_id_foreign` (`company_id`),
  ADD KEY `products_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `products_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_custom_fields_product_id_foreign` (`product_id`),
  ADD KEY `product_custom_fields_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_product_id_foreign` (`product_id`),
  ADD KEY `product_details_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `product_details_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`),
  ADD KEY `product_variants_variant_id_foreign` (`variant_id`),
  ADD KEY `product_variants_variant_value_id_foreign` (`variant_value_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_company_id_foreign` (`company_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_company_id_foreign` (`company_id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifts_company_id_foreign` (`company_id`);

--
-- Indexes for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_adjustments_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `stock_adjustments_product_id_foreign` (`product_id`),
  ADD KEY `stock_adjustments_created_by_foreign` (`created_by`),
  ADD KEY `stock_adjustments_company_id_foreign` (`company_id`);

--
-- Indexes for table `stock_history`
--
ALTER TABLE `stock_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_history_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `stock_history_product_id_foreign` (`product_id`),
  ADD KEY `stock_history_created_by_foreign` (`created_by`),
  ADD KEY `stock_history_company_id_foreign` (`company_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_company_id_foreign` (`company_id`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_product`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_company_id_foreign` (`company_id`),
  ADD KEY `taxes_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_parent_id_foreign` (`parent_id`),
  ADD KEY `units_company_id_foreign` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `users_company_id_foreign` (`company_id`),
  ADD KEY `users_created_by_foreign` (`created_by`),
  ADD KEY `users_lang_id_foreign` (`lang_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_designation_id_foreign` (`designation_id`),
  ADD KEY `users_shift_id_foreign` (`shift_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_address_user_id_foreign` (`user_id`),
  ADD KEY `user_address_company_id_foreign` (`company_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_details_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `user_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_warehouse_user_id_foreign` (`user_id`),
  ADD KEY `user_warehouse_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variations_company_id_foreign` (`company_id`),
  ADD KEY `variations_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_company_id_foreign` (`company_id`);

--
-- Indexes for table `warehouse_history`
--
ALTER TABLE `warehouse_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_history_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `warehouse_history_user_id_foreign` (`user_id`),
  ADD KEY `warehouse_history_order_id_foreign` (`order_id`),
  ADD KEY `warehouse_history_order_item_id_foreign` (`order_item_id`),
  ADD KEY `warehouse_history_product_id_foreign` (`product_id`),
  ADD KEY `warehouse_history_payment_id_foreign` (`payment_id`),
  ADD KEY `warehouse_history_expense_id_foreign` (`expense_id`),
  ADD KEY `warehouse_history_staff_user_id_foreign` (`staff_user_id`),
  ADD KEY `warehouse_history_company_id_foreign` (`company_id`);

--
-- Indexes for table `warehouse_stocks`
--
ALTER TABLE `warehouse_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_stocks_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `warehouse_stocks_product_id_foreign` (`product_id`),
  ADD KEY `warehouse_stocks_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appreciations`
--
ALTER TABLE `appreciations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `basic_salaries`
--
ALTER TABLE `basic_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_queries`
--
ALTER TABLE `email_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_product_cards`
--
ALTER TABLE `front_product_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_website_settings`
--
ALTER TABLE `front_website_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `increments_promotions`
--
ALTER TABLE `increments_promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `langs`
--
ALTER TABLE `langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `offline_payment_modes`
--
ALTER TABLE `offline_payment_modes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_custom_fields`
--
ALTER TABLE `order_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_item_taxes`
--
ALTER TABLE `order_item_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_shipping_address`
--
ALTER TABLE `order_shipping_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_modes`
--
ALTER TABLE `payment_modes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_transcations`
--
ALTER TABLE `payment_transcations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_components`
--
ALTER TABLE `payroll_components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `pre_payments`
--
ALTER TABLE `pre_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2036;

--
-- AUTO_INCREMENT for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2031;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock_history`
--
ALTER TABLE `stock_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1914;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `warehouse_history`
--
ALTER TABLE `warehouse_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `warehouse_stocks`
--
ALTER TABLE `warehouse_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appreciations`
--
ALTER TABLE `appreciations`
  ADD CONSTRAINT `appreciations_award_id_foreign` FOREIGN KEY (`award_id`) REFERENCES `awards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appreciations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appreciations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appreciations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_holiday_id_foreign` FOREIGN KEY (`holiday_id`) REFERENCES `holidays` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_leave_id_foreign` FOREIGN KEY (`leave_id`) REFERENCES `leaves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_leave_type_id_foreign` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `basic_salaries`
--
ALTER TABLE `basic_salaries`
  ADD CONSTRAINT `basic_salaries_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `basic_salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `langs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_payment_transcation_id_foreign` FOREIGN KEY (`payment_transcation_id`) REFERENCES `payment_transcations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_subscription_plan_id_foreign` FOREIGN KEY (`subscription_plan_id`) REFERENCES `subscription_plans` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_website_lang_id_foreign` FOREIGN KEY (`website_lang_id`) REFERENCES `langs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `currencies_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD CONSTRAINT `custom_fields_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `designations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `front_product_cards`
--
ALTER TABLE `front_product_cards`
  ADD CONSTRAINT `front_product_cards_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `front_product_cards_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `front_website_settings`
--
ALTER TABLE `front_website_settings`
  ADD CONSTRAINT `front_website_settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `front_website_settings_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holidays_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `holidays_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `increments_promotions`
--
ALTER TABLE `increments_promotions`
  ADD CONSTRAINT `increments_promotions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `increments_promotions_current_designation_id_foreign` FOREIGN KEY (`current_designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `increments_promotions_promoted_designation_id_foreign` FOREIGN KEY (`promoted_designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `increments_promotions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `leaves_leave_type_id_foreign` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD CONSTRAINT `leave_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `leave_types_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_from_warehouse_id_foreign` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_staff_user_id_foreign` FOREIGN KEY (`staff_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_custom_fields`
--
ALTER TABLE `order_custom_fields`
  ADD CONSTRAINT `order_custom_fields_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_item_taxes`
--
ALTER TABLE `order_item_taxes`
  ADD CONSTRAINT `order_item_taxes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_taxes_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_payments_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_shipping_address`
--
ALTER TABLE `order_shipping_address`
  ADD CONSTRAINT `order_shipping_address_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_shipping_address_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_modes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_staff_user_id_foreign` FOREIGN KEY (`staff_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_modes`
--
ALTER TABLE `payment_modes`
  ADD CONSTRAINT `payment_modes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_transcations`
--
ALTER TABLE `payment_transcations`
  ADD CONSTRAINT `payment_transcations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_transcations_offline_payment_mode_id_foreign` FOREIGN KEY (`offline_payment_mode_id`) REFERENCES `offline_payment_modes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_transcations_submitted_by_id_foreign` FOREIGN KEY (`submitted_by_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_transcations_subscription_plan_id_foreign` FOREIGN KEY (`subscription_plan_id`) REFERENCES `subscription_plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD CONSTRAINT `payrolls_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payrolls_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payrolls_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_modes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payrolls_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payrolls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payroll_components`
--
ALTER TABLE `payroll_components`
  ADD CONSTRAINT `payroll_components_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payroll_components_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payroll_components_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payroll_components_pre_payment_id_foreign` FOREIGN KEY (`pre_payment_id`) REFERENCES `pre_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payroll_components_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pre_payments`
--
ALTER TABLE `pre_payments`
  ADD CONSTRAINT `pre_payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pre_payments_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_modes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pre_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  ADD CONSTRAINT `product_custom_fields_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_custom_fields_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_details_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `product_details_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_variants_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `product_variants_variant_value_id_foreign` FOREIGN KEY (`variant_value_id`) REFERENCES `variations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shifts`
--
ALTER TABLE `shifts`
  ADD CONSTRAINT `shifts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD CONSTRAINT `stock_adjustments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_adjustments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_adjustments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_adjustments_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_history`
--
ALTER TABLE `stock_history`
  ADD CONSTRAINT `stock_history_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_history_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_history_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_history_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taxes_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `langs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `units_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `langs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_details_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  ADD CONSTRAINT `user_warehouse_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_warehouse_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `variations`
--
ALTER TABLE `variations`
  ADD CONSTRAINT `variations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `variations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warehouse_history`
--
ALTER TABLE `warehouse_history`
  ADD CONSTRAINT `warehouse_history_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_staff_user_id_foreign` FOREIGN KEY (`staff_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warehouse_stocks`
--
ALTER TABLE `warehouse_stocks`
  ADD CONSTRAINT `warehouse_stocks_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_stocks_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
