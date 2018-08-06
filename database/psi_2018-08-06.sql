-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2018 at 07:54 AM
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
  `master_company` int(10) UNSIGNED DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `master_company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Company 1', NULL, 0, '2018-07-20 11:39:19', '2018-07-20 11:39:19'),
(2, 'Comapny 2', NULL, 0, '2018-07-20 11:39:28', '2018-07-20 11:39:28'),
(3, 'Company 3', 1, 1, '2018-08-01 05:39:02', '2018-08-01 05:39:02'),
(4, 'Company 4', 1, 2, '2018-08-01 05:40:28', '2018-08-01 05:40:28'),
(5, 'Company 5', 2, 1, '2018-08-01 05:42:21', '2018-08-01 05:42:21'),
(6, 'Company 16', 3, 2, '2018-08-01 05:43:20', '2018-08-01 23:58:24'),
(7, 'Company 7', 6, 1, '2018-08-01 23:49:33', '2018-08-01 23:49:33'),
(8, 'Company 6', 5, 1, '2018-08-02 03:02:19', '2018-08-02 03:02:19');

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
(1, 1, 1, 'test', 'test', 'test', '2018-08-06', '2018-08-31', 'test', 'test', 'test', 'test', 'test', 'test', '2018-08-01', 'test', 'test', 'test', 'test', 'test', '2018-08-28', 'test', 'test', 'test', 'test', '1', 'test', '1', 'test', 'test', 'test', 'test', 'test', NULL, NULL),
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
(13, 2, 71251, NULL, 'フン', NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ｸﾞｪﾝ ﾄﾞｯｸ ﾄｰ', 'Nguyen Duc Tho', '1993-08-08', '男性', '070-2191-8893', NULL, '東京都新宿区北新宿3-28-12 ジュネス北新宿303', 'PN90558396EA', '2019-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-08-05 04:31:25', '2018-08-05 04:31:25'),
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
  `sun` int(10) UNSIGNED NOT NULL,
  `mon` int(10) UNSIGNED NOT NULL,
  `tues` int(10) UNSIGNED NOT NULL,
  `wednes` int(10) UNSIGNED NOT NULL,
  `thurs` int(10) UNSIGNED NOT NULL,
  `fri` int(10) UNSIGNED NOT NULL,
  `satur` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_availabilities`
--

INSERT INTO `employee_availabilities` (`id`, `psi_number`, `sun`, `mon`, `tues`, `wednes`, `thurs`, `fri`, `satur`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5, 4, 24, 15, 15, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Others');

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
(9, '2018_07_26_151510_create_genders_table', 4),
(10, '2018_07_31_091920_add_usertypeid_column_to_user_table', 5),
(11, '2018_07_31_094009_drop_column_timestamps_from_usertypes_table', 6),
(12, '2018_07_31_100935_rename_table_usertypes', 7),
(13, '2018_08_01_093529_add_column_to_companies_table', 8),
(16, '2018_08_02_114717_create_employee_availabilities_table', 9);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `usertype_id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nivesh Acharya', 2, 'nivesh@admin.com', '$2y$10$VUnFfdlCCXPOjAY/B7PNDehu0z3SeUBCcXHO5N7lBuM4T.fjlJ2Xu', 'fprYMlkkw3vYZzOead7Kgl4MDpGMCrhEQICuQAaVkbThiPDPb1XvasKGoHxW', '2018-07-31 04:10:47', '2018-07-31 23:29:34'),
(2, 'Admin', 1, 'admin@admin.com', '$2y$10$Qr7rUQOMSFKBUNcfECpPO.d.Kg8r5TD6ZQtq1Iak3hKnDVDBH42Sy', '9gtaNtrGDhifd6ZzgNjJxGCcyFpm1x7LFg89lysgRlHpYdt9PIb6vWcYwu7R', '2018-07-31 22:47:38', '2018-07-31 23:26:54');

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
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sheets`
--
ALTER TABLE `sheets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sheets_company_id_psi_num_unique` (`company_id`,`psi_num`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `employee_availabilities`
--
ALTER TABLE `employee_availabilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sheets`
--
ALTER TABLE `sheets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `sheets`
--
ALTER TABLE `sheets`
  ADD CONSTRAINT `sheets_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
