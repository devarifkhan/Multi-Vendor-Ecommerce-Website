-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 04:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_title` varchar(255) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name` varchar(255) NOT NULL,
  `blog_category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_short_description` text NOT NULL,
  `post_long_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_07_172822_create_brands_table', 1),
(6, '2023_05_08_133755_create_categories_table', 1),
(7, '2023_05_08_135235_create_sub_categories_table', 1),
(8, '2023_05_08_143139_create_products_table', 1),
(9, '2023_05_08_143158_create_multi_imgs_table', 1),
(10, '2023_05_08_154530_create_sliders_table', 1),
(11, '2023_05_08_155624_create_banners_table', 1),
(12, '2023_05_09_125159_create_wishlists_table', 1),
(13, '2023_05_09_130658_create_compares_table', 1),
(14, '2023_05_09_133322_create_coupons_table', 1),
(15, '2023_05_09_143959_create_ship_districts_table', 1),
(16, '2023_05_09_144020_create_ship_states_table', 1),
(17, '2023_05_09_144530_create_ship_divisions_table', 1),
(18, '2023_05_10_115239_create_orders_table', 1),
(19, '2023_05_10_115326_create_order_items_table', 1),
(20, '2023_05_11_060741_create_blog_categories_table', 1),
(21, '2023_05_11_060807_create_blog_posts_table', 1),
(22, '2023_05_11_063215_create_reviews_table', 1),
(23, '2023_05_11_070009_create_site_settings_table', 1),
(24, '2023_05_11_070744_create_seos_table', 1),
(25, '2023_05_11_115110_create_permission_tables', 1),
(26, '2023_05_11_123139_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_month` varchar(255) NOT NULL,
  `order_year` varchar(255) NOT NULL,
  `confirmed_date` varchar(255) DEFAULT NULL,
  `processing_date` varchar(255) DEFAULT NULL,
  `picked_date` varchar(255) DEFAULT NULL,
  `shipped_date` varchar(255) DEFAULT NULL,
  `delivered_date` varchar(255) DEFAULT NULL,
  `cancel_date` varchar(255) DEFAULT NULL,
  `return_date` varchar(255) DEFAULT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `qty` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin.User.Menu', 'web', 'admin', '2023-05-16 11:42:30', '2023-05-16 11:59:42'),
