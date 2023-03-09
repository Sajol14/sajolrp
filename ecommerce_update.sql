-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 06:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_update`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Flash Sale', 'lorem-ipsum-is', '62866f8264b38.jpg', '<h2><span style=\"font-weight: bold; color: rgb(255, 255, 255);\">Fashion Flat 50% Off</span></h2>', 'active', '2020-08-14 01:47:38', '2022-05-19 10:41:14'),
(2, 'Everyday', 'lorem-ipsum', '62866f8dbbbe4.jpg', '<h3></h3><h2><span style=\"color: rgb(255, 255, 255);\">Low Price For Your Family Kids</span></h2>', 'active', '2020-08-14 01:50:23', '2022-05-19 10:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', 'adidas', 'active', '2020-08-14 04:23:00', '2020-08-14 04:23:00'),
(2, 'Nike', 'nike', 'active', '2020-08-14 04:23:08', '2020-08-14 04:23:08'),
(3, 'Kappa', 'kappa', 'active', '2020-08-14 04:23:48', '2020-08-14 04:23:48'),
(4, 'Prada', 'prada', 'active', '2020-08-14 04:24:08', '2020-08-14 04:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` enum('new','progress','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `order_id`, `user_id`, `price`, `status`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(16, 13, 6, 1, 332.50, 'new', 1, 350.00, '2022-05-23 00:28:21', '2022-05-23 00:29:54'),
(18, 13, 9, 1, 332.50, 'new', 1, 350.00, '2022-05-23 00:59:28', '2022-05-23 03:29:08'),
(19, 12, 9, 1, 264.00, 'new', 2, 600.00, '2022-05-23 03:24:11', '2022-05-23 03:29:08'),
(20, 16, 10, 1, 360.00, 'new', 1, 400.00, '2022-05-23 03:39:05', '2022-05-23 03:40:03'),
(21, 13, 11, 1, 332.50, 'new', 1, 350.00, '2022-05-23 03:40:48', '2022-05-23 03:41:31'),
(22, 12, 12, 1, 264.00, 'new', 1, 300.00, '2022-05-23 03:42:37', '2022-05-23 03:43:35'),
(23, 12, 13, 1, 264.00, 'new', 1, 300.00, '2022-05-23 03:44:07', '2022-05-23 03:44:54'),
(24, 18, 14, 1, 264.00, 'new', 1, 300.00, '2022-05-23 03:48:33', '2022-05-23 03:49:24'),
(25, 17, 15, 1, 350.00, 'new', 1, 500.00, '2022-05-23 03:50:27', '2022-05-23 03:51:08'),
(26, 19, 18, 1, 1097.37, 'new', 1, 1233.00, '2022-06-14 19:44:48', '2022-06-14 19:46:28'),
(27, 18, 19, 1, 264.00, 'new', 1, 300.00, '2022-06-14 19:47:17', '2022-06-14 20:25:48'),
(28, 19, 20, 1, 1097.37, 'new', 1, 1233.00, '2022-06-14 20:30:48', '2022-06-14 20:31:38'),
(29, 19, 21, 1, 1097.37, 'new', 1, 1233.00, '2022-06-14 20:51:48', '2022-06-14 20:57:28'),
(30, 15, 22, 1, 425.00, 'new', 1, 500.00, '2022-06-14 20:57:47', '2022-06-14 20:58:37'),
(31, 15, 23, 1, 425.00, 'new', 1, 500.00, '2022-06-14 20:59:45', '2022-06-14 21:00:43'),
(32, 19, 24, 1, 1097.37, 'new', 1, 1233.00, '2022-06-14 21:01:25', '2022-06-14 21:01:51'),
(33, 19, 25, 1, 1097.37, 'new', 1, 1233.00, '2022-06-14 21:02:21', '2022-06-14 21:02:49'),
(34, 19, 26, 1, 1097.37, 'new', 1, 1233.00, '2022-06-14 21:03:51', '2022-06-14 21:04:55'),
(35, 19, 27, 1, 1097.37, 'new', 1, 1233.00, '2022-06-14 21:11:09', '2022-06-14 21:11:55'),
(36, 20, 28, 1, 5670.00, 'new', 1, 6300.00, '2022-06-16 07:53:32', '2022-06-16 08:37:07'),
(37, 20, 29, 1, 5670.00, 'new', 1, 6300.00, '2022-06-16 08:52:39', '2022-06-16 08:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Short', 'kids', NULL, '6237584bb2fb3.jpg', 1, NULL, NULL, 'active', '2020-08-14 04:27:10', '2022-03-20 10:37:31'),
(4, 'T-shirt\'s & Dress', 't-shirts', NULL, '623757b199dae.jpg', 1, NULL, NULL, 'active', '2020-08-14 04:32:14', '2022-03-20 11:06:47'),
(14, 'Foot Wear', 'foot-wear', '<p>All Size, Brand foot ware here</p>', '62375893153a9.jpg', 1, NULL, NULL, 'active', '2022-03-20 10:38:43', '2022-03-20 10:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `email`, `photo`, `phone`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(4, 'Sabuj', 'aaaa', 'tapuraihansabujp@gmail.com', NULL, '01700550889', 'hihihihihihihihihihihihi', NULL, '2022-05-20 23:02:25', '2022-05-20 23:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('2145a8e3-687d-444a-8873-b3b2fb77a342', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:31:21', '2020-08-15 07:31:21'),
('2230143a-0494-4052-ba78-52e4feebff0e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/10\",\"fas\":\"fa-file-alt\"}', NULL, '2022-05-23 03:40:03', '2022-05-23 03:40:03'),
('3af39f84-cab4-4152-9202-d448435c67de', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 07:54:52', '2020-08-15 07:54:52'),
('41323198-d968-49be-b2c3-b96a288a1989', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/11\",\"fas\":\"fa-file-alt\"}', NULL, '2022-05-23 03:41:31', '2022-05-23 03:41:31'),
('4a0afdb0-71ad-4ce6-bc70-c92ef491a525', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:51', '2020-08-17 21:13:51'),
('540ca3e9-0ff9-4e2e-9db3-6b5abc823422', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2020-08-15 07:30:44', '2020-08-14 07:12:28', '2020-08-15 07:30:44'),
('5cb6d345-82fb-4b13-834a-4c8eae5a50a8', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/12\",\"fas\":\"fa-file-alt\"}', NULL, '2022-05-23 03:43:34', '2022-05-23 03:43:34'),
('5da09dd1-3ffc-43b0-aba2-a4260ba4cc76', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:51:02', '2020-08-15 07:51:02'),
('5e91e603-024e-45c5-b22f-36931fef0d90', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/white-sports-casual-t\",\"fas\":\"fa-star\"}', NULL, '2020-08-15 07:44:07', '2020-08-15 07:44:07'),
('641d495f-cfd0-435e-83d5-a13ac837bf29', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/15\",\"fas\":\"fa-file-alt\"}', NULL, '2022-05-23 03:51:08', '2022-05-23 03:51:08'),
('73a3b51a-416a-4e7d-8ca2-53b216d9ad8e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
('8605db5d-1462-496e-8b5f-8b923d88912c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/1\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-14 07:20:44', '2020-08-14 07:20:44'),
('9134f359-6ad8-45c4-a89c-b2a384714ae2', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/13\",\"fas\":\"fa-file-alt\"}', NULL, '2022-05-23 03:44:54', '2022-05-23 03:44:54'),
('a6ec5643-748c-4128-92e2-9a9f293f53b5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-17 21:17:03', '2020-08-17 21:17:03'),
('b186a883-42f2-4a05-8fc5-f0d3e10309ff', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/2\",\"fas\":\"fa-file-alt\"}', '2020-08-15 04:17:24', '2020-08-14 22:14:55', '2020-08-15 04:17:24'),
('bd51854c-02df-464b-b16d-aa40eb629dad', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/14\",\"fas\":\"fa-file-alt\"}', NULL, '2022-05-23 03:49:24', '2022-05-23 03:49:24'),
('d2fd7c33-b0fe-47d6-8bc6-f377d404080d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:08:50', '2020-08-14 07:08:50'),
('dff78b90-85c8-42ee-a5b1-de8ad0b21be4', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 06:40:54', '2020-08-15 06:40:54'),
('e28b0a73-4819-4016-b915-0e525d4148f5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fa-star\"}', NULL, '2020-08-17 21:08:16', '2020-08-17 21:08:16'),
('ffffa177-c54e-4dfe-ba43-27c466ff1f4b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment_method` enum('cod','paypal','bKash') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `transaction` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','process','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `sub_total`, `shipping_id`, `coupon`, `total_amount`, `quantity`, `payment_method`, `payment_status`, `transaction`, `status`, `first_name`, `last_name`, `email`, `phone`, `country`, `post_code`, `address1`, `address2`, `created_at`, `updated_at`) VALUES
(6, 'ORD-QDFJTPACPV', 1, 350.00, 4, NULL, 650.00, 1, 'cod', 'unpaid', NULL, 'new', 'md', 'sabuj', 'tapuraihansabujp@gmail.com', '01700550889', 'BD', '1234', 'Dhaka', NULL, '2022-05-23 00:29:54', '2022-05-23 00:29:54'),
(7, 'ORD-SGEYF3YODF', 1, 950.00, 3, NULL, 1050.00, 3, 'paypal', 'paid', NULL, 'new', 'md', 'sabuj', 'tapuraihansabujp@gmail.com', '01700550889', 'NP', '1234', 'Dhaka', NULL, '2022-05-23 03:24:54', '2022-05-23 03:24:54'),
(8, 'ORD-O670OKKA4I', 1, 950.00, 3, NULL, 1050.00, 3, 'paypal', 'paid', NULL, 'new', 'md', 'sabuj', 'tapuraihansabujp@gmail.com', '01700550889', 'NP', '1234', 'Dhaka', NULL, '2022-05-23 03:27:31', '2022-05-23 03:27:31'),
(9, 'ORD-XZHYRVVWDF', 1, 950.00, 3, NULL, 1050.00, 3, 'paypal', 'paid', NULL, 'new', 'md', 'sabuj', 'tapuraihansabujp@gmail.com', '01700550889', 'NP', '1234', 'Dhaka', NULL, '2022-05-23 03:29:08', '2022-05-23 03:29:08'),
(10, 'ORD-S0WX0IW3NI', 1, 400.00, NULL, NULL, 400.00, 1, 'paypal', 'paid', NULL, 'new', 'dfasd', 'dfsdf', 'sfsdfas@gmail.com', '348328947238', 'NP', NULL, 'dfdsfasda', NULL, '2022-05-23 03:40:03', '2022-05-23 03:40:03'),
(11, 'ORD-AYAW1BOIV8', 1, 350.00, NULL, NULL, 350.00, 1, 'paypal', 'paid', NULL, 'new', 'fdadfasddfdf', 'dfad', 'tapuraihansabujp@gmail.com', '01700550889', 'NP', '1234', 'Dhaka', NULL, '2022-05-23 03:41:31', '2022-05-23 03:41:31'),
(12, 'ORD-WU778W3KIS', 1, 300.00, 4, NULL, 600.00, 1, 'paypal', 'paid', NULL, 'new', 'md', 'sabuj', 'tapuraihansabujp@gmail.com', '01700550889', 'AX', '1234', 'Dhaka', NULL, '2022-05-23 03:43:34', '2022-05-23 03:43:34'),
(13, 'ORD-KUQIJ0ZNSS', 1, 300.00, 4, NULL, 600.00, 1, 'cod', 'unpaid', NULL, 'new', 'md', 'sabuj', 'tapuraihansabujp@gmail.com', '01700550889', 'NP', '1234', 'Dhaka', NULL, '2022-05-23 03:44:54', '2022-05-23 03:44:54'),
(14, 'ORD-QGLXYZGVBG', 1, 300.00, 3, NULL, 400.00, 1, 'cod', 'unpaid', NULL, 'new', 'dfasd', 'dfad', 'tapuraihansabujp@gmail.com', '01700550889', 'BD', '1234', 'Dhaka', NULL, '2022-05-23 03:49:24', '2022-05-23 03:49:24'),
(15, 'ORD-IKCFOK1GOZ', 1, 500.00, 3, NULL, 600.00, 1, 'paypal', 'paid', NULL, 'new', 'md', 'raihan', 'afsanayasmin65@gmail.com', '01700550889', 'NP', '1234', 'Dhaka', NULL, '2022-05-23 03:51:08', '2022-05-23 03:51:08'),
(17, 'ORD-RM9LIUWSOF', 1, 1233.00, NULL, NULL, 1233.00, 1, 'cod', 'unpaid', NULL, 'new', 'Asher', 'Warner', 'pigynebuve@mailinator.com', '10', 'NP', 'Dicta qui atque omni', '977 South Nobel Drive', 'Nisi porro quia aliq', '2022-06-14 19:46:09', '2022-06-14 19:46:09'),
(18, 'ORD-ESZWP2DBVI', 1, 1233.00, NULL, NULL, 1233.00, 1, 'cod', 'unpaid', NULL, 'new', 'Asher', 'Warner', 'pigynebuve@mailinator.com', '10', 'NP', 'Dicta qui atque omni', '977 South Nobel Drive', 'Nisi porro quia aliq', '2022-06-14 19:46:28', '2022-06-14 19:46:28'),
(19, 'ORD-88FDLX20UF', 1, 300.00, NULL, NULL, 300.00, 1, 'bKash', 'paid', NULL, 'new', 'Leslie', 'Dorsey', 'lyhux@mailinator.com', '45', 'NP', 'Ut corporis nostrud', '167 Hague Boulevard', 'Et sed dolorem ullam', '2022-06-14 20:25:48', '2022-06-14 20:25:48'),
(20, 'ORD-OMTLZTUGPH', 1, 1233.00, NULL, NULL, 1233.00, 1, 'bKash', 'paid', NULL, 'new', 'Shellie', 'Burch', 'wyqe@mailinator.com', '20', 'NP', 'Qui est voluptas es', '82 North Cowley Freeway', 'Labore necessitatibu', '2022-06-14 20:31:38', '2022-06-14 20:31:38'),
(21, 'ORD-J3ADHNPLF8', 1, 1233.00, NULL, NULL, 1233.00, 1, 'cod', 'unpaid', NULL, 'new', 'Regina', 'Irwin', 'malyw@mailinator.com', '12', 'NP', 'Pariatur Aspernatur', '981 Second Court', 'Veritatis harum quae', '2022-06-14 20:57:28', '2022-06-14 20:57:28'),
(22, 'ORD-RRNUXAK7Y3', 1, 500.00, NULL, NULL, 500.00, 1, 'cod', 'unpaid', NULL, 'new', 'Jemima', 'Noble', 'dafesedany@mailinator.com', '88', 'NP', 'Excepteur asperiores', '953 South Fabien Court', 'Consequatur Qui qui', '2022-06-14 20:58:37', '2022-06-14 20:58:37'),
(23, 'ORD-0AHJUF0TTO', 1, 500.00, NULL, NULL, 500.00, 1, 'cod', 'unpaid', NULL, 'new', 'Madaline', 'Pennington', 'keji@mailinator.com', '7', 'NP', 'Unde consequuntur si', '308 Fabien Freeway', 'Non unde pariatur D', '2022-06-14 21:00:43', '2022-06-14 21:00:43'),
(24, 'ORD-M65OK1XMIS', 1, 1233.00, NULL, NULL, 1233.00, 1, 'cod', 'unpaid', NULL, 'new', 'Orli', 'Olsen', 'juwajudyp@mailinator.com', '14', 'NP', 'Fugit distinctio N', '561 East Rocky New Avenue', 'In sed asperiores ra', '2022-06-14 21:01:50', '2022-06-14 21:01:50'),
(25, 'ORD-J4TSY5VYYY', 1, 1233.00, NULL, NULL, 1233.00, 1, 'cod', 'unpaid', NULL, 'new', 'Bo', 'Aguilar', 'lenezyniw@mailinator.com', '72', 'NP', 'Consequuntur numquam', '718 Hague Lane', 'Cumque ad modi ea de', '2022-06-14 21:02:49', '2022-06-14 21:02:49'),
(26, 'ORD-BQE9BIXFGB', 1, 1233.00, NULL, NULL, 1233.00, 1, 'bKash', 'paid', NULL, 'new', 'Tallulah', 'Hebert', 'gofymojyla@mailinator.com', '70', 'NP', 'Dolor sed quis nulla', '23 West Cowley Boulevard', 'Irure quas eos Nam d', '2022-06-14 21:04:55', '2022-06-14 21:04:55'),
(27, 'ORD-ILX6VQVRNA', 1, 1233.00, NULL, NULL, 1233.00, 1, 'bKash', 'paid', NULL, 'new', 'Angelica', 'Morrow', 'tynig@mailinator.com', '79', 'NP', 'Omnis amet exercita', '585 Rocky Milton Boulevard', 'Voluptas quis magni', '2022-06-14 21:11:55', '2022-06-14 21:11:55'),
(28, 'ORD-UA44LP7GCS', 1, 6300.00, NULL, NULL, 6300.00, 1, 'bKash', 'paid', NULL, 'new', 'Sigourney', 'Ramirez', 'hyjogutoga@mailinator.com', '100', 'NP', 'Veritatis dolor qui', '64 East Rocky Cowley Drive', 'Sed non aspernatur a', '2022-06-16 08:37:07', '2022-06-16 08:37:07'),
(29, 'ORD-BAQ1WJRGAY', 1, 6300.00, NULL, NULL, 6300.00, 1, 'bKash', 'paid', NULL, 'new', 'Kellie', 'Greer', 'dudevurem@mailinator.com', '69', 'NP', 'Quos in nihil non ad', '347 Hague Lane', 'Cumque voluptatem ex', '2022-06-16 08:53:29', '2022-06-16 08:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 1,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `condition` enum('default','new','hot') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(12, 'ala home slippers male non-slip summer wear rubber slipper', 'ala-home-slippers-male-non-slip-summer-wear-rubber-slipper', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.3554SAAsSAAsUw\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">৪০ মানে ৫ / ৫ মানে ৪০</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: 5,6,7,8</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">LONG:</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">5= 24.5/25cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">6= 25/26cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">7= 26/27cm</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.3554SAAsSAAsUw\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">8= 27/28cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">1Pair</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Price SALE by Per 1Pair</li><li></li></ul></div>', '<ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.3554SAAsSAAsUw\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">215362496_BD-1163910538</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Style</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Basic</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Shoes Closure Type</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Not Specified</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Rubber</div></li></ul>', '62375b0116e02.png', 100, '', 'hot', 'active', 300.00, 12.00, 1, 14, NULL, 1, '2022-03-20 10:49:05', '2022-03-20 10:49:05'),
(13, 'Colorful Slipper Sandals For men', 'colorful-slipper-sandals-for-men', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">casual use sandal</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Ragular use</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Comfortable to wear</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.6673wKZNwKZNIA\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fully authentic</li></ul>', '<ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.6673wKZNwKZNIA\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.6673wKZNwKZNIA\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">193294606_BD-1140026063</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Style</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Casual</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Shoes Closure Type</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Slip-on &amp; Pull-on</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Leather,Rubber</div></li></ul>', '62375bb7068df.png', 100, '', 'new', 'active', 350.00, 5.00, 1, 14, NULL, 2, '2022-03-20 10:52:09', '2022-03-20 10:52:09'),
(14, 'Rubber Sandal for Men', 'rubber-sandal-for-men', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Sandal</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Rubber</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.16431ZmT1ZmTYR\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li></ul>', '<ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\"><li class=\"key-li\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.16431ZmT1ZmTYR\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">176524354_BD-1116328049</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Rubber</div></li></ul>', '62375c6e499f5.jpg', 100, '', 'new', 'active', 500.00, 33.00, 1, 14, NULL, 1, '2022-03-20 10:55:10', '2022-03-20 10:55:10'),
(15, 'Black Color Trendy Short Pant for Men', 'black-color-trendy-short-pant-for-men', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand : GoodMan</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Mens Short Pant.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Summer Collection</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabric:Cotton,Terry fabric.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style: Casual</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.57f4R4MVR4MVeg\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Type: Elastic Waist Belt Short Pant.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Production Country: Bangladesh</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">100% Export Quality.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Black (As Given Picture)</li></ul>', '<div data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.57f4R4MVR4MVeg\" style=\"margin: 0px; padding: 0px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">Jeans Pant is an item of men\'s underwear. Men look very gorgeous in colorful Pant, and so they love to wear and have luxurious and colorful pant for different social and cultural functions.</div><div style=\"margin: 0px; padding: 0px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><br style=\"margin: 0px; padding: 0px;\"></div><div style=\"margin: 0px; padding: 0px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">The seller, Quality Shopping, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Daraz. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent for achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty.</div>', '62375d662f378.png', 300, 'S,M,L,XL', 'hot', 'active', 500.00, 15.00, 1, 3, NULL, 4, '2022-03-20 10:59:20', '2022-03-20 10:59:20'),
(16, 'Color Short Pant for Men', 'color-short-pant-for-men', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.6419FVNmFVNmOE\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand : GoodMan</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Mens Short Pant.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Summer Collection</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabric:Cotton,Terry fabric.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style: Casual</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Type: Elastic Waist Belt Short Pant.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Production Country: Bangladesh</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">100% Export Quality.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Black (As Given Picture)</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.6419FVNmFVNmOE\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: 30,32,34,36</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">30 :Waist =30\", Long =20\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">32 :Waist =32\", Long =21\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">34 :Waist =34\", Long =22\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">36 :Waist =36\", Long =23\"</li></ul>', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">Welcome to visit our Shop.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space: pre-wrap;\"><span data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.6419FVNmFVNmOE\" style=\"margin: 0px; padding: 0px;\">Cargo shorts are an essential part of a man’s summer wardrobe and this should be enshrinedin the constitution. Cargo shorts are appropriate for all summer occasion.Our products are very comfortable to use.Please choose a right size while placing an order. </span></p>', '62375dc3eb959.png', 500, 'S,M,L,XL', 'hot', 'active', 400.00, 10.00, 1, 3, NULL, 4, '2022-03-20 11:00:54', '2022-03-20 11:00:54'),
(17, 'Summer Cotton Com fort Tshirt Halfsleeve', 'summer-cotton-com-fort-tshirt-halfsleeve', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: T-Shirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Yellow/Navy</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style: Casual</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.3f2cKWwkKWwkgg\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li></ul>', '<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">LEEBAS Clothing</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">104316287_BD-1127798172</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Cotton</div></li></ul></div><div class=\"box-content\" style=\"margin: 28px 0px 0px; padding: 0px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px;\"><span class=\"key-title\" style=\"margin: 0px; padding: 0px; display: table-cell; width: 140px; color: rgb(117, 117, 117); word-break: break-word;\">What’s in the box</span><div class=\"html-content box-content-html\" style=\"margin: 0px; padding: 0px 0px 0px 18px; word-break: break-word; display: table-cell;\">1 X Summer Cotton Comfort Tshirt Halfsleeve</div></div>', '62375e62aa169.png', 100, 'S,M,L,XL', 'new', 'active', 500.00, 30.00, 1, 4, NULL, 3, '2022-03-20 11:03:32', '2022-03-20 11:03:32'),
(18, 'Half Sleeve Premium Polo Tshirt Cotton fabrics', 'half-sleeve-premium-polo-tshirt-cotton-fabrics', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.4cd4aCl1aCl1io\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabric: 100% Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: As per Image</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: M,L,XL,XXL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size measurement Guide :</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.4cd4aCl1aCl1io\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">[ M - Length 27\" - Chest 38\" ]</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">[ L - Length 28\" - Chest 40\" ]</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.4cd4aCl1aCl1io\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">[ XL - Length 29\" - Chest 42\" ]</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">[ XXL - Length 30\" - Chest 44\" ]</li><li></li></ul></div>', '<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.4cd4aCl1aCl1io\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">LEEBAS Clothing</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">173532856_BD-1110098918</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Cotton</div></li></ul></div><div class=\"box-content\" style=\"margin: 28px 0px 0px; padding: 0px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px;\"><span class=\"key-title\" style=\"margin: 0px; padding: 0px; display: table-cell; width: 140px; color: rgb(117, 117, 117); word-break: break-word;\">What’s in the box</span><div class=\"html-content box-content-html\" style=\"margin: 0px; padding: 0px 0px 0px 18px; word-break: break-word; display: table-cell;\">1 X Half Sleeve Premium Polo Tshirt Cotton</div></div>', '62375e9ede0e5.png', 100, 'S,M,L,XL', 'hot', 'active', 300.00, 12.00, 1, 4, NULL, NULL, '2022-03-20 11:04:32', '2022-03-20 11:04:32'),
(19, 'Baby girls Black and white stype fashionable beautiful baby dress for 1,2,3,4,5 years babies umbreaala cut', 'baby-girls-black-and-white-stype-fashionable-beautiful-baby-dress-for-12345-years-babies-umbreaala-cut', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.7ca0jdSWjdSWtg\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">A handmade Product</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: baby girls party dress</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: 100 %Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Girls</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: 1-5 Years</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Soft Fabrics well suited for Girls</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Extremely Soft and comfortable.</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.7ca0jdSWjdSWtg\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Very Comfortable</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Attractive check prints</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><span style=\"margin: 0px; padding: 0px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"></span></div>', NULL, '62375f1789758.jpg', 11, 'S,M', 'new', 'active', 1233.00, 11.00, 1, 4, NULL, NULL, '2022-03-20 11:06:31', '2022-03-20 11:06:31'),
(20, 'Party dress for ,Weeding and birthday dress for 1-12 years baby', 'party-dress-for-weeding-and-birthday-dress-for-1-12-years-baby', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">পণ্যের ধরন: মেয়েদের&nbsp;ফ্রক</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">রঙ:&nbsp;যেমন&nbsp;ছবিতে দেখানো হয়েছে</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">ফ্যাব্রিক:&nbsp;ভারতীয়&nbsp;উচ্চমানের&nbsp;সিল্ক&nbsp;এবং&nbsp;নেট</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">প্রধান&nbsp;উপকরণ: লিলেন</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">লিঙ্গ:গার্লস</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">হাতা:&nbsp;হাতাবিহীন</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.1266TYGcTYGcfi\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">ঋতু:&nbsp;গ্রীষ্ম</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">উপলক্ষ:&nbsp;সমস্ত&nbsp;উপলক্ষের জন্য উপযুক্ত।</li></ul>', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">এই বেবী ড্রেসটি সম্পূর্ণ আমাদের নিজেদের হাতে তৈরী । ১০০ % ইন্ডিয়ান হাই কুয়ালিটি silkকাপড় দিয়ে অত্যন্ত যত্ন সহকারে আপনার সোনামণির জন্য তৈরী করা হয়েছে । আমাদের দেশের আবহাওয়ার কথা মাথায় রেখেই আমরা এই আরামদায়ক ড্রেসটি তৈরী করেছি । ছবির সাথে পোশাকটির কোন পার্থক্য নেই বরং ছবির থেকে বাস্তবে আরো গর্জিয়াস । এর কালার কোনভাবেই নষ্ট বা ঝলসে যাবে না ।</span></p><div><span style=\"margin: 0px; padding: 0px;\"><br></span></div>', '62375f6244583.jpg', 100, 'S,M', 'hot', 'active', 6300.00, 10.00, 1, 4, NULL, NULL, '2022-03-20 11:07:46', '2022-03-20 11:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` tinyint(4) NOT NULL DEFAULT 0,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rate`, `review`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 20, 5, 'good', 'active', '2022-05-20 22:56:26', '2022-05-20 22:56:26'),
(4, 1, 18, 5, 'good', 'active', '2022-05-22 23:48:34', '2022-05-22 23:48:34'),
(5, 1, 18, 5, 'good', 'active', '2022-05-22 23:50:17', '2022-05-22 23:50:17'),
(6, 1, 18, 5, 'good', 'active', '2022-05-22 23:51:09', '2022-05-22 23:51:09'),
(7, 1, 18, 5, 'good', 'active', '2022-05-22 23:57:12', '2022-05-22 23:57:12'),
(8, 1, 12, 5, 'sdghj', 'active', '2022-05-23 00:00:53', '2022-05-23 00:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'The world of fashion is taking a new generation by storm. And this generation is young, small and tender. Kids fashion is becoming big, getting all the attention from designers, companies and well yes the parents. And expectedly the trend first started in Hollywood.', 'The world of fashion is taking a new generation by storm. And this generation is young, small and tender. Kids fashion is becoming big, getting all the attention from designers, companies and well yes the parents. And expectedly the trend first started in Hollywood.', 'logo-62376f184f32b.png', 'photo-622e266294798.png', 'Rupnagar, Mirpur-2', '01700550889', 'kidesfs@gmail.com', NULL, '2022-05-20 22:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Dhaka', '100.00', 'active', '2020-08-15 06:54:04', '2022-05-23 00:13:40'),
(4, 'Out of Dhaka', '300.00', 'active', '2020-08-17 20:50:48', '2022-05-23 00:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sabuj', 'admin@gmail.com', NULL, '$2y$10$NtjvYZvUF22VeJW0g4L3Z.FgBbVT0zTlYGZSOok882UJ7gpI3N43.', 'photo-628b2909e438e.jpg', 'admin', NULL, NULL, 'active', 'B5II1zCvhstMpa2LOfhBJIpoHdusitdEdWqvK1FJ31t5Vmb6GpMbz4Eqtpi2', NULL, '2022-05-23 00:26:17'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$10jB2lupSfvAUfocjguzSeN95LkwgZJUM7aQBdb2Op7XzJ.BhNoHq', NULL, 'user', NULL, NULL, 'active', NULL, NULL, '2020-08-15 07:30:07'),
(31, 'RAIHAN', 'tapuraihansabujp@gmail.com', NULL, '$2y$10$1D8C3HWa.3qqOQnqZk12HuS4bcCXxxOKz6mc0SDvghlJkp9l/Rj1i', NULL, 'user', NULL, NULL, 'active', NULL, '2022-05-23 00:07:28', '2022-05-23 00:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
