-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2018 at 02:39 PM
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
(1, 'Company 1', NULL, 0, 'Naxal', '2018-07-20 11:39:19', '2018-08-20 06:31:51'),
(2, 'Company 2', NULL, 0, NULL, '2018-07-20 11:39:28', '2018-08-13 05:55:31'),
(41, 'Company', NULL, 0, 'Tokyo', '2018-08-16 03:37:16', '2018-08-16 03:37:16'),
(42, 'Section1', 41, 0, 'Tokyo', '2018-08-16 03:37:17', '2018-08-16 03:37:17'),
(43, 'Section2', 41, 0, 'Tokyo', '2018-08-16 03:37:17', '2018-08-16 03:37:17'),
(44, 'Hero Honda', NULL, 9875215651, 'Kyoto', '2018-08-16 03:38:21', '2018-08-26 01:09:49'),
(45, 'Hero', 44, 1561984651, 'Kyoto', '2018-08-16 03:38:22', '2018-08-26 04:16:10'),
(46, 'Honda', 44, 28912651, 'Kyoto', '2018-08-16 03:38:22', '2018-08-26 02:40:16'),
(47, 'Bwin', NULL, 0, 'Madrid', '2018-08-16 03:39:35', '2018-08-16 03:39:35'),
(48, 'Rakuten', 47, 0, 'Madrid', '2018-08-16 03:39:35', '2018-08-16 03:39:35'),
(49, 'Herdon', NULL, 0, 'Utah', '2018-08-16 03:40:16', '2018-08-16 03:40:16'),
(50, 'Pramod Test', NULL, 165132546, 'jawalakhel', '2018-09-03 06:30:03', '2018-09-03 06:30:03'),
(51, 'nivesh test', 50, 983206513, 'kirtipu', '2018-09-03 06:37:03', '2018-09-03 06:37:03'),
(52, 'digisoft', 50, 28951232465, 'sundarijal', '2018-09-03 06:38:02', '2018-09-03 06:38:02');

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
(260, 21, '2018-09-01', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(261, 21, '2018-09-02', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(262, 21, '2018-09-03', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(263, 21, '2018-09-04', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(264, 21, '2018-09-05', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(265, 21, '2018-09-06', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(266, 21, '2018-09-07', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(267, 21, '2018-09-08', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(268, 21, '2018-09-09', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(269, 21, '2018-09-10', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(270, 21, '2018-09-11', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(271, 21, '2018-09-12', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(272, 21, '2018-09-13', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(273, 21, '2018-09-14', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(274, 21, '2018-09-15', '09:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(275, 21, '2018-09-01', '14:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(276, 21, '2018-09-02', '14:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(277, 21, '2018-09-03', '14:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(278, 21, '2018-09-04', '14:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(279, 21, '2018-09-05', '14:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(280, 21, '2018-09-06', '14:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(281, 21, '2018-09-07', '14:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(282, 21, '2018-09-08', '14:00:00', NULL, NULL, '2018-09-01 17:34:05', '2018-09-01 23:19:05'),
(283, 21, '2018-09-09', '14:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(284, 21, '2018-09-10', '14:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(285, 21, '2018-09-11', '14:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(286, 21, '2018-09-12', '14:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(287, 21, '2018-09-13', '14:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(288, 21, '2018-09-14', '14:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(289, 21, '2018-09-15', '14:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(290, 22, '2018-09-01', '07:00:00', 10, 8, '2018-09-01 17:34:06', '2018-09-03 10:17:53'),
(291, 22, '2018-09-02', '07:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(292, 22, '2018-09-03', '07:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(293, 22, '2018-09-04', '07:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(294, 22, '2018-09-05', '07:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(295, 22, '2018-09-06', '07:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(296, 22, '2018-09-07', '07:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(297, 22, '2018-09-08', '07:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(298, 22, '2018-09-09', '07:00:00', NULL, NULL, '2018-09-01 17:34:06', '2018-09-01 23:19:06'),
(299, 22, '2018-09-10', '07:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(300, 22, '2018-09-11', '07:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(301, 22, '2018-09-12', '07:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(302, 22, '2018-09-13', '07:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(303, 22, '2018-09-14', '07:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(304, 22, '2018-09-15', '07:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(305, 22, '2018-09-01', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(306, 22, '2018-09-02', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(307, 22, '2018-09-03', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(308, 22, '2018-09-04', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(309, 22, '2018-09-05', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(310, 22, '2018-09-06', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(311, 22, '2018-09-07', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(312, 22, '2018-09-08', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(313, 22, '2018-09-09', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(314, 22, '2018-09-10', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(315, 22, '2018-09-11', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(316, 22, '2018-09-12', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(317, 22, '2018-09-13', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(318, 22, '2018-09-14', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(319, 22, '2018-09-15', '13:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(320, 22, '2018-09-01', '18:00:00', NULL, NULL, '2018-09-01 17:34:07', '2018-09-01 23:19:07'),
(321, 22, '2018-09-02', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(322, 22, '2018-09-03', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(323, 22, '2018-09-04', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(324, 22, '2018-09-05', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(325, 22, '2018-09-06', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(326, 22, '2018-09-07', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(327, 22, '2018-09-08', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(328, 22, '2018-09-09', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(329, 22, '2018-09-10', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(330, 22, '2018-09-11', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(331, 22, '2018-09-12', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(332, 22, '2018-09-13', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(333, 22, '2018-09-14', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(334, 22, '2018-09-15', '18:00:00', NULL, NULL, '2018-09-01 17:34:08', '2018-09-01 23:19:08'),
(370, 42, '2018-09-03', '13:00:00', 5, 6, '2018-09-03 04:39:41', '2018-09-03 10:43:17'),
(371, 42, '2018-09-04', '13:00:00', 2, 4, '2018-09-03 04:39:41', '2018-09-03 10:43:25'),
(372, 42, '2018-09-05', '13:00:00', NULL, NULL, '2018-09-03 04:39:41', '2018-09-03 10:24:41'),
(373, 42, '2018-09-06', '13:00:00', NULL, NULL, '2018-09-03 04:39:41', '2018-09-03 10:24:41'),
(374, 42, '2018-09-07', '13:00:00', NULL, NULL, '2018-09-03 04:39:41', '2018-09-03 10:24:41'),
(375, 42, '2018-09-08', '13:00:00', NULL, NULL, '2018-09-03 04:39:42', '2018-09-03 10:24:42'),
(376, 42, '2018-09-09', '13:00:00', NULL, NULL, '2018-09-03 04:39:42', '2018-09-03 10:24:42'),
(377, 42, '2018-09-10', '13:00:00', NULL, NULL, '2018-09-03 04:39:42', '2018-09-03 10:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `company_time_tables`
--

CREATE TABLE `company_time_tables` (
  `id` int(11) NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_time_tables`
--

INSERT INTO `company_time_tables` (`id`, `company_id`, `created_at`, `updated_at`) VALUES
(21, 42, '2018-09-01 17:34:05', '2018-09-01 17:34:05'),
(22, 43, '2018-09-01 17:34:06', '2018-09-01 17:34:06'),
(42, 48, '2018-09-03 04:39:41', '2018-09-03 04:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `company_to_employees_rel`
--

CREATE TABLE `company_to_employees_rel` (
  `id` int(11) NOT NULL,
  `cts_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `psi_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `company_id`, `psi_number`, `base`, `reg_officer`, `for_work`, `hire_date`, `retirement_date`, `opt_management`, `country_citizenship`, `contract_collection`, `res_confirmation`, `phoetic_kanji`, `name`, `birthdate`, `sex`, `cell_no`, `postal_code`, `address_jp`, `residence_card_no`, `residence_card_exp_date`, `business_content`, `dispatch_destination`, `work_location`, `name_of_facility`, `hourly_wage`, `path`, `one_way_rate`, `pass_price`, `hourly_employee`, `status_residence`, `dependent_exemption`, `notes`, `created_at`, `updated_at`) VALUES
(2, 2, 71203, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'ET', 'Y', NULL, 'ﾃｽﾌｧ ﾊﾅ ｹﾞﾙﾏ', 'Tesfa Hana Girma', '1992-05-29', '女性', '070-2793-5454', NULL, '埼玉県さいたま市見沼区春岡3丁目18番5メゾン東大宮102', 'DU21179800FA', '2018-12-14', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '家族滞在', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(3, 2, 71204, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾚ ｺﾞｯｸ ﾋｴﾌﾟ', 'LE NGOC HIEP', '1985-09-09', '男性', '070-4356-1639', NULL, '東京都江戸川区中葛西5-1-10 ニシキハイツ201', 'PN21748922EF', '2019-05-24', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(4, 2, 71205, NULL, 'チェ', '名前のみ重複', NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ｸﾞｴﾝ ﾊﾞﾝ ﾄﾞｩｸ', 'Nguyen Van Duc', '1995-01-02', '男性', '080-2169-1995', NULL, '12番3号栗原ビル203', 'PN06461714GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(5, 2, 71206, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ｼﾞｵﾝ ﾃｨ ｸｪﾝ', 'Doung Thi Quyen', '1998-05-22', '女性', '080-7885-1998', NULL, '東京都日本堤1丁目12番3号栗原ビル201', 'PN90367250GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(6, 2, 71207, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾁﾝ ｸｱﾝ ﾐﾝ', 'TRINH QUANG MINH', '1997-05-26', '男性', '070-4229-1997', NULL, '東京都荒川区荒川4丁目2番4号MKﾋﾞﾙ402', 'EG7132800EA', '2018-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(7, 2, 71208, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾏｲ ﾃｨ ﾄｳ ﾎｱﾝ', 'Mai Thi Thu Huong', '1998-10-12', '女性', '080-2116-6789', NULL, '東京都台東区日本堤1丁目12番3号栗原ビル201', 'PN70753263GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(8, 2, 71209, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾚｰ ﾃｨ ﾌｫﾝ ﾄｩ', 'Le Thi Phuong Thu', '1991-09-01', '女性', '080-7898-6868', NULL, '東京都荒川区荒川4丁目2番4号MKﾋﾞﾙ601', 'PN50202261GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(9, 2, 71210, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ｳﾞｫ ﾁｳｵﾝ ｱｲﾝ ﾀﾞｵ', 'Vo Truong Anh Dao', '1993-09-02', '女性', '070-2191-8893', NULL, '東京都新宿区北新宿3丁目28番12号ジュネス北新宿303', 'EG20761713FA', '2018-09-19', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(10, 2, 71211, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾚ ﾄｩ ｱｲﾝ', 'Le Tu Anh', '1999-09-09', '女性', NULL, NULL, '東京都荒川区荒川4丁目2番4号MKﾋﾞﾙ601', 'PN06407418GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル/お茶の水イン', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(11, 2, 71212, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'ET', 'Y', NULL, 'ｱﾀﾞﾑ ｼﾞｴﾙｻﾚﾑ ﾃﾞﾒｼｰ', 'Adamu Jerusalem Demissie', '1991-07-12', '女性', '080-5506-2121', NULL, '東京都千代田区神田須田町2丁目2番1パークｷｭｰﾌ神田１００５号', 'PN10861084EA', '2018-10-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '特定活動', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(12, 2, 71248, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'VN', 'Y', NULL, 'ｸﾞｴﾝ ﾃｨ ｼｬﾝ', 'Nguyen Thi Trang', '1992-05-20', '女性', '080-5092-3802', NULL, '埼玉県ふじみ野市上福岡3丁目14番10号ハイツシバタ2-210', 'EG49521126EA', '2018-11-22', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', '99', NULL, NULL, '5月・6月上限2万円⇒7月以降上限1万円', '2', '就労', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(13, 2, 71251, NULL, 'フン', NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ｸﾞｪﾝ ﾄﾞｯｸ ﾄｰ', 'Nguyen Duc Tholo', '1993-08-08', '男性', '070-2191-8893', NULL, '東京都新宿区北新宿3-28-12 ジュネス北新宿303', 'PN90558396EA', '2019-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-27 23:35:01'),
(14, 2, 71252, NULL, 'フン', NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ﾁｬﾝ ﾏﾝ ﾌﾝ', 'Tran Manh Hung', '1997-04-10', '男性', '070-4298-8481', NULL, '東京都豊島区高田2-5-16 白鳩ビル 402号', 'EG79603102EA', '2018-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(15, 2, 71260, NULL, 'フン', NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ｸﾞｪﾝ ﾃﾞｨﾝ ﾜｧﾝ', 'Nguyen Dinh Quan', '1995-03-28', '男性', '080-9087-0667', NULL, '東京都豊島区高田1-28-1メゾン・ド・エコルス 408号', 'EG04126616FA', '2018-09-28', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(16, 2, 71292, NULL, NULL, 'ﾌﾝ：0613確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ﾄﾞ ﾃｨ ﾀｵ ﾎﾝ', 'DO THI THAO HONG', '1986-11-04', '女性', '070-4238-7882', NULL, '群馬県邑楽郡大泉町西小泉5-2-1 株式会社さくら202号', 'EG11895258KA', '2018-06-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '技能実習1号口', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(17, 2, 71293, NULL, NULL, 'ﾌﾝ：0614確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ﾀﾞｵ　ﾃｨ　ｵｱﾝ', 'DAO THI OANH', '1981-09-06', '女性', '070-4238-7882', NULL, '群馬県邑楽郡大泉町西小泉5-2-1 株式会社さくら202号', 'EG37591427KA', '2018-06-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '技能実習1号口', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(18, 2, 71294, NULL, NULL, 'ﾌﾝ：0614確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ｸﾞｴﾝ　ﾃｨ　ｵｱﾝ', 'NGUYEN THI OANH', '1987-04-27', '女性', '070-4238-7882', NULL, '群馬県邑楽郡大泉町西小泉5-2-1 株式会社さくら202号', 'EG15052713KA', '2018-06-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '技能実習1号口', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(19, 2, 71295, NULL, NULL, 'ﾌﾝ：0614確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ﾌﾞ　ﾃｲ　ｽｱﾝ', 'VU THI XUAN', '1996-02-29', '女性', NULL, NULL, '東京都新宿区下落合4-13-13 レオパレス目白A 21号', 'EG25600723EA', '2019-08-17', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(20, 2, 71299, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ﾌｪ　ﾃｨ　ﾃｪ　ﾁｬﾝ', 'Vu Thi Thu Trang', '1992-08-02', '女性', NULL, NULL, '千葉県柏市今谷上町44-7 ベルデュール106', 'EG74611484EA', '2020-05-23', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '2', '就労', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(21, 2, 71366, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', NULL, NULL, 'ﾌｧｸﾘﾁﾞﾝ', 'MAKHAMMADVALIEV FAKHRIDDIN', '1997-10-26', '男性', NULL, NULL, '住所不明', 'PN86389671FA', '2020-07-17', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(22, 2, 71367, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', 'N', NULL, 'ﾏﾀﾕﾌ　ﾐﾗﾌﾞﾛﾙ', 'MATAEV MIRABROR', '1997-01-16', '男性', '070－1547－1993', NULL, '東京都北区岸町2-9-15', 'PN49504436FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(23, 2, 71368, NULL, NULL, NULL, NULL, '2018-05-01', NULL, NULL, NULL, NULL, 'ｼｮｳｷﾛﾌﾞ ｼｮｸﾙｸﾍﾞｸ', 'SHOKIROV SHOKHRUCHBEK', '1998-01-06', '男性', NULL, NULL, '東京都北区岸町2-9-15', 'PN88719332FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(24, 2, 71369, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', 'Y', NULL, NULL, 'MUKHAMMADJONOV KHUSNIDDIN', '1997-08-20', '男性', NULL, NULL, '東京都北区岸町2-9-15', 'PN44771133FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(25, 2, 71370, NULL, NULL, NULL, NULL, '2018-05-01', NULL, NULL, NULL, NULL, 'ﾄｼﾞﾃﾞｨﾝﾉﾌﾞ　ﾗﾑｼﾞﾃﾞｨﾝ', 'TEJIDDINOV RAMZIDDIN', '1988-03-30', '男性', NULL, NULL, '東京都練馬区関町北4丁目10番16号', 'PN25394486FA', '2019-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
(26, 2, 71371, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', 'Y', NULL, 'ｲｿｺﾌ　ﾍﾞｷｿﾞﾄﾞ', 'ISOKOV BEKZOD \n', '1997-04-13', '男性', '070-1547-1993', NULL, '東京都北区岸町2-9-15', 'PN83295082FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `employee_availabilities`
--

CREATE TABLE `employee_availabilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `psi_number` int(10) UNSIGNED NOT NULL,
  `sun` time DEFAULT NULL,
  `mon` time DEFAULT NULL,
  `tue` time DEFAULT NULL,
  `wed` time DEFAULT NULL,
  `thu` time DEFAULT NULL,
  `fri` time DEFAULT NULL,
  `sat` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_availabilities`
--

INSERT INTO `employee_availabilities` (`id`, `psi_number`, `sun`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `created_at`, `updated_at`) VALUES
(1, 71205, '20:00:00', '22:00:00', '21:00:00', '09:00:00', '13:00:00', '23:00:00', '10:00:00', NULL, '2018-09-02 04:24:50'),
(4, 71203, '12:00:00', '11:00:00', '10:00:00', '09:00:00', '08:00:00', '07:00:00', '06:00:00', '2018-08-14 05:41:38', '2018-08-14 06:01:41'),
(5, 71204, '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-02 04:11:38', '2018-09-03 03:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `employee_skills`
--

CREATE TABLE `employee_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `psi_num` int(11) NOT NULL,
  `skill` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_skills`
--

INSERT INTO `employee_skills` (`id`, `psi_num`, `skill`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 71203, 'Carpentering', NULL, '2018-08-30 00:20:03', '2018-08-30 00:20:03'),
(2, 71203, 'Painting', NULL, '2018-08-30 00:23:10', '2018-08-30 00:23:10'),
(3, 71204, 'Driving', NULL, '2018-08-30 00:30:04', '2018-08-30 00:30:04'),
(5, 71204, 'Wiring', NULL, '2018-08-30 00:34:50', '2018-08-30 00:34:50'),
(6, 71203, 'Typing', NULL, '2018-08-30 00:38:14', '2018-08-30 00:38:14'),
(9, 71204, 'Marketing', NULL, '2018-08-31 00:52:41', '2018-08-31 00:52:41'),
(10, 71203, 'Plumbing', NULL, '2018-08-31 05:14:53', '2018-08-31 05:14:53'),
(11, 71204, 'Typing', NULL, '2018-08-31 06:39:22', '2018-08-31 06:39:22');

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
(1, 1, 71204, 9456789123, '2018-08-23 22:56:16', '2018-08-23 22:56:16'),
(2, 2, 71203, 9868156486, '2018-08-23 22:58:25', '2018-08-23 22:58:25');

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
(27, '2018_08_29_084910_create_employee_skills_table', 18);

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
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `psi_dessert_entry`
--

INSERT INTO `psi_dessert_entry` (`id`, `cts_id`, `staff_no`, `responsible1`, `conformation_day_before`, `responsible2`, `conformation_3_hours_ago`, `arrival_time_if_late`, `reason_for_late`, `call_medium`, `created_at`, `updated_at`) VALUES
(1, 371, 71203, 'Pramod', 'Not OK', 'Dai', NULL, '00:04:12', 'traffic', 'call', '2018-09-03 05:05:06', '2018-09-03 10:50:06'),
(2, 371, 71203, 'Pramod', 'Not OK', 'Dai', NULL, '00:04:12', 'traffic', 'call', '2018-09-03 05:06:45', '2018-09-03 10:51:45');

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
(1, 44, '05:00:00', '14:00:00', '2018-08-26 05:44:10', '2018-08-26 05:44:10'),
(2, 44, '16:00:00', '02:00:00', '2018-08-26 05:44:10', '2018-08-26 05:44:10'),
(3, 45, '15:00:00', '17:00:00', '2018-08-31 06:49:24', '2018-08-31 06:49:24'),
(4, 45, '18:00:00', '00:00:00', '2018-08-31 06:49:24', '2018-08-31 06:49:24'),
(5, 46, '23:00:00', '02:00:00', '2018-09-01 16:16:08', '2018-09-01 16:16:08'),
(6, 42, '09:00:00', '13:00:00', '2018-09-01 17:02:07', '2018-09-01 17:02:07'),
(7, 42, '14:00:00', '18:00:00', '2018-09-01 17:02:07', '2018-09-01 17:02:07'),
(8, 43, '07:00:00', '12:00:00', '2018-09-01 17:02:59', '2018-09-01 17:02:59'),
(9, 43, '13:00:00', '17:00:00', '2018-09-01 17:02:59', '2018-09-01 17:02:59'),
(10, 43, '18:00:00', '22:00:00', '2018-09-01 17:02:59', '2018-09-01 17:02:59'),
(11, 45, '05:00:00', '11:00:00', '2018-09-03 04:23:03', '2018-09-03 04:23:03'),
(12, 48, '13:00:00', '17:00:00', '2018-09-03 04:39:08', '2018-09-03 04:39:08'),
(13, 51, '03:00:00', '13:00:00', '2018-09-03 06:39:42', '2018-09-03 06:39:42'),
(16, 51, '20:00:00', '02:00:00', '2018-09-03 06:40:23', '2018-09-03 06:40:23'),
(18, 51, '13:00:00', '21:00:00', '2018-09-03 06:42:11', '2018-09-03 06:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nivesh Acharya', 'nivesh@admin.com', '$2y$10$VUnFfdlCCXPOjAY/B7PNDehu0z3SeUBCcXHO5N7lBuM4T.fjlJ2Xu', 'vdMEbKzDLyaBJcqGtTwll1JAoGrDcqKVWvMDry7V5yfenNg4VTasZFnhEsDg', '2018-07-31 04:10:47', '2018-08-09 23:42:03'),
(2, 'Admin', 'admin@admin.com', '$2y$10$Qr7rUQOMSFKBUNcfECpPO.d.Kg8r5TD6ZQtq1Iak3hKnDVDBH42Sy', 'iV6dyciXClh2X8Blvz9MtblDxCakndBZIPhqQJS0bAMq457YJrJ8OYLiUpyJ', '2018-07-31 22:47:38', '2018-08-10 04:40:26'),
(3, 'Acharya', 'acharya@admin.com', '$2y$10$f/.Mzrnvwu7r5/oY6K8F.uMO7dxCfFHmi.SLsTbjjH9GkHD0O.9I2', NULL, '2018-08-10 05:39:36', '2018-08-10 05:39:36'),
(4, 'Superuser', 'superuser@admin.com', '$2y$10$W/x8232aTatxHsk6Z6E77eaUdqEDGpUKAjMb3D1kfd1EhgMu/sO8m', 'H77X2Tz9jxZjZLreUtgvH4YcCd2ckKYGX8t6gBpbJdO4AELZSoqg9a8AaJkR', '2018-08-12 04:39:47', '2018-08-12 04:39:47');

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
-- Indexes for table `company_to_employees_rel`
--
ALTER TABLE `company_to_employees_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_psi_num` (`psi_number`,`company_id`),
  ADD KEY `employees_company_id_foreign` (`company_id`);

--
-- Indexes for table `employee_availabilities`
--
ALTER TABLE `employee_availabilities`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `psi_dessert_entry`
--
ALTER TABLE `psi_dessert_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `company_time_schedules`
--
ALTER TABLE `company_time_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `company_time_tables`
--
ALTER TABLE `company_time_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `company_to_employees_rel`
--
ALTER TABLE `company_to_employees_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `employee_availabilities`
--
ALTER TABLE `employee_availabilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_skills`
--
ALTER TABLE `employee_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leaders`
--
ALTER TABLE `leaders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `psi_dessert_entry`
--
ALTER TABLE `psi_dessert_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sheets`
--
ALTER TABLE `sheets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shift_master_datas`
--
ALTER TABLE `shift_master_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

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
