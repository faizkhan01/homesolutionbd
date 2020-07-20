-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 11:10 AM
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
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Vegitable And Grocery', 'public/Category_image/2020/n2Z8c-101646-0x5.jpg', 1, '2019-07-28 00:50:57', '2020-02-05 16:16:53'),
(4, 'Interior', 'public/Category_image/2020/mZS6L-101801-gbJ.jpg', 1, '2019-07-28 00:51:04', '2020-02-05 16:20:06'),
(5, 'Home Item', 'public/Category_image/2020/2eB5l-101949-veZ.jpg', 1, '2019-07-28 00:51:10', '2020-02-05 16:27:40'),
(6, 'Washing', 'public/Category_image/2020/qimzD-102000-wiW.jpg', 1, '2020-02-05 16:15:06', '2020-02-09 05:09:43'),
(7, 'Iron', 'public/Category_image/2020/ILE5G-110937-IYg.jpg', 1, '2020-02-09 05:09:37', '2020-02-09 05:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_19_133737_create_categories_table', 2),
(4, '2019_07_19_135351_create_adapt_posts_table', 3),
(5, '2019_07_22_033740_create_volunteers_table', 4),
(6, '2019_07_22_050244_create_contacts_table', 4),
(7, '2019_07_22_065521_create_request_controllers_table', 5),
(8, '2019_07_22_070503_create_request_posts_table', 6),
(9, '2019_07_28_065352_create_cricketers_table', 7),
(10, '2019_07_31_091549_create_products_table', 8),
(11, '2019_09_25_103611_create_shippings_table', 9),
(12, '2019_09_25_110415_create_payments_table', 10),
(13, '2019_09_25_110432_create_order_details_table', 10),
(14, '2019_09_25_110501_create_orders_table', 10),
(15, '2019_02_24_193233_create_verify_tokens_table', 11),
(16, '2019_02_25_080504_create_singups_table', 11),
(17, '2020_07_15_162642_create_reviews_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `order_qty` int(11) DEFAULT NULL,
  `order_total` double(10,2) DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `customer_id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `shipping_id`, `order_qty`, `order_total`, `user_id`, `order_status`, `transaction_id`, `currency`, `created_at`, `updated_at`) VALUES
(55, '2020-02-18', 6, NULL, NULL, NULL, NULL, NULL, NULL, 55, 1, 30.00, '6', 'Pending', '5e4b867844b35', 'BDT', '2020-02-18 06:38:48', '2020-02-18 06:38:48'),
(56, '2020-02-18', 6, NULL, NULL, NULL, NULL, NULL, NULL, 56, 1, 30.00, '6', 'Pending', '5e4b87a0763ad', 'BDT', '2020-02-18 06:43:44', '2020-02-18 06:43:44'),
(57, '2020-02-18', 6, NULL, NULL, NULL, NULL, NULL, 'Pending', 57, 1, 30.00, '6', 'Pending', '5e4b888fd49a3', 'BDT', '2020-02-18 06:47:43', '2020-02-18 06:47:43'),
(58, '2020-02-18', 6, NULL, NULL, NULL, NULL, NULL, 'Pending', 58, 1, 30.00, '6', 'Pending', '5e4b8a78e8cd3', 'BDT', '2020-02-18 06:55:52', '2020-02-18 06:55:52'),
(59, '2020-02-19', 7, NULL, NULL, NULL, NULL, NULL, 'Pending', 59, 1, 30.00, '6', 'Pending', '5e4cd9671bbe1', 'BDT', '2020-02-19 06:44:55', '2020-02-19 06:44:55'),
(60, '2020-02-19', 6, NULL, NULL, NULL, NULL, NULL, 'Pending', 60, 1, 30.00, '6', 'Pending', '5e4cda823f233', 'BDT', '2020-02-19 06:49:38', '2020-02-19 06:49:38'),
(61, '2020-02-19', 6, NULL, NULL, NULL, NULL, NULL, 'Pending', 61, 1, 30.00, '6', 'Pending', '5e4cdb3e3d0db', 'BDT', '2020-02-19 06:52:46', '2020-02-19 06:52:46'),
(62, '2020-02-19', 6, NULL, NULL, NULL, NULL, NULL, 'Pending', 62, 2, 60.00, '6', 'Pending', '5e4cdea077a59', 'BDT', '2020-02-19 07:07:12', '2020-02-19 07:07:12'),
(63, '2020-02-19', 6, NULL, NULL, NULL, NULL, NULL, 'Pending', 63, 1, 100.00, '2', 'Pending', '5e4d2e8ee4544', 'BDT', '2020-02-19 12:48:14', '2020-02-19 12:48:14'),
(64, '2020-02-19', 7, NULL, NULL, NULL, NULL, NULL, 'Pending', 64, 1, 30.00, '6', 'Pending', '5e4d315e45f90', 'BDT', '2020-02-19 13:00:14', '2020-02-19 13:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `order_status` tinyint(12) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `user_id`, `customer_id`, `product_name`, `product_url`, `product_price`, `product_quantity`, `order_status`, `created_at`, `updated_at`) VALUES
(37, 37, 15, '6', '6', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 1, 0, '2020-02-16 14:37:28', '2020-02-16 14:37:28'),
(38, 39, 15, '6', '6', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 1, 0, '2020-02-16 18:04:34', '2020-02-16 18:04:34'),
(39, 40, 15, '6', '6', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 1, 0, '2020-02-16 18:29:18', '2020-02-16 18:29:18'),
(40, 56, 15, '6', '6', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 1, 1, '2020-02-18 06:43:44', '2020-02-19 13:46:56'),
(41, 57, 15, '6', '6', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 1, 1, '2020-02-18 06:47:43', '2020-02-19 13:47:02'),
(42, 58, 15, '6', '6', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 1, 0, '2020-02-18 06:55:52', '2020-02-18 06:55:52'),
(43, 59, 15, '6', '7', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 1, 0, '2020-02-19 06:44:55', '2020-02-19 06:44:55'),
(44, 60, 15, '6', '6', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 1, 0, '2020-02-19 06:49:38', '2020-02-19 06:49:38'),
(45, 61, 15, '6', '6', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 1, 0, '2020-02-19 06:52:46', '2020-02-19 06:52:46'),
(46, 62, 15, '6', '6', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 2, 0, '2020-02-19 07:07:12', '2020-02-19 07:07:12'),
(47, 63, 16, '2', '6', 'Onion', 'public/Product_image/2020/4NrWm-104948-qd0.jpg', 100.00, 1, 0, '2020-02-19 12:48:15', '2020-02-19 12:48:15'),
(48, 64, 15, '6', '7', 'Shirt Washing', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', 30.00, 1, 1, '2020-02-19 13:00:14', '2020-02-19 13:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('monsurahmedshafiq@gmail.com', '$2y$10$FtSYux0rCqIaoGPqOf8N4.m1sIJWTV4DsEVD7gqg5W4987lTq3pXW', '2019-09-10 13:48:11'),
('monsurahmedshafiq@gmail.com', '$2y$10$FtSYux0rCqIaoGPqOf8N4.m1sIJWTV4DsEVD7gqg5W4987lTq3pXW', '2019-09-10 13:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(9, 9, 'Cash', 'Pending', '2019-09-28 15:31:06', '2019-09-28 15:31:06'),
(10, 10, 'Cash', 'Pending', '2019-09-28 16:46:19', '2019-09-28 16:46:19'),
(11, 10, 'Cash', 'Pending', '2019-10-17 03:55:49', '2019-10-17 03:55:49'),
(12, 11, 'Cash', 'Pending', '2019-10-17 04:00:50', '2019-10-17 04:00:50'),
(13, 12, 'Cash', 'Pending', '2019-10-17 04:18:14', '2019-10-17 04:18:14'),
(14, 13, 'Cash', 'Pending', '2019-10-17 04:22:17', '2019-10-17 04:22:17'),
(15, 14, 'Cash', 'Pending', '2019-10-17 15:00:37', '2019-10-17 15:00:37'),
(16, 15, 'Cash', 'Pending', '2019-10-19 13:16:31', '2019-10-19 13:16:31'),
(17, 16, 'Cash', 'Pending', '2019-10-19 16:09:19', '2019-10-19 16:09:19'),
(18, 17, 'Cash', 'Pending', '2019-10-19 16:35:23', '2019-10-19 16:35:23'),
(19, 18, 'Cash', 'Pending', '2019-10-20 04:33:25', '2019-10-20 04:33:25'),
(20, 19, 'Cash', 'Pending', '2019-10-20 12:25:30', '2019-10-20 12:25:30'),
(21, 20, 'Cash', 'Pending', '2019-11-08 14:55:56', '2019-11-08 14:55:56'),
(22, 21, 'Cash', 'Pending', '2019-11-12 13:43:54', '2019-11-12 13:43:54'),
(23, 22, 'Cash', 'Pending', '2019-11-12 13:45:07', '2019-11-12 13:45:07'),
(24, 23, 'Roket', 'Pending', '2019-11-12 15:33:12', '2019-11-12 15:33:12'),
(25, 24, 'Bkash', 'Pending', '2019-11-12 16:06:30', '2019-11-12 16:06:30'),
(26, 25, 'Bkash', 'Pending', '2019-11-18 06:09:57', '2019-11-18 06:09:57'),
(27, 26, 'Roket', 'Pending', '2019-11-18 06:12:34', '2019-11-18 06:12:34'),
(28, 27, 'Bkash', 'Pending', '2019-11-18 06:25:48', '2019-11-18 06:25:48'),
(29, 28, 'Bkash', 'Pending', '2019-11-18 06:35:49', '2019-11-18 06:35:49'),
(30, 29, 'Bkash', 'Pending', '2019-11-18 06:39:17', '2019-11-18 06:39:17'),
(31, 30, 'Bkash', 'Pending', '2019-11-18 06:40:58', '2019-11-18 06:40:58'),
(32, 31, 'Bkash', 'Pending', '2019-11-18 06:48:26', '2019-11-18 06:48:26'),
(33, 32, 'Roket', 'Pending', '2019-11-18 14:32:03', '2019-11-18 14:32:03'),
(34, 33, 'Bkash', 'Pending', '2019-11-18 14:49:07', '2019-11-18 14:49:07'),
(35, 36, 'SSL', 'Pending', '2020-02-16 14:14:31', '2020-02-16 14:14:31'),
(36, 37, 'SSL', 'Pending', '2020-02-16 14:37:28', '2020-02-16 14:37:28'),
(37, 39, 'SSL', 'Pending', '2020-02-16 18:04:34', '2020-02-16 18:04:34'),
(38, 40, 'SSL', 'Pending', '2020-02-16 18:29:18', '2020-02-16 18:29:18'),
(39, 56, 'SSL', 'Pending', '2020-02-18 06:43:44', '2020-02-18 06:43:44'),
(40, 57, 'SSL', 'Pending', '2020-02-18 06:47:43', '2020-02-18 06:47:43'),
(41, 58, 'SSL', 'Pending', '2020-02-18 06:55:52', '2020-02-18 06:55:52'),
(42, 59, 'SSL', 'Pending', '2020-02-19 06:44:55', '2020-02-19 06:44:55'),
(43, 60, 'SSL', 'Pending', '2020-02-19 06:49:38', '2020-02-19 06:49:38'),
(44, 61, 'SSL', 'Pending', '2020-02-19 06:52:46', '2020-02-19 06:52:46'),
(45, 62, 'SSL', 'Pending', '2020-02-19 07:07:12', '2020-02-19 07:07:12'),
(46, 63, 'SSL', 'Pending', '2020-02-19 12:48:15', '2020-02-19 12:48:15'),
(47, 64, 'SSL', 'Pending', '2020-02-19 13:00:14', '2020-02-19 13:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productuniq_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Name`, `productuniq_id`, `image`, `category`, `description`, `Price`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(15, 'Shirt Washing', '76454242', 'public/Product_image/2020/5U9ed-110139-uhZ.jpg', '6', 'Shirt washing with Iron.', '30', 6, '1', '2020-02-09 17:01:39', '2020-02-10 16:45:46'),
(16, 'Onion', '1636261368', 'public/Product_image/2020/4NrWm-104948-qd0.jpg', '3', 'Deshi Onion', '100', 2, '1', '2020-02-10 16:49:48', '2020-02-10 16:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `request_posts`
--

CREATE TABLE `request_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_posts`
--

INSERT INTO `request_posts` (`id`, `title`, `post_id`, `post_category`, `post_image`, `post_user_id`, `request_user_id`, `post_address`, `request_user_email`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Alaska malamuti', '4', '2', 'public/image/2019/cerHF-040912-MEv.jpg', '2', '2', '30/1,sukrabad,dhanmondi,dhaka\r\ncharpara,karimgonj,kishoregonj', NULL, '0', '2019-07-22 20:38:36', '2019-07-22 20:38:36'),
(3, 'Alaska malamuti', '4', '2', 'public/image/2019/cerHF-040912-MEv.jpg', '2', '3', '30/1,sukrabad,dhanmondi,dhaka\r\ncharpara,karimgonj,kishoregonj', NULL, '1', '2019-07-22 21:15:38', '2019-07-22 23:30:13'),
(4, 'Best Cat', '5', '1', 'public/image/2019/oYJdy-042909-N4V.jpg', '2', '2', '30/1,sukrabad,dhanmondi,dhaka\r\ncharpara,karimgonj,kishoregonj', 'user@email.com', '0', '2019-07-23 21:34:43', '2019-07-23 21:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `rate`, `created_at`, `updated_at`) VALUES
(1, '15', '4', '2020-07-16 07:31:59', '2020-07-16 07:31:59'),
(2, '15', '2', '2020-07-16 08:20:42', '2020-07-16 08:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `name`, `phone`, `email`, `address`, `message`, `created_at`, `updated_at`) VALUES
(16, 'Monsur Ahmed Shafifq', '12345678', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka', 'asdfgh', '2019-09-28 15:31:01', '2019-09-28 15:31:01'),
(17, 'Md. Julfiker Ali', '123', 'nahianahmedcse@gmail.com', 'asdf', '123tyjk', '2019-10-17 03:55:44', '2019-10-17 03:55:44'),
(18, 'Nahian Ahmed', '123', 'admin@admin.com', 'asdfg', 'sdfghj', '2019-10-17 03:59:35', '2019-10-17 03:59:35'),
(19, 'Md. Julfiker Ali', '123', 'admin@email.com', 'House: 29-31, Road: 1, Sector: 2, Block: D, Aftabnagar, Dhaka.', 'dfghj', '2019-10-17 04:18:09', '2019-10-17 04:18:09'),
(20, 'Nahian Ahmed', '01714415122', 'admin@admin.com', 'qwert', 'sdfgh', '2019-10-17 04:22:12', '2019-10-17 04:22:12'),
(21, 'Monsur Ahmed Shafifq', '09876546789098', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka', 'dfghjk', '2019-10-17 15:00:23', '2019-10-17 15:00:23'),
(22, 'a', '12345678', 'monsurahmedshafiq@gmail.com', 'uttara', 'nope', '2019-10-19 13:16:20', '2019-10-19 13:16:20'),
(23, 'Mr Hill', '12345678', 'jayedbs@gmail.com', 'uttara', 'asdfghj  sdfghj', '2019-10-19 16:09:13', '2019-10-19 16:09:13'),
(24, 'Mr Hill', '12345678', 'hackhill616@gmail.com', 'uttara', 'ttttttttt', '2019-10-19 16:35:14', '2019-10-19 16:35:14'),
(25, 'Jayed', '12345678', 'jayedbs@gmail.com', 'uttara', 'aaaa', '2019-10-20 04:33:05', '2019-10-20 04:33:05'),
(26, 'Jayed', '12345678', 'jayedbs@gmail.com', 'uttara', 'rty', '2019-10-20 12:25:17', '2019-10-20 12:25:17'),
(27, 'xzsdfgfdghj', '12345678', 'jayedbs@gmail.com', 'uttara', 'kjhfdfyuiokjh', '2019-11-08 14:55:13', '2019-11-08 14:55:13'),
(28, 'b', '12345678', 'jayedbs@gmail.com', 'uttara', 'jkjj', '2019-11-12 13:43:33', '2019-11-12 13:43:33'),
(29, 'a', '12345678', 'noobme876@gmail.com', 'sdfghjkl', 'sdfghj', '2019-11-12 15:17:12', '2019-11-12 15:17:12'),
(30, 'a', '12345678', 'jayedbs@gmail.com', 'uttara', 'jkjj', '2019-11-12 16:04:38', '2019-11-12 16:04:38'),
(31, 'Mr Hill', '12345678', 'jayedbs@gmail.com', 'uttara', 'aaa', '2019-11-18 06:08:57', '2019-11-18 06:08:57'),
(32, 'b', '12345678', 'jayedbs@gmail.com', 'uttara', 'hhh', '2019-11-18 06:09:48', '2019-11-18 06:09:48'),
(33, 'a', '12345678', 'jayedbs@gmail.com', 'sdfghjkl', 'gggg', '2019-11-18 06:12:26', '2019-11-18 06:12:26'),
(34, 'said', '12345678', 'hackhill616@gmail.com', 'qwqwq', 'qwqw', '2019-11-18 06:25:26', '2019-11-18 06:25:26'),
(35, 'Jayed', '12345678', 'jayedbs@gmail.com', 'uttara', 'kihgfghjkl', '2019-11-18 06:35:39', '2019-11-18 06:35:39'),
(36, 'b', '12345678', 'monsurahmedshafiq@gmail.com', 'uttara', 'nhhh', '2019-11-18 06:39:03', '2019-11-18 06:39:03'),
(37, 'xzsdfgfdghj', '123456', 'monsurahmedshafiq@gmail.com', 'uttara', 'qwerwasd', '2019-11-18 06:40:51', '2019-11-18 06:40:51'),
(38, 'eee', '12345678', 'hackhill616@gmail.com', 'uttara', 'jjj', '2019-11-18 06:47:50', '2019-11-18 06:47:50'),
(39, 'ASDFGHJK', '12345', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka', 'xcvbn', '2019-11-18 14:31:57', '2019-11-18 14:31:57'),
(40, 'Monsur Ahmed Shafifq', '01632144545', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka', 'werghj', '2019-11-18 14:49:03', '2019-11-18 14:49:03'),
(41, 'Monsur Ahmed Shafifq', '1234567', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 13:37:15', '2020-02-16 13:37:15'),
(42, 'Monsur Ahmed Shafifq', '12345678', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 14:11:45', '2020-02-16 14:11:45'),
(43, 'Monsur Ahmed Shafifq', '12345678', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 14:12:29', '2020-02-16 14:12:29'),
(44, 'Monsur Ahmed Shafifq', '12345678', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 14:13:21', '2020-02-16 14:13:21'),
(45, 'Monsur Ahmed Shafifq', '12345678', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 14:14:31', '2020-02-16 14:14:31'),
(46, 'Monsur Ahmed Shafifq', '12345678', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 14:37:28', '2020-02-16 14:37:28'),
(47, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 17:38:06', '2020-02-16 17:38:06'),
(48, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 17:41:16', '2020-02-16 17:41:16'),
(49, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 17:44:54', '2020-02-16 17:44:54'),
(50, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 18:04:34', '2020-02-16 18:04:34'),
(51, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 18:10:06', '2020-02-16 18:10:06'),
(52, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 18:28:06', '2020-02-16 18:28:06'),
(53, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 18:29:18', '2020-02-16 18:29:18'),
(54, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-16 18:36:08', '2020-02-16 18:36:08'),
(55, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-18 06:38:48', '2020-02-18 06:38:48'),
(56, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-18 06:43:44', '2020-02-18 06:43:44'),
(57, 'Monsur Ahmed Shafifq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-18 06:47:43', '2020-02-18 06:47:43'),
(58, 'Monsur Ahmed Shafiq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-18 06:55:52', '2020-02-18 06:55:52'),
(59, 'Monsur Ahmed Shafiq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-19 06:44:54', '2020-02-19 06:44:54'),
(60, 'Monsur Ahmed Shafiq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-19 06:49:38', '2020-02-19 06:49:38'),
(61, 'Monsur Ahmed Shafiq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-19 06:52:46', '2020-02-19 06:52:46'),
(62, 'Monsur Ahmed Shafiq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-19 07:07:12', '2020-02-19 07:07:12'),
(63, 'Monsur Ahmed Shafiq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-19 12:48:14', '2020-02-19 12:48:14'),
(64, 'Monsur Ahmed Shafiq', '0123456789', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', NULL, '2020-02-19 13:00:14', '2020-02-19 13:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `singups`
--

CREATE TABLE `singups` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pnumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `singups`
--

INSERT INTO `singups` (`id`, `firstname`, `lastname`, `pnumber`, `email`, `user_role`, `password`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'Admin', '12345678', 'admin@gmail.com', 'admin', '$2y$10$W2ITqg6C5SP0CRvaYsYbyeo70zkNa9PgvNLm2lc6rfv2oxNVBoxDm', '2019-10-11 14:11:10', '2019-10-11 14:15:48'),
(6, 'Monsur Ahmed', 'Shafifq', '12345678', 'monsurahmedshafiq@gmail.com', 'user', '$2y$10$WjcZy.qreBbfUVKTxIw.6ufDFKl3bbg7lBrpMnKMCKopW3TBbSkly', '2020-02-09 16:58:56', '2020-02-09 16:58:56'),
(7, 'Ahmed', 'Shafiq', '12345678', 'ahmed15-5439@diu.edu.bd', 'user', '$2y$10$vNvicu7Btb6bSBQKwsRBZedhkie3X5aDFnqii3cB2waRfuKpNVQj.', '2020-02-19 06:44:06', '2020-02-19 06:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$0kItZMsJ.zMnwLOeGhvBEOM62nPGjFGM7zqh6MKepaokMQFivqxES', 'admin', NULL, '2019-07-11 10:35:20', '2019-07-11 10:35:20'),
(2, 'User', 'user@email.com', '2019-09-15 16:27:20', '$2y$10$PpEo2SfUyUkbRcuNN78oEOBrHmjxTss9KvYyDt0NonqxhzSdrDjkC', 'user', NULL, '2019-07-11 10:37:14', '2019-07-11 10:37:14'),
(3, 'User 2', 'user2@email.com', NULL, '$2y$10$QPiaK5PATHsTNBMcxuUcZ.InYxFK9VEhksXnRP/ZzKPk6dw.q4eq.', 'user', NULL, '2019-07-22 20:59:17', '2019-07-22 20:59:17'),
(6, 'User', 'user3@email.com', NULL, '$2y$10$SgKR36BuEIB3MfiTdMywku4Sgxpo1cF6g5IfGTe7SffC32S4XUjgK', 'user', NULL, '2019-08-05 14:47:40', '2019-08-05 14:47:40'),
(25, 'Monsur Ahmed Shafifq', 'monsurahmedshafiq@gmail.com', '2019-09-15 16:27:20', '$2y$10$HJiTpqe2kdAiBFIHr4eki.w7V6s4KdqdQNYceyS56pNcSPe.UMmFi', 'user', NULL, '2019-09-10 12:45:57', '2019-09-15 16:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `verify_tokens`
--

CREATE TABLE `verify_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_posts`
--
ALTER TABLE `request_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `singups`
--
ALTER TABLE `singups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_tokens`
--
ALTER TABLE `verify_tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `request_posts`
--
ALTER TABLE `request_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `singups`
--
ALTER TABLE `singups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `verify_tokens`
--
ALTER TABLE `verify_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
