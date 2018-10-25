-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2018 at 06:34 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psi`
--

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 484, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-09 07:35:14', '2018-09-09 07:35:14'),
(2, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 5, '[]', '{\"cts_id\":\"546\",\"staff_no\":\"71248<br>\",\"id\":5}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71248%3Cbr%3E&schedule_id=546', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-09 07:37:40', '2018-09-09 07:37:40'),
(3, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 5, '{\"conformation_day_before\":null}', '{\"conformation_day_before\":\"OK\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-09 07:39:49', '2018-09-09 07:39:49'),
(4, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 5, '{\"conformation_day_before\":\"OK\"}', '{\"conformation_day_before\":\"Not OK\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-09 07:39:56', '2018-09-09 07:39:56'),
(5, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"pzT3Na4wRb64qfuXRZc9zHdJNojJlcTTinQCanIeoMoZSVIPhyngoqRoakNb\"}', '{\"remember_token\":\"m45qY5OEoGj7IFmq5L7TByMrfLSPf8Ne6JElFswUVyAR908kANmuHX7avAwj\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 13:25:16', '2018-09-13 13:25:16'),
(6, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"superuser@admin.com\",\"language\":1,\"primary_company\":47}', '{\"email\":null,\"language\":\"0\",\"primary_company\":\"47selected=\"}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 13:42:24', '2018-09-13 13:42:24'),
(7, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"\",\"primary_company\":47}', '{\"email\":null,\"primary_company\":\"44\"}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 13:42:52', '2018-09-13 13:42:52'),
(8, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"\"}', '{\"email\":null}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 13:44:30', '2018-09-13 13:44:30'),
(9, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"\",\"language\":0,\"primary_company\":44}', '{\"email\":null,\"language\":\"1\",\"primary_company\":\"47\"}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 13:46:20', '2018-09-13 13:46:20'),
(10, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"\",\"language\":1}', '{\"email\":null,\"language\":\"0\"}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 13:47:10', '2018-09-13 13:47:10'),
(11, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"\",\"language\":0,\"primary_company\":47}', '{\"email\":null,\"language\":\"1\",\"primary_company\":\"44\"}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 13:48:17', '2018-09-13 13:48:17'),
(12, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"m45qY5OEoGj7IFmq5L7TByMrfLSPf8Ne6JElFswUVyAR908kANmuHX7avAwj\"}', '{\"remember_token\":\"1CWlJDlEZBTXkj8rDccnSdOBCDY0Z4i9vDfAS51SRF7Dd7dcKVur0GvzGwO1\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 13:59:40', '2018-09-13 13:59:40'),
(13, 'App\\Models\\User', 2, 'updated', 'App\\Models\\User', 2, '{\"remember_token\":\"iV6dyciXClh2X8Blvz9MtblDxCakndBZIPhqQJS0bAMq457YJrJ8OYLiUpyJ\"}', '{\"remember_token\":\"u2hLUrUbeTTh50zkf9e9LW1KSrenCKXWoYRuSNldfq7x3SlhaQ0Pg4wHgb1V\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:04:50', '2018-09-13 14:04:50'),
(14, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"superuser@admin.com\",\"language\":1,\"primary_company\":44}', '{\"email\":null,\"language\":\"0\",\"primary_company\":\"47\"}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:12:23', '2018-09-13 14:12:23'),
(15, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"\"}', '{\"email\":null}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:12:42', '2018-09-13 14:12:42'),
(16, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"\"}', '{\"email\":null}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:13:54', '2018-09-13 14:13:54'),
(17, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"\",\"language\":0,\"primary_company\":47}', '{\"email\":null,\"language\":\"1\",\"primary_company\":\"44\"}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:14:53', '2018-09-13 14:14:53'),
(18, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"\"}', '{\"email\":null}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:16:30', '2018-09-13 14:16:30'),
(19, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"email\":\"\"}', '{\"email\":\"superuser@admin.com\"}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:16:56', '2018-09-13 14:16:56'),
(20, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"language\":1}', '{\"language\":\"0\"}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:17:05', '2018-09-13 14:17:05'),
(21, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"primary_company\":44}', '{\"primary_company\":\"47\"}', 'http://127.0.0.1:8000/users/profile/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:17:13', '2018-09-13 14:17:13'),
(22, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"1CWlJDlEZBTXkj8rDccnSdOBCDY0Z4i9vDfAS51SRF7Dd7dcKVur0GvzGwO1\"}', '{\"remember_token\":\"nlTfeyfr9ykcfsjpMoKVBpPsWYRlFAZFuLU6B1t8akLl6rrJJjY9yE00HkQz\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:26:11', '2018-09-13 14:26:11'),
(23, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"nlTfeyfr9ykcfsjpMoKVBpPsWYRlFAZFuLU6B1t8akLl6rrJJjY9yE00HkQz\"}', '{\"remember_token\":\"kwFx4C36zUCsaMBCleZSmlLZFx3wHnrmLizbZeJ2FvGnZo6DF7CsJHUJk7dy\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:31:18', '2018-09-13 14:31:18'),
(24, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"kwFx4C36zUCsaMBCleZSmlLZFx3wHnrmLizbZeJ2FvGnZo6DF7CsJHUJk7dy\"}', '{\"remember_token\":\"E9seENLQ12Ks5hRCWt9TbA8Z1cNmLX3AiiAwW8TB0VVJkbtdO9kd6z78qTxD\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-13 14:33:52', '2018-09-13 14:33:52'),
(25, 'App\\Models\\User', 2, 'updated', 'App\\Models\\User', 2, '{\"remember_token\":\"u2hLUrUbeTTh50zkf9e9LW1KSrenCKXWoYRuSNldfq7x3SlhaQ0Pg4wHgb1V\"}', '{\"remember_token\":\"vHAAtnPQFyqEwb7JAtIqEyMA4OHNwXggbnPImwRrKNsLZ46nzUdllpIokGV9\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-19 11:40:45', '2018-09-19 11:40:45'),
(26, 'App\\Models\\User', 2, 'created', 'App\\Models\\ShiftMasterData', 49, '[]', '{\"company_id\":\"63\",\"start_time\":\"07:00\",\"end_time\":\"11:00\",\"id\":49}', 'http://127.0.0.1:8000/ajax/shift/add?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 12:00:06', '2018-09-21 12:00:06'),
(27, 'App\\Models\\User', 2, 'created', 'App\\Models\\ShiftMasterData', 50, '[]', '{\"company_id\":\"63\",\"start_time\":\"13:00\",\"end_time\":\"18:00\",\"id\":50}', 'http://127.0.0.1:8000/ajax/shift/add?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 12:00:06', '2018-09-21 12:00:06'),
(28, 'App\\Models\\User', 2, 'created', 'App\\Models\\ShiftMasterData', 51, '[]', '{\"company_id\":\"73\",\"start_time\":\"14:00\",\"end_time\":\"18:00\",\"id\":51}', 'http://127.0.0.1:8000/ajax/shift/add?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:12:06', '2018-09-21 13:12:06'),
(29, 'App\\Models\\User', 2, 'created', 'App\\Models\\ShiftMasterData', 52, '[]', '{\"company_id\":\"63\",\"start_time\":\"18:00\",\"end_time\":\"21:00\",\"id\":52}', 'http://127.0.0.1:8000/ajax/shift/add?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:16:47', '2018-09-21 13:16:47'),
(30, 'App\\Models\\User', 2, 'created', 'App\\Models\\ShiftMasterData', 53, '[]', '{\"company_id\":\"73\",\"start_time\":\"05:00\",\"end_time\":\"09:00\",\"id\":53}', 'http://127.0.0.1:8000/ajax/shift/add?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:17:29', '2018-09-21 13:17:29'),
(31, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 672, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-21\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":672}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:02', '2018-09-21 13:20:02'),
(32, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 673, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-22\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":673}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:02', '2018-09-21 13:20:02'),
(33, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 674, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-23\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":674}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:03', '2018-09-21 13:20:03'),
(34, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 675, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-24\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":675}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:03', '2018-09-21 13:20:03'),
(35, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 676, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-25\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":676}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:03', '2018-09-21 13:20:03'),
(36, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 677, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-26\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":677}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:03', '2018-09-21 13:20:03'),
(37, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 678, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-27\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":678}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:03', '2018-09-21 13:20:03'),
(38, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 679, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-28\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":679}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:03', '2018-09-21 13:20:03'),
(39, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 680, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-29\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":680}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:03', '2018-09-21 13:20:03'),
(40, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 681, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-30\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":681}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:03', '2018-09-21 13:20:03'),
(41, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 682, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-21\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":682}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:03', '2018-09-21 13:20:03'),
(42, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 683, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-22\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":683}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:04', '2018-09-21 13:20:04'),
(43, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 684, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-23\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":684}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:04', '2018-09-21 13:20:04'),
(44, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 685, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-24\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":685}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:04', '2018-09-21 13:20:04'),
(45, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 686, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-25\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":686}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:04', '2018-09-21 13:20:04'),
(46, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 687, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-26\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":687}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:04', '2018-09-21 13:20:04'),
(47, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 688, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-27\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":688}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:04', '2018-09-21 13:20:04'),
(48, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 689, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-28\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":689}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:04', '2018-09-21 13:20:04'),
(49, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 690, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-29\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":690}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:04', '2018-09-21 13:20:04'),
(50, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 691, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-30\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":691}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:04', '2018-09-21 13:20:04'),
(51, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 692, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-21\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":692}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:04', '2018-09-21 13:20:04'),
(52, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 693, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-22\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":693}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:05', '2018-09-21 13:20:05'),
(53, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 694, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-23\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":694}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:05', '2018-09-21 13:20:05'),
(54, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 695, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-24\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":695}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:05', '2018-09-21 13:20:05'),
(55, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 696, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-25\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":696}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:05', '2018-09-21 13:20:05'),
(56, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 697, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-26\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":697}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:05', '2018-09-21 13:20:05'),
(57, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 698, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-27\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":698}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:05', '2018-09-21 13:20:05'),
(58, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 699, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-28\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":699}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:05', '2018-09-21 13:20:05'),
(59, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 700, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-29\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":700}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:05', '2018-09-21 13:20:05'),
(60, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 701, '[]', '{\"companyTT_id\":49,\"date\":\"2018-09-30\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":701}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:05', '2018-09-21 13:20:05'),
(61, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 702, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-21\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":702}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:06', '2018-09-21 13:20:06'),
(62, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 703, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-22\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":703}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:06', '2018-09-21 13:20:06'),
(63, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 704, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-23\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":704}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:06', '2018-09-21 13:20:06'),
(64, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 705, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-24\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":705}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:06', '2018-09-21 13:20:06'),
(65, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 706, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-25\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":706}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:06', '2018-09-21 13:20:06'),
(66, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 707, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-26\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":707}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:06', '2018-09-21 13:20:06'),
(67, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 708, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-27\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":708}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:06', '2018-09-21 13:20:06'),
(68, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 709, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-28\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":709}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:06', '2018-09-21 13:20:06'),
(69, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 710, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-29\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":710}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:07', '2018-09-21 13:20:07'),
(70, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 711, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-30\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":711}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:07', '2018-09-21 13:20:07'),
(71, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 712, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-21\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":712}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:07', '2018-09-21 13:20:07'),
(72, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 713, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-22\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":713}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:07', '2018-09-21 13:20:07'),
(73, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 714, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-23\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":714}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:07', '2018-09-21 13:20:07'),
(74, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 715, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-24\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":715}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:07', '2018-09-21 13:20:07'),
(75, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 716, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-25\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":716}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:07', '2018-09-21 13:20:07'),
(76, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 717, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-26\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":717}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:07', '2018-09-21 13:20:07'),
(77, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 718, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-27\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":718}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:07', '2018-09-21 13:20:07'),
(78, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 719, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-28\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":719}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:08', '2018-09-21 13:20:08'),
(79, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 720, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-29\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":720}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:08', '2018-09-21 13:20:08'),
(80, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 721, '[]', '{\"companyTT_id\":50,\"date\":\"2018-09-30\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":721}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:20:08', '2018-09-21 13:20:08'),
(81, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 712, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:13', '2018-09-21 13:22:13'),
(82, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 712, '{\"help\":null}', '{\"help\":\"7\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:16', '2018-09-21 13:22:16'),
(83, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 713, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:18', '2018-09-21 13:22:18'),
(84, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 713, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:21', '2018-09-21 13:22:21'),
(85, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 672, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:24', '2018-09-21 13:22:24'),
(86, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 672, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:25', '2018-09-21 13:22:25'),
(87, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 682, '{\"normal\":null}', '{\"normal\":\"8\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:27', '2018-09-21 13:22:27'),
(88, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 682, '{\"help\":null}', '{\"help\":\"7\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:30', '2018-09-21 13:22:30'),
(89, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 702, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:32', '2018-09-21 13:22:32'),
(90, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 702, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:34', '2018-09-21 13:22:34'),
(91, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 692, '{\"normal\":null}', '{\"normal\":\"8\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:38', '2018-09-21 13:22:38'),
(92, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 692, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:40', '2018-09-21 13:22:40'),
(93, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 673, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:43', '2018-09-21 13:22:43'),
(94, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 673, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:45', '2018-09-21 13:22:45'),
(95, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 683, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:47', '2018-09-21 13:22:47'),
(96, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 683, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:50', '2018-09-21 13:22:50'),
(97, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 703, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:52', '2018-09-21 13:22:52'),
(98, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 703, '{\"help\":null}', '{\"help\":\"9\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:54', '2018-09-21 13:22:54'),
(99, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 693, '{\"normal\":null}', '{\"normal\":\"8\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:22:59', '2018-09-21 13:22:59'),
(100, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 693, '{\"help\":null}', '{\"help\":\"7\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:02', '2018-09-21 13:23:02'),
(101, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 714, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:04', '2018-09-21 13:23:04'),
(102, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 714, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:09', '2018-09-21 13:23:09'),
(103, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 674, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:11', '2018-09-21 13:23:11'),
(104, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 674, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:15', '2018-09-21 13:23:15'),
(105, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 684, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:18', '2018-09-21 13:23:18'),
(106, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 684, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:20', '2018-09-21 13:23:20'),
(107, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 704, '{\"normal\":null}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:26', '2018-09-21 13:23:26'),
(108, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 704, '{\"help\":null}', '{\"help\":\"8\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:30', '2018-09-21 13:23:30'),
(109, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 694, '{\"normal\":null}', '{\"normal\":\"7\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:32', '2018-09-21 13:23:32'),
(110, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 694, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:23:34', '2018-09-21 13:23:34'),
(111, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 722, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-21\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":722}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:41', '2018-09-21 13:29:41'),
(112, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 723, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-22\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":723}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:41', '2018-09-21 13:29:41'),
(113, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 724, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-23\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":724}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:41', '2018-09-21 13:29:41'),
(114, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 725, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-24\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":725}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:41', '2018-09-21 13:29:41'),
(115, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 726, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-25\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":726}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:41', '2018-09-21 13:29:41'),
(116, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 727, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-26\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":727}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:41', '2018-09-21 13:29:41'),
(117, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 728, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-27\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":728}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:41', '2018-09-21 13:29:41'),
(118, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 729, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-28\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":729}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:42', '2018-09-21 13:29:42'),
(119, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 730, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-29\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":730}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:42', '2018-09-21 13:29:42'),
(120, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 731, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-30\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":731}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:42', '2018-09-21 13:29:42'),
(121, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 732, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-21\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":732}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:42', '2018-09-21 13:29:42'),
(122, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 733, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-22\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":733}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:42', '2018-09-21 13:29:42'),
(123, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 734, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-23\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":734}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:42', '2018-09-21 13:29:42'),
(124, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 735, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-24\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":735}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:42', '2018-09-21 13:29:42'),
(125, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 736, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-25\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":736}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:42', '2018-09-21 13:29:42'),
(126, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 737, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-26\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":737}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:42', '2018-09-21 13:29:42'),
(127, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 738, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-27\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":738}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:42', '2018-09-21 13:29:42');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(128, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 739, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-28\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":739}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:43', '2018-09-21 13:29:43'),
(129, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 740, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-29\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":740}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:43', '2018-09-21 13:29:43'),
(130, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 741, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-30\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":741}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:43', '2018-09-21 13:29:43'),
(131, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 742, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-21\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":742}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:43', '2018-09-21 13:29:43'),
(132, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 743, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-22\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":743}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:43', '2018-09-21 13:29:43'),
(133, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 744, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-23\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":744}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:43', '2018-09-21 13:29:43'),
(134, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 745, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-24\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":745}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:43', '2018-09-21 13:29:43'),
(135, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 746, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-25\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":746}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:43', '2018-09-21 13:29:43'),
(136, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 747, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-26\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":747}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:43', '2018-09-21 13:29:43'),
(137, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 748, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-27\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":748}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:44', '2018-09-21 13:29:44'),
(138, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 749, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-28\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":749}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:44', '2018-09-21 13:29:44'),
(139, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 750, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-29\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":750}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:44', '2018-09-21 13:29:44'),
(140, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 751, '[]', '{\"companyTT_id\":51,\"date\":\"2018-09-30\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":751}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:44', '2018-09-21 13:29:44'),
(141, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 752, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-21\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":752}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:44', '2018-09-21 13:29:44'),
(142, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 753, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-22\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":753}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:45', '2018-09-21 13:29:45'),
(143, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 754, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-23\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":754}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:45', '2018-09-21 13:29:45'),
(144, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 755, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-24\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":755}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:45', '2018-09-21 13:29:45'),
(145, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 756, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-25\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":756}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:45', '2018-09-21 13:29:45'),
(146, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 757, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-26\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":757}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:45', '2018-09-21 13:29:45'),
(147, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 758, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-27\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":758}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:46', '2018-09-21 13:29:46'),
(148, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 759, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-28\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":759}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:46', '2018-09-21 13:29:46'),
(149, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 760, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-29\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":760}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:46', '2018-09-21 13:29:46'),
(150, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 761, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-30\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":761}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:46', '2018-09-21 13:29:46'),
(151, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 762, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-21\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":762}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:46', '2018-09-21 13:29:46'),
(152, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 763, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-22\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":763}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:46', '2018-09-21 13:29:46'),
(153, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 764, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-23\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":764}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:46', '2018-09-21 13:29:46'),
(154, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 765, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-24\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":765}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:46', '2018-09-21 13:29:46'),
(155, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 766, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-25\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":766}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:46', '2018-09-21 13:29:46'),
(156, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 767, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-26\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":767}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:46', '2018-09-21 13:29:46'),
(157, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 768, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-27\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":768}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:47', '2018-09-21 13:29:47'),
(158, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 769, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-28\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":769}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:47', '2018-09-21 13:29:47'),
(159, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 770, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-29\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":770}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:47', '2018-09-21 13:29:47'),
(160, 'App\\Models\\User', 2, 'created', 'App\\Models\\CompanyTimeSchedule', 771, '[]', '{\"companyTT_id\":52,\"date\":\"2018-09-30\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":771}', 'http://127.0.0.1:8000/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:29:47', '2018-09-21 13:29:47'),
(161, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 762, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:13', '2018-09-21 13:30:13'),
(162, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 762, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:16', '2018-09-21 13:30:16'),
(163, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 722, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:19', '2018-09-21 13:30:19'),
(164, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 722, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:21', '2018-09-21 13:30:21'),
(165, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 732, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:23', '2018-09-21 13:30:23'),
(166, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 732, '{\"help\":null}', '{\"help\":\"7\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:24', '2018-09-21 13:30:24'),
(167, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 752, '{\"normal\":null}', '{\"normal\":\"8\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:28', '2018-09-21 13:30:28'),
(168, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 752, '{\"help\":null}', '{\"help\":\"9\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:30', '2018-09-21 13:30:30'),
(169, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 742, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:31', '2018-09-21 13:30:31'),
(170, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 742, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:33', '2018-09-21 13:30:33'),
(171, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 763, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:37', '2018-09-21 13:30:37'),
(172, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 763, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:39', '2018-09-21 13:30:39'),
(173, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 723, '{\"normal\":null}', '{\"normal\":\"56\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:43', '2018-09-21 13:30:43'),
(174, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 723, '{\"help\":null}', '{\"help\":\"7\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:46', '2018-09-21 13:30:46'),
(175, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 733, '{\"normal\":null}', '{\"normal\":\"8\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:49', '2018-09-21 13:30:49'),
(176, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 733, '{\"help\":null}', '{\"help\":\"9\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:50', '2018-09-21 13:30:50'),
(177, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 753, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:54', '2018-09-21 13:30:54'),
(178, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 753, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:30:55', '2018-09-21 13:30:55'),
(179, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 743, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:00', '2018-09-21 13:31:00'),
(180, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 743, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:02', '2018-09-21 13:31:02'),
(181, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 764, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:05', '2018-09-21 13:31:05'),
(182, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 764, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:06', '2018-09-21 13:31:06'),
(183, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 724, '{\"normal\":null}', '{\"normal\":\"7\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:10', '2018-09-21 13:31:10'),
(184, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 724, '{\"help\":null}', '{\"help\":\"8\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:11', '2018-09-21 13:31:11'),
(185, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 734, '{\"normal\":null}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:14', '2018-09-21 13:31:14'),
(186, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 734, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:18', '2018-09-21 13:31:18'),
(187, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 754, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:20', '2018-09-21 13:31:20'),
(188, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 754, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:24', '2018-09-21 13:31:24'),
(189, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 744, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:25', '2018-09-21 13:31:25'),
(190, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 744, '{\"help\":null}', '{\"help\":\"5\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:28', '2018-09-21 13:31:28'),
(191, 'App\\Models\\User', 2, 'updated', 'App\\Models\\CompanyTimeSchedule', 723, '{\"normal\":56}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:31:32', '2018-09-21 13:31:32'),
(192, 'App\\Models\\User', 2, 'created', 'App\\Models\\DessertSheet', 6, '[]', '{\"cts_id\":\"722\",\"staff_no\":\"71203\",\"id\":6}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=722', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:32:35', '2018-09-21 13:32:35'),
(193, 'App\\Models\\User', 2, 'created', 'App\\Models\\DessertSheet', 7, '[]', '{\"cts_id\":\"722\",\"staff_no\":\"71204\",\"id\":7}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71204&schedule_id=722', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:32:57', '2018-09-21 13:32:57'),
(194, 'App\\Models\\User', 2, 'updated', 'App\\Models\\DessertSheet', 6, '{\"conformation_day_before\":null}', '{\"conformation_day_before\":\"OK\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:33:59', '2018-09-21 13:33:59'),
(195, 'App\\Models\\User', 2, 'updated', 'App\\Models\\DessertSheet', 6, '{\"conformation_3_hours_ago\":null}', '{\"conformation_3_hours_ago\":\"OK\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:34:04', '2018-09-21 13:34:04'),
(196, 'App\\Models\\User', 2, 'created', 'App\\Models\\DessertSheet', 8, '[]', '{\"cts_id\":\"722\",\"staff_no\":\"71205\",\"id\":8}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71205&schedule_id=722', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:34:22', '2018-09-21 13:34:22'),
(197, 'App\\Models\\User', 2, 'updated', 'App\\Models\\DessertSheet', 7, '{\"conformation_day_before\":null}', '{\"conformation_day_before\":\"OK\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:34:31', '2018-09-21 13:34:31'),
(198, 'App\\Models\\User', 2, 'updated', 'App\\Models\\DessertSheet', 7, '{\"conformation_3_hours_ago\":null}', '{\"conformation_3_hours_ago\":\"Not OK\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:34:34', '2018-09-21 13:34:34'),
(199, 'App\\Models\\User', 2, 'updated', 'App\\Models\\DessertSheet', 7, '{\"arrival_time_if_late\":null}', '{\"arrival_time_if_late\":\"7:15\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:34:53', '2018-09-21 13:34:53'),
(200, 'App\\Models\\User', 2, 'updated', 'App\\Models\\DessertSheet', 7, '{\"reason_for_late\":null}', '{\"reason_for_late\":\"traffic\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:35:16', '2018-09-21 13:35:16'),
(201, 'App\\Models\\User', 2, 'updated', 'App\\Models\\DessertSheet', 7, '{\"call_medium\":null}', '{\"call_medium\":\"viber\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:35:16', '2018-09-21 13:35:16'),
(202, 'App\\Models\\User', 2, 'updated', 'App\\Models\\DessertSheet', 6, '{\"call_medium\":null}', '{\"call_medium\":\"viber\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:35:29', '2018-09-21 13:35:29'),
(203, 'App\\Models\\User', 2, 'updated', 'App\\Models\\DessertSheet', 8, '{\"conformation_day_before\":null}', '{\"conformation_day_before\":\"OK\"}', 'http://127.0.0.1:8000/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-09-21 13:35:53', '2018-09-21 13:35:53'),
(204, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 762, '{\"normal\":1}', '{\"normal\":\"9\"}', 'http://localhost/shift/updateCell?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-23 07:01:28', '2018-09-23 07:01:28'),
(205, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 763, '{\"normal\":3}', '{\"normal\":\"10\"}', 'http://localhost/shift/updateCell?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-23 07:01:34', '2018-09-23 07:01:34'),
(206, 'App\\Models\\User', 4, 'created', 'App\\Models\\ShiftMasterData', 54, '[]', '{\"company_id\":\"73\",\"start_time\":\"15:00\",\"end_time\":\"19:00\",\"id\":54}', 'http://localhost/ajax/shift/add?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-25 07:29:51', '2018-09-25 07:29:51'),
(207, 'App\\Models\\User', 4, 'created', 'App\\Models\\ShiftMasterData', 55, '[]', '{\"company_id\":\"72\",\"start_time\":\"13:00\",\"end_time\":\"19:00\",\"id\":55}', 'http://localhost/ajax/shift/add?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-25 07:31:44', '2018-09-25 07:31:44'),
(208, 'App\\Models\\User', 4, 'created', 'App\\Models\\ShiftMasterData', 56, '[]', '{\"company_id\":\"72\",\"start_time\":\"07:00\",\"end_time\":\"12:00\",\"id\":56}', 'http://localhost/ajax/shift/add?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-26 00:59:30', '2018-09-26 00:59:30'),
(209, 'App\\Models\\User', 4, 'created', 'App\\Models\\ShiftMasterData', 57, '[]', '{\"company_id\":\"72\",\"start_time\":\"01:00\",\"end_time\":\"05:00\",\"id\":57}', 'http://localhost/ajax/shift/add?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-26 01:11:48', '2018-09-26 01:11:48'),
(210, 'App\\Models\\User', 4, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":null}', '{\"remember_token\":\"i34j63TC2F93fQINzVy4mk0Qz2qRtChUP7EuYzgsmmujsX5XgWC38jPECIKZ\"}', 'http://localhost/employee/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-27 00:38:46', '2018-09-27 00:38:46'),
(211, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"E9seENLQ12Ks5hRCWt9TbA8Z1cNmLX3AiiAwW8TB0VVJkbtdO9kd6z78qTxD\"}', '{\"remember_token\":\"cMqet9Me9tdGwLYmjyPDSyuJtn3u3cIzBnMttQGXZC4yWovudZESu2S8vJJq\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-27 07:35:14', '2018-09-27 07:35:14'),
(212, 'App\\Models\\User', 4, 'updated', 'App\\Models\\ShiftMasterData', 49, '{\"end_time\":\"11:00:00\"}', '{\"end_time\":\"10:00\"}', 'http://localhost/company/shifts/49?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-28 01:05:56', '2018-09-28 01:05:56'),
(213, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"cMqet9Me9tdGwLYmjyPDSyuJtn3u3cIzBnMttQGXZC4yWovudZESu2S8vJJq\"}', '{\"remember_token\":\"yRBb8Ylz0sQYsRHBo4lbgjk7POMgqNmM2xFKWcSFJxyWNP3D8Puw1CRPa78B\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-28 06:31:21', '2018-09-28 06:31:21'),
(214, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"i34j63TC2F93fQINzVy4mk0Qz2qRtChUP7EuYzgsmmujsX5XgWC38jPECIKZ\"}', '{\"remember_token\":\"ltLZegKQFlS1AWUpJbbRB3OX79Xen506smK0aO4e1PITJcQx0IZGKuxWjcd2\"}', 'http://localhost/employee/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-28 06:41:04', '2018-09-28 06:41:04'),
(215, 'App\\Models\\User', 4, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"ltLZegKQFlS1AWUpJbbRB3OX79Xen506smK0aO4e1PITJcQx0IZGKuxWjcd2\"}', '{\"remember_token\":\"yEck0lXrLzekjYXadDh4bpglBVh4W1WECWJ9wZlj1mAmLEojJLWRKpL1lWyh\"}', 'http://localhost/employee/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-28 07:55:10', '2018-09-28 07:55:10'),
(216, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"yEck0lXrLzekjYXadDh4bpglBVh4W1WECWJ9wZlj1mAmLEojJLWRKpL1lWyh\"}', '{\"remember_token\":\"M0CjzKHjAI4siKeLirDRzRbmYC4Hv7wZAyd9ZXFP8TK9VvuWiubRAugKrxvG\"}', 'http://localhost/employee/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-01 01:14:49', '2018-10-01 01:14:49'),
(217, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"yRBb8Ylz0sQYsRHBo4lbgjk7POMgqNmM2xFKWcSFJxyWNP3D8Puw1CRPa78B\"}', '{\"remember_token\":\"dhNrskL0KVgRWtGgv0UyCupG1NekMGIHXWntc8KYm1CDScPjlDe5KrSmordF\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-01 01:19:32', '2018-10-01 01:19:32'),
(218, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"M0CjzKHjAI4siKeLirDRzRbmYC4Hv7wZAyd9ZXFP8TK9VvuWiubRAugKrxvG\"}', '{\"remember_token\":\"8aSkRnGeqBhrAlCyCHlyTdiAhRhGwm9Z2dJUs70uap61o9DGs7WVG0OFMcXt\"}', 'http://localhost/employee/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-01 02:25:09', '2018-10-01 02:25:09'),
(219, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"8aSkRnGeqBhrAlCyCHlyTdiAhRhGwm9Z2dJUs70uap61o9DGs7WVG0OFMcXt\"}', '{\"remember_token\":\"wnxDyQSV08Q0RR7ZQvL7LuczBrBxKHQ5gXM38wDoT1FDILHOflcO1F4A8P8D\"}', 'http://localhost/employee/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-01 02:39:38', '2018-10-01 02:39:38'),
(220, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 772, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-03\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":772}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:41', '2018-10-03 05:02:41'),
(221, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 773, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-04\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":773}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:41', '2018-10-03 05:02:41'),
(222, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 774, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-05\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":774}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:41', '2018-10-03 05:02:41'),
(223, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 775, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-06\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":775}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:41', '2018-10-03 05:02:41'),
(224, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 776, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-07\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":776}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:41', '2018-10-03 05:02:41'),
(225, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 777, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-08\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":777}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:41', '2018-10-03 05:02:41'),
(226, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 778, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-09\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":778}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:42', '2018-10-03 05:02:42'),
(227, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 779, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-10\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":779}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:42', '2018-10-03 05:02:42'),
(228, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 780, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-11\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":780}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:42', '2018-10-03 05:02:42'),
(229, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 781, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-12\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":781}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:42', '2018-10-03 05:02:42'),
(230, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 782, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-13\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":782}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:42', '2018-10-03 05:02:42'),
(231, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 783, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-14\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":783}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:42', '2018-10-03 05:02:42'),
(232, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 784, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-15\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":784}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:42', '2018-10-03 05:02:42'),
(233, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 785, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-16\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":785}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:42', '2018-10-03 05:02:42'),
(234, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 786, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-17\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":786}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:42', '2018-10-03 05:02:42'),
(235, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 787, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-18\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":787}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:43', '2018-10-03 05:02:43'),
(236, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 788, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-19\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":788}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:43', '2018-10-03 05:02:43'),
(237, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 789, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-20\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":789}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:43', '2018-10-03 05:02:43'),
(238, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 790, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-03\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":790}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:43', '2018-10-03 05:02:43'),
(239, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 791, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-04\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":791}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:43', '2018-10-03 05:02:43'),
(240, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 792, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-05\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":792}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:43', '2018-10-03 05:02:43'),
(241, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 793, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-06\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":793}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:43', '2018-10-03 05:02:43'),
(242, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 794, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-07\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":794}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:44', '2018-10-03 05:02:44'),
(243, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 795, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-08\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":795}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:44', '2018-10-03 05:02:44'),
(244, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 796, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-09\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":796}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:44', '2018-10-03 05:02:44'),
(245, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 797, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-10\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":797}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:44', '2018-10-03 05:02:44'),
(246, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 798, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-11\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":798}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:44', '2018-10-03 05:02:44'),
(247, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 799, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-12\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":799}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:44', '2018-10-03 05:02:44'),
(248, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 800, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-13\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":800}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:44', '2018-10-03 05:02:44'),
(249, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 801, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-14\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":801}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:44', '2018-10-03 05:02:44'),
(250, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 802, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-15\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":802}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:45', '2018-10-03 05:02:45'),
(251, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 803, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-16\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":803}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:45', '2018-10-03 05:02:45'),
(252, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 804, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-17\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":804}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:45', '2018-10-03 05:02:45'),
(253, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 805, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-18\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":805}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:45', '2018-10-03 05:02:45');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(254, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 806, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-19\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":806}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:45', '2018-10-03 05:02:45'),
(255, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 807, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-20\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":807}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:45', '2018-10-03 05:02:45'),
(256, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 808, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-03\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":808}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:45', '2018-10-03 05:02:45'),
(257, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 809, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-04\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":809}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:45', '2018-10-03 05:02:45'),
(258, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 810, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-05\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":810}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:45', '2018-10-03 05:02:45'),
(259, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 811, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-06\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":811}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:46', '2018-10-03 05:02:46'),
(260, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 812, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-07\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":812}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:46', '2018-10-03 05:02:46'),
(261, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 813, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-08\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":813}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:46', '2018-10-03 05:02:46'),
(262, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 814, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-09\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":814}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:46', '2018-10-03 05:02:46'),
(263, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 815, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-10\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":815}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:46', '2018-10-03 05:02:46'),
(264, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 816, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-11\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":816}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:46', '2018-10-03 05:02:46'),
(265, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 817, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-12\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":817}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:46', '2018-10-03 05:02:46'),
(266, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 818, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-13\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":818}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:46', '2018-10-03 05:02:46'),
(267, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 819, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-14\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":819}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:46', '2018-10-03 05:02:46'),
(268, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 820, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-15\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":820}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:47', '2018-10-03 05:02:47'),
(269, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 821, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-16\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":821}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:47', '2018-10-03 05:02:47'),
(270, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 822, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-17\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":822}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:47', '2018-10-03 05:02:47'),
(271, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 823, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-18\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":823}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:47', '2018-10-03 05:02:47'),
(272, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 824, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-19\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":824}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:47', '2018-10-03 05:02:47'),
(273, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 825, '[]', '{\"companyTT_id\":53,\"date\":\"2018-10-20\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":825}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 05:02:47', '2018-10-03 05:02:47'),
(274, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 808, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 23:36:07', '2018-10-03 23:36:07'),
(275, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 808, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 23:36:21', '2018-10-03 23:36:21'),
(276, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 790, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 23:37:14', '2018-10-03 23:37:14'),
(277, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 790, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 23:37:17', '2018-10-03 23:37:17'),
(278, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 772, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 23:37:19', '2018-10-03 23:37:19'),
(279, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 772, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 23:37:21', '2018-10-03 23:37:21'),
(280, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 9, '[]', '{\"cts_id\":\"808\",\"staff_no\":\"71204\",\"id\":9}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71204&schedule_id=808', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-03 23:39:00', '2018-10-03 23:39:00'),
(281, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 10, '[]', '{\"staff_no\":71204,\"cts_id\":\"790\",\"id\":10}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-03 23:41:57', '2018-10-03 23:41:57'),
(282, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"wnxDyQSV08Q0RR7ZQvL7LuczBrBxKHQ5gXM38wDoT1FDILHOflcO1F4A8P8D\"}', '{\"remember_token\":\"WCUoW7LWmfGMP4bKyvOx36j2xFgsH8uEuM8Yy3Y3zfjPxajfXjhTlWuAWrBK\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-03 23:45:27', '2018-10-03 23:45:27'),
(283, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 11, '[]', '{\"staff_no\":71204,\"cts_id\":\"752\",\"id\":11}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-04 06:09:30', '2018-10-04 06:09:30'),
(284, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 11, '{\"flag\":\"\"}', '{\"flag\":\"yellow\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-04 06:11:10', '2018-10-04 06:11:10'),
(285, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 11, '{\"flag\":\"yellow\"}', '{\"flag\":\"red\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-04 06:11:13', '2018-10-04 06:11:13'),
(286, 'App\\Models\\User', 4, 'deleted', 'App\\Models\\DessertSheet', 11, '{\"id\":11,\"cts_id\":752,\"staff_no\":71204,\"responsible1\":null,\"conformation_day_before\":null,\"responsible2\":null,\"conformation_3_hours_ago\":null,\"arrival_time_if_late\":null,\"reason_for_late\":null,\"call_medium\":null,\"flag\":\"red\"}', '[]', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-04 06:11:14', '2018-10-04 06:11:14'),
(287, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"WCUoW7LWmfGMP4bKyvOx36j2xFgsH8uEuM8Yy3Y3zfjPxajfXjhTlWuAWrBK\"}', '{\"remember_token\":\"vEwyMgKSckk3pNavXb1o8TnvylvoLkyrxuFSBkXmPh7xWbnIqiFl6C4LACK2\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-06 03:56:34', '2018-10-06 03:56:34'),
(288, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"vEwyMgKSckk3pNavXb1o8TnvylvoLkyrxuFSBkXmPh7xWbnIqiFl6C4LACK2\"}', '{\"remember_token\":\"xBxwHhGbY2BdKXhCNVh6Vd1sue7eVveu1O2pOuRDO8jLDawny32GnAOA6Ya1\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-06 04:05:54', '2018-10-06 04:05:54'),
(289, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"xBxwHhGbY2BdKXhCNVh6Vd1sue7eVveu1O2pOuRDO8jLDawny32GnAOA6Ya1\"}', '{\"remember_token\":\"l3vaadcbNKnk9vyWB3iqz84rdqNVIUFJiViQBcV4jux3wWa6Yk8s7ydtwvqW\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-06 04:11:38', '2018-10-06 04:11:38'),
(290, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"l3vaadcbNKnk9vyWB3iqz84rdqNVIUFJiViQBcV4jux3wWa6Yk8s7ydtwvqW\"}', '{\"remember_token\":\"qGRtjY61JXHSR9ANWqcj2UnBN4SOoswLGDSUhXbTfyuJRkpT4zq3s0gR1qbZ\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-06 04:14:32', '2018-10-06 04:14:32'),
(291, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"qGRtjY61JXHSR9ANWqcj2UnBN4SOoswLGDSUhXbTfyuJRkpT4zq3s0gR1qbZ\"}', '{\"remember_token\":\"URQXk4rBdB1ZuFF9XKkdLpimotgrcV6usnlmstsCf0HltCXcue5UnQsPk2Ad\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-06 04:19:21', '2018-10-06 04:19:21'),
(292, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"URQXk4rBdB1ZuFF9XKkdLpimotgrcV6usnlmstsCf0HltCXcue5UnQsPk2Ad\"}', '{\"remember_token\":\"ikQ09rLExhAsTaMFyxE5vXiqRAoETF8zrdkiE9jt81Zv0xbKkF8p8y0EjfBB\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-06 04:21:03', '2018-10-06 04:21:03'),
(293, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"ikQ09rLExhAsTaMFyxE5vXiqRAoETF8zrdkiE9jt81Zv0xbKkF8p8y0EjfBB\"}', '{\"remember_token\":\"DFVPk2FajZockVIb0VzINn2l99IDKP0gC8s7EJyymTdGcWGup4fwVKvO1B9b\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-06 04:23:34', '2018-10-06 04:23:34'),
(294, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 12, '[]', '{\"staff_no\":71204,\"cts_id\":\"742\",\"id\":12}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-06 22:45:23', '2018-10-06 22:45:23'),
(295, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 826, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-07\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":826}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:31', '2018-10-07 02:31:31'),
(296, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 827, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-08\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":827}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(297, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 828, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-09\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":828}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(298, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 829, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-10\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":829}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(299, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 830, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-11\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":830}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(300, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 831, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-12\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":831}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(301, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 832, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-13\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":832}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(302, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 833, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-14\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":833}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(303, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 834, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-15\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":834}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(304, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 835, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-16\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":835}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(305, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 836, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-17\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":836}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(306, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 837, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-18\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":837}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:32', '2018-10-07 02:31:32'),
(307, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 838, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-19\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":838}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:33', '2018-10-07 02:31:33'),
(308, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 839, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-20\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":839}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:33', '2018-10-07 02:31:33'),
(309, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 840, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-21\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":840}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:33', '2018-10-07 02:31:33'),
(310, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 841, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-22\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":841}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:33', '2018-10-07 02:31:33'),
(311, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 842, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-23\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":842}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:33', '2018-10-07 02:31:33'),
(312, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 843, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-24\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":843}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:33', '2018-10-07 02:31:33'),
(313, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 844, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-25\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":844}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:33', '2018-10-07 02:31:33'),
(314, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 845, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-26\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":845}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:33', '2018-10-07 02:31:33'),
(315, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 846, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-27\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":846}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:33', '2018-10-07 02:31:33'),
(316, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 847, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-28\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":847}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:34', '2018-10-07 02:31:34'),
(317, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 848, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-29\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":848}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:34', '2018-10-07 02:31:34'),
(318, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 849, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-30\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":849}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:34', '2018-10-07 02:31:34'),
(319, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 850, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-07\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":850}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:34', '2018-10-07 02:31:34'),
(320, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 851, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-08\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":851}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:34', '2018-10-07 02:31:34'),
(321, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 852, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-09\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":852}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:34', '2018-10-07 02:31:34'),
(322, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 853, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-10\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":853}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:34', '2018-10-07 02:31:34'),
(323, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 854, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-11\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":854}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:34', '2018-10-07 02:31:34'),
(324, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 855, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-12\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":855}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:34', '2018-10-07 02:31:34'),
(325, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 856, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-13\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":856}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:34', '2018-10-07 02:31:34'),
(326, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 857, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-14\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":857}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:35', '2018-10-07 02:31:35'),
(327, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 858, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-15\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":858}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:35', '2018-10-07 02:31:35'),
(328, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 859, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-16\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":859}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:35', '2018-10-07 02:31:35'),
(329, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 860, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-17\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":860}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:35', '2018-10-07 02:31:35'),
(330, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 861, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-18\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":861}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:35', '2018-10-07 02:31:35'),
(331, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 862, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-19\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":862}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:35', '2018-10-07 02:31:35'),
(332, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 863, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-20\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":863}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:35', '2018-10-07 02:31:35'),
(333, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 864, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-21\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":864}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:35', '2018-10-07 02:31:35'),
(334, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 865, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-22\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":865}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:35', '2018-10-07 02:31:35'),
(335, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 866, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-23\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":866}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:36', '2018-10-07 02:31:36'),
(336, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 867, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-24\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":867}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:36', '2018-10-07 02:31:36'),
(337, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 868, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-25\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":868}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:36', '2018-10-07 02:31:36'),
(338, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 869, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-26\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":869}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:36', '2018-10-07 02:31:36'),
(339, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 870, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-27\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":870}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:36', '2018-10-07 02:31:36'),
(340, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 871, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-28\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":871}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:36', '2018-10-07 02:31:36'),
(341, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 872, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-29\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":872}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:37', '2018-10-07 02:31:37'),
(342, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 873, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-30\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":873}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:37', '2018-10-07 02:31:37'),
(343, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 874, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-07\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":874}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:37', '2018-10-07 02:31:37'),
(344, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 875, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-08\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":875}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:37', '2018-10-07 02:31:37'),
(345, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 876, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-09\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":876}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:37', '2018-10-07 02:31:37'),
(346, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 877, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-10\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":877}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:37', '2018-10-07 02:31:37'),
(347, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 878, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-11\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":878}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:37', '2018-10-07 02:31:37'),
(348, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 879, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-12\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":879}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:37', '2018-10-07 02:31:37'),
(349, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 880, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-13\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":880}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:37', '2018-10-07 02:31:37'),
(350, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 881, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-14\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":881}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:37', '2018-10-07 02:31:37'),
(351, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 882, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-15\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":882}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:38', '2018-10-07 02:31:38'),
(352, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 883, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-16\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":883}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:38', '2018-10-07 02:31:38'),
(353, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 884, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-17\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":884}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:38', '2018-10-07 02:31:38'),
(354, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 885, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-18\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":885}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:38', '2018-10-07 02:31:38'),
(355, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 886, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-19\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":886}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:38', '2018-10-07 02:31:38'),
(356, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 887, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-20\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":887}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:38', '2018-10-07 02:31:38'),
(357, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 888, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-21\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":888}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:38', '2018-10-07 02:31:38'),
(358, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 889, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-22\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":889}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:39', '2018-10-07 02:31:39'),
(359, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 890, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-23\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":890}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:39', '2018-10-07 02:31:39'),
(360, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 891, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-24\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":891}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:39', '2018-10-07 02:31:39'),
(361, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 892, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-25\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":892}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:39', '2018-10-07 02:31:39'),
(362, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 893, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-26\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":893}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:39', '2018-10-07 02:31:39'),
(363, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 894, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-27\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":894}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:39', '2018-10-07 02:31:39'),
(364, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 895, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-28\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":895}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:39', '2018-10-07 02:31:39'),
(365, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 896, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-29\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":896}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:39', '2018-10-07 02:31:39'),
(366, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 897, '[]', '{\"companyTT_id\":54,\"date\":\"2018-10-30\",\"time\":\"18:00:00\",\"normal\":null,\"help\":null,\"id\":897}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:39', '2018-10-07 02:31:39'),
(367, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 898, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-07\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":898}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:39', '2018-10-07 02:31:39'),
(368, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 899, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-08\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":899}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:40', '2018-10-07 02:31:40'),
(369, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 900, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-09\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":900}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:40', '2018-10-07 02:31:40'),
(370, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 901, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-10\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":901}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:40', '2018-10-07 02:31:40');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(371, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 902, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-11\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":902}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:40', '2018-10-07 02:31:40'),
(372, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 903, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-12\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":903}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:40', '2018-10-07 02:31:40'),
(373, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 904, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-13\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":904}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:40', '2018-10-07 02:31:40'),
(374, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 905, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-14\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":905}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:40', '2018-10-07 02:31:40'),
(375, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 906, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-15\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":906}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:40', '2018-10-07 02:31:40'),
(376, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 907, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-16\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":907}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:40', '2018-10-07 02:31:40'),
(377, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 908, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-17\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":908}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:40', '2018-10-07 02:31:40'),
(378, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 909, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-18\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":909}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(379, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 910, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-19\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":910}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(380, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 911, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-20\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":911}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(381, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 912, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-21\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":912}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(382, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 913, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-22\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":913}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(383, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 914, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-23\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":914}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(384, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 915, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-24\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":915}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(385, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 916, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-25\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":916}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(386, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 917, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-26\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":917}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(387, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 918, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-27\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":918}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(388, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 919, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-28\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":919}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(389, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 920, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-29\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":920}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:41', '2018-10-07 02:31:41'),
(390, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 921, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-30\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":921}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(391, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 922, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-07\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":922}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(392, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 923, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-08\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":923}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(393, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 924, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-09\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":924}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(394, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 925, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-10\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":925}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(395, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 926, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-11\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":926}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(396, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 927, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-12\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":927}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(397, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 928, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-13\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":928}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(398, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 929, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-14\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":929}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(399, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 930, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-15\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":930}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(400, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 931, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-16\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":931}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(401, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 932, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-17\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":932}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:42', '2018-10-07 02:31:42'),
(402, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 933, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-18\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":933}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(403, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 934, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-19\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":934}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(404, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 935, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-20\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":935}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(405, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 936, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-21\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":936}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(406, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 937, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-22\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":937}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(407, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 938, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-23\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":938}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(408, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 939, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-24\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":939}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(409, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 940, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-25\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":940}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(410, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 941, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-26\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":941}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(411, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 942, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-27\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":942}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(412, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 943, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-28\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":943}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(413, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 944, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-29\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":944}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:43', '2018-10-07 02:31:43'),
(414, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 945, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-30\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":945}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(415, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 946, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-07\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":946}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(416, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 947, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-08\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":947}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(417, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 948, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-09\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":948}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(418, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 949, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-10\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":949}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(419, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 950, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-11\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":950}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(420, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 951, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-12\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":951}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(421, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 952, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-13\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":952}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(422, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 953, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-14\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":953}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(423, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 954, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-15\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":954}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(424, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 955, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-16\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":955}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(425, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 956, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-17\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":956}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:44', '2018-10-07 02:31:44'),
(426, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 957, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-18\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":957}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(427, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 958, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-19\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":958}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(428, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 959, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-20\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":959}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(429, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 960, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-21\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":960}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(430, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 961, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-22\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":961}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(431, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 962, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-23\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":962}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(432, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 963, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-24\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":963}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(433, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 964, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-25\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":964}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(434, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 965, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-26\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":965}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(435, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 966, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-27\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":966}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(436, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 967, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-28\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":967}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:45', '2018-10-07 02:31:45'),
(437, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 968, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-29\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":968}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:46', '2018-10-07 02:31:46'),
(438, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 969, '[]', '{\"companyTT_id\":55,\"date\":\"2018-10-30\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":969}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:31:46', '2018-10-07 02:31:46'),
(439, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 812, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:33:36', '2018-10-07 02:33:36'),
(440, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 812, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:33:39', '2018-10-07 02:33:39'),
(441, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 794, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:33:45', '2018-10-07 02:33:45'),
(442, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 794, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:33:47', '2018-10-07 02:33:47'),
(443, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 776, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:33:49', '2018-10-07 02:33:49'),
(444, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 776, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:33:54', '2018-10-07 02:33:54'),
(445, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 813, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:33:57', '2018-10-07 02:33:57'),
(446, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 814, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:33:58', '2018-10-07 02:33:58'),
(447, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 815, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:01', '2018-10-07 02:34:01'),
(448, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 813, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:03', '2018-10-07 02:34:03'),
(449, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 814, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:03', '2018-10-07 02:34:03'),
(450, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 815, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:05', '2018-10-07 02:34:05'),
(451, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 795, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:07', '2018-10-07 02:34:07'),
(452, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 796, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:07', '2018-10-07 02:34:07'),
(453, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 797, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:10', '2018-10-07 02:34:10'),
(454, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 795, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:11', '2018-10-07 02:34:11'),
(455, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 796, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:12', '2018-10-07 02:34:12'),
(456, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 797, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:14', '2018-10-07 02:34:14'),
(457, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 777, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:16', '2018-10-07 02:34:16'),
(458, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 778, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:17', '2018-10-07 02:34:17'),
(459, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 779, '{\"normal\":null}', '{\"normal\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:18', '2018-10-07 02:34:18'),
(460, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 777, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:20', '2018-10-07 02:34:20'),
(461, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 778, '{\"help\":null}', '{\"help\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:21', '2018-10-07 02:34:21'),
(462, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 779, '{\"help\":null}', '{\"help\":\"12\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 02:34:23', '2018-10-07 02:34:23'),
(463, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 13, '[]', '{\"staff_no\":71204,\"cts_id\":\"776\",\"id\":13}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-07 02:50:42', '2018-10-07 02:50:42'),
(464, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 14, '[]', '{\"staff_no\":71204,\"cts_id\":\"813\",\"id\":14}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-07 02:50:57', '2018-10-07 02:50:57'),
(465, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 809, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 04:03:27', '2018-10-07 04:03:27'),
(466, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 809, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 04:03:31', '2018-10-07 04:03:31'),
(467, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 791, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 04:03:33', '2018-10-07 04:03:33'),
(468, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 773, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 04:03:34', '2018-10-07 04:03:34'),
(469, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 791, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 04:03:36', '2018-10-07 04:03:36'),
(470, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 773, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 04:03:37', '2018-10-07 04:03:37'),
(471, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"DFVPk2FajZockVIb0VzINn2l99IDKP0gC8s7EJyymTdGcWGup4fwVKvO1B9b\"}', '{\"remember_token\":\"mvDhHDjswjX5jUfZzNAPZet7gDEktKyJ0L485Ttj3vxqFAN6DPMRUuYfL4j7\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-07 04:57:36', '2018-10-07 04:57:36'),
(472, 'App\\Models\\User', 4, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"mvDhHDjswjX5jUfZzNAPZet7gDEktKyJ0L485Ttj3vxqFAN6DPMRUuYfL4j7\"}', '{\"remember_token\":\"ntTz7qHEwcPMohYj5npOZSKA1F8iCAUwC2TMEkzSEWHVLlyYXqSv4dyvcmdY\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-07 06:46:21', '2018-10-07 06:46:21'),
(473, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 15, '[]', '{\"staff_no\":71204,\"cts_id\":\"795\",\"id\":15}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-07 06:52:46', '2018-10-07 06:52:46'),
(474, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"dhNrskL0KVgRWtGgv0UyCupG1NekMGIHXWntc8KYm1CDScPjlDe5KrSmordF\"}', '{\"remember_token\":\"DDxwYlYVKmT1FTphLDPot3xx6ZH3O00p3GnjLt3WMUeIjaXFnzAdZQQuJm1W\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-07 12:41:24', '2018-10-07 12:41:24'),
(475, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 16, '[]', '{\"cts_id\":\"814\",\"staff_no\":\"71204\",\"id\":16}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71204&schedule_id=814', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-07 12:52:46', '2018-10-07 12:52:46'),
(476, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 17, '[]', '{\"cts_id\":\"778\",\"staff_no\":\"71204\",\"id\":17}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71204&schedule_id=778', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-07 12:53:16', '2018-10-07 12:53:16'),
(477, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 18, '[]', '{\"staff_no\":71204,\"cts_id\":\"779\",\"id\":18}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-08 04:19:13', '2018-10-08 04:19:13'),
(478, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 19, '[]', '{\"staff_no\":71204,\"cts_id\":\"797\",\"id\":19}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-08 04:22:32', '2018-10-08 04:22:32'),
(479, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 20, '[]', '{\"staff_no\":71204,\"cts_id\":\"815\",\"id\":20}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-08 05:01:03', '2018-10-08 05:01:03'),
(480, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"ntTz7qHEwcPMohYj5npOZSKA1F8iCAUwC2TMEkzSEWHVLlyYXqSv4dyvcmdY\"}', '{\"remember_token\":\"CIDCKWXYZWrqEUdRioASx8eVbXIlvIdaERUwjpuBjTrBUdQ0EY4wjgun1xTh\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-08 06:04:19', '2018-10-08 06:04:19'),
(481, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 826, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 05:35:39', '2018-10-09 05:35:39'),
(482, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 826, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 05:35:43', '2018-10-09 05:35:43'),
(483, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"CIDCKWXYZWrqEUdRioASx8eVbXIlvIdaERUwjpuBjTrBUdQ0EY4wjgun1xTh\"}', '{\"remember_token\":\"It6MeQi9wNxrue7BowjXRfFhiA49F5Nv1Z1Ztgad6C5eU5WkV6mCBEk3VdJa\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-09 06:09:55', '2018-10-09 06:09:55'),
(484, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"It6MeQi9wNxrue7BowjXRfFhiA49F5Nv1Z1Ztgad6C5eU5WkV6mCBEk3VdJa\"}', '{\"remember_token\":\"rV6UU3AhpxDbx7JZnlCKmmEKyrc6hE3mib6IZgY2HsWWwQKpjU9s5U1nXEEY\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-09 06:34:13', '2018-10-09 06:34:13'),
(485, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"rV6UU3AhpxDbx7JZnlCKmmEKyrc6hE3mib6IZgY2HsWWwQKpjU9s5U1nXEEY\"}', '{\"remember_token\":\"iILlxZWrjxJ174Pq1fZgdupUiPmiSVfzTwR8P5zv1jGI2uyimF3mg1W9lRum\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-09 06:36:33', '2018-10-09 06:36:33'),
(486, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"iILlxZWrjxJ174Pq1fZgdupUiPmiSVfzTwR8P5zv1jGI2uyimF3mg1W9lRum\"}', '{\"remember_token\":\"NgSxFjWhxQPOSLjB5JQdhJE5Z4glJyOyr2RLwmsZj2XXIB3a9fbPFo6NI5ep\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-09 06:37:13', '2018-10-09 06:37:13'),
(487, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"NgSxFjWhxQPOSLjB5JQdhJE5Z4glJyOyr2RLwmsZj2XXIB3a9fbPFo6NI5ep\"}', '{\"remember_token\":\"UmA7eXPEgGGkVP9gq1j6B9ZFpkr1pngH5VjpQc6B4AAAclAy4hq7pIlVv39p\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-09 06:39:01', '2018-10-09 06:39:01'),
(488, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"UmA7eXPEgGGkVP9gq1j6B9ZFpkr1pngH5VjpQc6B4AAAclAy4hq7pIlVv39p\"}', '{\"remember_token\":\"UHEbbSsmRikgkoQofYLXT7YdSWN0iZOTawZTa8KZKdTBFbWUi2nLJuNBwl50\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-09 06:39:26', '2018-10-09 06:39:26'),
(489, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"UHEbbSsmRikgkoQofYLXT7YdSWN0iZOTawZTa8KZKdTBFbWUi2nLJuNBwl50\"}', '{\"remember_token\":\"Sa1BQepOcF3CUMUIuEqVtG0Rh3OwAmsFzBjfMWzZRXDi250GVQFaonRZjPTI\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-09 06:57:44', '2018-10-09 06:57:44'),
(490, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 780, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:18:56', '2018-10-09 07:18:56'),
(491, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 781, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:18:57', '2018-10-09 07:18:57'),
(492, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 782, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:18:58', '2018-10-09 07:18:58');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(493, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 783, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:18:59', '2018-10-09 07:18:59'),
(494, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 784, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:01', '2018-10-09 07:19:01'),
(495, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 785, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:02', '2018-10-09 07:19:02'),
(496, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 798, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:15', '2018-10-09 07:19:15'),
(497, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 799, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:16', '2018-10-09 07:19:16'),
(498, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 800, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:17', '2018-10-09 07:19:17'),
(499, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 801, '{\"normal\":null}', '{\"normal\":\"101\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:17', '2018-10-09 07:19:17'),
(500, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 801, '{\"normal\":101}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:21', '2018-10-09 07:19:21'),
(501, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 802, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:22', '2018-10-09 07:19:22'),
(502, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 803, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:24', '2018-10-09 07:19:24'),
(503, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 816, '{\"normal\":null}', '{\"normal\":\"10\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:25', '2018-10-09 07:19:25'),
(504, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 817, '{\"normal\":null}', '{\"normal\":\"101\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:26', '2018-10-09 07:19:26'),
(505, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 817, '{\"normal\":101}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:30', '2018-10-09 07:19:30'),
(506, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 818, '{\"normal\":null}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:31', '2018-10-09 07:19:31'),
(507, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 819, '{\"normal\":null}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:32', '2018-10-09 07:19:32'),
(508, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 820, '{\"normal\":null}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:33', '2018-10-09 07:19:33'),
(509, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 821, '{\"normal\":null}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:19:34', '2018-10-09 07:19:34'),
(510, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 970, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-01\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":970}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:10', '2018-10-09 07:21:10'),
(511, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 971, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-02\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":971}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:10', '2018-10-09 07:21:10'),
(512, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 972, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-03\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":972}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:11', '2018-10-09 07:21:11'),
(513, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 973, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-04\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":973}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:11', '2018-10-09 07:21:11'),
(514, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 974, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-05\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":974}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:11', '2018-10-09 07:21:11'),
(515, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 975, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-06\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":975}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:11', '2018-10-09 07:21:11'),
(516, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 976, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-07\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":976}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:12', '2018-10-09 07:21:12'),
(517, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 977, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-08\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":977}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:12', '2018-10-09 07:21:12'),
(518, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 978, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-09\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":978}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:12', '2018-10-09 07:21:12'),
(519, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 979, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-10\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":979}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:12', '2018-10-09 07:21:12'),
(520, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 980, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-11\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":980}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:12', '2018-10-09 07:21:12'),
(521, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 981, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-12\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":981}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:12', '2018-10-09 07:21:12'),
(522, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 982, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-13\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":982}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:12', '2018-10-09 07:21:12'),
(523, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 983, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-14\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":983}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:13', '2018-10-09 07:21:13'),
(524, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 984, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-15\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":984}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:13', '2018-10-09 07:21:13'),
(525, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 985, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-16\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":985}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:13', '2018-10-09 07:21:13'),
(526, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 986, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-17\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":986}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:13', '2018-10-09 07:21:13'),
(527, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 987, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-18\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":987}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:13', '2018-10-09 07:21:13'),
(528, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 988, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-19\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":988}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:13', '2018-10-09 07:21:13'),
(529, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 989, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-20\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":989}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:13', '2018-10-09 07:21:13'),
(530, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 990, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-21\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":990}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:13', '2018-10-09 07:21:13'),
(531, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 991, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-22\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":991}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:14', '2018-10-09 07:21:14'),
(532, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 992, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-23\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":992}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:14', '2018-10-09 07:21:14'),
(533, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 993, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-24\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":993}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:14', '2018-10-09 07:21:14'),
(534, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 994, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-25\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":994}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:14', '2018-10-09 07:21:14'),
(535, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 995, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-26\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":995}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:14', '2018-10-09 07:21:14'),
(536, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 996, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-27\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":996}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:14', '2018-10-09 07:21:14'),
(537, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 997, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-28\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":997}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:15', '2018-10-09 07:21:15'),
(538, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 998, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-29\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":998}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:15', '2018-10-09 07:21:15'),
(539, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 999, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-30\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":999}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:15', '2018-10-09 07:21:15'),
(540, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1000, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-01\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1000}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:15', '2018-10-09 07:21:15'),
(541, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1001, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-02\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1001}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:15', '2018-10-09 07:21:15'),
(542, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1002, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-03\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1002}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:15', '2018-10-09 07:21:15'),
(543, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1003, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-04\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1003}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:16', '2018-10-09 07:21:16'),
(544, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1004, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-05\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1004}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:16', '2018-10-09 07:21:16'),
(545, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1005, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-06\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1005}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:16', '2018-10-09 07:21:16'),
(546, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1006, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-07\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1006}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:16', '2018-10-09 07:21:16'),
(547, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1007, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-08\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1007}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:16', '2018-10-09 07:21:16'),
(548, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1008, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-09\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1008}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:17', '2018-10-09 07:21:17'),
(549, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1009, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-10\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1009}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:17', '2018-10-09 07:21:17'),
(550, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1010, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-11\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1010}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:17', '2018-10-09 07:21:17'),
(551, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1011, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-12\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1011}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:17', '2018-10-09 07:21:17'),
(552, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1012, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-13\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1012}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:17', '2018-10-09 07:21:17'),
(553, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1013, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-14\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1013}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:17', '2018-10-09 07:21:17'),
(554, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1014, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-15\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1014}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:17', '2018-10-09 07:21:17'),
(555, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1015, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-16\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1015}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:18', '2018-10-09 07:21:18'),
(556, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1016, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-17\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1016}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:18', '2018-10-09 07:21:18'),
(557, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1017, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-18\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1017}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:18', '2018-10-09 07:21:18'),
(558, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1018, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-19\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1018}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:18', '2018-10-09 07:21:18'),
(559, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1019, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-20\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1019}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:18', '2018-10-09 07:21:18'),
(560, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1020, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-21\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1020}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:19', '2018-10-09 07:21:19'),
(561, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1021, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-22\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1021}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:19', '2018-10-09 07:21:19'),
(562, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1022, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-23\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1022}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:19', '2018-10-09 07:21:19'),
(563, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1023, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-24\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1023}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:19', '2018-10-09 07:21:19'),
(564, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1024, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-25\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1024}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:19', '2018-10-09 07:21:19'),
(565, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1025, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-26\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1025}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:19', '2018-10-09 07:21:19'),
(566, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1026, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-27\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1026}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:20', '2018-10-09 07:21:20'),
(567, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1027, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-28\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1027}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:20', '2018-10-09 07:21:20'),
(568, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1028, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-29\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1028}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:20', '2018-10-09 07:21:20'),
(569, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1029, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-30\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1029}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:20', '2018-10-09 07:21:20'),
(570, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1030, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-01\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1030}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:20', '2018-10-09 07:21:20'),
(571, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1031, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-02\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1031}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:20', '2018-10-09 07:21:20'),
(572, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1032, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-03\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1032}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:20', '2018-10-09 07:21:20'),
(573, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1033, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-04\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1033}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:20', '2018-10-09 07:21:20'),
(574, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1034, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-05\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1034}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:20', '2018-10-09 07:21:20'),
(575, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1035, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-06\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1035}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:21', '2018-10-09 07:21:21'),
(576, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1036, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-07\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1036}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:21', '2018-10-09 07:21:21'),
(577, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1037, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-08\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1037}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:21', '2018-10-09 07:21:21'),
(578, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1038, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-09\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1038}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:21', '2018-10-09 07:21:21'),
(579, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1039, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-10\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1039}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:21', '2018-10-09 07:21:21'),
(580, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1040, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-11\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1040}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:21', '2018-10-09 07:21:21'),
(581, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1041, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-12\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1041}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:21', '2018-10-09 07:21:21'),
(582, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1042, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-13\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1042}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:21', '2018-10-09 07:21:21'),
(583, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1043, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-14\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1043}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:22', '2018-10-09 07:21:22'),
(584, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1044, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-15\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1044}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:22', '2018-10-09 07:21:22'),
(585, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1045, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-16\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1045}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:22', '2018-10-09 07:21:22'),
(586, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1046, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-17\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1046}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:22', '2018-10-09 07:21:22'),
(587, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1047, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-18\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1047}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:22', '2018-10-09 07:21:22'),
(588, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1048, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-19\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1048}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:22', '2018-10-09 07:21:22'),
(589, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1049, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-20\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1049}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:22', '2018-10-09 07:21:22'),
(590, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1050, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-21\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1050}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:22', '2018-10-09 07:21:22'),
(591, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1051, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-22\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1051}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:23', '2018-10-09 07:21:23'),
(592, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1052, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-23\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1052}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:23', '2018-10-09 07:21:23'),
(593, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1053, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-24\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1053}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:23', '2018-10-09 07:21:23'),
(594, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1054, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-25\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1054}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:23', '2018-10-09 07:21:23'),
(595, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1055, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-26\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1055}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:23', '2018-10-09 07:21:23'),
(596, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1056, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-27\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1056}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:23', '2018-10-09 07:21:23'),
(597, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1057, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-28\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1057}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:24', '2018-10-09 07:21:24'),
(598, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1058, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-29\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1058}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:24', '2018-10-09 07:21:24'),
(599, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1059, '[]', '{\"companyTT_id\":56,\"date\":\"2018-11-30\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1059}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-09 07:21:24', '2018-10-09 07:21:24'),
(600, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"Sa1BQepOcF3CUMUIuEqVtG0Rh3OwAmsFzBjfMWzZRXDi250GVQFaonRZjPTI\"}', '{\"remember_token\":\"rho9hIvYD3r3CFsaoPPWU89MZFnSdU4SCoc8Vl906VCE6xV2EPc70ozb38ba\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-09 07:22:56', '2018-10-09 07:22:56'),
(601, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1060, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-11\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1060}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:16', '2018-10-11 00:54:16'),
(602, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1061, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-12\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1061}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:16', '2018-10-11 00:54:16'),
(603, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1062, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-13\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1062}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:16', '2018-10-11 00:54:16'),
(604, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1063, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-14\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1063}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:16', '2018-10-11 00:54:16'),
(605, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1064, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-15\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1064}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:16', '2018-10-11 00:54:16'),
(606, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1065, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-16\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1065}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:17', '2018-10-11 00:54:17'),
(607, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1066, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-17\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1066}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:17', '2018-10-11 00:54:17'),
(608, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1067, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-18\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1067}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:17', '2018-10-11 00:54:17'),
(609, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1068, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-19\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1068}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:17', '2018-10-11 00:54:17'),
(610, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1069, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-20\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1069}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:17', '2018-10-11 00:54:17'),
(611, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1070, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-21\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1070}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:17', '2018-10-11 00:54:17'),
(612, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1071, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-22\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1071}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:17', '2018-10-11 00:54:17');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(613, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1072, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-23\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1072}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:17', '2018-10-11 00:54:17'),
(614, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1073, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-24\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1073}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:18', '2018-10-11 00:54:18'),
(615, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1074, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-25\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1074}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:18', '2018-10-11 00:54:18'),
(616, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1075, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-26\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1075}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:18', '2018-10-11 00:54:18'),
(617, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1076, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-27\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1076}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:18', '2018-10-11 00:54:18'),
(618, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1077, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-28\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1077}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:18', '2018-10-11 00:54:18'),
(619, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1078, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-29\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1078}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:18', '2018-10-11 00:54:18'),
(620, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1079, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-30\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1079}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:18', '2018-10-11 00:54:18'),
(621, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1080, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-31\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":1080}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:18', '2018-10-11 00:54:18'),
(622, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1081, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-11\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1081}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:18', '2018-10-11 00:54:18'),
(623, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1082, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-12\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1082}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:19', '2018-10-11 00:54:19'),
(624, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1083, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-13\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1083}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:19', '2018-10-11 00:54:19'),
(625, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1084, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-14\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1084}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:19', '2018-10-11 00:54:19'),
(626, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1085, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-15\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1085}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:19', '2018-10-11 00:54:19'),
(627, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1086, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-16\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1086}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:19', '2018-10-11 00:54:19'),
(628, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1087, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-17\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1087}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:19', '2018-10-11 00:54:19'),
(629, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1088, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-18\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1088}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:19', '2018-10-11 00:54:19'),
(630, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1089, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-19\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1089}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:19', '2018-10-11 00:54:19'),
(631, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1090, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-20\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1090}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:19', '2018-10-11 00:54:19'),
(632, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1091, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-21\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1091}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:20', '2018-10-11 00:54:20'),
(633, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1092, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-22\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1092}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:20', '2018-10-11 00:54:20'),
(634, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1093, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-23\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1093}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:20', '2018-10-11 00:54:20'),
(635, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1094, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-24\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1094}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:20', '2018-10-11 00:54:20'),
(636, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1095, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-25\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1095}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:20', '2018-10-11 00:54:20'),
(637, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1096, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-26\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1096}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:20', '2018-10-11 00:54:20'),
(638, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1097, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-27\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1097}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:20', '2018-10-11 00:54:20'),
(639, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1098, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-28\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1098}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:20', '2018-10-11 00:54:20'),
(640, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1099, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-29\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1099}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:21', '2018-10-11 00:54:21'),
(641, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1100, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-30\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1100}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:21', '2018-10-11 00:54:21'),
(642, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1101, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-31\",\"time\":\"05:00:00\",\"normal\":null,\"help\":null,\"id\":1101}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:21', '2018-10-11 00:54:21'),
(643, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1102, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-11\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1102}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:21', '2018-10-11 00:54:21'),
(644, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1103, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-12\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1103}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:21', '2018-10-11 00:54:21'),
(645, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1104, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-13\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1104}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:21', '2018-10-11 00:54:21'),
(646, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1105, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-14\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1105}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:21', '2018-10-11 00:54:21'),
(647, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1106, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-15\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1106}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:21', '2018-10-11 00:54:21'),
(648, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1107, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-16\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1107}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:22', '2018-10-11 00:54:22'),
(649, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1108, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-17\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1108}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:22', '2018-10-11 00:54:22'),
(650, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1109, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-18\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1109}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:22', '2018-10-11 00:54:22'),
(651, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1110, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-19\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1110}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:22', '2018-10-11 00:54:22'),
(652, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1111, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-20\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1111}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:22', '2018-10-11 00:54:22'),
(653, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1112, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-21\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1112}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:22', '2018-10-11 00:54:22'),
(654, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1113, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-22\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1113}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:22', '2018-10-11 00:54:22'),
(655, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1114, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-23\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1114}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:22', '2018-10-11 00:54:22'),
(656, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1115, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-24\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1115}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:22', '2018-10-11 00:54:22'),
(657, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1116, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-25\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1116}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:22', '2018-10-11 00:54:22'),
(658, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1117, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-26\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1117}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:23', '2018-10-11 00:54:23'),
(659, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1118, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-27\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1118}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:23', '2018-10-11 00:54:23'),
(660, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1119, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-28\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1119}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:23', '2018-10-11 00:54:23'),
(661, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1120, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-29\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1120}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:23', '2018-10-11 00:54:23'),
(662, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1121, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-30\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1121}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:23', '2018-10-11 00:54:23'),
(663, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1122, '[]', '{\"companyTT_id\":57,\"date\":\"2018-10-31\",\"time\":\"15:00:00\",\"normal\":null,\"help\":null,\"id\":1122}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 00:54:23', '2018-10-11 00:54:23'),
(664, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1123, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-11\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1123}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:35', '2018-10-11 02:43:35'),
(665, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1124, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-12\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1124}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:35', '2018-10-11 02:43:35'),
(666, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1125, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-13\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1125}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:35', '2018-10-11 02:43:35'),
(667, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1126, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-14\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1126}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:35', '2018-10-11 02:43:35'),
(668, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1127, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-15\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1127}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:35', '2018-10-11 02:43:35'),
(669, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1128, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-16\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1128}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:36', '2018-10-11 02:43:36'),
(670, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1129, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-17\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1129}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:36', '2018-10-11 02:43:36'),
(671, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1130, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-18\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1130}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:36', '2018-10-11 02:43:36'),
(672, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1131, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-19\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1131}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:36', '2018-10-11 02:43:36'),
(673, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1132, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-20\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1132}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:36', '2018-10-11 02:43:36'),
(674, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1133, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-21\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1133}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:36', '2018-10-11 02:43:36'),
(675, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1134, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-22\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1134}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:36', '2018-10-11 02:43:36'),
(676, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1135, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-23\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1135}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:36', '2018-10-11 02:43:36'),
(677, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1136, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-24\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1136}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:36', '2018-10-11 02:43:36'),
(678, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1137, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-25\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1137}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:37', '2018-10-11 02:43:37'),
(679, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1138, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-26\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1138}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:37', '2018-10-11 02:43:37'),
(680, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1139, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-27\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1139}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:37', '2018-10-11 02:43:37'),
(681, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1140, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-28\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1140}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:37', '2018-10-11 02:43:37'),
(682, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1141, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-29\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1141}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:37', '2018-10-11 02:43:37'),
(683, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1142, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-30\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":1142}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:37', '2018-10-11 02:43:37'),
(684, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1143, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-11\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1143}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:37', '2018-10-11 02:43:37'),
(685, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1144, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-12\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1144}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:37', '2018-10-11 02:43:37'),
(686, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1145, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-13\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1145}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:37', '2018-10-11 02:43:37'),
(687, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1146, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-14\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1146}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:38', '2018-10-11 02:43:38'),
(688, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1147, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-15\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1147}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:38', '2018-10-11 02:43:38'),
(689, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1148, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-16\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1148}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:38', '2018-10-11 02:43:38'),
(690, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1149, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-17\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1149}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:38', '2018-10-11 02:43:38'),
(691, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1150, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-18\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1150}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:38', '2018-10-11 02:43:38'),
(692, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1151, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-19\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1151}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:38', '2018-10-11 02:43:38'),
(693, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1152, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-20\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1152}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:38', '2018-10-11 02:43:38'),
(694, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1153, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-21\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1153}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:38', '2018-10-11 02:43:38'),
(695, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1154, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-22\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1154}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:39', '2018-10-11 02:43:39'),
(696, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1155, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-23\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1155}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:39', '2018-10-11 02:43:39'),
(697, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1156, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-24\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1156}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:39', '2018-10-11 02:43:39'),
(698, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1157, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-25\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1157}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:39', '2018-10-11 02:43:39'),
(699, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1158, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-26\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1158}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:39', '2018-10-11 02:43:39'),
(700, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1159, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-27\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1159}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:39', '2018-10-11 02:43:39'),
(701, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1160, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-28\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1160}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:39', '2018-10-11 02:43:39'),
(702, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1161, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-29\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1161}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:40', '2018-10-11 02:43:40'),
(703, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1162, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-30\",\"time\":\"07:00:00\",\"normal\":null,\"help\":null,\"id\":1162}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:40', '2018-10-11 02:43:40'),
(704, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1163, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-11\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1163}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:40', '2018-10-11 02:43:40'),
(705, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1164, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-12\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1164}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:40', '2018-10-11 02:43:40'),
(706, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1165, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-13\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1165}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:41', '2018-10-11 02:43:41'),
(707, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1166, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-14\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1166}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:41', '2018-10-11 02:43:41'),
(708, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1167, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-15\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1167}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:41', '2018-10-11 02:43:41'),
(709, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1168, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-16\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1168}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:41', '2018-10-11 02:43:41'),
(710, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1169, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-17\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1169}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:41', '2018-10-11 02:43:41'),
(711, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1170, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-18\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1170}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:41', '2018-10-11 02:43:41'),
(712, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1171, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-19\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1171}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:41', '2018-10-11 02:43:41'),
(713, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1172, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-20\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1172}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:42', '2018-10-11 02:43:42'),
(714, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1173, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-21\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1173}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:42', '2018-10-11 02:43:42'),
(715, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1174, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-22\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1174}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:42', '2018-10-11 02:43:42'),
(716, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1175, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-23\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1175}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:42', '2018-10-11 02:43:42'),
(717, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1176, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-24\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1176}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:42', '2018-10-11 02:43:42'),
(718, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1177, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-25\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1177}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:42', '2018-10-11 02:43:42'),
(719, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1178, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-26\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1178}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:42', '2018-10-11 02:43:42'),
(720, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1179, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-27\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1179}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:43', '2018-10-11 02:43:43'),
(721, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1180, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-28\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1180}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:43', '2018-10-11 02:43:43'),
(722, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1181, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-29\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1181}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:43', '2018-10-11 02:43:43'),
(723, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 1182, '[]', '{\"companyTT_id\":58,\"date\":\"2018-10-30\",\"time\":\"01:00:00\",\"normal\":null,\"help\":null,\"id\":1182}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 02:43:43', '2018-10-11 02:43:43'),
(724, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"rho9hIvYD3r3CFsaoPPWU89MZFnSdU4SCoc8Vl906VCE6xV2EPc70ozb38ba\"}', '{\"remember_token\":\"Bqjr4PklWt3bLJteFTNKDMcLvdEFcKdxSSFEyhnnOncXICxLP1P2wy9an3Ao\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 05:44:54', '2018-10-11 05:44:54'),
(725, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"Bqjr4PklWt3bLJteFTNKDMcLvdEFcKdxSSFEyhnnOncXICxLP1P2wy9an3Ao\"}', '{\"remember_token\":\"vlWRLlzsyFfDJuXppi6BbZI0oLyE70WX1iXDbJBtNxBiHIUkFjoIKNpareWQ\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-11 07:06:40', '2018-10-11 07:06:40'),
(726, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1123, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:19', '2018-10-11 23:37:19'),
(727, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1124, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:20', '2018-10-11 23:37:20'),
(728, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1125, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:21', '2018-10-11 23:37:21'),
(729, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1126, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:22', '2018-10-11 23:37:22');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(730, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1127, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:23', '2018-10-11 23:37:23'),
(731, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1128, '{\"normal\":null}', '{\"normal\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:27', '2018-10-11 23:37:27'),
(732, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1129, '{\"normal\":null}', '{\"normal\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:28', '2018-10-11 23:37:28'),
(733, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1130, '{\"normal\":null}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:29', '2018-10-11 23:37:29'),
(734, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1131, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:31', '2018-10-11 23:37:31'),
(735, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1132, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:32', '2018-10-11 23:37:32'),
(736, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1133, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:33', '2018-10-11 23:37:33'),
(737, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1134, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:34', '2018-10-11 23:37:34'),
(738, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1135, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:35', '2018-10-11 23:37:35'),
(739, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1136, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:35', '2018-10-11 23:37:35'),
(740, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1137, '{\"normal\":null}', '{\"normal\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:36', '2018-10-11 23:37:36'),
(741, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1138, '{\"normal\":null}', '{\"normal\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:37', '2018-10-11 23:37:37'),
(742, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1139, '{\"normal\":null}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:38', '2018-10-11 23:37:38'),
(743, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1140, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:39', '2018-10-11 23:37:39'),
(744, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1141, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:40', '2018-10-11 23:37:40'),
(745, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1142, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:41', '2018-10-11 23:37:41'),
(746, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1123, '{\"help\":null}', '{\"help\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:45', '2018-10-11 23:37:45'),
(747, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1124, '{\"help\":null}', '{\"help\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:46', '2018-10-11 23:37:46'),
(748, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1125, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:48', '2018-10-11 23:37:48'),
(749, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1126, '{\"help\":null}', '{\"help\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:49', '2018-10-11 23:37:49'),
(750, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1127, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:49', '2018-10-11 23:37:49'),
(751, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1128, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:51', '2018-10-11 23:37:51'),
(752, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1129, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:51', '2018-10-11 23:37:51'),
(753, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1130, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:52', '2018-10-11 23:37:52'),
(754, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1131, '{\"help\":null}', '{\"help\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:37:58', '2018-10-11 23:37:58'),
(755, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1132, '{\"help\":null}', '{\"help\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:00', '2018-10-11 23:38:00'),
(756, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1133, '{\"help\":null}', '{\"help\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:00', '2018-10-11 23:38:00'),
(757, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1134, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:01', '2018-10-11 23:38:01'),
(758, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1135, '{\"help\":null}', '{\"help\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:02', '2018-10-11 23:38:02'),
(759, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1136, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:03', '2018-10-11 23:38:03'),
(760, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1137, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:04', '2018-10-11 23:38:04'),
(761, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1138, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:05', '2018-10-11 23:38:05'),
(762, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1139, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:06', '2018-10-11 23:38:06'),
(763, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1140, '{\"help\":null}', '{\"help\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:07', '2018-10-11 23:38:07'),
(764, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1141, '{\"help\":null}', '{\"help\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:08', '2018-10-11 23:38:08'),
(765, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1142, '{\"help\":null}', '{\"help\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:10', '2018-10-11 23:38:10'),
(766, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1143, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:13', '2018-10-11 23:38:13'),
(767, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1144, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:14', '2018-10-11 23:38:14'),
(768, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1145, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:15', '2018-10-11 23:38:15'),
(769, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1146, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:16', '2018-10-11 23:38:16'),
(770, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1147, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:17', '2018-10-11 23:38:17'),
(771, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1148, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:18', '2018-10-11 23:38:18'),
(772, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1149, '{\"normal\":null}', '{\"normal\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:18', '2018-10-11 23:38:18'),
(773, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1150, '{\"normal\":null}', '{\"normal\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:19', '2018-10-11 23:38:19'),
(774, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1151, '{\"normal\":null}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:27', '2018-10-11 23:38:27'),
(775, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1152, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:28', '2018-10-11 23:38:28'),
(776, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1153, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:30', '2018-10-11 23:38:30'),
(777, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1154, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:31', '2018-10-11 23:38:31'),
(778, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1155, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:32', '2018-10-11 23:38:32'),
(779, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1156, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:33', '2018-10-11 23:38:33'),
(780, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1157, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:34', '2018-10-11 23:38:34'),
(781, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1158, '{\"normal\":null}', '{\"normal\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:34', '2018-10-11 23:38:34'),
(782, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1159, '{\"normal\":null}', '{\"normal\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:35', '2018-10-11 23:38:35'),
(783, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1160, '{\"normal\":null}', '{\"normal\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:36', '2018-10-11 23:38:36'),
(784, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1161, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:37', '2018-10-11 23:38:37'),
(785, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1162, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:38', '2018-10-11 23:38:38'),
(786, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1143, '{\"help\":null}', '{\"help\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:39', '2018-10-11 23:38:39'),
(787, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1144, '{\"help\":null}', '{\"help\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:40', '2018-10-11 23:38:40'),
(788, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1145, '{\"help\":null}', '{\"help\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:41', '2018-10-11 23:38:41'),
(789, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1146, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:42', '2018-10-11 23:38:42'),
(790, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1147, '{\"help\":null}', '{\"help\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:43', '2018-10-11 23:38:43'),
(791, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1148, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:44', '2018-10-11 23:38:44'),
(792, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1149, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:47', '2018-10-11 23:38:47'),
(793, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1150, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:47', '2018-10-11 23:38:47'),
(794, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1151, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:48', '2018-10-11 23:38:48'),
(795, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1152, '{\"help\":null}', '{\"help\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:49', '2018-10-11 23:38:49'),
(796, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1153, '{\"help\":null}', '{\"help\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:50', '2018-10-11 23:38:50'),
(797, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1154, '{\"help\":null}', '{\"help\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:51', '2018-10-11 23:38:51'),
(798, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1155, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:52', '2018-10-11 23:38:52'),
(799, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1156, '{\"help\":null}', '{\"help\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:52', '2018-10-11 23:38:52'),
(800, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1157, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:53', '2018-10-11 23:38:53'),
(801, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1158, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:54', '2018-10-11 23:38:54'),
(802, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1159, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:55', '2018-10-11 23:38:55'),
(803, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1160, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:56', '2018-10-11 23:38:56'),
(804, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1161, '{\"help\":null}', '{\"help\":\"9\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:56', '2018-10-11 23:38:56'),
(805, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1162, '{\"help\":null}', '{\"help\":\"8\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:38:57', '2018-10-11 23:38:57'),
(806, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1163, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:00', '2018-10-11 23:39:00'),
(807, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1164, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:01', '2018-10-11 23:39:01'),
(808, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1165, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:02', '2018-10-11 23:39:02'),
(809, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1166, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:03', '2018-10-11 23:39:03'),
(810, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1167, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:03', '2018-10-11 23:39:03'),
(811, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1168, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:05', '2018-10-11 23:39:05'),
(812, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1169, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:06', '2018-10-11 23:39:06'),
(813, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1170, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:07', '2018-10-11 23:39:07'),
(814, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1171, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:11', '2018-10-11 23:39:11'),
(815, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1172, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:12', '2018-10-11 23:39:12'),
(816, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1173, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:13', '2018-10-11 23:39:13'),
(817, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1174, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:14', '2018-10-11 23:39:14'),
(818, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1175, '{\"normal\":null}', '{\"normal\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:15', '2018-10-11 23:39:15'),
(819, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1176, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:15', '2018-10-11 23:39:15'),
(820, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1177, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:16', '2018-10-11 23:39:16'),
(821, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1178, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:17', '2018-10-11 23:39:17'),
(822, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1179, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:18', '2018-10-11 23:39:18'),
(823, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1180, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:19', '2018-10-11 23:39:19'),
(824, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1181, '{\"normal\":null}', '{\"normal\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:19', '2018-10-11 23:39:19'),
(825, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1182, '{\"normal\":null}', '{\"normal\":\"7\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:20', '2018-10-11 23:39:20'),
(826, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1163, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:23', '2018-10-11 23:39:23'),
(827, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1164, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:24', '2018-10-11 23:39:24'),
(828, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1165, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:27', '2018-10-11 23:39:27'),
(829, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1166, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:29', '2018-10-11 23:39:29'),
(830, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1167, '{\"help\":null}', '{\"help\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:30', '2018-10-11 23:39:30'),
(831, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1168, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:31', '2018-10-11 23:39:31'),
(832, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1169, '{\"help\":null}', '{\"help\":\"0\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:31', '2018-10-11 23:39:31'),
(833, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1170, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:32', '2018-10-11 23:39:32'),
(834, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1171, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:33', '2018-10-11 23:39:33'),
(835, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1172, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:34', '2018-10-11 23:39:34'),
(836, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1173, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:35', '2018-10-11 23:39:35'),
(837, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1174, '{\"help\":null}', '{\"help\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:36', '2018-10-11 23:39:36'),
(838, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1175, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:37', '2018-10-11 23:39:37'),
(839, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1176, '{\"help\":null}', '{\"help\":\"0\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:38', '2018-10-11 23:39:38'),
(840, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1177, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:39', '2018-10-11 23:39:39'),
(841, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1178, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:40', '2018-10-11 23:39:40'),
(842, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1179, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:40', '2018-10-11 23:39:40'),
(843, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1180, '{\"help\":null}', '{\"help\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:41', '2018-10-11 23:39:41'),
(844, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1181, '{\"help\":null}', '{\"help\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:42', '2018-10-11 23:39:42'),
(845, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 1182, '{\"help\":null}', '{\"help\":\"6\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 23:39:43', '2018-10-11 23:39:43'),
(846, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 20, '[]', '{\"staff_no\":\"71204\",\"cts_id\":\"1164\",\"id\":20}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-12 04:14:22', '2018-10-12 04:14:22'),
(847, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 21, '[]', '{\"staff_no\":\"71204\",\"cts_id\":\"1125\",\"id\":21}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-12 04:16:59', '2018-10-12 04:16:59'),
(848, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 22, '[]', '{\"staff_no\":\"71204\",\"cts_id\":\"1126\",\"id\":22}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-12 04:17:49', '2018-10-12 04:17:49'),
(849, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 3, '{\"remember_token\":\"vlWRLlzsyFfDJuXppi6BbZI0oLyE70WX1iXDbJBtNxBiHIUkFjoIKNpareWQ\"}', '{\"remember_token\":\"hhIj085v9TBp1t0BZyg3i5Am5Uacv2a8KIUYeCBlDgBX78IYWkztFnknEFk8\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1607 Safari/537.36', NULL, '2018-10-12 05:10:00', '2018-10-12 05:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_id` int(10) DEFAULT NULL,
  `contact_num` bigint(20) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `master_id`, `contact_num`, `address`, `created_at`, `updated_at`) VALUES