(2, 'Ads.Menu', 'web', 'ads', '2023-05-16 11:57:29', '2023-05-16 11:57:29'),
(3, 'Ads.List', 'web', 'ads', '2023-05-16 11:57:55', '2023-05-16 11:57:55'),
(4, 'Ads.Add', 'web', 'ads', '2023-05-16 11:58:11', '2023-05-16 11:58:25'),
(5, 'Ads.Edit', 'web', 'ads', '2023-05-16 11:58:40', '2023-05-16 11:58:40'),
(6, 'Ads.Delete', 'web', 'ads', '2023-05-16 11:58:56', '2023-05-16 11:58:56'),
(7, 'Area.Menu', 'web', 'area', '2023-05-16 12:00:04', '2023-05-16 12:00:04'),
(8, 'Blog.Menu', 'web', 'blog', '2023-05-16 12:00:31', '2023-05-16 12:00:31'),
(9, 'Brand.Menu', 'web', 'brand', '2023-05-16 12:00:50', '2023-05-16 12:00:50'),
(10, 'Brand.List', 'web', 'brand', '2023-05-16 12:01:26', '2023-05-16 12:01:26'),
(11, 'Brand.Add', 'web', 'brand', '2023-05-16 12:01:42', '2023-05-16 12:01:42'),
(12, 'Brand.Edit', 'web', 'brand', '2023-05-16 12:01:54', '2023-05-16 12:01:54'),
(13, 'Brand.Delete', 'web', 'brand', '2023-05-16 12:02:12', '2023-05-16 12:02:12'),
(14, 'Cat.Menu', 'web', 'category', '2023-05-16 12:02:34', '2023-05-16 12:02:34'),
(15, 'Category.List', 'web', 'category', '2023-05-16 12:02:54', '2023-05-16 12:02:54'),
(16, 'Category.Add', 'web', 'category', '2023-05-16 12:03:07', '2023-05-16 12:03:07'),
(17, 'Category.Edit', 'web', 'category', '2023-05-16 12:03:23', '2023-05-16 12:03:23'),
(18, 'Category.Delete', 'web', 'category', '2023-05-16 12:03:34', '2023-05-16 12:03:34'),
(19, 'Coupon.Menu', 'web', 'coupon', '2023-05-16 12:03:50', '2023-05-16 12:03:50'),
(20, 'Coupon.List', 'web', 'coupon', '2023-05-16 12:04:01', '2023-05-16 12:04:01'),
(21, 'Coupon.Add', 'web', 'coupon', '2023-05-16 12:04:16', '2023-05-16 12:04:16'),
(22, 'Coupon.Edit', 'web', 'coupon', '2023-05-16 12:04:36', '2023-05-16 12:04:36'),
(23, 'Coupon.Delete', 'web', 'coupon', '2023-05-16 12:04:52', '2023-05-16 12:04:52'),
(24, 'Order.Menu', 'web', 'order', '2023-05-16 12:06:14', '2023-05-16 12:06:14'),
(25, 'Order.List', 'web', 'order', '2023-05-16 12:06:32', '2023-05-16 12:06:32'),
(26, 'Product.Menu', 'web', 'product', '2023-05-16 12:06:49', '2023-05-16 12:06:49'),
(27, 'Product.List', 'web', 'product', '2023-05-16 12:07:06', '2023-05-16 12:07:06'),
(28, 'Product.Add', 'web', 'product', '2023-05-16 12:07:17', '2023-05-16 12:07:17'),
(29, 'Product.Edit', 'web', 'product', '2023-05-16 12:07:28', '2023-05-16 12:07:28'),
(30, 'Product.Delete', 'web', 'product', '2023-05-16 12:07:51', '2023-05-16 12:07:51'),
(31, 'Report.Menu', 'web', 'report', '2023-05-16 12:08:05', '2023-05-16 12:08:05'),
(32, 'Return.Order.Menu', 'web', 'return', '2023-05-16 12:08:25', '2023-05-16 12:08:25'),
(33, 'Review.Menu', 'web', 'review', '2023-05-16 12:08:40', '2023-05-16 12:08:40'),
(34, 'Role.Permission.Menu', 'web', 'role', '2023-05-16 12:09:02', '2023-05-16 12:09:02'),
(35, 'Site.Menu', 'web', 'setting', '2023-05-16 12:09:21', '2023-05-16 12:09:21'),
(36, 'Slider.Menu', 'web', 'slider', '2023-05-16 12:09:41', '2023-05-16 12:09:41'),
(37, 'Slider.List', 'web', 'slider', '2023-05-16 12:09:58', '2023-05-16 12:09:58'),
(38, 'Slider.Add', 'web', 'slider', '2023-05-16 12:10:11', '2023-05-16 12:10:11'),
(39, 'Slider.Edit', 'web', 'slider', '2023-05-16 12:10:21', '2023-05-16 12:10:21'),
(40, 'Slider.Delete', 'web', 'slider', '2023-05-16 12:10:34', '2023-05-16 12:10:34'),
(41, 'Stock.Menu', 'web', 'stock', '2023-05-16 12:10:54', '2023-05-16 12:10:54'),
(42, 'Subcategory.Menu', 'web', 'subcategory', '2023-05-16 12:11:14', '2023-05-16 12:11:14'),
(43, 'Subcategory.List', 'web', 'subcategory', '2023-05-16 12:11:27', '2023-05-16 12:11:27'),
(44, 'Subcategory.Add', 'web', 'subcategory', '2023-05-16 12:11:40', '2023-05-16 12:11:40'),
(45, 'Subcategory.Edit', 'web', 'subcategory', '2023-05-16 12:11:58', '2023-05-16 12:11:58'),
(46, 'Subcategory.Delete', 'web', 'subcategory', '2023-05-16 12:12:12', '2023-05-16 12:12:12'),
(47, 'User.Management.Menu', 'web', 'user', '2023-05-16 12:13:17', '2023-05-16 12:13:17'),
(48, 'Vendor.Menu', 'web', 'vendor', '2023-05-16 12:13:37', '2023-05-16 12:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_tags` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) NOT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `short_descp` text NOT NULL,
  `long_descp` text NOT NULL,
  `product_thambnail` varchar(255) NOT NULL,
  `vendor_id` varchar(255) DEFAULT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `vendor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'web', '2023-05-16 11:48:22', '2023-05-16 11:48:22'),
(4, 'Vendor', 'web', '2023-05-16 11:48:36', '2023-05-16 11:48:36'),
(5, 'User', 'web', '2023-05-16 11:48:46', '2023-05-16 11:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','vendor','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `last_seen` date NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `last_seen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md Ariful Islam', 'admin', 'admin@gmail.com', NULL, '$2y$10$yxsaJXC3qTFd0Y3zSmyXse5bmDru9GvFj6ZdxV2XUmyezpZJxzOMS', NULL, '+8801764297928', 'Khilkhet', 'admin', 'active', '2023-05-16', NULL, NULL, '2023-05-16 12:23:16'),
(2, 'vendor', 'vendor', 'vendor@example.com', NULL, '$2y$10$0Mo/u4sxkkGnkgEopbOOFOaLUIashZRwii.bfnwi3KHIgBYplxJz.', NULL, NULL, NULL, 'vendor', 'active', '2023-05-16', NULL, NULL, NULL),
(3, 'user', 'user', 'user@example.com', NULL, '$2y$10$yyYJdcCoukNkXqcIdxaZmeL.btYy30Zfa2nnPVGbRdXY5k4BlYCzu', NULL, NULL, NULL, 'user', 'active', '2023-05-16', NULL, NULL, NULL),
(5, 'Rosalinda Torp', NULL, 'vincent.lakin@example.com', '2023-05-16 10:36:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0099ee?text=amet', '(870) 838-0830', '18844 Brianne Crossing\nWestleymouth, FL 89021', 'user', 'inactive', '2023-05-16', '6oP0v6bOX8', '2023-05-16 10:36:33', '2023-05-16 10:36:33'),
(7, 'Mrs. Rosa Wiza MD', NULL, 'rico.homenick@example.com', '2023-05-16 10:36:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/004400?text=laudantium', '+1 (615) 285-2923', '2356 Balistreri Harbors\nNorth Izaiah, NM 83912', 'vendor', 'active', '2023-05-16', 'CC7bnSlrla', '2023-05-16 10:36:33', '2023-05-16 10:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