(61, 'WARABIA', NULL, 234567895, 'ktm', '2018-09-20 08:56:46', '2018-09-20 12:30:40'),
(62, 'URAWA', 61, 34567890, 'ktm', '2018-09-20 08:56:46', '2018-09-20 08:56:46'),
(63, 'URAWA-1', 62, 34567890, 'ktm', '2018-09-20 08:56:47', '2018-09-20 08:56:47'),
(71, 'ERUMA', 61, 34567855, 'ktm', '2018-09-20 11:39:58', '2018-09-20 12:30:40'),
(72, 'ERUMA-1', 71, 34567855, 'ktm', '2018-09-20 11:39:58', '2018-09-20 12:30:41'),
(73, 'URAWA-2', 62, 34567890, 'ktm', '2018-09-20 11:41:22', '2018-09-20 11:41:22'),
(74, 'ERUMA-2', 71, 34567855, 'ktm', '2018-10-03 05:02:16', '2018-10-03 05:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `company_time_schedules`
--

CREATE TABLE `company_time_schedules` (
  `id` int(11) NOT NULL,
  `companyTT_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `normal` int(11) DEFAULT NULL,
  `help` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_time_schedules`
--

INSERT INTO `company_time_schedules` (`id`, `companyTT_id`, `date`, `time`, `normal`, `help`, `created_at`, `updated_at`) VALUES
(722, 51, '2018-09-21', '07:00:00', 3, 4, '2018-09-21 13:29:41', '2018-09-21 19:15:21'),
(723, 51, '2018-09-22', '07:00:00', 5, 7, '2018-09-21 13:29:41', '2018-09-21 19:16:32'),
(724, 51, '2018-09-23', '07:00:00', 7, 8, '2018-09-21 13:29:41', '2018-09-21 19:16:11'),
(725, 51, '2018-09-24', '07:00:00', NULL, NULL, '2018-09-21 13:29:41', '2018-09-21 19:14:41'),
(726, 51, '2018-09-25', '07:00:00', NULL, NULL, '2018-09-21 13:29:41', '2018-09-21 19:14:41'),
(727, 51, '2018-09-26', '07:00:00', NULL, NULL, '2018-09-21 13:29:41', '2018-09-21 19:14:41'),
(728, 51, '2018-09-27', '07:00:00', NULL, NULL, '2018-09-21 13:29:41', '2018-09-21 19:14:41'),
(729, 51, '2018-09-28', '07:00:00', NULL, NULL, '2018-09-21 13:29:41', '2018-09-21 19:14:41'),
(730, 51, '2018-09-29', '07:00:00', NULL, NULL, '2018-09-21 13:29:42', '2018-09-21 19:14:42'),
(731, 51, '2018-09-30', '07:00:00', NULL, NULL, '2018-09-21 13:29:42', '2018-09-21 19:14:42'),
(732, 51, '2018-09-21', '13:00:00', 5, 7, '2018-09-21 13:29:42', '2018-09-21 19:15:24'),
(733, 51, '2018-09-22', '13:00:00', 8, 9, '2018-09-21 13:29:42', '2018-09-21 19:15:50'),
(734, 51, '2018-09-23', '13:00:00', 9, 1, '2018-09-21 13:29:42', '2018-09-21 19:16:18'),
(735, 51, '2018-09-24', '13:00:00', NULL, NULL, '2018-09-21 13:29:42', '2018-09-21 19:14:42'),
(736, 51, '2018-09-25', '13:00:00', NULL, NULL, '2018-09-21 13:29:42', '2018-09-21 19:14:42'),
(737, 51, '2018-09-26', '13:00:00', NULL, NULL, '2018-09-21 13:29:42', '2018-09-21 19:14:42'),
(738, 51, '2018-09-27', '13:00:00', NULL, NULL, '2018-09-21 13:29:42', '2018-09-21 19:14:42'),
(739, 51, '2018-09-28', '13:00:00', NULL, NULL, '2018-09-21 13:29:43', '2018-09-21 19:14:43'),
(740, 51, '2018-09-29', '13:00:00', NULL, NULL, '2018-09-21 13:29:43', '2018-09-21 19:14:43'),
(741, 51, '2018-09-30', '13:00:00', NULL, NULL, '2018-09-21 13:29:43', '2018-09-21 19:14:43'),
(742, 51, '2018-09-21', '18:00:00', 1, 2, '2018-09-21 13:29:43', '2018-09-21 19:15:33'),
(743, 51, '2018-09-22', '18:00:00', 2, 4, '2018-09-21 13:29:43', '2018-09-21 19:16:02'),
(744, 51, '2018-09-23', '18:00:00', 4, 5, '2018-09-21 13:29:43', '2018-09-21 19:16:28'),
(745, 51, '2018-09-24', '18:00:00', NULL, NULL, '2018-09-21 13:29:43', '2018-09-21 19:14:43'),
(746, 51, '2018-09-25', '18:00:00', NULL, NULL, '2018-09-21 13:29:43', '2018-09-21 19:14:43'),
(747, 51, '2018-09-26', '18:00:00', NULL, NULL, '2018-09-21 13:29:43', '2018-09-21 19:14:43'),
(748, 51, '2018-09-27', '18:00:00', NULL, NULL, '2018-09-21 13:29:44', '2018-09-21 19:14:44'),
(749, 51, '2018-09-28', '18:00:00', NULL, NULL, '2018-09-21 13:29:44', '2018-09-21 19:14:44'),
(750, 51, '2018-09-29', '18:00:00', NULL, NULL, '2018-09-21 13:29:44', '2018-09-21 19:14:44'),
(751, 51, '2018-09-30', '18:00:00', NULL, NULL, '2018-09-21 13:29:44', '2018-09-21 19:14:44'),
(752, 52, '2018-09-21', '14:00:00', 8, 9, '2018-09-21 13:29:44', '2018-09-21 19:15:30'),
(753, 52, '2018-09-22', '14:00:00', 1, 3, '2018-09-21 13:29:44', '2018-09-21 19:15:55'),
(754, 52, '2018-09-23', '14:00:00', 2, 3, '2018-09-21 13:29:45', '2018-09-21 19:16:24'),
(755, 52, '2018-09-24', '14:00:00', NULL, NULL, '2018-09-21 13:29:45', '2018-09-21 19:14:45'),
(756, 52, '2018-09-25', '14:00:00', NULL, NULL, '2018-09-21 13:29:45', '2018-09-21 19:14:45'),
(757, 52, '2018-09-26', '14:00:00', NULL, NULL, '2018-09-21 13:29:45', '2018-09-21 19:14:45'),
(758, 52, '2018-09-27', '14:00:00', NULL, NULL, '2018-09-21 13:29:45', '2018-09-21 19:14:45'),
(759, 52, '2018-09-28', '14:00:00', NULL, NULL, '2018-09-21 13:29:46', '2018-09-21 19:14:46'),
(760, 52, '2018-09-29', '14:00:00', NULL, NULL, '2018-09-21 13:29:46', '2018-09-21 19:14:46'),
(761, 52, '2018-09-30', '14:00:00', NULL, NULL, '2018-09-21 13:29:46', '2018-09-21 19:14:46'),
(762, 52, '2018-09-21', '05:00:00', 9, 2, '2018-09-21 13:29:46', '2018-09-23 00:01:28'),
(763, 52, '2018-09-22', '05:00:00', 10, 4, '2018-09-21 13:29:46', '2018-09-23 00:01:34'),
(764, 52, '2018-09-23', '05:00:00', 5, 6, '2018-09-21 13:29:46', '2018-09-21 19:16:06'),
(765, 52, '2018-09-24', '05:00:00', NULL, NULL, '2018-09-21 13:29:46', '2018-09-21 19:14:46'),
(766, 52, '2018-09-25', '05:00:00', NULL, NULL, '2018-09-21 13:29:46', '2018-09-21 19:14:46'),
(767, 52, '2018-09-26', '05:00:00', NULL, NULL, '2018-09-21 13:29:46', '2018-09-21 19:14:46'),
(768, 52, '2018-09-27', '05:00:00', NULL, NULL, '2018-09-21 13:29:46', '2018-09-21 19:14:46'),
(769, 52, '2018-09-28', '05:00:00', NULL, NULL, '2018-09-21 13:29:47', '2018-09-21 19:14:47'),
(770, 52, '2018-09-29', '05:00:00', NULL, NULL, '2018-09-21 13:29:47', '2018-09-21 19:14:47'),
(771, 52, '2018-09-30', '05:00:00', NULL, NULL, '2018-09-21 13:29:47', '2018-09-21 19:14:47'),
(772, 53, '2018-10-03', '13:00:00', 4, 6, '2018-10-03 05:02:40', '2018-10-04 05:22:21'),
(773, 53, '2018-10-04', '13:00:00', 5, 2, '2018-10-03 05:02:41', '2018-10-07 09:48:37'),
(774, 53, '2018-10-05', '13:00:00', NULL, NULL, '2018-10-03 05:02:41', '2018-10-03 10:47:41'),
(775, 53, '2018-10-06', '13:00:00', NULL, NULL, '2018-10-03 05:02:41', '2018-10-03 10:47:41'),
(776, 53, '2018-10-07', '13:00:00', 2, 3, '2018-10-03 05:02:41', '2018-10-07 08:18:53'),
(777, 53, '2018-10-08', '13:00:00', 4, 6, '2018-10-03 05:02:41', '2018-10-07 08:19:20'),
(778, 53, '2018-10-09', '13:00:00', 6, 9, '2018-10-03 05:02:41', '2018-10-07 08:19:20'),
(779, 53, '2018-10-10', '13:00:00', 8, 12, '2018-10-03 05:02:42', '2018-10-07 08:19:23'),
(780, 53, '2018-10-11', '13:00:00', 10, NULL, '2018-10-03 05:02:42', '2018-10-09 13:03:56'),
(781, 53, '2018-10-12', '13:00:00', 10, NULL, '2018-10-03 05:02:42', '2018-10-09 13:03:57'),
(782, 53, '2018-10-13', '13:00:00', 10, NULL, '2018-10-03 05:02:42', '2018-10-09 13:03:58'),
(783, 53, '2018-10-14', '13:00:00', 10, NULL, '2018-10-03 05:02:42', '2018-10-09 13:03:59'),
(784, 53, '2018-10-15', '13:00:00', 10, NULL, '2018-10-03 05:02:42', '2018-10-09 13:04:01'),
(785, 53, '2018-10-16', '13:00:00', 10, NULL, '2018-10-03 05:02:42', '2018-10-09 13:04:02'),
(786, 53, '2018-10-17', '13:00:00', NULL, NULL, '2018-10-03 05:02:42', '2018-10-03 10:47:42'),
(787, 53, '2018-10-18', '13:00:00', NULL, NULL, '2018-10-03 05:02:43', '2018-10-03 10:47:43'),
(788, 53, '2018-10-19', '13:00:00', NULL, NULL, '2018-10-03 05:02:43', '2018-10-03 10:47:43'),
(789, 53, '2018-10-20', '13:00:00', NULL, NULL, '2018-10-03 05:02:43', '2018-10-03 10:47:43'),
(790, 53, '2018-10-03', '07:00:00', 3, 2, '2018-10-03 05:02:43', '2018-10-04 05:22:17'),
(791, 53, '2018-10-04', '07:00:00', 1, 6, '2018-10-03 05:02:43', '2018-10-07 09:48:36'),
(792, 53, '2018-10-05', '07:00:00', NULL, NULL, '2018-10-03 05:02:43', '2018-10-03 10:47:43'),
(793, 53, '2018-10-06', '07:00:00', NULL, NULL, '2018-10-03 05:02:43', '2018-10-03 10:47:43'),
(794, 53, '2018-10-07', '07:00:00', 5, 1, '2018-10-03 05:02:44', '2018-10-07 08:18:47'),
(795, 53, '2018-10-08', '07:00:00', 1, 6, '2018-10-03 05:02:44', '2018-10-07 08:19:11'),
(796, 53, '2018-10-09', '07:00:00', 2, 2, '2018-10-03 05:02:44', '2018-10-07 08:19:12'),
(797, 53, '2018-10-10', '07:00:00', 6, 1, '2018-10-03 05:02:44', '2018-10-07 08:19:14'),
(798, 53, '2018-10-11', '07:00:00', 10, NULL, '2018-10-03 05:02:44', '2018-10-09 13:04:14'),
(799, 53, '2018-10-12', '07:00:00', 10, NULL, '2018-10-03 05:02:44', '2018-10-09 13:04:16'),
(800, 53, '2018-10-13', '07:00:00', 10, NULL, '2018-10-03 05:02:44', '2018-10-09 13:04:17'),
(801, 53, '2018-10-14', '07:00:00', 10, NULL, '2018-10-03 05:02:44', '2018-10-09 13:04:21'),
(802, 53, '2018-10-15', '07:00:00', 10, NULL, '2018-10-03 05:02:45', '2018-10-09 13:04:22'),
(803, 53, '2018-10-16', '07:00:00', 10, NULL, '2018-10-03 05:02:45', '2018-10-09 13:04:23'),
(804, 53, '2018-10-17', '07:00:00', NULL, NULL, '2018-10-03 05:02:45', '2018-10-03 10:47:45'),
(805, 53, '2018-10-18', '07:00:00', NULL, NULL, '2018-10-03 05:02:45', '2018-10-03 10:47:45'),
(806, 53, '2018-10-19', '07:00:00', NULL, NULL, '2018-10-03 05:02:45', '2018-10-03 10:47:45'),
(807, 53, '2018-10-20', '07:00:00', NULL, NULL, '2018-10-03 05:02:45', '2018-10-03 10:47:45'),
(808, 53, '2018-10-03', '01:00:00', 5, 4, '2018-10-03 05:02:45', '2018-10-04 05:21:21'),
(809, 53, '2018-10-04', '01:00:00', 1, 2, '2018-10-03 05:02:45', '2018-10-07 09:48:31'),
(810, 53, '2018-10-05', '01:00:00', NULL, NULL, '2018-10-03 05:02:45', '2018-10-03 10:47:45'),
(811, 53, '2018-10-06', '01:00:00', NULL, NULL, '2018-10-03 05:02:46', '2018-10-03 10:47:46'),
(812, 53, '2018-10-07', '01:00:00', 4, 1, '2018-10-03 05:02:46', '2018-10-07 08:18:39'),
(813, 53, '2018-10-08', '01:00:00', 6, 4, '2018-10-03 05:02:46', '2018-10-07 08:19:02'),
(814, 53, '2018-10-09', '01:00:00', 1, 2, '2018-10-03 05:02:46', '2018-10-07 08:19:03'),
(815, 53, '2018-10-10', '01:00:00', 3, 6, '2018-10-03 05:02:46', '2018-10-07 08:19:05'),
(816, 53, '2018-10-11', '01:00:00', 10, NULL, '2018-10-03 05:02:46', '2018-10-09 13:04:25'),
(817, 53, '2018-10-12', '01:00:00', 9, NULL, '2018-10-03 05:02:46', '2018-10-09 13:04:30'),
(818, 53, '2018-10-13', '01:00:00', 9, NULL, '2018-10-03 05:02:46', '2018-10-09 13:04:31'),
(819, 53, '2018-10-14', '01:00:00', 9, NULL, '2018-10-03 05:02:46', '2018-10-09 13:04:31'),
(820, 53, '2018-10-15', '01:00:00', 9, NULL, '2018-10-03 05:02:46', '2018-10-09 13:04:33'),
(821, 53, '2018-10-16', '01:00:00', 9, NULL, '2018-10-03 05:02:47', '2018-10-09 13:04:34'),
(822, 53, '2018-10-17', '01:00:00', NULL, NULL, '2018-10-03 05:02:47', '2018-10-03 10:47:47'),
(823, 53, '2018-10-18', '01:00:00', NULL, NULL, '2018-10-03 05:02:47', '2018-10-03 10:47:47'),
(824, 53, '2018-10-19', '01:00:00', NULL, NULL, '2018-10-03 05:02:47', '2018-10-03 10:47:47'),
(825, 53, '2018-10-20', '01:00:00', NULL, NULL, '2018-10-03 05:02:47', '2018-10-03 10:47:47'),
(826, 54, '2018-10-07', '07:00:00', 4, 1, '2018-10-07 02:31:31', '2018-10-09 11:20:43'),
(827, 54, '2018-10-08', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(828, 54, '2018-10-09', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(829, 54, '2018-10-10', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(830, 54, '2018-10-11', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(831, 54, '2018-10-12', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(832, 54, '2018-10-13', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(833, 54, '2018-10-14', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(834, 54, '2018-10-15', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(835, 54, '2018-10-16', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(836, 54, '2018-10-17', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(837, 54, '2018-10-18', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(838, 54, '2018-10-19', '07:00:00', NULL, NULL, '2018-10-07 02:31:32', '2018-10-07 08:16:32'),
(839, 54, '2018-10-20', '07:00:00', NULL, NULL, '2018-10-07 02:31:33', '2018-10-07 08:16:33'),
(840, 54, '2018-10-21', '07:00:00', NULL, NULL, '2018-10-07 02:31:33', '2018-10-07 08:16:33'),
(841, 54, '2018-10-22', '07:00:00', NULL, NULL, '2018-10-07 02:31:33', '2018-10-07 08:16:33'),
(842, 54, '2018-10-23', '07:00:00', NULL, NULL, '2018-10-07 02:31:33', '2018-10-07 08:16:33'),
(843, 54, '2018-10-24', '07:00:00', NULL, NULL, '2018-10-07 02:31:33', '2018-10-07 08:16:33'),
(844, 54, '2018-10-25', '07:00:00', NULL, NULL, '2018-10-07 02:31:33', '2018-10-07 08:16:33'),
(845, 54, '2018-10-26', '07:00:00', NULL, NULL, '2018-10-07 02:31:33', '2018-10-07 08:16:33'),
(846, 54, '2018-10-27', '07:00:00', NULL, NULL, '2018-10-07 02:31:33', '2018-10-07 08:16:33'),
(847, 54, '2018-10-28', '07:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(848, 54, '2018-10-29', '07:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(849, 54, '2018-10-30', '07:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(850, 54, '2018-10-07', '13:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(851, 54, '2018-10-08', '13:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(852, 54, '2018-10-09', '13:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(853, 54, '2018-10-10', '13:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(854, 54, '2018-10-11', '13:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(855, 54, '2018-10-12', '13:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(856, 54, '2018-10-13', '13:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(857, 54, '2018-10-14', '13:00:00', NULL, NULL, '2018-10-07 02:31:34', '2018-10-07 08:16:34'),
(858, 54, '2018-10-15', '13:00:00', NULL, NULL, '2018-10-07 02:31:35', '2018-10-07 08:16:35'),
(859, 54, '2018-10-16', '13:00:00', NULL, NULL, '2018-10-07 02:31:35', '2018-10-07 08:16:35'),
(860, 54, '2018-10-17', '13:00:00', NULL, NULL, '2018-10-07 02:31:35', '2018-10-07 08:16:35'),
(861, 54, '2018-10-18', '13:00:00', NULL, NULL, '2018-10-07 02:31:35', '2018-10-07 08:16:35'),
(862, 54, '2018-10-19', '13:00:00', NULL, NULL, '2018-10-07 02:31:35', '2018-10-07 08:16:35'),
(863, 54, '2018-10-20', '13:00:00', NULL, NULL, '2018-10-07 02:31:35', '2018-10-07 08:16:35'),
(864, 54, '2018-10-21', '13:00:00', NULL, NULL, '2018-10-07 02:31:35', '2018-10-07 08:16:35'),
(865, 54, '2018-10-22', '13:00:00', NULL, NULL, '2018-10-07 02:31:35', '2018-10-07 08:16:35'),
(866, 54, '2018-10-23', '13:00:00', NULL, NULL, '2018-10-07 02:31:35', '2018-10-07 08:16:35'),
(867, 54, '2018-10-24', '13:00:00', NULL, NULL, '2018-10-07 02:31:36', '2018-10-07 08:16:36'),
(868, 54, '2018-10-25', '13:00:00', NULL, NULL, '2018-10-07 02:31:36', '2018-10-07 08:16:36'),
(869, 54, '2018-10-26', '13:00:00', NULL, NULL, '2018-10-07 02:31:36', '2018-10-07 08:16:36'),
(870, 54, '2018-10-27', '13:00:00', NULL, NULL, '2018-10-07 02:31:36', '2018-10-07 08:16:36'),
(871, 54, '2018-10-28', '13:00:00', NULL, NULL, '2018-10-07 02:31:36', '2018-10-07 08:16:36'),
(872, 54, '2018-10-29', '13:00:00', NULL, NULL, '2018-10-07 02:31:36', '2018-10-07 08:16:36'),
(873, 54, '2018-10-30', '13:00:00', NULL, NULL, '2018-10-07 02:31:37', '2018-10-07 08:16:37'),
(874, 54, '2018-10-07', '18:00:00', NULL, NULL, '2018-10-07 02:31:37', '2018-10-07 08:16:37'),
(875, 54, '2018-10-08', '18:00:00', NULL, NULL, '2018-10-07 02:31:37', '2018-10-07 08:16:37'),
(876, 54, '2018-10-09', '18:00:00', NULL, NULL, '2018-10-07 02:31:37', '2018-10-07 08:16:37'),
(877, 54, '2018-10-10', '18:00:00', NULL, NULL, '2018-10-07 02:31:37', '2018-10-07 08:16:37'),
(878, 54, '2018-10-11', '18:00:00', NULL, NULL, '2018-10-07 02:31:37', '2018-10-07 08:16:37'),
(879, 54, '2018-10-12', '18:00:00', NULL, NULL, '2018-10-07 02:31:37', '2018-10-07 08:16:37'),
(880, 54, '2018-10-13', '18:00:00', NULL, NULL, '2018-10-07 02:31:37', '2018-10-07 08:16:37'),
(881, 54, '2018-10-14', '18:00:00', NULL, NULL, '2018-10-07 02:31:37', '2018-10-07 08:16:37'),
(882, 54, '2018-10-15', '18:00:00', NULL, NULL, '2018-10-07 02:31:38', '2018-10-07 08:16:38'),
(883, 54, '2018-10-16', '18:00:00', NULL, NULL, '2018-10-07 02:31:38', '2018-10-07 08:16:38'),
(884, 54, '2018-10-17', '18:00:00', NULL, NULL, '2018-10-07 02:31:38', '2018-10-07 08:16:38'),
(885, 54, '2018-10-18', '18:00:00', NULL, NULL, '2018-10-07 02:31:38', '2018-10-07 08:16:38'),
(886, 54, '2018-10-19', '18:00:00', NULL, NULL, '2018-10-07 02:31:38', '2018-10-07 08:16:38'),
(887, 54, '2018-10-20', '18:00:00', NULL, NULL, '2018-10-07 02:31:38', '2018-10-07 08:16:38'),
(888, 54, '2018-10-21', '18:00:00', NULL, NULL, '2018-10-07 02:31:38', '2018-10-07 08:16:38'),
(889, 54, '2018-10-22', '18:00:00', NULL, NULL, '2018-10-07 02:31:38', '2018-10-07 08:16:38'),
(890, 54, '2018-10-23', '18:00:00', NULL, NULL, '2018-10-07 02:31:39', '2018-10-07 08:16:39'),
(891, 54, '2018-10-24', '18:00:00', NULL, NULL, '2018-10-07 02:31:39', '2018-10-07 08:16:39'),
(892, 54, '2018-10-25', '18:00:00', NULL, NULL, '2018-10-07 02:31:39', '2018-10-07 08:16:39'),
(893, 54, '2018-10-26', '18:00:00', NULL, NULL, '2018-10-07 02:31:39', '2018-10-07 08:16:39'),
(894, 54, '2018-10-27', '18:00:00', NULL, NULL, '2018-10-07 02:31:39', '2018-10-07 08:16:39'),
(895, 54, '2018-10-28', '18:00:00', NULL, NULL, '2018-10-07 02:31:39', '2018-10-07 08:16:39'),
(896, 54, '2018-10-29', '18:00:00', NULL, NULL, '2018-10-07 02:31:39', '2018-10-07 08:16:39'),
(897, 54, '2018-10-30', '18:00:00', NULL, NULL, '2018-10-07 02:31:39', '2018-10-07 08:16:39'),
(898, 55, '2018-10-07', '14:00:00', NULL, NULL, '2018-10-07 02:31:39', '2018-10-07 08:16:39'),
(899, 55, '2018-10-08', '14:00:00', NULL, NULL, '2018-10-07 02:31:39', '2018-10-07 08:16:39'),
(900, 55, '2018-10-09', '14:00:00', NULL, NULL, '2018-10-07 02:31:40', '2018-10-07 08:16:40'),
(901, 55, '2018-10-10', '14:00:00', NULL, NULL, '2018-10-07 02:31:40', '2018-10-07 08:16:40'),
(902, 55, '2018-10-11', '14:00:00', NULL, NULL, '2018-10-07 02:31:40', '2018-10-07 08:16:40'),
(903, 55, '2018-10-12', '14:00:00', NULL, NULL, '2018-10-07 02:31:40', '2018-10-07 08:16:40'),
(904, 55, '2018-10-13', '14:00:00', NULL, NULL, '2018-10-07 02:31:40', '2018-10-07 08:16:40'),
(905, 55, '2018-10-14', '14:00:00', NULL, NULL, '2018-10-07 02:31:40', '2018-10-07 08:16:40'),
(906, 55, '2018-10-15', '14:00:00', NULL, NULL, '2018-10-07 02:31:40', '2018-10-07 08:16:40'),
(907, 55, '2018-10-16', '14:00:00', NULL, NULL, '2018-10-07 02:31:40', '2018-10-07 08:16:40'),
(908, 55, '2018-10-17', '14:00:00', NULL, NULL, '2018-10-07 02:31:40', '2018-10-07 08:16:40'),
(909, 55, '2018-10-18', '14:00:00', NULL, NULL, '2018-10-07 02:31:40', '2018-10-07 08:16:40'),
(910, 55, '2018-10-19', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(911, 55, '2018-10-20', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(912, 55, '2018-10-21', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(913, 55, '2018-10-22', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(914, 55, '2018-10-23', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(915, 55, '2018-10-24', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(916, 55, '2018-10-25', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(917, 55, '2018-10-26', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(918, 55, '2018-10-27', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(919, 55, '2018-10-28', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(920, 55, '2018-10-29', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(921, 55, '2018-10-30', '14:00:00', NULL, NULL, '2018-10-07 02:31:41', '2018-10-07 08:16:41'),
(922, 55, '2018-10-07', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(923, 55, '2018-10-08', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(924, 55, '2018-10-09', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(925, 55, '2018-10-10', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(926, 55, '2018-10-11', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(927, 55, '2018-10-12', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(928, 55, '2018-10-13', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(929, 55, '2018-10-14', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(930, 55, '2018-10-15', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(931, 55, '2018-10-16', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(932, 55, '2018-10-17', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(933, 55, '2018-10-18', '05:00:00', NULL, NULL, '2018-10-07 02:31:42', '2018-10-07 08:16:42'),
(934, 55, '2018-10-19', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(935, 55, '2018-10-20', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(936, 55, '2018-10-21', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(937, 55, '2018-10-22', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(938, 55, '2018-10-23', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(939, 55, '2018-10-24', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(940, 55, '2018-10-25', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(941, 55, '2018-10-26', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(942, 55, '2018-10-27', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(943, 55, '2018-10-28', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(944, 55, '2018-10-29', '05:00:00', NULL, NULL, '2018-10-07 02:31:43', '2018-10-07 08:16:43'),
(945, 55, '2018-10-30', '05:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(946, 55, '2018-10-07', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(947, 55, '2018-10-08', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(948, 55, '2018-10-09', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(949, 55, '2018-10-10', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(950, 55, '2018-10-11', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(951, 55, '2018-10-12', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(952, 55, '2018-10-13', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(953, 55, '2018-10-14', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(954, 55, '2018-10-15', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(955, 55, '2018-10-16', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(956, 55, '2018-10-17', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(957, 55, '2018-10-18', '15:00:00', NULL, NULL, '2018-10-07 02:31:44', '2018-10-07 08:16:44'),
(958, 55, '2018-10-19', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(959, 55, '2018-10-20', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(960, 55, '2018-10-21', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(961, 55, '2018-10-22', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(962, 55, '2018-10-23', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(963, 55, '2018-10-24', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(964, 55, '2018-10-25', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(965, 55, '2018-10-26', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(966, 55, '2018-10-27', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(967, 55, '2018-10-28', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(968, 55, '2018-10-29', '15:00:00', NULL, NULL, '2018-10-07 02:31:45', '2018-10-07 08:16:45'),
(969, 55, '2018-10-30', '15:00:00', NULL, NULL, '2018-10-07 02:31:46', '2018-10-07 08:16:46'),
(1123, 58, '2018-10-11', '13:00:00', 2, 8, '2018-10-11 02:43:35', '2018-10-12 05:22:45'),
(1124, 58, '2018-10-12', '13:00:00', 3, 7, '2018-10-11 02:43:35', '2018-10-12 05:22:46'),
(1125, 58, '2018-10-13', '13:00:00', 4, 6, '2018-10-11 02:43:35', '2018-10-12 05:22:48'),
(1126, 58, '2018-10-14', '13:00:00', 5, 5, '2018-10-11 02:43:35', '2018-10-12 05:22:48'),
(1127, 58, '2018-10-15', '13:00:00', 6, 4, '2018-10-11 02:43:35', '2018-10-12 05:22:49'),
(1128, 58, '2018-10-16', '13:00:00', 7, 3, '2018-10-11 02:43:35', '2018-10-12 05:22:50'),
(1129, 58, '2018-10-17', '13:00:00', 8, 2, '2018-10-11 02:43:36', '2018-10-12 05:22:51'),
(1130, 58, '2018-10-18', '13:00:00', 9, 1, '2018-10-11 02:43:36', '2018-10-12 05:22:52'),
(1131, 58, '2018-10-19', '13:00:00', 1, 9, '2018-10-11 02:43:36', '2018-10-12 05:22:58'),
(1132, 58, '2018-10-20', '13:00:00', 2, 8, '2018-10-11 02:43:36', '2018-10-12 05:22:59'),
(1133, 58, '2018-10-21', '13:00:00', 3, 7, '2018-10-11 02:43:36', '2018-10-12 05:23:00'),
(1134, 58, '2018-10-22', '13:00:00', 4, 6, '2018-10-11 02:43:36', '2018-10-12 05:23:01'),
(1135, 58, '2018-10-23', '13:00:00', 5, 5, '2018-10-11 02:43:36', '2018-10-12 05:23:02'),
(1136, 58, '2018-10-24', '13:00:00', 6, 4, '2018-10-11 02:43:36', '2018-10-12 05:23:03'),
(1137, 58, '2018-10-25', '13:00:00', 7, 3, '2018-10-11 02:43:36', '2018-10-12 05:23:04'),
(1138, 58, '2018-10-26', '13:00:00', 8, 2, '2018-10-11 02:43:37', '2018-10-12 05:23:05'),
(1139, 58, '2018-10-27', '13:00:00', 9, 1, '2018-10-11 02:43:37', '2018-10-12 05:23:06'),
(1140, 58, '2018-10-28', '13:00:00', 1, 9, '2018-10-11 02:43:37', '2018-10-12 05:23:07'),
(1141, 58, '2018-10-29', '13:00:00', 2, 8, '2018-10-11 02:43:37', '2018-10-12 05:23:08'),
(1142, 58, '2018-10-30', '13:00:00', 3, 7, '2018-10-11 02:43:37', '2018-10-12 05:23:09'),
(1143, 58, '2018-10-11', '07:00:00', 1, 9, '2018-10-11 02:43:37', '2018-10-12 05:23:39'),
(1144, 58, '2018-10-12', '07:00:00', 2, 8, '2018-10-11 02:43:37', '2018-10-12 05:23:40'),
(1145, 58, '2018-10-13', '07:00:00', 3, 7, '2018-10-11 02:43:37', '2018-10-12 05:23:41'),
(1146, 58, '2018-10-14', '07:00:00', 4, 6, '2018-10-11 02:43:37', '2018-10-12 05:23:42'),
(1147, 58, '2018-10-15', '07:00:00', 5, 5, '2018-10-11 02:43:38', '2018-10-12 05:23:43'),
(1148, 58, '2018-10-16', '07:00:00', 6, 4, '2018-10-11 02:43:38', '2018-10-12 05:23:44'),
(1149, 58, '2018-10-17', '07:00:00', 7, 3, '2018-10-11 02:43:38', '2018-10-12 05:23:46'),
(1150, 58, '2018-10-18', '07:00:00', 8, 2, '2018-10-11 02:43:38', '2018-10-12 05:23:47'),
(1151, 58, '2018-10-19', '07:00:00', 9, 1, '2018-10-11 02:43:38', '2018-10-12 05:23:48'),
(1152, 58, '2018-10-20', '07:00:00', 1, 9, '2018-10-11 02:43:38', '2018-10-12 05:23:49'),
(1153, 58, '2018-10-21', '07:00:00', 2, 8, '2018-10-11 02:43:38', '2018-10-12 05:23:50'),
(1154, 58, '2018-10-22', '07:00:00', 3, 7, '2018-10-11 02:43:39', '2018-10-12 05:23:51'),
(1155, 58, '2018-10-23', '07:00:00', 4, 6, '2018-10-11 02:43:39', '2018-10-12 05:23:52'),
(1156, 58, '2018-10-24', '07:00:00', 5, 5, '2018-10-11 02:43:39', '2018-10-12 05:23:52'),
(1157, 58, '2018-10-25', '07:00:00', 6, 4, '2018-10-11 02:43:39', '2018-10-12 05:23:53'),
(1158, 58, '2018-10-26', '07:00:00', 7, 3, '2018-10-11 02:43:39', '2018-10-12 05:23:54'),
(1159, 58, '2018-10-27', '07:00:00', 8, 2, '2018-10-11 02:43:39', '2018-10-12 05:23:55'),
(1160, 58, '2018-10-28', '07:00:00', 9, 1, '2018-10-11 02:43:39', '2018-10-12 05:23:56'),
(1161, 58, '2018-10-29', '07:00:00', 1, 9, '2018-10-11 02:43:40', '2018-10-12 05:23:56'),
(1162, 58, '2018-10-30', '07:00:00', 2, 8, '2018-10-11 02:43:40', '2018-10-12 05:23:57'),
(1163, 58, '2018-10-11', '01:00:00', 1, 1, '2018-10-11 02:43:40', '2018-10-12 05:24:22'),
(1164, 58, '2018-10-12', '01:00:00', 2, 2, '2018-10-11 02:43:40', '2018-10-12 05:24:23'),
(1165, 58, '2018-10-13', '01:00:00', 3, 3, '2018-10-11 02:43:40', '2018-10-12 05:24:27'),
(1166, 58, '2018-10-14', '01:00:00', 4, 4, '2018-10-11 02:43:41', '2018-10-12 05:24:29'),
(1167, 58, '2018-10-15', '01:00:00', 5, 5, '2018-10-11 02:43:41', '2018-10-12 05:24:30'),
(1168, 58, '2018-10-16', '01:00:00', 6, 6, '2018-10-11 02:43:41', '2018-10-12 05:24:31'),
(1169, 58, '2018-10-17', '01:00:00', 1, 0, '2018-10-11 02:43:41', '2018-10-12 05:24:31'),
(1170, 58, '2018-10-18', '01:00:00', 2, 1, '2018-10-11 02:43:41', '2018-10-12 05:24:32'),
(1171, 58, '2018-10-19', '01:00:00', 3, 2, '2018-10-11 02:43:41', '2018-10-12 05:24:33'),
(1172, 58, '2018-10-20', '01:00:00', 4, 3, '2018-10-11 02:43:42', '2018-10-12 05:24:34'),
(1173, 58, '2018-10-21', '01:00:00', 5, 4, '2018-10-11 02:43:42', '2018-10-12 05:24:35'),
(1174, 58, '2018-10-22', '01:00:00', 6, 5, '2018-10-11 02:43:42', '2018-10-12 05:24:36'),
(1175, 58, '2018-10-23', '01:00:00', 7, 6, '2018-10-11 02:43:42', '2018-10-12 05:24:37'),
(1176, 58, '2018-10-24', '01:00:00', 1, 0, '2018-10-11 02:43:42', '2018-10-12 05:24:38'),
(1177, 58, '2018-10-25', '01:00:00', 2, 1, '2018-10-11 02:43:42', '2018-10-12 05:24:39'),
(1178, 58, '2018-10-26', '01:00:00', 3, 2, '2018-10-11 02:43:42', '2018-10-12 05:24:39'),
(1179, 58, '2018-10-27', '01:00:00', 4, 3, '2018-10-11 02:43:42', '2018-10-12 05:24:40'),
(1180, 58, '2018-10-28', '01:00:00', 5, 4, '2018-10-11 02:43:43', '2018-10-12 05:24:41'),
(1181, 58, '2018-10-29', '01:00:00', 6, 5, '2018-10-11 02:43:43', '2018-10-12 05:24:42'),
(1182, 58, '2018-10-30', '01:00:00', 7, 6, '2018-10-11 02:43:43', '2018-10-12 05:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `company_time_tables`
--

CREATE TABLE `company_time_tables` (
  `id` int(11) NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedule_session_id` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_time_tables`
--

INSERT INTO `company_time_tables` (`id`, `company_id`, `created_at`, `updated_at`, `schedule_session_id`) VALUES
(51, 63, '2018-09-21 13:29:41', '2018-09-21 13:29:41', '1'),
(52, 73, '2018-09-21 13:29:44', '2018-09-21 13:29:44', '1'),
(53, 72, '2018-10-03 05:02:40', '2018-10-03 05:02:40', '5'),
(54, 63, '2018-10-07 02:31:31', '2018-10-07 02:31:31', '2'),
(55, 73, '2018-10-07 02:31:39', '2018-10-07 02:31:39', '2'),
(58, 72, '2018-10-11 02:43:35', '2018-10-11 02:43:35', '5bbf09b314e91'),
(59, 74, '2018-10-11 02:43:43', '2018-10-11 02:43:43', '5bbf09b314e91');

-- --------------------------------------------------------

--
-- Table structure for table `company_to_employee_rels`
--

CREATE TABLE `company_to_employee_rels` (
  `id` int(10) UNSIGNED NOT NULL,
  `psi_number` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_to_employee_rels`
--

INSERT INTO `company_to_employee_rels` (`id`, `psi_number`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 71203, 2, NULL, NULL),
(2, 71204, 2, NULL, NULL),
(3, 71205, 2, NULL, NULL),
(4, 71206, 2, NULL, NULL),
(5, 71207, 2, NULL, NULL),
(6, 71208, 2, NULL, NULL),
(7, 71209, 2, NULL, NULL),
(8, 71210, 2, NULL, NULL),
(9, 71211, 2, NULL, NULL),
(10, 71212, 2, NULL, NULL),
(11, 71248, 2, NULL, NULL),
(12, 71251, 2, NULL, NULL),
(13, 71252, 2, NULL, NULL),
(14, 71260, 2, NULL, NULL),
(15, 71292, 2, NULL, NULL),
(16, 71293, 2, NULL, NULL),
(17, 71294, 2, NULL, NULL),
(18, 71295, 2, NULL, NULL),
(19, 71299, 2, NULL, NULL),
(20, 71366, 2, NULL, NULL),
(21, 71367, 2, NULL, NULL),
(22, 71368, 2, NULL, NULL),
(23, 71369, 2, NULL, NULL),
(24, 71370, 2, NULL, NULL),
(25, 71371, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_to_user_rels`
--

CREATE TABLE `company_to_user_rels` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_users`
--

CREATE TABLE `company_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` int(11) DEFAULT NULL,
  `group_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_users`
--

INSERT INTO `company_users` (`id`, `name`, `email`, `password`, `language`, `group_id`, `created_at`, `updated_at`) VALUES
(6, 'my test1', 'mytest@mytest.com', '$2y$10$y2tdXwLYkRKxSvkgqV8MZOnQAL7pkL/H6FJdMU/fNujU0wLQVXdV2', 0, NULL, '2018-09-05 12:02:35', '2018-09-06 05:23:54'),
(9, 'Mytest2', 'mytest2@mytest.com', '$2y$10$otDWsKrVGrMrdxs7hE.5suPgkUeFqArffQiPliiRZEaGDISyYYS9W', 0, NULL, '2018-09-06 04:33:11', '2018-09-06 04:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `psi_number` int(11) DEFAULT NULL,
  `base` varchar(50) DEFAULT NULL,
  `reg_officer` varchar(50) DEFAULT NULL,
  `for_work` varchar(50) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `retirement_date` date DEFAULT NULL,
  `opt_management` varchar(50) DEFAULT NULL,
  `country_citizenship` varchar(50) DEFAULT NULL,
  `contract_collection` varchar(50) DEFAULT NULL,
  `res_confirmation` varchar(50) DEFAULT NULL,
  `phoetic_kanji` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `cell_no` varchar(50) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `address_jp` varchar(50) DEFAULT NULL,
  `residence_card_no` varchar(50) DEFAULT NULL,
  `residence_card_exp_date` date DEFAULT NULL,
  `business_content` varchar(50) DEFAULT NULL,
  `dispatch_destination` varchar(50) DEFAULT NULL,
  `work_location` varchar(50) DEFAULT NULL,
  `name_of_facility` varchar(50) DEFAULT NULL,
  `hourly_wage` decimal(2,0) DEFAULT NULL,
  `path` varchar(50) DEFAULT NULL,
  `one_way_rate` decimal(2,0) DEFAULT NULL,
  `pass_price` varchar(100) DEFAULT NULL,
  `hourly_employee` varchar(50) DEFAULT NULL,
  `status_residence` varchar(50) DEFAULT NULL,
  `dependent_exemption` varchar(50) DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account` varchar(191) NOT NULL,
  `input` varchar(191) NOT NULL,
  `operating_status` varchar(191) NOT NULL,
  `office` varchar(191) NOT NULL,
  `old_double_registration` varchar(191) NOT NULL,
  `lane_employee_no` varchar(191) NOT NULL,
  `phonetic` varchar(191) NOT NULL,
  `viber_install` tinyint(1) NOT NULL,
  `email` varchar(191) NOT NULL,
  `school_information` varchar(191) NOT NULL,
  `place` varchar(191) NOT NULL,
  `financial_institution` varchar(191) NOT NULL,
  `branch_name` varchar(191) NOT NULL,
  `account_number` varchar(191) NOT NULL,
  `account_holder` varchar(191) NOT NULL,
  `expiration_date` varchar(191) NOT NULL,
  `account_registration` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `psi_number`, `base`, `reg_officer`, `for_work`, `hire_date`, `retirement_date`, `opt_management`, `country_citizenship`, `contract_collection`, `res_confirmation`, `phoetic_kanji`, `name`, `birthdate`, `sex`, `cell_no`, `postal_code`, `address_jp`, `residence_card_no`, `residence_card_exp_date`, `business_content`, `dispatch_destination`, `work_location`, `name_of_facility`, `hourly_wage`, `path`, `one_way_rate`, `pass_price`, `hourly_employee`, `status_residence`, `dependent_exemption`, `notes`, `created_at`, `updated_at`, `account`, `input`, `operating_status`, `office`, `old_double_registration`, `lane_employee_no`, `phonetic`, `viber_install`, `email`, `school_information`, `place`, `financial_institution`, `branch_name`, `account_number`, `account_holder`, `expiration_date`, `account_registration`) VALUES
(22, 71367, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', 'N', NULL, 'ﾏﾀﾕﾌ　ﾐﾗﾌﾞﾛﾙ', 'MATAEV MIRABROR', '1997-01-16', '男性', '070－1547－1993', NULL, '東京都北区岸町2-9-15', 'PN49504436FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(23, 71368, NULL, NULL, NULL, NULL, '2018-05-01', NULL, NULL, NULL, NULL, 'ｼｮｳｷﾛﾌﾞ ｼｮｸﾙｸﾍﾞｸ', 'SHOKIROV SHOKHRUCHBEK', '1998-01-06', '男性', NULL, NULL, '東京都北区岸町2-9-15', 'PN88719332FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(30, 71369, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', 'Y', NULL, NULL, 'MUKHAMMADJONOV KHUSNIDDIN', '1997-08-20', '男性', NULL, NULL, '東京都北区岸町2-9-15', 'PN44771133FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 01:47:10', '2018-10-05 01:47:10', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(31, 71370, NULL, NULL, NULL, NULL, '2018-05-01', NULL, NULL, NULL, NULL, 'ﾄｼﾞﾃﾞｨﾝﾉﾌﾞ　ﾗﾑｼﾞﾃﾞｨﾝ', 'TEJIDDINOV RAMZIDDIN', '1988-03-30', '男性', NULL, NULL, '東京都練馬区関町北4丁目10番16号', 'PN25394486FA', '2019-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-05 01:47:10', '2018-10-05 01:47:10', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(32, 71371, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', 'Y', NULL, 'ｲｿｺﾌ　ﾍﾞｷｿﾞﾄﾞ', 'ISOKOV BEKZOD \n', '1997-04-13', '男性', '070-1547-1993', NULL, '東京都北区岸町2-9-15', 'PN83295082FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 01:47:10', '2018-10-05 01:47:10', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(33, 71203, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'ET', 'Y', NULL, 'ﾃｽﾌｧ ﾊﾅ ｹﾞﾙﾏ', 'Tesfa Hana Girma', '1992-05-29', '女性', '070-2793-5454', NULL, '埼玉県さいたま市見沼区春岡3丁目18番5メゾン東大宮102', 'DU21179800FA', '2018-12-14', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '家族滞在', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(34, 71204, NULL, 'チェ', NULL, '2018-01-03', '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾚ ｺﾞｯｸ ﾋｴﾌﾟ', 'LE NGOC HIEP', '1985-09-09', '男性', '070-4356-1639', NULL, '東京都江戸川区中葛西5-1-10 ニシキハイツ201', 'PN21748922EF', '2019-05-24', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(35, 71205, NULL, 'チェ', '名前のみ重複', NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ｸﾞｴﾝ ﾊﾞﾝ ﾄﾞｩｸ', 'Nguyen Van Duc', '1995-01-02', '男性', '080-2169-1995', NULL, '12番3号栗原ビル203', 'PN06461714GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(36, 71206, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ｼﾞｵﾝ ﾃｨ ｸｪﾝ', 'Doung Thi Quyen', '1998-05-22', '女性', '080-7885-1998', NULL, '東京都日本堤1丁目12番3号栗原ビル201', 'PN90367250GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(37, 71207, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾁﾝ ｸｱﾝ ﾐﾝ', 'TRINH QUANG MINH', '1997-05-26', '男性', '070-4229-1997', NULL, '東京都荒川区荒川4丁目2番4号MKﾋﾞﾙ402', 'EG7132800EA', '2018-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(38, 71208, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾏｲ ﾃｨ ﾄｳ ﾎｱﾝ', 'Mai Thi Thu Huong', '1998-10-12', '女性', '080-2116-6789', NULL, '東京都台東区日本堤1丁目12番3号栗原ビル201', 'PN70753263GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(39, 71209, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾚｰ ﾃｨ ﾌｫﾝ ﾄｩ', 'Le Thi Phuong Thu', '1991-09-01', '女性', '080-7898-6868', NULL, '東京都荒川区荒川4丁目2番4号MKﾋﾞﾙ601', 'PN50202261GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(40, 71210, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ｳﾞｫ ﾁｳｵﾝ ｱｲﾝ ﾀﾞｵ', 'Vo Truong Anh Dao', '1993-09-02', '女性', '070-2191-8893', NULL, '東京都新宿区北新宿3丁目28番12号ジュネス北新宿303', 'EG20761713FA', '2018-09-19', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(41, 71211, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾚ ﾄｩ ｱｲﾝ', 'Le Tu Anh', '1999-09-09', '女性', NULL, NULL, '東京都荒川区荒川4丁目2番4号MKﾋﾞﾙ601', 'PN06407418GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル/お茶の水イン', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(42, 71212, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'ET', 'Y', NULL, 'ｱﾀﾞﾑ ｼﾞｴﾙｻﾚﾑ ﾃﾞﾒｼｰ', 'Adamu Jerusalem Demissie', '1991-07-12', '女性', '080-5506-2121', NULL, '東京都千代田区神田須田町2丁目2番1パークｷｭｰﾌ神田１００５号', 'PN10861084EA', '2018-10-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '特定活動', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(43, 71248, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'VN', 'Y', NULL, 'ｸﾞｴﾝ ﾃｨ ｼｬﾝ', 'Nguyen Thi Trang', '1992-05-20', '女性', '080-5092-3802', NULL, '埼玉県ふじみ野市上福岡3丁目14番10号ハイツシバタ2-210', 'EG49521126EA', '2018-11-22', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', '99', NULL, NULL, '5月・6月上限2万円⇒7月以降上限1万円', '2', '就労', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(44, 71251, NULL, 'フン', NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ｸﾞｪﾝ ﾄﾞｯｸ ﾄｰ', 'Nguyen Duc Tho', '1993-08-08', '男性', '070-2191-8893', NULL, '東京都新宿区北新宿3-28-12 ジュネス北新宿303', 'PN90558396EA', '2019-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(45, 71252, NULL, 'フン', NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ﾁｬﾝ ﾏﾝ ﾌﾝ', 'Tran Manh Hung', '1997-04-10', '男性', '070-4298-8481', NULL, '東京都豊島区高田2-5-16 白鳩ビル 402号', 'EG79603102EA', '2018-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(46, 71260, NULL, 'フン', NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ｸﾞｪﾝ ﾃﾞｨﾝ ﾜｧﾝ', 'Nguyen Dinh Quan', '1995-03-28', '男性', '080-9087-0667', NULL, '東京都豊島区高田1-28-1メゾン・ド・エコルス 408号', 'EG04126616FA', '2018-09-28', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(47, 71292, NULL, NULL, 'ﾌﾝ：0613確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ﾄﾞ ﾃｨ ﾀｵ ﾎﾝ', 'DO THI THAO HONG', '1986-11-04', '女性', '070-4238-7882', NULL, '群馬県邑楽郡大泉町西小泉5-2-1 株式会社さくら202号', 'EG11895258KA', '2018-06-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '技能実習1号口', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(48, 71293, NULL, NULL, 'ﾌﾝ：0614確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ﾀﾞｵ　ﾃｨ　ｵｱﾝ', 'DAO THI OANH', '1981-09-06', '女性', '070-4238-7882', NULL, '群馬県邑楽郡大泉町西小泉5-2-1 株式会社さくら202号', 'EG37591427KA', '2018-06-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '技能実習1号口', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(49, 71294, NULL, NULL, 'ﾌﾝ：0614確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ｸﾞｴﾝ　ﾃｨ　ｵｱﾝ', 'NGUYEN THI OANH', '1987-04-27', '女性', '070-4238-7882', NULL, '群馬県邑楽郡大泉町西小泉5-2-1 株式会社さくら202号', 'EG15052713KA', '2018-06-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '技能実習1号口', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(50, 71295, NULL, NULL, 'ﾌﾝ：0614確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ﾌﾞ　ﾃｲ　ｽｱﾝ', 'VU THI XUAN', '1996-02-29', '女性', NULL, NULL, '東京都新宿区下落合4-13-13 レオパレス目白A 21号', 'EG25600723EA', '2019-08-17', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(51, 71299, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ﾌｪ　ﾃｨ　ﾃｪ　ﾁｬﾝ', 'Vu Thi Thu Trang', '1992-08-02', '女性', NULL, NULL, '千葉県柏市今谷上町44-7 ベルデュール106', 'EG74611484EA', '2020-05-23', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '2', '就労', NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(52, 71366, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', NULL, NULL, 'ﾌｧｸﾘﾁﾞﾝ', 'MAKHAMMADVALIEV FAKHRIDDIN', '1997-10-26', '男性', NULL, NULL, '住所不明', 'PN86389671FA', '2020-07-17', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-05 03:49:55', '2018-10-05 03:49:55', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_availabilities`
--

CREATE TABLE `employee_availabilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `psi_number` int(10) UNSIGNED NOT NULL,
  `sunday` time DEFAULT NULL,
  `monday` time DEFAULT NULL,
  `tuesday` time DEFAULT NULL,
  `wednesday` time DEFAULT NULL,
  `thursday` time DEFAULT NULL,
  `friday` time DEFAULT NULL,
  `saturday` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_availabilities`
--

INSERT INTO `employee_availabilities` (`id`, `psi_number`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `created_at`, `updated_at`) VALUES
(1, 71205, '20:00:00', '22:00:00', '21:00:00', '09:00:00', '13:00:00', '23:00:00', '10:00:00', NULL, '2018-09-02 04:24:50'),
(4, 71203, '12:00:00', '11:00:00', '10:00:00', '09:00:00', '08:00:00', '07:00:00', '06:00:00', '2018-08-14 05:41:38', '2018-08-14 06:01:41'),
(5, 71204, '17:00:00', '16:00:00', '15:00:00', '14:00:00', '20:00:00', '19:00:00', '11:00:00', '2018-09-02 04:11:38', '2018-09-27 02:12:42'),
(6, 71207, '16:00:00', '14:00:00', '10:00:00', '11:00:00', '11:00:00', '14:00:00', '16:00:00', '2018-09-04 03:49:52', '2018-09-04 03:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `employee_logins`
--

CREATE TABLE `employee_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `psi_number` bigint(20) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_logins`
--

INSERT INTO `employee_logins` (`id`, `psi_number`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 71203, '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL),
(3, 71204, '$2y$10$B5B7gKYZxyjgPW8heZ6GcuK8Ca2QWrjz3Pf3W4qMrCLl1q/Tandcy', 'hhIj085v9TBp1t0BZyg3i5Am5Uacv2a8KIUYeCBlDgBX78IYWkztFnknEFk8', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_skills`
--

CREATE TABLE `employee_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `psi_num` int(11) NOT NULL,
  `skill_id` int(191) UNSIGNED NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_skills`
--

INSERT INTO `employee_skills` (`id`, `psi_num`, `skill_id`, `updated_by`, `created_at`, `updated_at`) VALUES
(26, 71204, 70, NULL, NULL, NULL),
(27, 71204, 71, NULL, NULL, NULL),
(28, 71203, 70, NULL, NULL, NULL),
(29, 71203, 71, NULL, NULL, NULL),
(30, 71203, 72, NULL, NULL, NULL),
(31, 71207, 70, NULL, NULL, NULL),
(32, 71207, 72, NULL, NULL, NULL),
(33, 71207, 76, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`) VALUES
(1, '男性'),
(2, '女性');

-- --------------------------------------------------------

--
-- Table structure for table `leaders`
--

CREATE TABLE `leaders` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `psi_num` int(11) NOT NULL,
  `contact_num` bigint(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaders`
--

INSERT INTO `leaders` (`id`, `company_id`, `psi_num`, `contact_num`, `created_at`, `updated_at`) VALUES
(4, 62, 71204, 28951232465, '2018-09-26 02:56:08', '2018-09-26 02:56:08');

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
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2018_07_20_111440_create_companies_table', 2),
(7, '2018_07_20_125213_create_sheets_table', 3),
(8, '2018_07_31_083903_create_usertypes_table', 3),
(10, '2018_07_31_091920_add_usertypeid_column_to_user_table', 5),
(11, '2018_07_31_094009_drop_column_timestamps_from_usertypes_table', 6),
(12, '2018_07_31_100935_rename_table_usertypes', 7),
(13, '2018_08_01_093529_add_column_to_companies_table', 8),
(16, '2018_08_02_114717_create_employee_availabilities_table', 9),
(17, '2018_08_08_065628_create_permission_tables', 10),
(18, '2018_08_10_103232_drop_column_usertype_id', 11),
(19, '2018_07_26_151510_create_genders_table', 12),
(20, '2018_08_12_113841_create_company_schedules_table', 13),
(21, '2018_08_12_114113_create_company_time_tables_table', 13),
(23, '2018_08_15_055739_rename_columns_of_availability_table', 14),
(24, '2018_08_15_103526_drop_master_company_column', 15),
(25, '2018_08_22_104117_create_shift_master_datas_table', 16),
(26, '2018_08_23_185909_create_leaders_table', 17),
(27, '2018_08_29_084910_create_employee_skills_table', 18),
(28, '2018_09_05_093312_create_company_users_table', 19),
(29, '2018_09_05_112938_create_self_sheet_comments_table', 20),
(30, '2018_09_06_091028_create_psi_alert_settings', 20),
(31, '2018_09_06_095052_create_company_to_user_rels_table', 20),
(32, '2018_09_07_064809_create_user_groups_table', 21),
(33, '2018_09_08_142854_create_audits_table', 22),
(34, '2018_09_09_171651_create_viber_bot_request', 23),
(35, '2018_09_17_213639_create_company_to_employee_rels_table', 24),
(36, '2018_09_19_084307_create_skill_master_table', 24),
(37, '2018_09_23_224835_create_employee_logins_table', 25),
(38, '2018_09_23_151047_create_psi_view_customizable_table', 26),
(39, '2018_09_30_141601_create_psi_permission_table', 27),
(40, '2018_10_03_100622_create_roles_to_permission_rels_table', 27),
(41, '2018_10_04_065556_create_user_to_permission_rels_table', 28),
(42, '2018_10_05_110739_add_column_to_employees_table', 29),
(43, '2018_10_07_161634_create_psi_viber_story_table', 29),
(44, '2018_10_08_093948_create_psi_viber_commands_table', 29),
(45, '2018_10_09_092556_add_column_to_company_time_tables_table', 29),
(46, '2018_10_11_072809_change_column_from_company_time_tables_table', 30);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Create Role', 'web', '2018-08-08 23:38:32', '2018-08-08 23:38:32'),
(2, 'Create Employee', 'web', '2018-08-09 04:08:07', '2018-08-09 04:08:07'),
(3, 'Create User', 'web', '2018-08-09 04:08:27', '2018-08-09 04:08:27'),
(4, 'Modify User', 'web', '2018-08-09 04:08:53', '2018-08-09 04:08:53'),
(5, 'Modify Employee', 'web', '2018-08-09 04:09:09', '2018-08-09 04:09:09'),
(6, 'Modify Role', 'web', '2018-08-09 04:09:24', '2018-08-09 04:09:24'),
(7, 'Modify Company', 'web', '2018-08-09 04:09:38', '2018-08-09 04:09:38'),
(8, 'Delete Role', 'web', '2018-08-09 04:12:12', '2018-08-09 04:12:12'),
(9, 'Delete Permission', 'web', '2018-08-09 04:12:26', '2018-08-09 04:12:26'),
(10, 'Administer roles & permissions', 'web', '2018-08-09 04:26:59', '2018-08-09 04:26:59'),
(11, 'Create Company', 'web', '2018-08-09 04:31:32', '2018-08-09 04:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `psi_alert_settings`
--

CREATE TABLE `psi_alert_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '10,21,XXX',
  `interval_types` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'year,month,day,second',
  `interval_endpoint` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no' COMMENT 'count to be halt',
  `medium` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'viber/sms/email',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psi_alert_settings`
--

INSERT INTO `psi_alert_settings` (`id`, `schedule_title`, `interval_value`, `interval_types`, `interval_endpoint`, `medium`, `created_at`, `updated_at`) VALUES
(1, 'card expiry', '30', 'days', NULL, 'viber', '2018-09-28 05:58:07', '2018-09-28 05:58:07'),
(2, 'before one day', '15', 'minutes', '5', 'viber', '2018-09-28 05:58:07', '2018-09-28 05:58:07'),
(3, 'before three hours', '15', 'minutes', '5', 'viber', '2018-09-28 05:58:07', '2018-09-28 05:58:07'),
(4, 'arrival confirmation', '15', 'minutes', '5', 'viber', '2018-09-28 05:58:07', '2018-09-28 05:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `psi_dessert_entry`
--

CREATE TABLE `psi_dessert_entry` (
  `id` int(11) NOT NULL,
  `cts_id` int(10) UNSIGNED NOT NULL,
  `staff_no` int(11) DEFAULT NULL,
  `responsible1` varchar(191) DEFAULT NULL,
  `conformation_day_before` varchar(191) DEFAULT NULL,
  `responsible2` varchar(191) DEFAULT NULL,
  `conformation_3_hours_ago` varchar(191) DEFAULT NULL,
  `arrival_time_if_late` time DEFAULT NULL,
  `reason_for_late` varchar(191) DEFAULT NULL,
  `call_medium` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `flag` varchar(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `psi_dessert_entry`
--

INSERT INTO `psi_dessert_entry` (`id`, `cts_id`, `staff_no`, `responsible1`, `conformation_day_before`, `responsible2`, `conformation_3_hours_ago`, `arrival_time_if_late`, `reason_for_late`, `call_medium`, `created_at`, `updated_at`, `flag`, `deleted_at`) VALUES
(1, 371, 71203, 'Pramod', 'Not OK', 'Dai', NULL, '00:04:12', 'traffic', 'call', '2018-09-03 05:05:06', '2018-09-03 10:50:06', '', '0000-00-00 00:00:00'),
(3, 652, 71206, 'pramod', 'OK', 'dai', 'OK', NULL, NULL, NULL, '2018-09-07 04:48:09', '2018-09-07 10:41:14', '', '0000-00-00 00:00:00'),
(4, 652, 71208, 'test', 'OK', 'test2', 'Not OK', NULL, NULL, NULL, '2018-09-07 04:56:50', '2018-09-07 12:07:06', '', '0000-00-00 00:00:00'),
(5, 546, 71248, NULL, 'Not OK', NULL, NULL, NULL, NULL, NULL, '2018-09-09 07:37:40', '2018-09-09 13:24:56', '', '0000-00-00 00:00:00'),
(6, 722, 71203, NULL, 'OK', NULL, 'OK', NULL, NULL, 'viber', '2018-09-21 13:32:35', '2018-09-21 19:20:29', '', '0000-00-00 00:00:00'),
(7, 722, 71204, NULL, 'OK', NULL, 'Not OK', '07:15:00', 'traffic', 'viber', '2018-09-21 13:32:56', '2018-09-21 19:20:16', '', '0000-00-00 00:00:00'),
(8, 722, 71205, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, '2018-09-21 13:34:22', '2018-09-21 19:20:53', '', '0000-00-00 00:00:00'),
(9, 808, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-03 23:39:00', '2018-10-04 05:24:00', '', NULL),
(10, 790, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-03 23:41:57', '2018-10-04 05:26:57', '', NULL),
(11, 752, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-04 06:09:30', '2018-10-04 11:56:14', 'red', '2018-10-04 06:11:14'),
(12, 742, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 22:45:22', '2018-10-07 04:30:22', '', NULL),
(14, 813, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-07 02:50:57', '2018-10-07 08:35:57', '', NULL),
(15, 795, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-07 06:52:46', '2018-10-07 12:37:46', '', NULL),
(16, 814, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-07 12:52:46', '2018-10-07 18:37:46', '', NULL),
(17, 778, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-07 12:53:16', '2018-10-07 18:38:16', '', NULL),
(18, 779, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 04:19:13', '2018-10-08 10:04:13', '', NULL),
(19, 797, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 04:22:32', '2018-10-08 10:07:32', '', NULL),
(20, 1164, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-12 04:14:22', '2018-10-12 09:59:22', '', NULL),
(21, 1125, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-12 04:16:59', '2018-10-12 10:01:59', '', NULL),
(22, 1126, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-12 04:17:49', '2018-10-12 10:02:49', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `psi_permission`
--

CREATE TABLE `psi_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `perm_desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perm_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heads` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psi_permission`
--

INSERT INTO `psi_permission` (`id`, `perm_desc`, `prefix`, `perm_name`, `heads`, `method`, `created_at`, `updated_at`) VALUES
(1, '_debugbar/open', '_debugbar', 'debugbar.openhandler', 'GET', 'Barryvdh\\Debugbar\\Controllers\\OpenHandlerController@handle', '2018-10-03 04:32:37', '2018-10-03 04:32:37'),
(2, '_debugbar/clockwork/{id}', '_debugbar', 'debugbar.clockwork', 'GET', 'Barryvdh\\Debugbar\\Controllers\\OpenHandlerController@clockwork', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(3, '_debugbar/assets/stylesheets', '_debugbar', 'debugbar.assets.css', 'GET', 'Barryvdh\\Debugbar\\Controllers\\AssetController@css', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(4, '_debugbar/assets/javascript', '_debugbar', 'debugbar.assets.js', 'GET', 'Barryvdh\\Debugbar\\Controllers\\AssetController@js', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(5, '_debugbar/cache/{key}/{tags?}', '_debugbar', 'debugbar.cache.delete', 'DELETE', 'Barryvdh\\Debugbar\\Controllers\\CacheController@delete', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(6, 'changelocale', NULL, 'changelocale', 'POST', 'App\\Http\\Controllers\\TranslationController@changeLocale', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(7, 'changecompany/{id}/{name}', NULL, 'changecompany', 'GET', 'App\\Http\\Controllers\\UserController@changeCompany', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(8, 'primary/{id}', NULL, ' selectPrimary', 'GET', 'App\\Http\\Controllers\\UserController@selectPrimary', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(9, 'select/primary', NULL, 'primary', 'GET', 'App\\Http\\Controllers\\UserController@primary', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(10, 'employee/login', NULL, 'employee.login', 'POST', 'App\\Http\\Controllers\\Auth\\EmployeeLoginController@login', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(11, 'employee/logout', NULL, 'employee.logout', 'GET', 'App\\Http\\Controllers\\Auth\\EmployeeLoginController@logout', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(12, 'login', NULL, 'login', 'GET', 'App\\Http\\Controllers\\Auth\\LoginController@showLoginForm', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(13, 'logout', NULL, 'logout', 'POST', 'App\\Http\\Controllers\\Auth\\LoginController@logout', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(14, 'register', NULL, 'register', 'GET', 'App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(15, 'password/reset', NULL, 'password.request', 'GET', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@showLinkRequestForm', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(16, 'password/email', NULL, 'password.email', 'POST', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@sendResetLinkEmail', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(17, 'password/reset/{token}', NULL, 'password.reset', 'GET', 'App\\Http\\Controllers\\Auth\\ResetPasswordController@showResetForm', '2018-10-03 04:32:38', '2018-10-03 04:32:38'),
(18, 'employee/dashboard', '/employee', 'employee.dashboard', 'GET', 'App\\Http\\Controllers\\Employee\\Dashboard@index', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(19, 'employee/getDataForCalendar', '/employee', 'getDataForCalendar', 'GET', 'App\\Http\\Controllers\\Employee\\Dashboard@getDataForCalendar', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(20, 'employee/storeEmployeeApplication', '/employee', 'storeEmployeeApplication', 'POST', 'App\\Http\\Controllers\\Employee\\Dashboard@storeEmployeeApplication', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(21, 'employee/getCompanyName', '/employee', 'getCompanyName', 'GET', 'App\\Http\\Controllers\\Employee\\Dashboard@getCompanyName', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(22, 'employees', '/employees', 'employees', 'GET', 'App\\Http\\Controllers\\EmployeeController@index', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(23, 'employees/show', '/employees', 'employees.show', 'GET', 'App\\Http\\Controllers\\EmployeeController@show', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(24, 'employees/upload', '/employees', 'employees.uploadForm', 'GET', 'App\\Http\\Controllers\\EmployeeController@uploadForm', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(25, 'employees/upload', '/employees', 'employees.upload', 'POST', 'App\\Http\\Controllers\\EmployeeController@upload', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(26, 'employees/updateCell', '/employees', 'employees.updateCell', 'POST', 'App\\Http\\Controllers\\EmployeeController@updateCell', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(27, 'employees/availability', '/employees', 'availability.index', 'GET', 'App\\Http\\Controllers\\EmployeeAvailabilityController@index', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(28, 'employees/availability/add', '/employees', 'availability.add', 'GET', 'App\\Http\\Controllers\\EmployeeAvailabilityController@add', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(29, 'employees/availability/create', '/employees', 'availability.store', 'POST', 'App\\Http\\Controllers\\EmployeeAvailabilityController@store', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(30, 'employees/availability/edit', '/employees', 'availability.edit', 'GET', 'App\\Http\\Controllers\\EmployeeAvailabilityController@edit', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(31, 'employees/ajaxupdate', '/employees', 'availability.ajaxupdate', 'POST', 'App\\Http\\Controllers\\EmployeeAvailabilityController@ajaxUpdate', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(32, 'employees/getAvailability', '/employees', 'getAvailability', 'GET', 'App\\Http\\Controllers\\EmployeeAvailabilityController@getAvailability', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(33, 'employees/updateAvailability', '/employees', 'updateAvailability', 'POST', 'App\\Http\\Controllers\\EmployeeAvailabilityController@updateAvailability', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(34, 'employees/showAvailability', '/employees', 'showAvailability', 'GET', 'App\\Http\\Controllers\\EmployeeAvailabilityController@showAvailability', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(35, 'employees/skill', '/employees', 'employee.skill', 'GET', 'App\\Http\\Controllers\\EmployeeSkillController@add', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(36, 'employees/skill', '/employees', 'skill.store', 'POST', 'App\\Http\\Controllers\\EmployeeSkillController@store', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(37, 'employees/skill/addmore', '/employees', 'skill.addmore', 'POST', 'App\\Http\\Controllers\\EmployeeSkillController@addSkill', '2018-10-03 04:32:39', '2018-10-03 04:32:39'),
(38, 'employees/skill/all', '/employees', 'skill.all', 'GET', 'App\\Http\\Controllers\\EmployeeSkillController@findSkill', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(39, 'employees/skill/delete', '/employees', 'delete.skill', 'GET', 'App\\Http\\Controllers\\EmployeeSkillController@removeSkill', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(40, 'report/employee_report', '/report', 'employee.detail.report', 'GET', 'App\\Http\\Controllers\\EmployeeController@FetchEmployeeDetails', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(41, 'column/customize', '/column', 'customize.field', 'POST', 'App\\Http\\Controllers\\CustomerTableView@saveCustomizedField', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(42, 'column/update_field/{type}', '/column', 'field_update', 'GET', 'App\\Http\\Controllers\\CustomerTableView@update_table_view', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(43, 'company/manage', '/company', 'manageCompanies', 'GET', 'App\\Http\\Controllers\\CompanyController@manageCompanies', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(44, 'company/manage', '/company', 'company.saveCompany', 'POST', 'App\\Http\\Controllers\\CompanyController@saveCompany', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(45, 'company/create', '/company', 'company.create', 'GET', 'App\\Http\\Controllers\\CompanyController@create', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(46, 'company/view', '/company', 'company.details', 'GET', 'App\\Http\\Controllers\\CompanyController@viewDetail', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(47, 'company/create', '/company', 'company.store', 'POST', 'App\\Http\\Controllers\\CompanyController@store', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(48, 'company/edit/{id}', '/company', 'company.edit', 'GET', 'App\\Http\\Controllers\\CompanyController@edit', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(49, 'company/{id}', '/company', 'company.update', 'PUT', 'App\\Http\\Controllers\\CompanyController@update', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(50, 'company/sub', '/company', 'company.sub', 'GET', 'App\\Http\\Controllers\\CompanyController@sub', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(51, 'company/subCompanyUpdate', '/company', 'subcompany', 'POST', 'App\\Http\\Controllers\\CompanyController@subCompanyUpdate', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(52, 'company/getSection', '/company', 'getSection', 'GET', 'App\\Http\\Controllers\\CompanyController@getSection', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(53, 'company/subSection', '/company', 'subSection', 'GET', 'App\\Http\\Controllers\\CompanyController@subSection', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(54, 'company/update', '/company', 'updateCompanies', 'POST', 'App\\Http\\Controllers\\CompanyController@updateCompanies', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(55, 'company/addmoreSection', '/company', 'addmoreSection', 'POST', 'App\\Http\\Controllers\\CompanyController@addmoreSection', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(56, 'company/addmoreSubsection', '/company', 'addmoreSubsection', 'POST', 'App\\Http\\Controllers\\CompanyController@addmoreSubsection', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(57, 'company/shifts/add', '/company', 'shift.add', 'GET', 'App\\Http\\Controllers\\ShiftMasterController@add', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(58, 'company/shifts/add', '/company', 'shift.store', 'POST', 'App\\Http\\Controllers\\ShiftMasterController@store', '2018-10-03 04:32:40', '2018-10-03 04:32:40'),
(59, 'company/shifts/edit/{id}', '/company', 'shift.edit', 'GET', 'App\\Http\\Controllers\\ShiftMasterController@edit', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(60, 'company/shifts/{id}', '/company', 'shift.update', 'PUT', 'App\\Http\\Controllers\\ShiftMasterController@update', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(61, 'company/users/add', '/company', 'company.users.store', 'POST', 'App\\Http\\Controllers\\CompanyUserController@storeUser', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(62, 'company/users/edit/{id}', '/company', 'company.users.edit', 'GET', 'App\\Http\\Controllers\\CompanyUserController@editUser', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(63, 'company/users/{id}', '/company', 'company.users.update', 'PUT', 'App\\Http\\Controllers\\CompanyUserController@updateUser', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(64, 'company/group', '/company', 'user_group', 'GET', 'App\\Http\\Controllers\\UserGroupController@index', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(65, 'company/group/add', '/company', 'group.add', 'POST', 'App\\Http\\Controllers\\UserGroupController@addGroup', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(66, 'permission_module/roles/update-{role_id}', '/permission_module', 'update.role', 'GET/POST', 'App\\Http\\Controllers\\PsiPermissionController@updateRole', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(67, 'dashboard', NULL, 'dashboard', 'GET', 'App\\Http\\Controllers\\DashboardController@index', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(68, 'skills', '/skills', 'manageSkills', 'GET', 'App\\Http\\Controllers\\SkillMasterController@manage', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(69, 'skills/add', '/skills', 'skills.master.add', 'POST', 'App\\Http\\Controllers\\SkillMasterController@addSkills', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(70, 'skills/remove', '/skills', 'skills.master.remove', 'POST', 'App\\Http\\Controllers\\SkillMasterController@removeSkills', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(71, 'skills/rename', '/skills', 'skills.master.rename', 'POST', 'App\\Http\\Controllers\\SkillMasterController@rename', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(72, 'users', '/users', 'users.index', 'GET', 'App\\Http\\Controllers\\UserController@index', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(73, 'users/create', '/users', 'users.create', 'GET', 'App\\Http\\Controllers\\UserController@createUser', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(74, 'users/create', '/users', 'users.store', 'POST', 'App\\Http\\Controllers\\UserController@store', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(75, 'users/edit/{id}', '/users', 'users.edit', 'GET', 'App\\Http\\Controllers\\UserController@editUser', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(76, 'users/{id}', '/users', 'users.update', 'PUT', 'App\\Http\\Controllers\\UserController@updateUser', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(77, 'users/profile', '/users', 'profile', 'GET', 'App\\Http\\Controllers\\UserController@profile', '2018-10-03 04:32:41', '2018-10-03 04:32:41'),
(78, 'users/profile/{id}', '/users', 'updateProfile', 'PUT', 'App\\Http\\Controllers\\UserController@updateProfile', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(79, 'pages/user', '/pages', 'pages.users', 'GET', 'App\\Http\\Controllers\\PagesController@getUser', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(80, 'pages/employee', '/pages', 'pages.employee', 'GET', 'App\\Http\\Controllers\\PagesController@getEmployee', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(81, 'pages/total', '/pages', 'total.necessary', 'GET', 'App\\Http\\Controllers\\TotalNecessaryController@totalNecessary', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(82, 'pages/shift/generator', '/pages', 'generator', 'GET', 'App\\Http\\Controllers\\PagesController@generator', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(83, 'pages/shift/generator', '/pages', 'generator.store', 'POST', 'App\\Http\\Controllers\\PagesController@generatorStore', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(84, 'pages/shift', '/pages', 'pages.shift', 'GET', 'App\\Http\\Controllers\\PagesController@shift', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(85, 'pages/section', '/pages', 'section', 'GET', 'App\\Http\\Controllers\\PagesController@section', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(86, 'pages/shift/show/{id}', '/pages', 'shift.show', 'GET', 'App\\Http\\Controllers\\PagesController@show', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(87, 'pages/shift/generate', '/pages', 'generator.shift', 'GET', 'App\\Http\\Controllers\\PagesController@getShift', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(88, 'pages/ajax/shift/add', '/pages', 'ajax.add.shifts', 'POST', 'App\\Http\\Controllers\\PagesController@ajaxAddShifts', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(89, 'roles', NULL, 'roles.index', 'GET', 'App\\Http\\Controllers\\RoleController@index', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(90, 'roles/create', NULL, 'roles.create', 'GET', 'App\\Http\\Controllers\\RoleController@create', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(91, 'roles', NULL, 'roles.store', 'POST', 'App\\Http\\Controllers\\RoleController@store', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(92, 'roles/{role}', NULL, 'roles.show', 'GET', 'App\\Http\\Controllers\\RoleController@show', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(93, 'roles/{role}/edit', NULL, 'roles.edit', 'GET', 'App\\Http\\Controllers\\RoleController@edit', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(94, 'roles/{role}', NULL, 'roles.update', 'PUT/PATCH', 'App\\Http\\Controllers\\RoleController@update', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(95, 'roles/{role}', NULL, 'roles.destroy', 'DELETE', 'App\\Http\\Controllers\\RoleController@destroy', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(96, 'permissions/permissions', '/permissions', 'permissions.index', 'GET', 'App\\Http\\Controllers\\PermissionController@index', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(97, 'permissions/permissions/create', '/permissions', 'permissions.create', 'GET', 'App\\Http\\Controllers\\PermissionController@create', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(98, 'permissions/permissions', '/permissions', 'permissions.store', 'POST', 'App\\Http\\Controllers\\PermissionController@store', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(99, 'permissions/permissions/{permission}', '/permissions', 'permissions.show', 'GET', 'App\\Http\\Controllers\\PermissionController@show', '2018-10-03 04:32:42', '2018-10-03 04:32:42'),
(100, 'permissions/permissions/{permission}/edit', '/permissions', 'permissions.edit', 'GET', 'App\\Http\\Controllers\\PermissionController@edit', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(101, 'permissions/permissions/{permission}', '/permissions', 'permissions.update', 'PUT/PATCH', 'App\\Http\\Controllers\\PermissionController@update', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(102, 'permissions/permissions/{permission}', '/permissions', 'permissions.destroy', 'DELETE', 'App\\Http\\Controllers\\PermissionController@destroy', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(103, 'leader/create', '/leader', 'leader.create', 'GET', 'App\\Http\\Controllers\\LeaderController@create', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(104, 'leader/create', '/leader', 'leader.store', 'POST', 'App\\Http\\Controllers\\LeaderController@store', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(105, 'leader', '/leader', 'leader', 'GET', 'App\\Http\\Controllers\\LeaderController@showName', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(106, 'sheet/time_table', '/sheet', 'sheet.time_table', 'GET', 'App\\Http\\Controllers\\DessertController@generateTimeTable', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(107, 'sheet/self', '/sheet', 'sheet.dessert', 'GET', 'App\\Http\\Controllers\\DessertController@dessert', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(108, 'dessert', '/dessert', 'dessert', 'GET', 'App\\Http\\Controllers\\DessertController@generateDessert', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(109, 'dessert', '/dessert', 'dessert.store', 'POST', 'App\\Http\\Controllers\\DessertController@storeDessert', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(110, 'dessert/dessert_update', '/dessert', 'dessert.update', 'POST', 'App\\Http\\Controllers\\DessertController@dessert_update', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(111, 'viber/viber_it', '/viber', 'viber.send', 'POST', 'App\\Http\\Controllers\\ViberMessageController@store_message', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(112, 'viber/alert/setting', '/viber', 'viberAlert', 'GET', 'App\\Http\\Controllers\\ViberAlertController@setting', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(113, 'viber/alert/setting', '/viber', 'storeSetting', 'POST', 'App\\Http\\Controllers\\ViberAlertController@storeSetting', '2018-10-03 04:32:43', '2018-10-03 04:32:43'),
(114, 'viber_bot', NULL, 'viber_bot', 'GET/POST/PUT/PATCH/DELETE/OPTIONS', 'App\\Http\\Controllers\\ViberBitIntegration@handleViberRequest', '2018-10-03 04:32:43', '2018-10-03 04:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `psi_self_sheet_comments`
--

CREATE TABLE `psi_self_sheet_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `self_id` int(11) NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_medium` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psi_self_sheet_comments`
--

INSERT INTO `psi_self_sheet_comments` (`id`, `self_id`, `comments`, `msg_status`, `msg_medium`, `created_at`, `updated_at`) VALUES
(1, 4, 'Conform 3 hours ago~~Not OK~~sick', 'sent', 'viber', '2018-09-07 06:22:10', '2018-09-07 06:22:10'),
(2, 5, 'conformation_day_before~~Not OK~~sick 2', 'sent', 'viber', '2018-09-09 07:40:02', '2018-09-09 07:40:02'),
(3, 7, 'Conform 3 hours ago~~Not OK~~sick', 'sent', 'viber', '2018-09-21 13:34:39', '2018-09-21 13:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `psi_skill_master`
--

CREATE TABLE `psi_skill_master` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'enable,disable',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psi_skill_master`
--

INSERT INTO `psi_skill_master` (`id`, `skill_name`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(70, 'Painting', 'enabled', '', '2018-09-25 00:56:39', '2018-09-25 05:06:32'),
(71, 'Carpentering', 'enabled', '', '2018-09-25 00:56:43', '2018-09-26 00:57:27'),
(72, 'Typing', 'enabled', '', '2018-09-25 00:56:47', '2018-09-25 04:32:26'),
(74, 'Wiring', 'enabled', '', '2018-09-25 00:56:53', '2018-09-25 05:09:03'),
(76, 'Driving', 'enabled', '', '2018-09-25 06:58:11', '2018-09-25 07:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `psi_viber_bot`
--

CREATE TABLE `psi_viber_bot` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `psis_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_picutre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `psi_viber_commands`
--

CREATE TABLE `psi_viber_commands` (
  `id` int(10) UNSIGNED NOT NULL,
  `command` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `execute_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `execute_ja` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `psi_viber_story`
--

CREATE TABLE `psi_viber_story` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `step` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ask` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `psi_view_customizable`
--

CREATE TABLE `psi_view_customizable` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psi_view_customizable`
--

INSERT INTO `psi_view_customizable` (`id`, `type`, `field_name`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'employee', 'psi_number', 'y', '4', '4', NULL, '2018-09-26 02:07:24'),
(2, 'employee', 'base', 'y', '4', '4', NULL, '2018-09-26 02:07:24'),
(3, 'employee', 'reg_officer', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(4, 'employee', 'for_work', 'y', '4', '4', NULL, '2018-09-26 02:07:24'),
(5, 'employee', 'hire_date', 'y', '4', '4', NULL, '2018-09-26 02:07:24'),
(6, 'employee', 'retirement_date', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(7, 'employee', 'opt_management', 'y', '4', '4', NULL, '2018-09-26 02:07:24'),
(8, 'employee', 'country_citizenship', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(9, 'employee', 'contract_collection', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(10, 'employee', 'res_confirmation', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(11, 'employee', 'phoetic_kanji', 'y', '4', '4', NULL, '2018-09-26 02:07:24'),
(12, 'employee', 'name', 'y', '4', '4', NULL, '2018-09-26 02:07:24'),
(13, 'employee', 'birthdate', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(14, 'employee', 'sex', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(15, 'employee', 'cell_no', 'y', '4', '4', NULL, '2018-09-26 02:07:24'),
(16, 'employee', 'postal_code', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(17, 'employee', 'address_jp', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(18, 'employee', 'residence_card_no', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(19, 'employee', 'residence_card_exp_date', 'y', '4', '4', NULL, '2018-09-26 02:07:24'),
(20, 'employee', 'business_content', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(21, 'employee', 'dispatch_destination', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(22, 'employee', 'work_location', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(23, 'employee', 'name_of_facility', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(24, 'employee', 'hourly_wage', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(25, 'employee', 'path', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(26, 'employee', 'one_way_rate', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(27, 'employee', 'pass_price', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(28, 'employee', 'hourly_employee', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(29, 'employee', 'status_residence', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(30, 'employee', 'dependent_exemption', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(31, 'employee', 'notes', 'n', '4', '4', NULL, '2018-09-26 02:07:24'),
(32, 'employee', 'updated_at', 'n', '4', '4', NULL, '2018-09-26 02:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2018-08-09 03:50:54', '2018-08-09 03:50:54'),
(2, 'User', 'web', '2018-08-09 04:11:12', '2018-08-09 04:11:12'),
(3, 'Manager', 'web', '2018-08-09 04:11:41', '2018-08-09 04:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles_to_permission_rels`
--

CREATE TABLE `roles_to_permission_rels` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_to_permission_rels`
--

INSERT INTO `roles_to_permission_rels` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(267, 3, 'company', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(268, 3, '43', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(269, 3, '44', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(270, 3, '45', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(271, 3, '46', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(272, 3, '47', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(273, 3, '48', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(274, 3, '49', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(275, 3, '50', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(276, 3, '51', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(277, 3, '52', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(278, 3, '53', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(279, 3, '54', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(280, 3, '55', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(281, 3, '56', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(282, 3, '57', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(283, 3, '58', '2018-10-04 04:38:38', '2018-10-04 04:38:38'),
(284, 3, '59', '2018-10-04 04:38:39', '2018-10-04 04:38:39'),
(285, 3, '60', '2018-10-04 04:38:39', '2018-10-04 04:38:39'),
(286, 3, '61', '2018-10-04 04:38:39', '2018-10-04 04:38:39'),
(287, 3, '62', '2018-10-04 04:38:39', '2018-10-04 04:38:39'),
(288, 3, '63', '2018-10-04 04:38:39', '2018-10-04 04:38:39'),
(289, 3, '64', '2018-10-04 04:38:39', '2018-10-04 04:38:39'),
(290, 3, '65', '2018-10-04 04:38:39', '2018-10-04 04:38:39'),
(291, 2, 'employees', '2018-10-04 04:39:10', '2018-10-04 04:39:10'),
(292, 2, '22', '2018-10-04 04:39:10', '2018-10-04 04:39:10'),
(293, 2, '23', '2018-10-04 04:39:10', '2018-10-04 04:39:10'),
(294, 2, '24', '2018-10-04 04:39:10', '2018-10-04 04:39:10'),
(295, 2, '25', '2018-10-04 04:39:10', '2018-10-04 04:39:10'),
(296, 2, '26', '2018-10-04 04:39:10', '2018-10-04 04:39:10'),
(297, 2, '27', '2018-10-04 04:39:10', '2018-10-04 04:39:10'),
(298, 2, '28', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(299, 2, '29', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(300, 2, '30', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(301, 2, '31', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(302, 2, '32', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(303, 2, '33', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(304, 2, '34', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(305, 2, '35', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(306, 2, '36', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(307, 2, '37', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(308, 2, '38', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(309, 2, '39', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(310, 2, 'employee', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(311, 2, '18', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(312, 2, '19', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(313, 2, '20', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(314, 2, '21', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(315, 2, 'company', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(316, 2, '43', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(317, 2, '44', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(318, 2, '45', '2018-10-04 04:39:11', '2018-10-04 04:39:11'),
(319, 2, '46', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(320, 2, '47', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(321, 2, '48', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(322, 2, '49', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(323, 2, '50', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(324, 2, '51', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(325, 2, '52', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(326, 2, '53', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(327, 2, '54', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(328, 2, '55', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(329, 2, '56', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(330, 2, '57', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(331, 2, '58', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(332, 2, '59', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(333, 2, '60', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(334, 2, '61', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(335, 2, '62', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(336, 2, '63', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(337, 2, '64', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(338, 2, '65', '2018-10-04 04:39:12', '2018-10-04 04:39:12'),
(339, 1, 'viber', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(340, 1, '111', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(341, 1, '112', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(342, 1, '113', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(343, 1, 'users', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(344, 1, '72', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(345, 1, '73', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(346, 1, '74', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(347, 1, '75', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(348, 1, '76', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(349, 1, '77', '2018-10-04 04:39:56', '2018-10-04 04:39:56'),
(350, 1, '78', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(351, 1, 'skills', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(352, 1, '68', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(353, 1, '69', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(354, 1, '70', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(355, 1, '71', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(356, 1, 'sheet', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(357, 1, '106', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(358, 1, '107', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(359, 1, 'report', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(360, 1, '40', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(361, 1, 'permissions', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(362, 1, '96', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(363, 1, '97', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(364, 1, '98', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(365, 1, '99', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(366, 1, '100', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(367, 1, '101', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(368, 1, '102', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(369, 1, 'permission_module', '2018-10-04 04:39:57', '2018-10-04 04:39:57'),
(370, 1, '66', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(371, 1, 'pages', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(372, 1, '79', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(373, 1, '80', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(374, 1, '81', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(375, 1, '82', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(376, 1, '83', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(377, 1, '84', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(378, 1, '85', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(379, 1, '86', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(380, 1, '87', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(381, 1, '88', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(382, 1, 'leader', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(383, 1, '103', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(384, 1, '104', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(385, 1, '105', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(386, 1, 'employees', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(387, 1, '22', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(388, 1, '23', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(389, 1, '24', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(390, 1, '25', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(391, 1, '26', '2018-10-04 04:39:58', '2018-10-04 04:39:58'),
(392, 1, '27', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(393, 1, '28', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(394, 1, '29', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(395, 1, '30', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(396, 1, '31', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(397, 1, '32', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(398, 1, '33', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(399, 1, '34', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(400, 1, '35', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(401, 1, '36', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(402, 1, '37', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(403, 1, '38', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(404, 1, '39', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(405, 1, 'employee', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(406, 1, '18', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(407, 1, '19', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(408, 1, '20', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(409, 1, '21', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(410, 1, 'dessert', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(411, 1, '108', '2018-10-04 04:39:59', '2018-10-04 04:39:59'),
(412, 1, '109', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(413, 1, '110', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(414, 1, 'company', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(415, 1, '43', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(416, 1, '44', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(417, 1, '45', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(418, 1, '46', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(419, 1, '47', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(420, 1, '48', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(421, 1, '49', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(422, 1, '50', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(423, 1, '51', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(424, 1, '52', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(425, 1, '53', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(426, 1, '54', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(427, 1, '55', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(428, 1, '56', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(429, 1, '57', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(430, 1, '58', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(431, 1, '59', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(432, 1, '60', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(433, 1, '61', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(434, 1, '62', '2018-10-04 04:40:00', '2018-10-04 04:40:00'),
(435, 1, '63', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(436, 1, '64', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(437, 1, '65', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(438, 1, 'column', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(439, 1, '41', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(440, 1, '42', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(441, 1, '_debugbar', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(442, 1, '1', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(443, 1, '2', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(444, 1, '3', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(445, 1, '4', '2018-10-04 04:40:01', '2018-10-04 04:40:01'),
(446, 1, '5', '2018-10-04 04:40:01', '2018-10-04 04:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sheets`
--

CREATE TABLE `sheets` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `psi_num` int(11) NOT NULL,
  `column_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shift_master_datas`
--

CREATE TABLE `shift_master_datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(191) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shift_master_datas`
--

INSERT INTO `shift_master_datas` (`id`, `company_id`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(49, 63, '07:00:00', '10:00:00', '2018-09-21 12:00:05', '2018-09-28 01:05:55'),
(50, 63, '13:00:00', '18:00:00', '2018-09-21 12:00:06', '2018-09-21 12:00:06'),
(51, 73, '14:00:00', '18:00:00', '2018-09-21 13:12:05', '2018-09-21 13:12:05'),
(52, 63, '18:00:00', '21:00:00', '2018-09-21 13:16:47', '2018-09-21 13:16:47'),
(53, 73, '05:00:00', '09:00:00', '2018-09-21 13:17:29', '2018-09-21 13:17:29'),
(54, 73, '15:00:00', '19:00:00', '2018-09-25 07:29:51', '2018-09-25 07:29:51'),
(55, 72, '13:00:00', '19:00:00', '2018-09-25 07:31:44', '2018-09-25 07:31:44'),
(56, 72, '07:00:00', '12:00:00', '2018-09-26 00:59:30', '2018-09-26 00:59:30'),
(57, 72, '01:00:00', '05:00:00', '2018-09-26 01:11:48', '2018-09-26 01:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` int(11) DEFAULT NULL,
  `primary_company` int(11) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `language`, `primary_company`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nivesh Acharya', 'nivesh@admin.com', NULL, NULL, '$2y$10$VUnFfdlCCXPOjAY/B7PNDehu0z3SeUBCcXHO5N7lBuM4T.fjlJ2Xu', 'vdMEbKzDLyaBJcqGtTwll1JAoGrDcqKVWvMDry7V5yfenNg4VTasZFnhEsDg', '2018-07-31 04:10:47', '2018-08-09 23:42:03'),
(2, 'Admin', 'admin@admin.com', NULL, NULL, '$2y$10$Qr7rUQOMSFKBUNcfECpPO.d.Kg8r5TD6ZQtq1Iak3hKnDVDBH42Sy', 'vHAAtnPQFyqEwb7JAtIqEyMA4OHNwXggbnPImwRrKNsLZ46nzUdllpIokGV9', '2018-07-31 22:47:38', '2018-08-10 04:40:26'),
(4, 'Superuser', 'superuser@admin.com', 0, 47, '$2y$10$W/x8232aTatxHsk6Z6E77eaUdqEDGpUKAjMb3D1kfd1EhgMu/sO8m', 'DDxwYlYVKmT1FTphLDPot3xx6ZH3O00p3GnjLt3WMUeIjaXFnzAdZQQuJm1W', '2018-08-12 04:39:47', '2018-09-13 14:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'Test Group1', NULL, '2018-09-08 23:14:38'),
(2, 'Test 2 Group', NULL, NULL),
(3, 'Test 3 Group', NULL, NULL),
(4, 'test4', '2018-09-25 04:11:56', '2018-09-25 04:11:56'),
(5, 'test5', '2018-09-25 04:12:03', '2018-09-25 04:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_to_permission_rels`
--

CREATE TABLE `user_to_permission_rels` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_to_permission_rels`
--

INSERT INTO `user_to_permission_rels` (`id`, `user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'viber', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(2, 1, '111', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(3, 1, '112', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(4, 1, '113', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(5, 1, 'users', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(6, 1, '72', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(7, 1, '73', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(8, 1, '74', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(9, 1, '75', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(10, 1, '76', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(11, 1, '77', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(12, 1, '78', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(13, 1, 'skills', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(14, 1, '68', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(15, 1, '69', '2018-10-04 22:52:12', '2018-10-04 22:52:12'),
(16, 1, '70', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(17, 1, '71', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(18, 1, 'sheet', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(19, 1, '106', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(20, 1, '107', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(21, 1, 'report', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(22, 1, '40', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(23, 1, 'permissions', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(24, 1, '96', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(25, 1, '97', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(26, 1, '98', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(27, 1, '99', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(28, 1, '100', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(29, 1, '101', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(30, 1, '102', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(31, 1, 'pages', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(32, 1, '79', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(33, 1, '80', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(34, 1, '81', '2018-10-04 22:52:13', '2018-10-04 22:52:13'),
(35, 1, '82', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(36, 1, '83', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(37, 1, '84', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(38, 1, '85', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(39, 1, '86', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(40, 1, '87', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(41, 1, '88', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(42, 1, 'leader', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(43, 1, '103', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(44, 1, '104', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(45, 1, '105', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(46, 1, 'employees', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(47, 1, '22', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(48, 1, '23', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(49, 1, '24', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(50, 1, '25', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(51, 1, '26', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(52, 1, '27', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(53, 1, '28', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(54, 1, '29', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(55, 1, '30', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(56, 1, '31', '2018-10-04 22:52:14', '2018-10-04 22:52:14'),
(57, 1, '32', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(58, 1, '33', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(59, 1, '34', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(60, 1, '35', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(61, 1, '36', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(62, 1, '37', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(63, 1, '38', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(64, 1, '39', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(65, 1, 'employee', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(66, 1, '18', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(67, 1, '19', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(68, 1, '20', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(69, 1, '21', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(70, 1, 'dessert', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(71, 1, '108', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(72, 1, '109', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(73, 1, '110', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(74, 1, 'company', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(75, 1, '43', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(76, 1, '44', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(77, 1, '45', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(78, 1, '46', '2018-10-04 22:52:15', '2018-10-04 22:52:15'),
(79, 1, '47', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(80, 1, '48', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(81, 1, '49', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(82, 1, '50', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(83, 1, '51', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(84, 1, '52', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(85, 1, '53', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(86, 1, '54', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(87, 1, '55', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(88, 1, '56', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(89, 1, '57', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(90, 1, '58', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(91, 1, '59', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(92, 1, '60', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(93, 1, '61', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(94, 1, '62', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(95, 1, '63', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(96, 1, '64', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(97, 1, '65', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(98, 1, 'column', '2018-10-04 22:52:16', '2018-10-04 22:52:16'),
(99, 1, '41', '2018-10-04 22:52:17', '2018-10-04 22:52:17'),
(100, 1, '42', '2018-10-04 22:52:17', '2018-10-04 22:52:17'),
(101, 1, '_debugbar', '2018-10-04 22:52:17', '2018-10-04 22:52:17'),
(102, 1, '1', '2018-10-04 22:52:17', '2018-10-04 22:52:17'),
(103, 1, '2', '2018-10-04 22:52:17', '2018-10-04 22:52:17'),
(104, 1, '3', '2018-10-04 22:52:17', '2018-10-04 22:52:17'),
(105, 1, '4', '2018-10-04 22:52:17', '2018-10-04 22:52:17'),
(106, 1, '5', '2018-10-04 22:52:17', '2018-10-04 22:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_time_schedules`
--
ALTER TABLE `company_time_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_time_tables`
--
ALTER TABLE `company_time_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_to_employee_rels`
--
ALTER TABLE `company_to_employee_rels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_to_user_rels`
--
ALTER TABLE `company_to_user_rels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_users`
--
ALTER TABLE `company_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_psi_num` (`psi_number`);

--
-- Indexes for table `employee_availabilities`
--
ALTER TABLE `employee_availabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_logins`
--
ALTER TABLE `employee_logins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_logins_psi_number_unique` (`psi_number`);

--
-- Indexes for table `employee_skills`
--
ALTER TABLE `employee_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaders`
--
ALTER TABLE `leaders`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_alert_settings`
--
ALTER TABLE `psi_alert_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_dessert_entry`
--
ALTER TABLE `psi_dessert_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_permission`
--
ALTER TABLE `psi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_self_sheet_comments`
--
ALTER TABLE `psi_self_sheet_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_skill_master`
--
ALTER TABLE `psi_skill_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_viber_bot`
--
ALTER TABLE `psi_viber_bot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_viber_commands`
--
ALTER TABLE `psi_viber_commands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_viber_story`
--
ALTER TABLE `psi_viber_story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_view_customizable`
--
ALTER TABLE `psi_view_customizable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`,`field_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_to_permission_rels`
--
ALTER TABLE `roles_to_permission_rels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sheets`
--
ALTER TABLE `sheets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sheets_company_id_psi_num_unique` (`company_id`,`psi_num`);

--
-- Indexes for table `shift_master_datas`
--
ALTER TABLE `shift_master_datas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_to_permission_rels`
--
ALTER TABLE `user_to_permission_rels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=850;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `company_time_schedules`
--
ALTER TABLE `company_time_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1183;

--
-- AUTO_INCREMENT for table `company_time_tables`
--
ALTER TABLE `company_time_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `company_to_employee_rels`
--
ALTER TABLE `company_to_employee_rels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `company_to_user_rels`
--
ALTER TABLE `company_to_user_rels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_users`
--
ALTER TABLE `company_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `employee_availabilities`
--
ALTER TABLE `employee_availabilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_logins`
--
ALTER TABLE `employee_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_skills`
--
ALTER TABLE `employee_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leaders`
--
ALTER TABLE `leaders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `psi_alert_settings`
--
ALTER TABLE `psi_alert_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `psi_dessert_entry`
--
ALTER TABLE `psi_dessert_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `psi_permission`
--
ALTER TABLE `psi_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `psi_self_sheet_comments`
--
ALTER TABLE `psi_self_sheet_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `psi_skill_master`
--
ALTER TABLE `psi_skill_master`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `psi_viber_bot`
--
ALTER TABLE `psi_viber_bot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psi_viber_commands`
--
ALTER TABLE `psi_viber_commands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psi_viber_story`
--
ALTER TABLE `psi_viber_story`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psi_view_customizable`
--
ALTER TABLE `psi_view_customizable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles_to_permission_rels`
--
ALTER TABLE `roles_to_permission_rels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT for table `sheets`
--
ALTER TABLE `sheets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shift_master_datas`
--
ALTER TABLE `shift_master_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_to_permission_rels`
--
ALTER TABLE `user_to_permission_rels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sheets`
--
ALTER TABLE `sheets`
  ADD CONSTRAINT `sheets_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
