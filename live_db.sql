-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2018 at 09:47 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digisofttech_psi`
--
CREATE DATABASE IF NOT EXISTS `digisofttech_psi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `digisofttech_psi`;

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
(1, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"remember_token\":\"6H6zotDzylP6KWs4neoOujFXjuXQQ4VV3OYTpOitBrmruw3IFCEsBFlK0Kza\"}', '{\"remember_token\":\"HTHHkeMuXZKXhA6zbutEyl3ilbaTh4fJ0OVtJHN1LpnFFfUFJPx0tcYfqCL0\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-14 02:52:46', '2018-09-14 02:52:46'),
(2, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"remember_token\":\"HTHHkeMuXZKXhA6zbutEyl3ilbaTh4fJ0OVtJHN1LpnFFfUFJPx0tcYfqCL0\"}', '{\"remember_token\":\"BCVvboD21akVeRj0t53kznehVaqk63ij6b4T3yDPGgn2Ld0Y71vOZRTeGaTh\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-14 03:13:45', '2018-09-14 03:13:45'),
(3, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"remember_token\":\"BCVvboD21akVeRj0t53kznehVaqk63ij6b4T3yDPGgn2Ld0Y71vOZRTeGaTh\"}', '{\"remember_token\":\"qTomQNH2bdo7wUAHyFrtTPs9LMZHXhSUQZ8eJHc3Vbsmi6gxfKPFFuShN6ZS\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-14 03:17:28', '2018-09-14 03:17:28'),
(4, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"remember_token\":\"qTomQNH2bdo7wUAHyFrtTPs9LMZHXhSUQZ8eJHc3Vbsmi6gxfKPFFuShN6ZS\"}', '{\"remember_token\":\"CwRcOeXAK57Tztlvxv5qZESXOQ2u9VgjenGxGZ2SZvoAOJ5YX5Wui99Bb9zV\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-14 03:20:23', '2018-09-14 03:20:23'),
(5, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"remember_token\":\"CwRcOeXAK57Tztlvxv5qZESXOQ2u9VgjenGxGZ2SZvoAOJ5YX5Wui99Bb9zV\"}', '{\"remember_token\":\"5toC5Ktj5GAImKE3kDLc0jsicTdf0TGUllUEGj6pcVVHYuAcCoTDfTY6wUJN\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-14 03:30:26', '2018-09-14 03:30:26'),
(6, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"primary_company\":47}', '{\"primary_company\":\"44\"}', 'http://localhost/users/profile/5?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 00:26:26', '2018-09-15 00:26:26'),
(7, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"language\":1}', '{\"language\":\"0\"}', 'http://localhost/users/profile/5?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 00:26:33', '2018-09-15 00:26:33'),
(8, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"primary_company\":44}', '{\"primary_company\":\"47\"}', 'http://localhost/primary/47?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 01:30:22', '2018-09-15 01:30:22'),
(9, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"remember_token\":\"5toC5Ktj5GAImKE3kDLc0jsicTdf0TGUllUEGj6pcVVHYuAcCoTDfTY6wUJN\"}', '{\"remember_token\":\"D0kmOkJUF95dl4mHV6IbMMskOMMN4DNpfZwU7UKukZwTCHTSxJXuA6urWxmb\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 01:32:15', '2018-09-15 01:32:15'),
(10, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 1, '{\"remember_token\":\"vdMEbKzDLyaBJcqGtTwll1JAoGrDcqKVWvMDry7V5yfenNg4VTasZFnhEsDg\"}', '{\"remember_token\":\"QjUGOoDTwIy8krrXuyhmmRctgkCJfcBJGZHE4jHDY2BMFzaVR0Fy9Bb0a21J\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 04:54:18', '2018-09-15 04:54:18'),
(11, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"mfd54vn9o87GdNJcdmxdZql4VRGUo0Qm1Nvfr7cBOvkUYfCBr8PABsIi6jIG\"}', '{\"remember_token\":\"myOIaCpAuOfC7kW9YnOQAegu4jVDAmiHc4ScWYMcZifk9Edm72KyITJ10EdI\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 04:56:17', '2018-09-15 04:56:17'),
(12, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"myOIaCpAuOfC7kW9YnOQAegu4jVDAmiHc4ScWYMcZifk9Edm72KyITJ10EdI\"}', '{\"remember_token\":\"IuRVtseZQt7LcCXyJibKi3pYJGFlbEon6gRZG4yLEOisXaiwecsJcMZs7G5u\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 05:21:17', '2018-09-15 05:21:17'),
(13, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"IuRVtseZQt7LcCXyJibKi3pYJGFlbEon6gRZG4yLEOisXaiwecsJcMZs7G5u\"}', '{\"remember_token\":\"edvsKH6HiYX8qeT7qvcbGkZ6cm7W8gyQdfatJJPTmA2aeC0dxCeelnzvsywb\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 05:28:38', '2018-09-15 05:28:38'),
(14, 'App\\Models\\User', 2, 'updated', 'App\\Models\\User', 2, '{\"remember_token\":\"iV6dyciXClh2X8Blvz9MtblDxCakndBZIPhqQJS0bAMq457YJrJ8OYLiUpyJ\"}', '{\"remember_token\":\"c5xWZRBw3vF4FKwsvJH6LVGloMlrId7QYkPf4DaKYP4DPec1T0ghxWX32zi7\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:02:48', '2018-09-15 07:02:48'),
(15, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"primary_company\":44}', '{\"primary_company\":\"1\"}', 'http://localhost/users/profile/4?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:03:17', '2018-09-15 07:03:17'),
(16, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"edvsKH6HiYX8qeT7qvcbGkZ6cm7W8gyQdfatJJPTmA2aeC0dxCeelnzvsywb\"}', '{\"remember_token\":\"2cHvLhgRL39nC4r7gRmCQJGk0HSDpcGyZ6Wca0tL8DzQXK4V9rN4WiYzPuBi\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:36:24', '2018-09-15 07:36:24'),
(17, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"2cHvLhgRL39nC4r7gRmCQJGk0HSDpcGyZ6Wca0tL8DzQXK4V9rN4WiYzPuBi\"}', '{\"remember_token\":\"OfSVkAMzPFH9nC3BUmxO8t1g44zWWBRIHDiL98RVysjKNduqYcUTEiPncnAU\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:37:03', '2018-09-15 07:37:03'),
(18, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"OfSVkAMzPFH9nC3BUmxO8t1g44zWWBRIHDiL98RVysjKNduqYcUTEiPncnAU\"}', '{\"remember_token\":\"EWL0z2G6fdl2KJpBQ28jojfGBJNUYcJpjpgi84JcU56HEph17o16ohnTz17c\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:37:36', '2018-09-15 07:37:36'),
(19, 'App\\Models\\User', 4, 'created', 'App\\Models\\User', 6, '[]', '{\"name\":\"Jivnath\",\"email\":\"jivnath@gmail.com\",\"password\":\"$2y$10$lqylKDZwkXMMiJ7vKvH3hO75LIzn4qWhQUo1JdTsX75MTIHK8Q4B.\",\"language\":\"0\",\"id\":6}', 'http://localhost/users/create?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:39:07', '2018-09-15 07:39:07'),
(20, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"EWL0z2G6fdl2KJpBQ28jojfGBJNUYcJpjpgi84JcU56HEph17o16ohnTz17c\"}', '{\"remember_token\":\"vAOeHiih0rRl1HYSvjISvpswNoeqnz9lzzrN9sZPu2jlVFNnEzyAHIOPPdvI\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:39:14', '2018-09-15 07:39:14'),
(21, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"primary_company\":null}', '{\"primary_company\":\"1\"}', 'http://localhost/primary/1?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:39:27', '2018-09-15 07:39:27'),
(22, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":null}', '{\"remember_token\":\"0VxCeaxcsKKOnZKDpIF6bPtmAEIyYghtWOAqEQDK3VyrXo2bb0H21eeAlRvf\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:45:13', '2018-09-15 07:45:13'),
(23, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"0VxCeaxcsKKOnZKDpIF6bPtmAEIyYghtWOAqEQDK3VyrXo2bb0H21eeAlRvf\"}', '{\"remember_token\":\"wuChQUKwoUdW2iC6FX1WffaZt90RioaUhPs7vsov4qv42EyQnDZpgmX8Rnej\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:45:33', '2018-09-15 07:45:33'),
(24, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"vAOeHiih0rRl1HYSvjISvpswNoeqnz9lzzrN9sZPu2jlVFNnEzyAHIOPPdvI\"}', '{\"remember_token\":\"i3eNHgFXAHVZo1EcdzHjAbf9xQCzA6nDTkL4jRF4RXD5tuMqfwwhd55U53d6\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:46:09', '2018-09-15 07:46:09'),
(25, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"i3eNHgFXAHVZo1EcdzHjAbf9xQCzA6nDTkL4jRF4RXD5tuMqfwwhd55U53d6\"}', '{\"remember_token\":\"gD5TcJc6zeyEMb6oeFcr5YnsFdKDSu45YIDcUP7l9Ve5EIr5JTqPPkcBnOta\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 07:48:50', '2018-09-15 07:48:50'),
(26, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"gD5TcJc6zeyEMb6oeFcr5YnsFdKDSu45YIDcUP7l9Ve5EIr5JTqPPkcBnOta\"}', '{\"remember_token\":\"30S6qZiMr45xUJ9fCOtvPLJ1fxtHml5XUXhiqtlWGttCkisSH0v7nzwStC2b\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 08:36:01', '2018-09-15 08:36:01'),
(27, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"30S6qZiMr45xUJ9fCOtvPLJ1fxtHml5XUXhiqtlWGttCkisSH0v7nzwStC2b\"}', '{\"remember_token\":\"mP2IuxyxchGwAAY6CjxgVD1KCvdd3pjG5blMj9ZAi9PwVLb88Nnc8orZIrCB\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 08:39:08', '2018-09-15 08:39:08'),
(28, 'App\\Models\\User', 6, 'created', 'App\\Models\\User', 7, '[]', '{\"name\":\"Shanti\",\"email\":\"shanti@gmail.com\",\"password\":\"$2y$10$YfPfZLdkDqaoY7dpbrTNp.qgI9ijGOCVcsXCSnt.SoKjeRKnMllGe\",\"language\":\"0\",\"id\":7}', 'http://localhost/users/create?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 08:40:52', '2018-09-15 08:40:52'),
(29, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"wuChQUKwoUdW2iC6FX1WffaZt90RioaUhPs7vsov4qv42EyQnDZpgmX8Rnej\"}', '{\"remember_token\":\"8b9MF3oNFhhFlWjoHzd0Rv6DQmihQz9wk6AuftaEdO8oKXVIFbYzOnJOPNMy\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 08:40:57', '2018-09-15 08:40:57'),
(30, 'App\\Models\\User', 7, 'updated', 'App\\Models\\User', 7, '{\"primary_company\":null}', '{\"primary_company\":\"44\"}', 'http://localhost/primary/44?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-15 08:41:54', '2018-09-15 08:41:54'),
(31, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"mP2IuxyxchGwAAY6CjxgVD1KCvdd3pjG5blMj9ZAi9PwVLb88Nnc8orZIrCB\"}', '{\"remember_token\":\"NSu6bTYaMLtkhJq2wDnSrggaikyBSggmlFIIK3G1G4NlQP4aSXzpGL3fPskO\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 01:52:58', '2018-09-17 01:52:58'),
(32, 'App\\Models\\User', 4, 'created', 'App\\Models\\User', 8, '[]', '{\"name\":\"Bishnu\",\"email\":\"bihsnu@admin.com\",\"password\":\"$2y$10$0vmJqXHbiKd4RToVzpeGcO6CgQJtxNqkBgsExhQhN6U\\/mA\\/5lIBmO\",\"language\":\"0\",\"id\":8}', 'http://localhost/users/create?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 04:30:00', '2018-09-17 04:30:00'),
(33, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"NSu6bTYaMLtkhJq2wDnSrggaikyBSggmlFIIK3G1G4NlQP4aSXzpGL3fPskO\"}', '{\"remember_token\":\"ZpWjnpAJ43m7t3fQpME0DdZNVOXeBw1JVvKWuPZjPCP5wHSmwHrstJoM74D8\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 04:30:27', '2018-09-17 04:30:27'),
(34, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"primary_company\":null}', '{\"primary_company\":\"2\"}', 'http://localhost/primary/2?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 04:33:24', '2018-09-17 04:33:24'),
(35, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"remember_token\":null}', '{\"remember_token\":\"0CwZNkxHAQ7RKZSXNPSSO2pt231xwwZbYkT1AzmNDvNYI2fWCBjqF8eyQdMQ\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 04:39:42', '2018-09-17 04:39:42'),
(36, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"primary_company\":null}', '{\"primary_company\":\"49\"}', 'http://localhost/primary/49?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 04:50:23', '2018-09-17 04:50:23'),
(37, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"remember_token\":\"0CwZNkxHAQ7RKZSXNPSSO2pt231xwwZbYkT1AzmNDvNYI2fWCBjqF8eyQdMQ\"}', '{\"remember_token\":\"SUK8tB9jhYBKXh9jXclxpLtAGd2unbw5BVUYA785b0Lo8VXZqUQMGl7yr9Dz\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 05:28:27', '2018-09-17 05:28:27'),
(38, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"remember_token\":\"SUK8tB9jhYBKXh9jXclxpLtAGd2unbw5BVUYA785b0Lo8VXZqUQMGl7yr9Dz\"}', '{\"remember_token\":\"40FwqfXYDnI7wJKlSuQUzlGa2WErWqBuXt1KbGR4f6Bg4MRQymPYsYN2Xs7d\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 05:28:51', '2018-09-17 05:28:51'),
(39, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"remember_token\":\"40FwqfXYDnI7wJKlSuQUzlGa2WErWqBuXt1KbGR4f6Bg4MRQymPYsYN2Xs7d\"}', '{\"remember_token\":\"mo9toiX1S7IUCuGHY55uzlMxz0Md9Z3zfzMWdXjXTBFflzNM9BaGTCIP2LH7\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 05:49:20', '2018-09-17 05:49:20'),
(40, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"primary_company\":null}', '{\"primary_company\":\"49\"}', 'http://localhost/primary/49?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 06:39:28', '2018-09-17 06:39:28'),
(41, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"remember_token\":\"mo9toiX1S7IUCuGHY55uzlMxz0Md9Z3zfzMWdXjXTBFflzNM9BaGTCIP2LH7\"}', '{\"remember_token\":\"qfhXEoMHNGlvTgFbv2jd2p45dXeBgliGVJ8LtqiGVS6UO1omV0txHcgSTWq1\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 06:40:31', '2018-09-17 06:40:31'),
(42, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"primary_company\":null}', '{\"primary_company\":\"49\"}', 'http://localhost/primary/49?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 06:46:28', '2018-09-17 06:46:28'),
(43, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"remember_token\":\"qfhXEoMHNGlvTgFbv2jd2p45dXeBgliGVJ8LtqiGVS6UO1omV0txHcgSTWq1\"}', '{\"remember_token\":\"JlLOu2gW88NxWGhfUcc38YafQrDChiNPcKFS3JagRrfTWVTM2SbUvcgNVg2S\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 07:08:17', '2018-09-17 07:08:17'),
(44, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"primary_company\":null}', '{\"primary_company\":\"49\"}', 'http://localhost/primary/49?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-17 07:08:46', '2018-09-17 07:08:46'),
(45, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"8b9MF3oNFhhFlWjoHzd0Rv6DQmihQz9wk6AuftaEdO8oKXVIFbYzOnJOPNMy\"}', '{\"remember_token\":\"mWAFz0giLi8CTD6FtBDrKilcpNTwT4KVe5E6W4eDsLPYVMLCL7tqO4fdhTGc\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-18 00:51:41', '2018-09-18 00:51:41'),
(46, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"mWAFz0giLi8CTD6FtBDrKilcpNTwT4KVe5E6W4eDsLPYVMLCL7tqO4fdhTGc\"}', '{\"remember_token\":\"4cHuRnOs2NtT9Z7LX3Fzey2fICYhpaoDd2e5G1klv1NkB11lLs93UDzmVX0q\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-18 01:17:02', '2018-09-18 01:17:02'),
(47, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"4cHuRnOs2NtT9Z7LX3Fzey2fICYhpaoDd2e5G1klv1NkB11lLs93UDzmVX0q\"}', '{\"remember_token\":\"XO0ow5y15nUNXw5WJX1wxKNbMDsKX4Hn7LHhqiaWbxCPzCuseosF0H0Fo4HI\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-18 01:24:42', '2018-09-18 01:24:42'),
(48, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"XO0ow5y15nUNXw5WJX1wxKNbMDsKX4Hn7LHhqiaWbxCPzCuseosF0H0Fo4HI\"}', '{\"remember_token\":\"GNktO56Hrxim480rOdnJW5B4XFrndlPFgNr9nbZ7qDTFFGLmdMSFQ6B7vQpJ\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-18 01:26:27', '2018-09-18 01:26:27'),
(49, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"GNktO56Hrxim480rOdnJW5B4XFrndlPFgNr9nbZ7qDTFFGLmdMSFQ6B7vQpJ\"}', '{\"remember_token\":\"VMnRM5K3MUr91VBUkway9ZSUOR7JFJTsveRBdXKhEXBCdsXbSUNknycv66aN\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-18 01:29:48', '2018-09-18 01:29:48'),
(50, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"VMnRM5K3MUr91VBUkway9ZSUOR7JFJTsveRBdXKhEXBCdsXbSUNknycv66aN\"}', '{\"remember_token\":\"iOSVuuAQWs7lygcwIsbVd4NMo3Vh5w595wnGZcB8Gm4UCoOKRqPCY8gibSPS\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-18 01:30:05', '2018-09-18 01:30:05'),
(51, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"iOSVuuAQWs7lygcwIsbVd4NMo3Vh5w595wnGZcB8Gm4UCoOKRqPCY8gibSPS\"}', '{\"remember_token\":\"oEniFVMUGgBsCmJEyfkWFYbEIwJbz54IoUOp8A45hulO5MFBHDyQod0FBAKa\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-18 01:31:53', '2018-09-18 01:31:53'),
(52, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"oEniFVMUGgBsCmJEyfkWFYbEIwJbz54IoUOp8A45hulO5MFBHDyQod0FBAKa\"}', '{\"remember_token\":\"9rWhPVgR4GE5ORnMTLA5KrDDAUUQpuE2WZ6XKZ3SnbjoVQ8xNvBFofqVSmk4\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-18 01:32:32', '2018-09-18 01:32:32'),
(53, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"9rWhPVgR4GE5ORnMTLA5KrDDAUUQpuE2WZ6XKZ3SnbjoVQ8xNvBFofqVSmk4\"}', '{\"remember_token\":\"DsuO06GZYCsrXgIyH6FrpJSAZ5VltWWxc35kJHGaAxfgGfnefJjhTQh0eUwX\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-18 01:34:49', '2018-09-18 01:34:49'),
(54, 'App\\Models\\User', 8, 'updated', 'App\\Models\\User', 8, '{\"remember_token\":\"JlLOu2gW88NxWGhfUcc38YafQrDChiNPcKFS3JagRrfTWVTM2SbUvcgNVg2S\"}', '{\"remember_token\":\"fjyIXBFilL91iQ1xTzKrdqQtC3JTWW2C7DXj7RYA939VFNSn5huAn7dolKRc\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-18 01:36:04', '2018-09-18 01:36:04'),
(55, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"DsuO06GZYCsrXgIyH6FrpJSAZ5VltWWxc35kJHGaAxfgGfnefJjhTQh0eUwX\"}', '{\"remember_token\":\"wCr0qkLbOiVX0N52xq9Ps7ZsOiEg0VwTjXmGvELtKU8CfMXxYNMpYpTbHzbm\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-19 00:56:10', '2018-09-19 00:56:10'),
(56, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"wCr0qkLbOiVX0N52xq9Ps7ZsOiEg0VwTjXmGvELtKU8CfMXxYNMpYpTbHzbm\"}', '{\"remember_token\":\"eN2N5jJ46ILbF6Ff0m1OinkQxh35x0gbkbGQpJaMPBB3vDdbqMnE1BvuSoMj\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-19 08:00:03', '2018-09-19 08:00:03'),
(57, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 3, '[]', '{\"cts_id\":\"546\",\"staff_no\":\"71203\",\"id\":3}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=546', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-24 04:35:08', '2018-09-24 04:35:08'),
(58, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"ZpWjnpAJ43m7t3fQpME0DdZNVOXeBw1JVvKWuPZjPCP5wHSmwHrstJoM74D8\"}', '{\"remember_token\":\"A0zBsJyrjd7n2GDoPOGouMFkE4Lt8EmqPXj5VjsQO45YbzNMZwzYkdVIUOmr\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 09:21:18', '2018-09-25 09:21:18'),
(59, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":null}', '{\"remember_token\":\"GN8AmCMGznIcXLgiIqkEm9x7YQSEDgjdoahqS9wZS6ayGr0WxVIma3ChSdVT\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 10:16:40', '2018-09-25 10:16:40'),
(60, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":\"GN8AmCMGznIcXLgiIqkEm9x7YQSEDgjdoahqS9wZS6ayGr0WxVIma3ChSdVT\"}', '{\"remember_token\":\"qWF76OswdykOpol51ZzuyxvcjZ6h6k3snG7roEKDkO1PIZPtBUKzMOCHhG3T\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 10:25:04', '2018-09-25 10:25:04'),
(61, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":\"qWF76OswdykOpol51ZzuyxvcjZ6h6k3snG7roEKDkO1PIZPtBUKzMOCHhG3T\"}', '{\"remember_token\":\"TeQuoBo1k7hV4PnQa9iVAONbCP85xvFcZSsxWYV5TtSVBl1NqH4Sqgy4ufQN\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 10:28:18', '2018-09-25 10:28:18'),
(62, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":\"TeQuoBo1k7hV4PnQa9iVAONbCP85xvFcZSsxWYV5TtSVBl1NqH4Sqgy4ufQN\"}', '{\"remember_token\":\"hyySiUtr5k5PtAgY2QpgEongbG3DR5z4WA2iiwDw9iKwxkhmOWul13ILTKB0\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 11:00:18', '2018-09-25 11:00:18'),
(63, 'App\\Models\\User', 4, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":\"hyySiUtr5k5PtAgY2QpgEongbG3DR5z4WA2iiwDw9iKwxkhmOWul13ILTKB0\"}', '{\"remember_token\":\"wxhdyY3XvJpLjYNgiZ3sT8uk9kPZxQsozkvZexeard23V53eQNOvsyuHIps1\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 11:01:12', '2018-09-25 11:01:12'),
(64, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"A0zBsJyrjd7n2GDoPOGouMFkE4Lt8EmqPXj5VjsQO45YbzNMZwzYkdVIUOmr\"}', '{\"remember_token\":\"rzROuj84wDPTmgeoBy0pxv0GVLy9dY1rcvqNFIseQWnwRY2KApp6GmsrWJ8Z\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 11:04:29', '2018-09-25 11:04:29'),
(65, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":\"wxhdyY3XvJpLjYNgiZ3sT8uk9kPZxQsozkvZexeard23V53eQNOvsyuHIps1\"}', '{\"remember_token\":\"N7kN6mg5a3djh5Q9JG1hPDiSGqeEuVMGYXtHpRZggr2owWodM9juaVk4NFiQ\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 11:05:07', '2018-09-25 11:05:07'),
(66, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"rzROuj84wDPTmgeoBy0pxv0GVLy9dY1rcvqNFIseQWnwRY2KApp6GmsrWJ8Z\"}', '{\"remember_token\":\"sVtqGcY6jx58GGJbKb9p2eC4RlhIhxwO7bo45Rt7UuJckFDS4qsHLXGWD1QT\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 11:08:22', '2018-09-25 11:08:22'),
(67, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"sVtqGcY6jx58GGJbKb9p2eC4RlhIhxwO7bo45Rt7UuJckFDS4qsHLXGWD1QT\"}', '{\"remember_token\":\"mGY01bsvBKo6q2pKVa61dzGgvaqNsRNYWJTNDTg2Dxm3jYrEPMjkKrLW0CDy\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 23:00:39', '2018-09-25 23:00:39'),
(68, 'App\\Models\\User', 4, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":\"N7kN6mg5a3djh5Q9JG1hPDiSGqeEuVMGYXtHpRZggr2owWodM9juaVk4NFiQ\"}', '{\"remember_token\":\"dw3i0g4i4F4F7g5S44DOi6Si9DdxnDUpLtRBVH7zmkR3dpA8dqXB2JUvAABs\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-25 23:08:38', '2018-09-25 23:08:38'),
(69, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"mGY01bsvBKo6q2pKVa61dzGgvaqNsRNYWJTNDTg2Dxm3jYrEPMjkKrLW0CDy\"}', '{\"remember_token\":\"GSlOqzVaF4z2oykamaD7iEhixOEYECYDLOpHHkc2NqCtSHcz0jfeKC93NrkT\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-27 03:11:09', '2018-09-27 03:11:09'),
(70, 'App\\Models\\User', 4, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":\"dw3i0g4i4F4F7g5S44DOi6Si9DdxnDUpLtRBVH7zmkR3dpA8dqXB2JUvAABs\"}', '{\"remember_token\":\"cIi1Q6kYGS8PNSQNhPgEFkyPs6Q4ILfGmp3ljgBWShJ1hlOSVj1BUL4pAYGq\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-29 22:47:46', '2018-09-29 22:47:46'),
(71, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"GSlOqzVaF4z2oykamaD7iEhixOEYECYDLOpHHkc2NqCtSHcz0jfeKC93NrkT\"}', '{\"remember_token\":\"BhFKMFYtsEj603MG1Ou0yFlOv9yrxHn3gQrTD5JfZqxyM73tzwThfOQereT6\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-29 22:48:06', '2018-09-29 22:48:06'),
(72, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"BhFKMFYtsEj603MG1Ou0yFlOv9yrxHn3gQrTD5JfZqxyM73tzwThfOQereT6\"}', '{\"remember_token\":\"wZQI83UKp4rnH68npkCumfqrhK0ws9Qz972JudMqIa519xopS788cObRuAnD\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-29 23:18:36', '2018-09-29 23:18:36'),
(73, 'App\\Models\\User', 4, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":\"cIi1Q6kYGS8PNSQNhPgEFkyPs6Q4ILfGmp3ljgBWShJ1hlOSVj1BUL4pAYGq\"}', '{\"remember_token\":\"W2IjdRyC10rAl5JPbDjhJA5gNczWZEGdf0vDgdmWbbqUHT2oqnhmIWrJIbpI\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-29 23:28:57', '2018-09-29 23:28:57'),
(74, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"wZQI83UKp4rnH68npkCumfqrhK0ws9Qz972JudMqIa519xopS788cObRuAnD\"}', '{\"remember_token\":\"DgkmaaXTrnscsjv8WLLo6qYBQKPMeilyaHybp0Li6LKyezpm7Xk9S8RyG7ks\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-09-30 00:37:01', '2018-09-30 00:37:01'),
(75, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"DgkmaaXTrnscsjv8WLLo6qYBQKPMeilyaHybp0Li6LKyezpm7Xk9S8RyG7ks\"}', '{\"remember_token\":\"qeEhFs5TmPrf4Ae6L8yEb0LmCNDjJqDX859lSKsjotixk79mMyYmKHKCXqnF\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-01 09:32:26', '2018-10-01 09:32:26'),
(76, 'App\\Models\\User', 4, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":\"W2IjdRyC10rAl5JPbDjhJA5gNczWZEGdf0vDgdmWbbqUHT2oqnhmIWrJIbpI\"}', '{\"remember_token\":\"l1vY5qhMD6FAa74FKkakDtZ46z4ENS8h8oNiJ2ZV6LEqteNABabx51jR5wP4\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-01 10:30:21', '2018-10-01 10:30:21'),
(77, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 4, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71203\",\"id\":4}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 07:41:38', '2018-10-02 07:41:38'),
(78, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"responsible1\":null}', '{\"responsible1\":\"pramod<br>\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 07:41:54', '2018-10-02 07:41:54'),
(79, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"conformation_day_before\":null}', '{\"conformation_day_before\":\"No response\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 07:41:56', '2018-10-02 07:41:56'),
(80, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"conformation_3_hours_ago\":null}', '{\"conformation_3_hours_ago\":\"No response\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 07:42:03', '2018-10-02 07:42:03'),
(81, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"call_medium\":null}', '{\"call_medium\":\"viber\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 07:42:57', '2018-10-02 07:42:57'),
(82, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"reason_for_late\":null}', '{\"reason_for_late\":\"test\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 07:43:01', '2018-10-02 07:43:01'),
(83, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"flag\":\"\"}', '{\"flag\":\"yellow\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 08:41:46', '2018-10-02 08:41:46'),
(84, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"flag\":\"yellow\"}', '{\"flag\":\"red\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 08:41:53', '2018-10-02 08:41:53'),
(85, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"flag\":\"red\"}', '{\"flag\":\"yellow\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 08:54:33', '2018-10-02 08:54:33'),
(86, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"flag\":\"yellow\"}', '{\"flag\":\"red\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 08:57:35', '2018-10-02 08:57:35'),
(87, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"arrival_time_if_late\":null}', '{\"arrival_time_if_late\":\"a\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 08:59:37', '2018-10-02 08:59:37'),
(88, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"flag\":\"red\"}', '{\"flag\":\"yellow\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:14:17', '2018-10-02 09:14:17'),
(89, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 4, '{\"flag\":\"yellow\"}', '{\"flag\":\"red\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:14:27', '2018-10-02 09:14:27'),
(90, 'App\\Models\\User', 4, 'deleted', 'App\\Models\\DessertSheet', 4, '{\"id\":4,\"cts_id\":290,\"staff_no\":71203,\"responsible1\":\"pramod<br>\",\"conformation_day_before\":\"No response\",\"responsible2\":null,\"conformation_3_hours_ago\":\"No response\",\"arrival_time_if_late\":\"00:00:00\",\"reason_for_late\":\"test\",\"call_medium\":\"viber\",\"flag\":\"red\"}', '[]', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:14:27', '2018-10-02 09:14:27'),
(91, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 5, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71203\",\"id\":5}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:16:21', '2018-10-02 09:16:21'),
(92, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 5, '{\"flag\":\"\"}', '{\"flag\":\"red\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:16:28', '2018-10-02 09:16:28'),
(93, 'App\\Models\\User', 4, 'deleted', 'App\\Models\\DessertSheet', 5, '{\"id\":5,\"cts_id\":290,\"staff_no\":71203,\"responsible1\":null,\"conformation_day_before\":null,\"responsible2\":null,\"conformation_3_hours_ago\":null,\"arrival_time_if_late\":null,\"reason_for_late\":null,\"call_medium\":null,\"flag\":\"red\"}', '[]', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:16:28', '2018-10-02 09:16:28'),
(94, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 6, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71203\",\"id\":6}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:18:34', '2018-10-02 09:18:34'),
(95, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 7, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71204\",\"id\":7}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71204&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:19:03', '2018-10-02 09:19:03'),
(96, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 7, '{\"flag\":\"\"}', '{\"flag\":\"red\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:19:14', '2018-10-02 09:19:14'),
(97, 'App\\Models\\User', 4, 'deleted', 'App\\Models\\DessertSheet', 7, '{\"id\":7,\"cts_id\":290,\"staff_no\":71204,\"responsible1\":null,\"conformation_day_before\":null,\"responsible2\":null,\"conformation_3_hours_ago\":null,\"arrival_time_if_late\":null,\"reason_for_late\":null,\"call_medium\":null,\"flag\":\"red\"}', '[]', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:19:14', '2018-10-02 09:19:14'),
(98, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 6, '{\"flag\":\"\"}', '{\"flag\":\"red\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:19:17', '2018-10-02 09:19:17'),
(99, 'App\\Models\\User', 4, 'deleted', 'App\\Models\\DessertSheet', 6, '{\"id\":6,\"cts_id\":290,\"staff_no\":71203,\"responsible1\":null,\"conformation_day_before\":null,\"responsible2\":null,\"conformation_3_hours_ago\":null,\"arrival_time_if_late\":null,\"reason_for_late\":null,\"call_medium\":null,\"flag\":\"red\"}', '[]', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-02 09:19:18', '2018-10-02 09:19:18'),
(100, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"qeEhFs5TmPrf4Ae6L8yEb0LmCNDjJqDX859lSKsjotixk79mMyYmKHKCXqnF\"}', '{\"remember_token\":\"ROgRsDEigy4poerEK6HyZAjfo560NwdpG6BhCqmEZ2zcZJKIlTM6lsDGc74d\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-04 22:41:52', '2018-10-04 22:41:52'),
(101, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 8, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71203\",\"id\":8}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-05 09:10:46', '2018-10-05 09:10:46'),
(102, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 9, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71204\",\"id\":9}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71204&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-05 09:17:24', '2018-10-05 09:17:24'),
(103, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 10, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71205\",\"id\":10}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71205&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-05 09:31:16', '2018-10-05 09:31:16'),
(104, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 630, '[]', '{\"companyTT_id\":48,\"date\":\"2018-10-05\",\"time\":\"09:00:00\",\"normal\":null,\"help\":null,\"id\":630}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-05 10:24:02', '2018-10-05 10:24:02'),
(105, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 631, '[]', '{\"companyTT_id\":48,\"date\":\"2018-10-05\",\"time\":\"14:00:00\",\"normal\":null,\"help\":null,\"id\":631}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-05 10:24:02', '2018-10-05 10:24:02'),
(106, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 11, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71206\",\"id\":11}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71206&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 01:10:32', '2018-10-06 01:10:32'),
(107, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 12, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71207\",\"id\":12}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71207&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:36:18', '2018-10-06 03:36:18'),
(108, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 13, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71208\",\"id\":13}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71208&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:36:57', '2018-10-06 03:36:57'),
(109, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 14, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71209\",\"id\":14}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71209&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:38:00', '2018-10-06 03:38:00'),
(110, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 15, '[]', '{\"cts_id\":\"370\",\"staff_no\":\"71203\",\"id\":15}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=370', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:38:32', '2018-10-06 03:38:32'),
(111, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 1, '{\"flag\":\"\"}', '{\"flag\":\"red\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:40:47', '2018-10-06 03:40:47'),
(112, 'App\\Models\\User', 4, 'deleted', 'App\\Models\\DessertSheet', 1, '{\"id\":1,\"cts_id\":371,\"staff_no\":71203,\"responsible1\":\"Pramod\",\"conformation_day_before\":\"Not OK\",\"responsible2\":\"Dai\",\"conformation_3_hours_ago\":null,\"arrival_time_if_late\":\"00:04:12\",\"reason_for_late\":\"traffic\",\"call_medium\":\"call\",\"flag\":\"red\"}', '[]', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:40:47', '2018-10-06 03:40:47'),
(113, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 2, '{\"flag\":\"\"}', '{\"flag\":\"red\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:40:58', '2018-10-06 03:40:58'),
(114, 'App\\Models\\User', 4, 'deleted', 'App\\Models\\DessertSheet', 2, '{\"id\":2,\"cts_id\":371,\"staff_no\":71203,\"responsible1\":\"Pramod\",\"conformation_day_before\":\"Not OK\",\"responsible2\":\"Dai\",\"conformation_3_hours_ago\":null,\"arrival_time_if_late\":\"00:04:12\",\"reason_for_late\":\"traffic\",\"call_medium\":\"call\",\"flag\":\"red\"}', '[]', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:40:59', '2018-10-06 03:40:59'),
(115, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 16, '[]', '{\"cts_id\":\"371\",\"staff_no\":\"71203\",\"id\":16}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=371', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:41:02', '2018-10-06 03:41:02'),
(116, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 16, '{\"flag\":\"\"}', '{\"flag\":\"red\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:41:50', '2018-10-06 03:41:50'),
(117, 'App\\Models\\User', 4, 'deleted', 'App\\Models\\DessertSheet', 16, '{\"id\":16,\"cts_id\":371,\"staff_no\":71203,\"responsible1\":null,\"conformation_day_before\":null,\"responsible2\":null,\"conformation_3_hours_ago\":null,\"arrival_time_if_late\":null,\"reason_for_late\":null,\"call_medium\":null,\"flag\":\"red\"}', '[]', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:41:50', '2018-10-06 03:41:50'),
(118, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 17, '[]', '{\"cts_id\":\"371\",\"staff_no\":\"71203\",\"id\":17}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=371', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:42:42', '2018-10-06 03:42:42'),
(119, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 372, '{\"normal\":null}', '{\"normal\":\"4\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:43:12', '2018-10-06 03:43:12');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(120, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 372, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:43:12', '2018-10-06 03:43:12'),
(121, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 18, '[]', '{\"cts_id\":\"372\",\"staff_no\":\"71203\",\"id\":18}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=372', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:43:22', '2018-10-06 03:43:22'),
(122, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 373, '{\"normal\":null}', '{\"normal\":\"5\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:43:49', '2018-10-06 03:43:49'),
(123, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 373, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:43:54', '2018-10-06 03:43:54'),
(124, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 19, '[]', '{\"cts_id\":\"373\",\"staff_no\":\"71203\",\"id\":19}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=373', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:44:02', '2018-10-06 03:44:02'),
(125, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 15, '{\"staff_no\":71203}', '{\"staff_no\":\"71204\"}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71204&dessert_id=15&schedule_id=370&action_type=update', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:44:27', '2018-10-06 03:44:27'),
(126, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 15, '{\"staff_no\":71204}', '{\"staff_no\":\"71203\"}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&dessert_id=15&schedule_id=370&action_type=update', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:44:30', '2018-10-06 03:44:30'),
(127, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"ROgRsDEigy4poerEK6HyZAjfo560NwdpG6BhCqmEZ2zcZJKIlTM6lsDGc74d\"}', '{\"remember_token\":\"0PFdi9mKNWJERMFuaZa3Ro5PhW16EjqWjrIkFXGNn5lDxYlSWyxknRU3wHGb\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:47:21', '2018-10-06 03:47:21'),
(128, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 1, '{\"remember_token\":\"l1vY5qhMD6FAa74FKkakDtZ46z4ENS8h8oNiJ2ZV6LEqteNABabx51jR5wP4\"}', '{\"remember_token\":\"XU0VXPndsZtJn7CFjtOmq3St1S9RG3YHZUFKJZoY9Qa46nsXl7JKslDadnb1\"}', 'http://127.0.0.1:8000/employee/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:54:18', '2018-10-06 03:54:18'),
(129, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 20, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71211\",\"id\":20}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71211&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:57:12', '2018-10-06 03:57:12'),
(130, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 21, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71210\",\"id\":21}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71210&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:57:14', '2018-10-06 03:57:14'),
(131, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 22, '[]', '{\"cts_id\":\"290\",\"staff_no\":\"71212\",\"id\":22}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71212&schedule_id=290', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 03:58:16', '2018-10-06 03:58:16'),
(132, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 305, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 07:58:27', '2018-10-06 07:58:27'),
(133, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 260, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 07:58:29', '2018-10-06 07:58:29'),
(134, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 260, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 07:58:31', '2018-10-06 07:58:31'),
(135, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 305, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 07:58:32', '2018-10-06 07:58:32'),
(136, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 275, '{\"normal\":null}', '{\"normal\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 07:58:33', '2018-10-06 07:58:33'),
(137, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 275, '{\"help\":null}', '{\"help\":\"2\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 07:58:35', '2018-10-06 07:58:35'),
(138, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 23, '[]', '{\"cts_id\":\"305\",\"staff_no\":\"71203\",\"id\":23}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=305', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 07:58:47', '2018-10-06 07:58:47'),
(139, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 320, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 07:59:27', '2018-10-06 07:59:27'),
(140, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 320, '{\"help\":null}', '{\"help\":\"3\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 07:59:29', '2018-10-06 07:59:29'),
(141, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 24, '[]', '{\"cts_id\":\"320\",\"staff_no\":\"71203\",\"id\":24}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71203&schedule_id=320', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 07:59:53', '2018-10-06 07:59:53'),
(142, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 8, '{\"conformation_day_before\":null}', '{\"conformation_day_before\":\"OK\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 08:03:45', '2018-10-06 08:03:45'),
(143, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 8, '{\"conformation_day_before\":\"OK\"}', '{\"conformation_day_before\":\"Not OK\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 08:05:56', '2018-10-06 08:05:56'),
(144, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 8, '{\"conformation_day_before\":\"Not OK\"}', '{\"conformation_day_before\":\"No response\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 08:06:11', '2018-10-06 08:06:11'),
(145, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 8, '{\"flag\":\"\"}', '{\"flag\":\"yellow\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 08:06:44', '2018-10-06 08:06:44'),
(146, 'App\\Models\\User', 4, 'updated', 'App\\Models\\DessertSheet', 8, '{\"conformation_3_hours_ago\":null}', '{\"conformation_3_hours_ago\":\"No response\"}', 'http://127.0.0.1:8000/dessert/dessert_update?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 08:06:50', '2018-10-06 08:06:50'),
(147, 'App\\Models\\User', 4, 'created', 'App\\Models\\DessertSheet', 25, '[]', '{\"cts_id\":\"320\",\"staff_no\":\"71212\",\"id\":25}', 'http://127.0.0.1:8000/dessert/findDetails?psi_num=71212&schedule_id=320', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', NULL, '2018-10-06 08:33:41', '2018-10-06 08:33:41'),
(148, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 632, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-08\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":632}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:07', '2018-10-08 05:26:07'),
(149, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 633, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-09\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":633}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:07', '2018-10-08 05:26:07'),
(150, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 634, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-10\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":634}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:07', '2018-10-08 05:26:07'),
(151, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 635, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-11\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":635}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:07', '2018-10-08 05:26:07'),
(152, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 636, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-12\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":636}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:07', '2018-10-08 05:26:07'),
(153, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 637, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-13\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":637}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:07', '2018-10-08 05:26:07'),
(154, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 638, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-14\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":638}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:07', '2018-10-08 05:26:07'),
(155, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 639, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-15\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":639}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(156, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 640, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-16\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":640}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(157, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 641, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-17\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":641}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(158, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 642, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-18\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":642}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(159, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 643, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-19\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":643}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(160, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 644, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-20\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":644}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(161, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 645, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-21\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":645}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(162, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 646, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-22\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":646}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(163, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 647, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-23\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":647}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(164, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 648, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-24\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":648}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(165, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 649, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-25\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":649}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(166, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 650, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-26\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":650}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(167, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 651, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-27\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":651}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(168, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 652, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-28\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":652}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(169, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 653, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-29\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":653}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(170, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 654, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-30\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":654}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:08', '2018-10-08 05:26:08'),
(171, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 655, '[]', '{\"companyTT_id\":49,\"date\":\"2018-10-31\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":655}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(172, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 656, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-01\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":656}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(173, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 657, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-02\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":657}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(174, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 658, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-03\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":658}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(175, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 659, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-04\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":659}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(176, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 660, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-05\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":660}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(177, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 661, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-06\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":661}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(178, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 662, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-07\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":662}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(179, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 663, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-08\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":663}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(180, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 664, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-09\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":664}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(181, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 665, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-10\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":665}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(182, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 666, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-11\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":666}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(183, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 667, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-12\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":667}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(184, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 668, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-13\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":668}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:09', '2018-10-08 05:26:09'),
(185, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 669, '[]', '{\"companyTT_id\":49,\"date\":\"2018-11-14\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":669}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:26:10', '2018-10-08 05:26:10'),
(186, 'App\\Models\\User', 4, 'created', 'App\\Models\\ShiftMasterData', 25, '[]', '{\"company_id\":\"57\",\"start_time\":\"13:00\",\"end_time\":\"17:00\",\"id\":25}', 'http://127.0.0.1:8000/pages/ajax/shift/add?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:15', '2018-10-08 05:29:15'),
(187, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 670, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-08\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":670}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:23', '2018-10-08 05:29:23'),
(188, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 671, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-09\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":671}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:23', '2018-10-08 05:29:23'),
(189, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 672, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-10\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":672}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:23', '2018-10-08 05:29:23'),
(190, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 673, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-11\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":673}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:23', '2018-10-08 05:29:23'),
(191, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 674, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-12\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":674}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:23', '2018-10-08 05:29:23'),
(192, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 675, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-13\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":675}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:23', '2018-10-08 05:29:23'),
(193, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 676, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-14\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":676}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:23', '2018-10-08 05:29:23'),
(194, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 677, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-15\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":677}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:23', '2018-10-08 05:29:23'),
(195, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 678, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-16\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":678}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:23', '2018-10-08 05:29:23'),
(196, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 679, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-17\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":679}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:23', '2018-10-08 05:29:23'),
(197, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 680, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-18\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":680}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(198, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 681, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-19\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":681}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(199, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 682, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-20\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":682}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(200, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 683, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-21\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":683}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(201, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 684, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-22\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":684}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(202, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 685, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-23\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":685}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(203, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 686, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-24\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":686}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(204, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 687, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-25\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":687}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(205, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 688, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-26\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":688}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(206, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 689, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-27\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":689}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(207, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 690, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-28\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":690}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(208, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 691, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-29\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":691}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(209, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 692, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-30\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":692}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(210, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 693, '[]', '{\"companyTT_id\":50,\"date\":\"2018-10-31\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":693}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(211, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 694, '[]', '{\"companyTT_id\":50,\"date\":\"2018-11-01\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":694}', 'http://127.0.0.1:8000/pages/shift/generator?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:24', '2018-10-08 05:29:24'),
(212, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 671, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:37', '2018-10-08 05:29:37'),
(213, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 670, '{\"normal\":null}', '{\"normal\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:38', '2018-10-08 05:29:38'),
(214, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 670, '{\"help\":null}', '{\"help\":\"11\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:39', '2018-10-08 05:29:39'),
(215, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 671, '{\"help\":null}', '{\"help\":\"1\"}', 'http://127.0.0.1:8000/pages/shift/updateCell?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:29:41', '2018-10-08 05:29:41'),
(216, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 26, '[]', '{\"staff_no\":71203,\"cts_id\":\"670\",\"id\":26}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 05:31:21', '2018-10-08 05:31:21'),
(217, NULL, NULL, 'created', 'App\\Models\\DessertSheet', 27, '[]', '{\"staff_no\":71203,\"cts_id\":\"671\",\"id\":27}', 'http://127.0.0.1:8000/employee/storeEmployeeApplication?', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36', NULL, '2018-10-08 05:31:33', '2018-10-08 05:31:33'),
(218, 'App\\Models\\User', 4, 'updated', 'App\\Models\\User', 4, '{\"remember_token\":\"0PFdi9mKNWJERMFuaZa3Ro5PhW16EjqWjrIkFXGNn5lDxYlSWyxknRU3wHGb\"}', '{\"remember_token\":\"wz6E9ihO5tN4pFnHHwRWJxIee7fXhKE4FcdEfathuOhfTLIYrH9h33gg07ED\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-08 23:48:39', '2018-10-08 23:48:39'),
(219, NULL, NULL, 'created', 'App\\Models\\EmployeeLogin', 2, '[]', '{\"psi_number\":71205,\"password\":\"NEqr4HQU\",\"id\":2}', 'https://psi-s.digisofttechnologies.com/viber_bot?sig=88e4bf86852a6bbcf3b57c72f7b60fa90b878faa504ea228ce6690c15f43246e', '52.0.253.154', 'Jetty/9.2.10.v20150310', NULL, '2018-10-09 18:25:25', '2018-10-09 18:25:25'),
(220, NULL, NULL, 'created', 'App\\Models\\EmployeeLogin', 3, '[]', '{\"psi_number\":71205,\"password\":\"$2y$10$DTtFF7lyjCktiSg8pKregeOyiKQvRH.SJWgIlN3H8q2wWTRlt9Aae\",\"id\":3}', 'https://psi-s.digisofttechnologies.com/viber_bot?sig=915cce22f17bcf01ee80b09f4a40398bdc0d6875cf75d739a9ce971512bbb98a', '52.0.253.154', 'Jetty/9.2.10.v20150310', NULL, '2018-10-09 18:27:30', '2018-10-09 18:27:30'),
(221, NULL, NULL, 'created', 'App\\Models\\EmployeeLogin', 5, '[]', '{\"psi_number\":71205,\"password\":\"$2y$10$FlSI8rEeV4Qi.fIilM6jQ.gOTZ7b3e318I8ibm\\/P\\/nX5TA8vS\\/JMK\",\"id\":5}', 'https://psi-s.digisofttechnologies.com/viber_bot?sig=a3e4dd7144ecf1406519c3682b3dcd6db946d1a4929e4a1499dd8ea072601aa6', '52.0.253.154', 'Jetty/9.2.10.v20150310', NULL, '2018-10-09 18:38:23', '2018-10-09 18:38:23'),
(222, NULL, NULL, 'created', 'App\\Models\\EmployeeLogin', 6, '[]', '{\"psi_number\":\"08021691995\",\"password\":\"$2y$10$rsdZyIkzBbizmW224kBBDO3nLgxpq\\/S1DnX2PU4ckUKicE9GHvMgO\",\"id\":6}', 'https://psi-s.digisofttechnologies.com/viber_bot?sig=d8e1301dfe348de37d87235b0a57685538e0ddd62a469e3485bb427a4bb3f939', '52.0.254.20', 'Jetty/9.2.10.v20150310', NULL, '2018-10-09 20:00:08', '2018-10-09 20:00:08'),
(223, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 6, '{\"remember_token\":null}', '{\"remember_token\":\"BAcj4bBz6R8v9WCGh3xkjVFwMxtoaes2C78LwF6PUup5G5DsIY6BR4rafV0a\"}', 'https://psi-s.digisofttechnologies.com/employee/logout?', '202.79.36.19', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 12:23:48', '2018-10-11 12:23:48'),
(224, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 6, '{\"remember_token\":\"BAcj4bBz6R8v9WCGh3xkjVFwMxtoaes2C78LwF6PUup5G5DsIY6BR4rafV0a\"}', '{\"remember_token\":\"PQwh4NjCLdP5XA7bDjG3quLdXejUlZWn96u75xhnTyQuyexgKZOSoX4lYZQS\"}', 'https://psi-s.digisofttechnologies.com/employee/logout?', '202.79.36.19', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 12:24:39', '2018-10-11 12:24:39'),
(225, NULL, NULL, 'created', 'App\\Models\\EmployeeLogin', 11, '[]', '{\"psi_number\":\"08021691995\",\"password\":\"$2y$10$FACGYWXlRLqdVYRPICHUheaEtHOisNnXgI2GIhvkqkQ\\/hqMY6U45q\",\"id\":11}', 'https://psi-s.digisofttechnologies.com/viber_bot?sig=92b3341a78cf1189f6a647aaf287cdda43a7d6ccb9dcf7946c16b0aee36fa560', '52.0.254.20', 'Jetty/9.2.10.v20150310', NULL, '2018-10-11 12:26:06', '2018-10-11 12:26:06'),
(226, NULL, NULL, 'created', 'App\\Models\\EmployeeLogin', 14, '[]', '{\"psi_number\":\"08021691995\",\"password\":\"$2y$10$iy2osQRQt3IEvNTAP1fLKedapkdTLEJsvW2Jz4WsCOPiGRzjN7hLq\",\"id\":14}', 'https://psi-s.digisofttechnologies.com/viber_bot?sig=e6d11c8f4f470ba59ea1aa92efcb5ac2ddf1595fa7ef2d8548b79c1d8a4f902e', '52.0.254.20', 'Jetty/9.2.10.v20150310', NULL, '2018-10-11 12:37:46', '2018-10-11 12:37:46'),
(227, NULL, NULL, 'updated', 'App\\Models\\EmployeeLogin', 14, '{\"remember_token\":null}', '{\"remember_token\":\"UVeY3A1iBwHvbVaceCWr4wnCKthZnE1oMWOOqlQWvNKA3boq3Fz5YSsRvbFJ\"}', 'https://psi-s.digisofttechnologies.com/employee/logout?', '202.79.36.19', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-11 12:41:01', '2018-10-11 12:41:01'),
(228, NULL, NULL, 'created', 'App\\Models\\EmployeeLogin', 17, '[]', '{\"psi_number\":\"08021691995\",\"password\":\"$2y$10$rmkbZUPlnHH3uE69RjE6DOcd6EGVAhDC8n\\/Rb9qAFtx8rU2r5aKKG\",\"id\":17}', 'https://psi-s.digisofttechnologies.com/viber_bot?sig=541e5655750a3b79774e99ef56029610f0c7c39b5d8497256c8ebe3f8dfeef81', '52.0.254.20', 'Jetty/9.2.10.v20150310', NULL, '2018-10-12 13:28:42', '2018-10-12 13:28:42'),
(229, NULL, NULL, 'created', 'App\\Models\\EmployeeLogin', 18, '[]', '{\"psi_number\":\"08021691995\",\"password\":\"$2y$10$i0m2VGW98bqBv0JnRDxc1.VlIKGXXyTwDeX5dRAkHFr1jYKRxzhS.\",\"id\":18}', 'https://psi-s.digisofttechnologies.com/viber_bot?sig=be825c286e4da0cf17fee24a6ab2518579a0cbc27a17f944742ff0127747162d', '52.0.254.20', 'Jetty/9.2.10.v20150310', NULL, '2018-10-12 13:35:17', '2018-10-12 13:35:17');

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
(1, 'Company 1', 2, 15651561, 'Naxal', '2018-07-20 11:39:19', '2018-09-17 07:17:53'),
(2, 'Company 2', NULL, 15651561, NULL, '2018-07-20 11:39:28', '2018-08-13 05:55:31'),
(41, 'Warabea', 2, 15651561, 'Tokyo', '2018-08-16 03:37:16', '2018-09-19 08:26:03'),
(42, 'Section1', 41, 15651561, 'Tokyo', '2018-08-16 03:37:17', '2018-09-17 07:18:31'),
(43, 'UWARA', 41, 15651561, 'Tokyo', '2018-08-16 03:37:17', '2018-09-19 08:26:20'),
(44, 'Hero Honda', NULL, 15651561, 'Kyoto', '2018-08-16 03:38:21', '2018-08-26 01:09:49'),
(45, 'Hero', 44, 15651561, 'Kyoto', '2018-08-16 03:38:22', '2018-08-26 04:16:10'),
(46, 'Honda', 44, 15651561, 'Kyoto', '2018-08-16 03:38:22', '2018-08-26 02:40:16'),
(47, 'Bwin', NULL, 15651561, 'Madrid', '2018-08-16 03:39:35', '2018-08-16 03:39:35'),
(48, 'Rakuten', 47, 15651561, 'Madrid', '2018-08-16 03:39:35', '2018-08-16 03:39:35'),
(49, 'Herdon', 41, 15651561, 'Utah', '2018-08-16 03:40:16', '2018-08-16 03:40:16'),
(50, 'Pramod Test', NULL, 15651561, 'jawalakhel', '2018-09-03 06:30:03', '2018-09-03 06:30:03'),
(51, 'niveshtest', 50, 15651561, 'kirtipur', '2018-09-03 06:37:03', '2018-09-03 07:09:56'),
(52, 'digisoft', 50, 15651561, 'sundarijal', '2018-09-03 06:38:02', '2018-09-03 06:38:02'),
(53, 'digisoft1', 51, 15651561, 'sundarijal', '2018-09-03 06:38:02', '2018-09-03 06:38:02'),
(54, 'digisoft12', 51, 15651561, 'sundarijal', '2018-09-03 06:38:02', '2018-09-03 06:38:02'),
(55, 'mytest', NULL, 9803011321, 'jawalakhel', '2018-10-08 05:27:34', '2018-10-08 05:27:34'),
(56, 'mytest1', 55, 9803011321, 'jawalakhel', '2018-10-08 05:27:34', '2018-10-08 05:27:34'),
(57, 'mytest2', 56, 9803011321, 'jawalakhel', '2018-10-08 05:27:34', '2018-10-08 05:27:34'),
(58, 'mytest', NULL, 9803011321, 'jawalakhel', '2018-10-08 05:27:47', '2018-10-08 05:27:47'),
(59, 'mytest1', 58, 9803011321, 'jawalakhel', '2018-10-08 05:27:47', '2018-10-08 05:27:47'),
(60, 'mytest2', 59, 9803011321, 'jawalakhel', '2018-10-08 05:27:47', '2018-10-08 05:27:47');

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
(260, 21, '2018-09-01', '09:00:00', 2, 2, '2018-09-01 17:34:05', '2018-10-06 13:43:31'),
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
(275, 21, '2018-09-01', '14:00:00', 2, 2, '2018-09-01 17:34:05', '2018-10-06 13:43:35'),
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
(305, 22, '2018-09-01', '13:00:00', 1, 2, '2018-09-01 17:34:07', '2018-10-06 13:43:32'),
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
(320, 22, '2018-09-01', '18:00:00', 3, 3, '2018-09-01 17:34:07', '2018-10-06 13:44:29'),
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
(372, 42, '2018-09-05', '13:00:00', 4, 1, '2018-09-03 04:39:41', '2018-10-06 09:28:12'),
(373, 42, '2018-09-06', '13:00:00', 5, 1, '2018-09-03 04:39:41', '2018-10-06 09:28:54'),
(374, 42, '2018-09-07', '13:00:00', NULL, NULL, '2018-09-03 04:39:41', '2018-09-03 10:24:41'),
(375, 42, '2018-09-08', '13:00:00', NULL, NULL, '2018-09-03 04:39:42', '2018-09-03 10:24:42'),
(376, 42, '2018-09-09', '13:00:00', NULL, NULL, '2018-09-03 04:39:42', '2018-09-03 10:24:42'),
(377, 42, '2018-09-10', '13:00:00', NULL, NULL, '2018-09-03 04:39:42', '2018-09-03 10:24:42'),
(483, 45, '2018-09-03', '03:00:00', 5, 6, '2018-09-03 07:12:26', '2018-09-03 12:58:14'),
(484, 45, '2018-09-04', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(485, 45, '2018-09-05', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(486, 45, '2018-09-06', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(487, 45, '2018-09-07', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(488, 45, '2018-09-08', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(489, 45, '2018-09-09', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(490, 45, '2018-09-10', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(491, 45, '2018-09-11', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(492, 45, '2018-09-12', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(493, 45, '2018-09-13', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(494, 45, '2018-09-14', '03:00:00', NULL, NULL, '2018-09-03 07:12:26', '2018-09-03 12:57:26'),
(495, 45, '2018-09-15', '03:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(496, 45, '2018-09-16', '03:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(497, 45, '2018-09-17', '03:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(498, 45, '2018-09-18', '03:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(499, 45, '2018-09-19', '03:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(500, 45, '2018-09-20', '03:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(501, 45, '2018-09-21', '03:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(502, 45, '2018-09-22', '03:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(503, 45, '2018-09-23', '03:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(504, 45, '2018-09-03', '20:00:00', 2, 10, '2018-09-03 07:12:27', '2018-09-03 13:00:07'),
(505, 45, '2018-09-04', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(506, 45, '2018-09-05', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(507, 45, '2018-09-06', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(508, 45, '2018-09-07', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(509, 45, '2018-09-08', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(510, 45, '2018-09-09', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(511, 45, '2018-09-10', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(512, 45, '2018-09-11', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(513, 45, '2018-09-12', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(514, 45, '2018-09-13', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(515, 45, '2018-09-14', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(516, 45, '2018-09-15', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(517, 45, '2018-09-16', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(518, 45, '2018-09-17', '20:00:00', NULL, NULL, '2018-09-03 07:12:27', '2018-09-03 12:57:27'),
(519, 45, '2018-09-18', '20:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(520, 45, '2018-09-19', '20:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(521, 45, '2018-09-20', '20:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(522, 45, '2018-09-21', '20:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(523, 45, '2018-09-22', '20:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(524, 45, '2018-09-23', '20:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(525, 45, '2018-09-03', '13:00:00', 4, 7, '2018-09-03 07:12:28', '2018-09-03 12:58:28'),
(526, 45, '2018-09-04', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(527, 45, '2018-09-05', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(528, 45, '2018-09-06', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(529, 45, '2018-09-07', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(530, 45, '2018-09-08', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(531, 45, '2018-09-09', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(532, 45, '2018-09-10', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(533, 45, '2018-09-11', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(534, 45, '2018-09-12', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(535, 45, '2018-09-13', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(536, 45, '2018-09-14', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(537, 45, '2018-09-15', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(538, 45, '2018-09-16', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(539, 45, '2018-09-17', '13:00:00', NULL, NULL, '2018-09-03 07:12:28', '2018-09-03 12:57:28'),
(540, 45, '2018-09-18', '13:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(541, 45, '2018-09-19', '13:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(542, 45, '2018-09-20', '13:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(543, 45, '2018-09-21', '13:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(544, 45, '2018-09-22', '13:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(545, 45, '2018-09-23', '13:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(546, 46, '2018-09-03', '14:00:00', 8, 9, '2018-09-03 07:12:29', '2018-09-03 12:59:46'),
(547, 46, '2018-09-04', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(548, 46, '2018-09-05', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(549, 46, '2018-09-06', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(550, 46, '2018-09-07', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(551, 46, '2018-09-08', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(552, 46, '2018-09-09', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(553, 46, '2018-09-10', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(554, 46, '2018-09-11', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(555, 46, '2018-09-12', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(556, 46, '2018-09-13', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(557, 46, '2018-09-14', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(558, 46, '2018-09-15', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(559, 46, '2018-09-16', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(560, 46, '2018-09-17', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(561, 46, '2018-09-18', '14:00:00', NULL, NULL, '2018-09-03 07:12:29', '2018-09-03 12:57:29'),
(562, 46, '2018-09-19', '14:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(563, 46, '2018-09-20', '14:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(564, 46, '2018-09-21', '14:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(565, 46, '2018-09-22', '14:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(566, 46, '2018-09-23', '14:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(567, 46, '2018-09-03', '23:00:00', 11, 9, '2018-09-03 07:12:30', '2018-09-03 13:00:16'),
(568, 46, '2018-09-04', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(569, 46, '2018-09-05', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(570, 46, '2018-09-06', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(571, 46, '2018-09-07', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(572, 46, '2018-09-08', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(573, 46, '2018-09-09', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(574, 46, '2018-09-10', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(575, 46, '2018-09-11', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(576, 46, '2018-09-12', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(577, 46, '2018-09-13', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(578, 46, '2018-09-14', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(579, 46, '2018-09-15', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(580, 46, '2018-09-16', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(581, 46, '2018-09-17', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(582, 46, '2018-09-18', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(583, 46, '2018-09-19', '23:00:00', NULL, NULL, '2018-09-03 07:12:30', '2018-09-03 12:57:30'),
(584, 46, '2018-09-20', '23:00:00', NULL, NULL, '2018-09-03 07:12:31', '2018-09-03 12:57:31'),
(585, 46, '2018-09-21', '23:00:00', NULL, NULL, '2018-09-03 07:12:31', '2018-09-03 12:57:31'),
(586, 46, '2018-09-22', '23:00:00', NULL, NULL, '2018-09-03 07:12:31', '2018-09-03 12:57:31'),
(587, 46, '2018-09-23', '23:00:00', NULL, NULL, '2018-09-03 07:12:31', '2018-09-03 12:57:31'),
(588, 47, '2018-09-04', '14:00:00', NULL, NULL, '2018-09-03 23:59:11', '2018-09-04 05:44:11'),
(589, 47, '2018-09-05', '14:00:00', NULL, NULL, '2018-09-03 23:59:11', '2018-09-04 05:44:11'),
(590, 47, '2018-09-06', '14:00:00', NULL, NULL, '2018-09-03 23:59:11', '2018-09-04 05:44:11'),
(591, 47, '2018-09-07', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(592, 47, '2018-09-08', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(593, 47, '2018-09-09', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(594, 47, '2018-09-10', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(595, 47, '2018-09-11', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(596, 47, '2018-09-12', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(597, 47, '2018-09-13', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(598, 47, '2018-09-14', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(599, 47, '2018-09-15', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(600, 47, '2018-09-16', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(601, 47, '2018-09-17', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(602, 47, '2018-09-18', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(603, 47, '2018-09-19', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(604, 47, '2018-09-20', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(605, 47, '2018-09-21', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(606, 47, '2018-09-22', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(607, 47, '2018-09-23', '14:00:00', NULL, NULL, '2018-09-03 23:59:12', '2018-09-04 05:44:12'),
(608, 47, '2018-09-24', '14:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(609, 47, '2018-09-04', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(610, 47, '2018-09-05', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(611, 47, '2018-09-06', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(612, 47, '2018-09-07', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(613, 47, '2018-09-08', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(614, 47, '2018-09-09', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(615, 47, '2018-09-10', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(616, 47, '2018-09-11', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(617, 47, '2018-09-12', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(618, 47, '2018-09-13', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(619, 47, '2018-09-14', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(620, 47, '2018-09-15', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(621, 47, '2018-09-16', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(622, 47, '2018-09-17', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(623, 47, '2018-09-18', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(624, 47, '2018-09-19', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(625, 47, '2018-09-20', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(626, 47, '2018-09-21', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(627, 47, '2018-09-22', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(628, 47, '2018-09-23', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(629, 47, '2018-09-24', '08:00:00', NULL, NULL, '2018-09-03 23:59:13', '2018-09-04 05:44:13'),
(630, 48, '2018-10-05', '09:00:00', NULL, NULL, '2018-10-05 10:24:02', '2018-10-05 16:09:02'),
(631, 48, '2018-10-05', '14:00:00', NULL, NULL, '2018-10-05 10:24:02', '2018-10-05 16:09:02'),
(632, 49, '2018-10-08', '13:00:00', NULL, NULL, '2018-10-08 05:26:07', '2018-10-08 11:11:07'),
(633, 49, '2018-10-09', '13:00:00', NULL, NULL, '2018-10-08 05:26:07', '2018-10-08 11:11:07'),
(634, 49, '2018-10-10', '13:00:00', NULL, NULL, '2018-10-08 05:26:07', '2018-10-08 11:11:07'),
(635, 49, '2018-10-11', '13:00:00', NULL, NULL, '2018-10-08 05:26:07', '2018-10-08 11:11:07'),
(636, 49, '2018-10-12', '13:00:00', NULL, NULL, '2018-10-08 05:26:07', '2018-10-08 11:11:07'),
(637, 49, '2018-10-13', '13:00:00', NULL, NULL, '2018-10-08 05:26:07', '2018-10-08 11:11:07'),
(638, 49, '2018-10-14', '13:00:00', NULL, NULL, '2018-10-08 05:26:07', '2018-10-08 11:11:07'),
(639, 49, '2018-10-15', '13:00:00', NULL, NULL, '2018-10-08 05:26:07', '2018-10-08 11:11:07'),
(640, 49, '2018-10-16', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(641, 49, '2018-10-17', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(642, 49, '2018-10-18', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(643, 49, '2018-10-19', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(644, 49, '2018-10-20', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(645, 49, '2018-10-21', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(646, 49, '2018-10-22', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(647, 49, '2018-10-23', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(648, 49, '2018-10-24', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(649, 49, '2018-10-25', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(650, 49, '2018-10-26', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(651, 49, '2018-10-27', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(652, 49, '2018-10-28', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(653, 49, '2018-10-29', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(654, 49, '2018-10-30', '13:00:00', NULL, NULL, '2018-10-08 05:26:08', '2018-10-08 11:11:08'),
(655, 49, '2018-10-31', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(656, 49, '2018-11-01', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(657, 49, '2018-11-02', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(658, 49, '2018-11-03', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(659, 49, '2018-11-04', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(660, 49, '2018-11-05', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(661, 49, '2018-11-06', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(662, 49, '2018-11-07', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(663, 49, '2018-11-08', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(664, 49, '2018-11-09', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(665, 49, '2018-11-10', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(666, 49, '2018-11-11', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(667, 49, '2018-11-12', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(668, 49, '2018-11-13', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(669, 49, '2018-11-14', '13:00:00', NULL, NULL, '2018-10-08 05:26:09', '2018-10-08 11:11:09'),
(670, 50, '2018-10-08', '13:00:00', 1, 11, '2018-10-08 05:29:23', '2018-10-08 11:14:39'),
(671, 50, '2018-10-09', '13:00:00', 1, 1, '2018-10-08 05:29:23', '2018-10-08 11:14:41'),
(672, 50, '2018-10-10', '13:00:00', NULL, NULL, '2018-10-08 05:29:23', '2018-10-08 11:14:23'),
(673, 50, '2018-10-11', '13:00:00', NULL, NULL, '2018-10-08 05:29:23', '2018-10-08 11:14:23'),
(674, 50, '2018-10-12', '13:00:00', NULL, NULL, '2018-10-08 05:29:23', '2018-10-08 11:14:23'),
(675, 50, '2018-10-13', '13:00:00', NULL, NULL, '2018-10-08 05:29:23', '2018-10-08 11:14:23'),
(676, 50, '2018-10-14', '13:00:00', NULL, NULL, '2018-10-08 05:29:23', '2018-10-08 11:14:23'),
(677, 50, '2018-10-15', '13:00:00', NULL, NULL, '2018-10-08 05:29:23', '2018-10-08 11:14:23'),
(678, 50, '2018-10-16', '13:00:00', NULL, NULL, '2018-10-08 05:29:23', '2018-10-08 11:14:23'),
(679, 50, '2018-10-17', '13:00:00', NULL, NULL, '2018-10-08 05:29:23', '2018-10-08 11:14:23'),
(680, 50, '2018-10-18', '13:00:00', NULL, NULL, '2018-10-08 05:29:23', '2018-10-08 11:14:23'),
(681, 50, '2018-10-19', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(682, 50, '2018-10-20', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(683, 50, '2018-10-21', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(684, 50, '2018-10-22', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(685, 50, '2018-10-23', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(686, 50, '2018-10-24', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(687, 50, '2018-10-25', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(688, 50, '2018-10-26', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(689, 50, '2018-10-27', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(690, 50, '2018-10-28', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(691, 50, '2018-10-29', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(692, 50, '2018-10-30', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(693, 50, '2018-10-31', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24'),
(694, 50, '2018-11-01', '13:00:00', NULL, NULL, '2018-10-08 05:29:24', '2018-10-08 11:14:24');

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
(42, 48, '2018-09-03 04:39:41', '2018-09-03 04:39:41'),
(45, 51, '2018-09-03 07:12:26', '2018-09-03 07:12:26'),
(46, 52, '2018-09-03 07:12:29', '2018-09-03 07:12:29'),
(47, 49, '2018-09-03 23:59:11', '2018-09-03 23:59:11'),
(48, 42, '2018-10-05 10:24:02', '2018-10-05 10:24:02'),
(49, 48, '2018-10-08 05:26:07', '2018-10-08 05:26:07'),
(50, 57, '2018-10-08 05:29:23', '2018-10-08 05:29:23');

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
(226, 71203, 2, NULL, NULL),
(227, 71204, 2, NULL, NULL),
(228, 71205, 2, NULL, NULL),
(229, 71206, 2, NULL, NULL),
(230, 71207, 2, NULL, NULL),
(231, 71208, 2, NULL, NULL),
(232, 71209, 2, NULL, NULL),
(233, 71210, 2, NULL, NULL),
(234, 71211, 2, NULL, NULL),
(235, 71212, 2, NULL, NULL),
(236, 71248, 2, NULL, NULL),
(237, 71251, 2, NULL, NULL),
(238, 71252, 2, NULL, NULL),
(239, 71260, 2, NULL, NULL),
(240, 71292, 2, NULL, NULL),
(241, 71293, 2, NULL, NULL),
(242, 71294, 2, NULL, NULL),
(243, 71295, 2, NULL, NULL),
(244, 71299, 2, NULL, NULL),
(245, 71366, 2, NULL, NULL),
(246, 71367, 2, NULL, NULL),
(247, 71368, 2, NULL, NULL),
(248, 71369, 2, NULL, NULL),
(249, 71370, 2, NULL, NULL),
(250, 71371, 2, NULL, NULL),
(251, 71203, 1, NULL, NULL),
(252, 71204, 1, NULL, NULL),
(253, 71205, 1, NULL, NULL),
(254, 71206, 1, NULL, NULL),
(255, 71207, 1, NULL, NULL),
(256, 71208, 1, NULL, NULL),
(257, 71209, 1, NULL, NULL),
(258, 71210, 1, NULL, NULL),
(259, 71211, 1, NULL, NULL),
(260, 71212, 1, NULL, NULL),
(261, 71248, 1, NULL, NULL),
(262, 71251, 1, NULL, NULL),
(263, 71252, 1, NULL, NULL),
(264, 71260, 1, NULL, NULL),
(265, 71292, 1, NULL, NULL),
(266, 71293, 1, NULL, NULL),
(267, 71294, 1, NULL, NULL),
(268, 71295, 1, NULL, NULL),
(269, 71299, 1, NULL, NULL),
(270, 71366, 1, NULL, NULL),
(271, 71367, 1, NULL, NULL),
(272, 71368, 1, NULL, NULL),
(273, 71369, 1, NULL, NULL),
(274, 71370, 1, NULL, NULL),
(275, 71371, 1, NULL, NULL);

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

--
-- Dumping data for table `company_to_user_rels`
--

INSERT INTO `company_to_user_rels` (`id`, `user_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 5, 44, '2018-09-14 00:52:19', '2018-09-14 00:52:19'),
(2, 5, 47, '2018-09-14 00:52:19', '2018-09-14 00:52:19'),
(5, 2, 2, NULL, NULL),
(6, 2, 50, NULL, NULL),
(41, 6, 1, '2018-09-15 07:45:07', '2018-09-15 07:45:07'),
(42, 6, 50, '2018-09-15 07:45:07', '2018-09-15 07:45:07'),
(43, 4, 1, '2018-09-15 07:46:06', '2018-09-15 07:46:06'),
(44, 4, 44, '2018-09-15 07:46:06', '2018-09-15 07:46:06'),
(45, 4, 47, '2018-09-15 07:46:06', '2018-09-15 07:46:06'),
(46, 4, 50, '2018-09-15 07:46:06', '2018-09-15 07:46:06'),
(47, 7, 44, '2018-09-15 08:40:53', '2018-09-15 08:40:53'),
(48, 7, 49, '2018-09-15 08:40:53', '2018-09-15 08:40:53'),
(51, 8, 49, '2018-09-17 04:30:20', '2018-09-17 04:30:20'),
(52, 8, 50, '2018-09-17 04:30:20', '2018-09-17 04:30:20'),
(57, 1, 2, '2018-09-23 06:05:44', '2018-09-23 06:05:44'),
(58, 1, 44, '2018-09-23 06:05:44', '2018-09-23 06:05:44'),
(59, 1, 47, '2018-09-23 06:05:44', '2018-09-23 06:05:44'),
(60, 1, 50, '2018-09-23 06:05:44', '2018-09-23 06:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `company_users`
--

CREATE TABLE `company_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companies` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(277, 2, 71203, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'ET', 'Y', NULL, 'ﾃｽﾌｧ ﾊﾅ ｹﾞﾙﾏ', 'Tesfa Hana Girma', '1992-05-29', '女性', '7027935454', NULL, '埼玉県さいたま市見沼区春岡3丁目18番5メゾン東大宮102', 'DU21179800FA', '2018-12-14', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '家族滞在', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(278, 2, 71204, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾚ ｺﾞｯｸ ﾋｴﾌﾟ', 'LE NGOC HIEP', '1985-09-09', '男性', '070-4356-1639', NULL, '東京都江戸川区中葛西5-1-10 ニシキハイツ201', 'PN21748922EF', '2019-05-24', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(279, 2, 71205, NULL, 'チェ', '名前のみ重複', NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ｸﾞｴﾝ ﾊﾞﾝ ﾄﾞｩｸ', 'Nguyen Van Duc', '1995-01-02', '男性', '080-2169-1995', NULL, '12番3号栗原ビル203', 'PN06461714GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(280, 2, 71206, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ｼﾞｵﾝ ﾃｨ ｸｪﾝ', 'Doung Thi Quyen', '1998-05-22', '女性', '080-7885-1998', NULL, '東京都日本堤1丁目12番3号栗原ビル201', 'PN90367250GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(281, 2, 71207, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾁﾝ ｸｱﾝ ﾐﾝ', 'TRINH QUANG MINH', '1997-05-26', '男性', '070-4229-1997', NULL, '東京都荒川区荒川4丁目2番4号MKﾋﾞﾙ402', 'EG7132800EA', '2018-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(282, 2, 71208, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾏｲ ﾃｨ ﾄｳ ﾎｱﾝ', 'Mai Thi Thu Huong', '1998-10-12', '女性', '080-2116-6789', NULL, '東京都台東区日本堤1丁目12番3号栗原ビル201', 'PN70753263GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(283, 2, 71209, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾚｰ ﾃｨ ﾌｫﾝ ﾄｩ', 'Le Thi Phuong Thu', '1991-09-01', '女性', '080-7898-6868', NULL, '東京都荒川区荒川4丁目2番4号MKﾋﾞﾙ601', 'PN50202261GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(284, 2, 71210, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ｳﾞｫ ﾁｳｵﾝ ｱｲﾝ ﾀﾞｵ', 'Vo Truong Anh Dao', '1993-09-02', '女性', '070-2191-8893', NULL, '東京都新宿区北新宿3丁目28番12号ジュネス北新宿303', 'EG20761713FA', '2018-09-19', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(285, 2, 71211, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'VN', 'Y', NULL, 'ﾚ ﾄｩ ｱｲﾝ', 'Le Tu Anh', '1999-09-09', '女性', NULL, NULL, '東京都荒川区荒川4丁目2番4号MKﾋﾞﾙ601', 'PN06407418GA', '2019-06-20', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル/お茶の水イン', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(286, 2, 71212, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'ET', 'Y', NULL, 'ｱﾀﾞﾑ ｼﾞｴﾙｻﾚﾑ ﾃﾞﾒｼｰ', 'Adamu Jerusalem Demissie', '1991-07-12', '女性', '080-5506-2121', NULL, '東京都千代田区神田須田町2丁目2番1パークｷｭｰﾌ神田１００５号', 'PN10861084EA', '2018-10-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '特定活動', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(287, 2, 71248, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'VN', 'Y', NULL, 'ｸﾞｴﾝ ﾃｨ ｼｬﾝ', 'Nguyen Thi Trang', '1992-05-20', '女性', '080-5092-3802', NULL, '埼玉県ふじみ野市上福岡3丁目14番10号ハイツシバタ2-210', 'EG49521126EA', '2018-11-22', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', '99', NULL, NULL, '5月・6月上限2万円⇒7月以降上限1万円', '2', '就労', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(288, 2, 71251, NULL, 'フン', NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ｸﾞｪﾝ ﾄﾞｯｸ ﾄｰ', 'Nguyen Duc Tho', '1993-08-08', '男性', '070-2191-8893', NULL, '東京都新宿区北新宿3-28-12 ジュネス北新宿303', 'PN90558396EA', '2019-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(289, 2, 71252, NULL, 'フン', NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ﾁｬﾝ ﾏﾝ ﾌﾝ', 'Tran Manh Hung', '1997-04-10', '男性', '070-4298-8481', NULL, '東京都豊島区高田2-5-16 白鳩ビル 402号', 'EG79603102EA', '2018-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(290, 2, 71260, NULL, 'フン', NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ｸﾞｪﾝ ﾃﾞｨﾝ ﾜｧﾝ', 'Nguyen Dinh Quan', '1995-03-28', '男性', '080-9087-0667', NULL, '東京都豊島区高田1-28-1メゾン・ド・エコルス 408号', 'EG04126616FA', '2018-09-28', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(291, 2, 71292, NULL, NULL, 'ﾌﾝ：0613確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ﾄﾞ ﾃｨ ﾀｵ ﾎﾝ', 'DO THI THAO HONG', '1986-11-04', '女性', '070-4238-7882', NULL, '群馬県邑楽郡大泉町西小泉5-2-1 株式会社さくら202号', 'EG11895258KA', '2018-06-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '技能実習1号口', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(292, 2, 71293, NULL, NULL, 'ﾌﾝ：0614確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ﾀﾞｵ　ﾃｨ　ｵｱﾝ', 'DAO THI OANH', '1981-09-06', '女性', '070-4238-7882', NULL, '群馬県邑楽郡大泉町西小泉5-2-1 株式会社さくら202号', 'EG37591427KA', '2018-06-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '技能実習1号口', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(293, 2, 71294, NULL, NULL, 'ﾌﾝ：0614確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ｸﾞｴﾝ　ﾃｨ　ｵｱﾝ', 'NGUYEN THI OANH', '1987-04-27', '女性', '070-4238-7882', NULL, '群馬県邑楽郡大泉町西小泉5-2-1 株式会社さくら202号', 'EG15052713KA', '2018-06-18', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '技能実習1号口', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(294, 2, 71295, NULL, NULL, 'ﾌﾝ：0614確認しました。', NULL, '2018-05-01', NULL, 'VN', NULL, NULL, 'ﾌﾞ　ﾃｲ　ｽｱﾝ', 'VU THI XUAN', '1996-02-29', '女性', NULL, NULL, '東京都新宿区下落合4-13-13 レオパレス目白A 21号', 'EG25600723EA', '2019-08-17', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(295, 2, 71299, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'VN', 'N', NULL, 'ﾌｪ　ﾃｨ　ﾃｪ　ﾁｬﾝ', 'Vu Thi Thu Trang', '1992-08-02', '女性', NULL, NULL, '千葉県柏市今谷上町44-7 ベルデュール106', 'EG74611484EA', '2020-05-23', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルＨ', NULL, NULL, NULL, NULL, '2', '就労', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(296, 2, 71366, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', NULL, NULL, 'ﾌｧｸﾘﾁﾞﾝ', 'MAKHAMMADVALIEV FAKHRIDDIN', '1997-10-26', '男性', NULL, NULL, '住所不明', 'PN86389671FA', '2020-07-17', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(297, 2, 71367, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', 'N', NULL, 'ﾏﾀﾕﾌ　ﾐﾗﾌﾞﾛﾙ', 'MATAEV MIRABROR', '1997-01-16', '男性', '070－1547－1993', NULL, '東京都北区岸町2-9-15', 'PN49504436FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(298, 2, 71368, NULL, NULL, NULL, NULL, '2018-05-01', NULL, NULL, NULL, NULL, 'ｼｮｳｷﾛﾌﾞ ｼｮｸﾙｸﾍﾞｸ', 'SHOKIROV SHOKHRUCHBEK', '1998-01-06', '男性', NULL, NULL, '東京都北区岸町2-9-15', 'PN88719332FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(299, 2, 71369, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', 'Y', NULL, NULL, 'MUKHAMMADJONOV KHUSNIDDIN', '1997-08-20', '男性', NULL, NULL, '東京都北区岸町2-9-15', 'PN44771133FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(300, 2, 71370, NULL, NULL, NULL, NULL, '2018-05-01', NULL, NULL, NULL, NULL, 'ﾄｼﾞﾃﾞｨﾝﾉﾌﾞ　ﾗﾑｼﾞﾃﾞｨﾝ', 'TEJIDDINOV RAMZIDDIN', '1988-03-30', '男性', NULL, NULL, '東京都練馬区関町北4丁目10番16号', 'PN25394486FA', '2019-07-03', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
(301, 2, 71371, NULL, NULL, NULL, NULL, '2018-05-01', NULL, 'UZ', 'Y', NULL, 'ｲｿｺﾌ　ﾍﾞｷｿﾞﾄﾞ', 'ISOKOV BEKZOD \n', '1997-04-13', '男性', '070-1547-1993', NULL, '東京都北区岸町2-9-15', 'PN83295082FA', '2019-07-10', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '新富町駅\n築地駅', '銀座キャピタルH', NULL, NULL, NULL, NULL, '3', '留学', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43');

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
(5, 71204, '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-02 04:11:38', '2018-09-03 03:25:27'),
(6, 71207, '16:00:00', '14:00:00', '10:00:00', '11:00:00', '11:00:00', '14:00:00', '16:00:00', '2018-09-04 03:49:52', '2018-09-04 03:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `employee_logins`
--

CREATE TABLE `employee_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `psi_number` bigint(20) NOT NULL,
  `viber_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_logins`
--

INSERT INTO `employee_logins` (`id`, `psi_number`, `viber_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 71203, NULL, '$2y$10$63H8naLtpbACJ7FvvGUI5O5.r0NjsSl5wRZblW7cu2UdfHp4sIe3y', 'XU0VXPndsZtJn7CFjtOmq3St1S9RG3YHZUFKJZoY9Qa46nsXl7JKslDadnb1', NULL, NULL),
(18, 8021691995, NULL, '$2y$10$i0m2VGW98bqBv0JnRDxc1.VlIKGXXyTwDeX5dRAkHFr1jYKRxzhS.', NULL, '2018-10-12 13:35:17', '2018-10-12 13:35:17');

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
(9, 71204, 'Marketing', NULL, '2018-08-31 00:52:41', '2018-08-31 00:52:41'),
(11, 71204, 'Typing', NULL, '2018-08-31 06:39:22', '2018-08-31 06:39:22'),
(12, 71203, 'Wiring', NULL, '2018-09-12 02:41:59', '2018-09-12 02:41:59'),
(13, 71203, 'Typing', NULL, '2018-09-12 02:42:24', '2018-09-12 02:42:24');

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
(1, 51, 71204, 9456789123, '2018-08-23 22:56:16', '2018-08-23 22:56:16'),
(2, 52, 71203, 9868156486, '2018-08-23 22:58:25', '2018-08-23 22:58:25');

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
(29, '2018_09_05_112938_create_self_sheet_comments_table', 19),
(30, '2018_09_06_091028_create_psi_alert_settings', 19),
(31, '2018_09_06_095052_create_company_to_user_rels_table', 19),
(32, '2018_09_07_064809_create_user_groups_table', 19),
(33, '2018_09_08_142854_create_audits_table', 19),
(34, '2018_09_09_171651_create_viber_bot_request', 19),
(35, '2018_09_17_213639_create_company_to_employee_rels_table', 20),
(36, '2018_09_10_153327_create_viber_message_detail', 21),
(37, '2018_09_19_084307_create_skill_master_table', 21),
(38, '2018_09_23_151047_create_psi_view_customizable_table', 22),
(39, '2018_09_23_224835_create_employee_logins_table', 23),
(41, '2018_09_30_141601_create_psi_permission_table', 24),
(42, '2018_10_07_161634_create_psi_viber_story_table', 25),
(44, '2018_10_08_093948_create_psi_viber_command_table', 26),
(45, '2018_10_08_093948_create_psi_viber_commands_table', 27);

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
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
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
  `interval_endpoint` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'count to be halt',
  `medium` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'viber/sms/email',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 371, 71203, 'Pramod', 'Not OK', 'Dai', NULL, '00:04:12', 'traffic', 'call', '2018-09-03 05:05:06', '2018-10-06 09:25:47', 'red', '2018-10-06 03:40:47'),
(2, 371, 71203, 'Pramod', 'Not OK', 'Dai', NULL, '00:04:12', 'traffic', 'call', '2018-09-03 05:06:45', '2018-10-06 09:25:59', 'red', '2018-10-06 03:40:59'),
(3, 546, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-24 04:35:08', '2018-09-24 10:20:08', '', NULL),
(4, 290, 71203, 'pramod<br>', 'No response', NULL, 'No response', '00:00:00', 'test', 'viber', '2018-10-02 07:41:38', '2018-10-02 14:59:27', 'red', '2018-10-01 18:15:00'),
(5, 290, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-02 09:16:21', '2018-10-02 15:01:28', 'red', '2018-10-02 09:16:28'),
(6, 290, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-02 09:18:34', '2018-10-02 15:04:18', 'red', '2018-10-02 09:19:18'),
(7, 290, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-02 09:19:03', '2018-10-02 15:04:14', 'red', '2018-10-02 09:19:14'),
(8, 290, 71203, NULL, 'No response', NULL, 'No response', NULL, NULL, NULL, '2018-10-05 09:10:46', '2018-10-06 13:51:50', 'yellow', NULL),
(9, 290, 71204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-05 09:17:24', '2018-10-05 15:02:24', '', NULL),
(10, 290, 71205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-05 09:31:16', '2018-10-05 15:16:16', '', NULL),
(11, 290, 71206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 01:10:32', '2018-10-06 06:55:32', '', NULL),
(12, 290, 71207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:36:18', '2018-10-06 09:21:18', '', NULL),
(13, 290, 71208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:36:57', '2018-10-06 09:21:57', '', NULL),
(14, 290, 71209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:38:00', '2018-10-06 09:23:00', '', NULL),
(15, 370, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:38:32', '2018-10-06 09:29:30', '', NULL),
(16, 371, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:41:02', '2018-10-06 09:26:50', 'red', '2018-10-06 03:41:50'),
(17, 371, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:42:42', '2018-10-06 09:27:42', '', NULL),
(18, 372, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:43:22', '2018-10-06 09:28:22', '', NULL),
(19, 373, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:44:02', '2018-10-06 09:29:02', '', NULL),
(20, 290, 71211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:57:11', '2018-10-06 09:42:11', '', NULL),
(21, 290, 71210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:57:14', '2018-10-06 09:42:14', '', NULL),
(22, 290, 71212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 03:58:16', '2018-10-06 09:43:16', '', NULL),
(23, 305, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 07:58:46', '2018-10-06 13:43:46', '', NULL),
(24, 320, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 07:59:53', '2018-10-06 13:44:53', '', NULL),
(25, 320, 71212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-06 08:33:41', '2018-10-06 14:18:41', '', NULL),
(26, 670, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 05:31:21', '2018-10-08 11:16:21', '', NULL),
(27, 671, 71203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 05:31:33', '2018-10-08 11:16:33', '', NULL);

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
(1, '_debugbar/open', '_debugbar', 'debugbar.openhandler', 'GET', 'Barryvdh\\Debugbar\\Controllers\\OpenHandlerController@handle', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(2, '_debugbar/clockwork/{id}', '_debugbar', 'debugbar.clockwork', 'GET', 'Barryvdh\\Debugbar\\Controllers\\OpenHandlerController@clockwork', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(3, '_debugbar/assets/stylesheets', '_debugbar', 'debugbar.assets.css', 'GET', 'Barryvdh\\Debugbar\\Controllers\\AssetController@css', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(4, '_debugbar/assets/javascript', '_debugbar', 'debugbar.assets.js', 'GET', 'Barryvdh\\Debugbar\\Controllers\\AssetController@js', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(5, '_debugbar/cache/{key}/{tags?}', '_debugbar', 'debugbar.cache.delete', 'DELETE', 'Barryvdh\\Debugbar\\Controllers\\CacheController@delete', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(6, 'changelocale', NULL, 'changelocale', 'POST', 'App\\Http\\Controllers\\TranslationController@changeLocale', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(7, 'changecompany/{id}/{name}', NULL, 'changecompany', 'GET', 'App\\Http\\Controllers\\UserController@changeCompany', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(8, 'primary/{id}', NULL, 'selectPrimary', 'GET', 'App\\Http\\Controllers\\UserController@selectPrimary', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(9, 'select/primary', NULL, 'primary', 'GET', 'App\\Http\\Controllers\\UserController@primary', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(10, 'employee/login', NULL, 'employee.login', 'POST', 'App\\Http\\Controllers\\Auth\\EmployeeLoginController@login', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(11, 'employee/logout', NULL, 'employee.logout', 'GET', 'App\\Http\\Controllers\\Auth\\EmployeeLoginController@logout', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(12, 'login', NULL, 'login', 'GET', 'App\\Http\\Controllers\\Auth\\LoginController@showLoginForm', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(13, 'logout', NULL, 'logout', 'POST', 'App\\Http\\Controllers\\Auth\\LoginController@logout', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(14, 'register', NULL, 'register', 'GET', 'App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(15, 'password/reset', NULL, 'password.request', 'GET', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@showLinkRequestForm', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(16, 'password/email', NULL, 'password.email', 'POST', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@sendResetLinkEmail', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(17, 'password/reset/{token}', NULL, 'password.reset', 'GET', 'App\\Http\\Controllers\\Auth\\ResetPasswordController@showResetForm', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(18, 'employee/dashboard', '/employee', 'employee.dashboard', 'GET', 'App\\Http\\Controllers\\Employee\\Dashboard@index', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(19, 'employee/getDataForCalendar', '/employee', 'getDataForCalendar', 'GET', 'App\\Http\\Controllers\\Employee\\Dashboard@getDataForCalendar', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(20, 'employees', '/employees', 'employees', 'GET', 'App\\Http\\Controllers\\EmployeeController@index', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(21, 'employees/show', '/employees', 'employees.show', 'GET', 'App\\Http\\Controllers\\EmployeeController@show', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(22, 'employees/upload', '/employees', 'employees.uploadForm', 'GET', 'App\\Http\\Controllers\\EmployeeController@uploadForm', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(23, 'employees/upload', '/employees', 'employees.upload', 'POST', 'App\\Http\\Controllers\\EmployeeController@upload', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(24, 'employees/updateCell', '/employees', 'employees.updateCell', 'POST', 'App\\Http\\Controllers\\EmployeeController@updateCell', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(25, 'employees/availability', '/employees', 'availability.index', 'GET', 'App\\Http\\Controllers\\EmployeeAvailabilityController@index', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(26, 'employees/availability/add', '/employees', 'availability.add', 'GET', 'App\\Http\\Controllers\\EmployeeAvailabilityController@add', '2018-09-30 09:25:30', '2018-09-30 09:25:30'),
(27, 'employees/availability/create', '/employees', 'availability.store', 'POST', 'App\\Http\\Controllers\\EmployeeAvailabilityController@store', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(28, 'employees/availability/edit', '/employees', 'availability.edit', 'GET', 'App\\Http\\Controllers\\EmployeeAvailabilityController@edit', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(29, 'employees/availability/edit', '/employees', 'availability.update', 'PUT', 'App\\Http\\Controllers\\EmployeeAvailabilityController@update', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(30, 'employees/ajaxupdate', '/employees', 'availability.ajaxupdate', 'POST', 'App\\Http\\Controllers\\EmployeeAvailabilityController@ajaxUpdate', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(31, 'employees/getAvailability', '/employees', 'getAvailability', 'GET', 'App\\Http\\Controllers\\EmployeeAvailabilityController@getAvailability', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(32, 'employees/updateAvailability', '/employees', 'updateAvailability', 'POST', 'App\\Http\\Controllers\\EmployeeAvailabilityController@updateAvailability', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(33, 'employees/showAvailability', '/employees', 'showAvailability', 'GET', 'App\\Http\\Controllers\\EmployeeAvailabilityController@showAvailability', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(34, 'employees/skill', '/employees', 'employee.skill', 'GET', 'App\\Http\\Controllers\\EmployeeSkillController@add', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(35, 'employees/skill', '/employees', 'skill.store', 'POST', 'App\\Http\\Controllers\\EmployeeSkillController@store', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(36, 'employees/skill/addmore', '/employees', 'skill.addmore', 'POST', 'App\\Http\\Controllers\\EmployeeSkillController@addSkill', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(37, 'employees/skill/all', '/employees', 'skill.all', 'GET', 'App\\Http\\Controllers\\EmployeeSkillController@findSkill', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(38, 'employees/skill/delete', '/employees', 'delete.skill', 'GET', 'App\\Http\\Controllers\\EmployeeSkillController@removeSkill', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(39, 'report/employee_report', '/report', 'employee.detail.report', 'GET', 'App\\Http\\Controllers\\EmployeeController@FetchEmployeeDetails', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(40, 'column/customize', '/column', 'customize.field', 'POST', 'App\\Http\\Controllers\\CustomerTableView@saveCustomizedField', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(41, 'column/update_field/{type}', '/column', 'field_update', 'GET', 'App\\Http\\Controllers\\CustomerTableView@update_table_view', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(42, 'company/manage', '/company', 'manageCompanies', 'GET', 'App\\Http\\Controllers\\CompanyController@manageCompanies', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(43, 'company/manage', '/company', 'company.saveCompany', 'POST', 'App\\Http\\Controllers\\CompanyController@saveCompany', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(44, 'company/create', '/company', 'company.create', 'GET', 'App\\Http\\Controllers\\CompanyController@create', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(45, 'company/view', '/company', 'company.details', 'GET', 'App\\Http\\Controllers\\CompanyController@viewDetail', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(46, 'company/create', '/company', 'company.store', 'POST', 'App\\Http\\Controllers\\CompanyController@store', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(47, 'company/edit/{id}', '/company', 'company.edit', 'GET', 'App\\Http\\Controllers\\CompanyController@edit', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(48, 'company/{id}', '/company', 'company.update', 'PUT', 'App\\Http\\Controllers\\CompanyController@update', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(49, 'company/sub', '/company', 'company.sub', 'GET', 'App\\Http\\Controllers\\CompanyController@sub', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(50, 'company/subCompanyUpdate', '/company', 'subcompany', 'POST', 'App\\Http\\Controllers\\CompanyController@subCompanyUpdate', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(51, 'company/getSection', '/company', 'getSection', 'GET', 'App\\Http\\Controllers\\CompanyController@getSection', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(52, 'company/subSection', '/company', 'subSection', 'GET', 'App\\Http\\Controllers\\CompanyController@subSection', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(53, 'company/update', '/company', 'updateCompanies', 'POST', 'App\\Http\\Controllers\\CompanyController@updateCompanies', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(54, 'company/addmoreSection', '/company', 'addmoreSection', 'POST', 'App\\Http\\Controllers\\CompanyController@addmoreSection', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(55, 'company/addmoreSubsection', '/company', 'addmoreSubsection', 'POST', 'App\\Http\\Controllers\\CompanyController@addmoreSubsection', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(56, 'company/shifts/add', '/company', 'shift.add', 'GET', 'App\\Http\\Controllers\\ShiftMasterController@add', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(57, 'company/shifts/add', '/company', 'shift.store', 'POST', 'App\\Http\\Controllers\\ShiftMasterController@store', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(58, 'company/shifts/edit/{id}', '/company', 'shift.edit', 'GET', 'App\\Http\\Controllers\\ShiftMasterController@edit', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(59, 'company/shifts/{id}', '/company', 'shift.update', 'PUT', 'App\\Http\\Controllers\\ShiftMasterController@update', '2018-09-30 09:25:31', '2018-09-30 09:25:31'),
(60, 'company/users/add', '/company', 'company.users.store', 'POST', 'App\\Http\\Controllers\\CompanyUserController@storeUser', '2018-09-30 09:25:32', '2018-09-30 09:25:32'),
(61, 'company/users/edit/{id}', '/company', 'company.users.edit', 'GET', 'App\\Http\\Controllers\\CompanyUserController@editUser', '2018-09-30 09:25:32', '2018-09-30 09:25:32'),
(62, 'company/users/{id}', '/company', 'company.users.update', 'PUT', 'App\\Http\\Controllers\\CompanyUserController@updateUser', '2018-09-30 09:25:32', '2018-09-30 09:25:32'),
(63, 'company/group', '/company', 'user_group', 'GET', 'App\\Http\\Controllers\\UserGroupController@index', '2018-09-30 09:25:32', '2018-09-30 09:25:32'),
(64, 'company/group/add', '/company', 'group.add', 'POST', 'App\\Http\\Controllers\\UserGroupController@addGroup', '2018-09-30 09:25:32', '2018-09-30 09:25:32'),
(65, 'company/group/rename', '/company', 'group.rename', 'POST', 'App\\Http\\Controllers\\UserGroupController@renameGroup', '2018-09-30 09:25:32', '2018-09-30 09:25:32'),
(66, 'dashboard', NULL, 'dashboard', 'GET', 'App\\Http\\Controllers\\DashboardController@index', '2018-09-30 09:25:32', '2018-09-30 09:25:32'),
(67, 'skills', '/skills', 'manageSkills', 'GET', 'App\\Http\\Controllers\\SkillMasterController@manage', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(68, 'skills/add', '/skills', 'skills.master.add', 'POST', 'App\\Http\\Controllers\\SkillMasterController@addSkills', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(69, 'skills/remove', '/skills', 'skills.master.remove', 'POST', 'App\\Http\\Controllers\\SkillMasterController@removeSkills', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(70, 'skills/rename', '/skills', 'skills.master.rename', 'POST', 'App\\Http\\Controllers\\SkillMasterController@rename', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(71, 'users', '/users', 'users.index', 'GET', 'App\\Http\\Controllers\\UserController@index', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(72, 'users/create', '/users', 'users.create', 'GET', 'App\\Http\\Controllers\\UserController@createUser', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(73, 'users/create', '/users', 'users.store', 'POST', 'App\\Http\\Controllers\\UserController@store', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(74, 'users/edit/{id}', '/users', 'users.edit', 'GET', 'App\\Http\\Controllers\\UserController@editUser', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(75, 'users/{id}', '/users', 'users.update', 'PUT', 'App\\Http\\Controllers\\UserController@updateUser', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(76, 'users/profile', '/users', 'profile', 'GET', 'App\\Http\\Controllers\\UserController@profile', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(77, 'users/profile/{id}', '/users', 'updateProfile', 'PUT', 'App\\Http\\Controllers\\UserController@updateProfile', '2018-09-30 09:25:32', '2018-10-01 09:45:07'),
(78, 'pages/user', '/pages', 'pages.users', 'GET', 'App\\Http\\Controllers\\PagesController@getUser', '2018-09-30 09:25:32', '2018-10-01 09:53:30'),
(79, 'pages/employee', '/pages', 'pages.employee', 'GET', 'App\\Http\\Controllers\\PagesController@getEmployee', '2018-09-30 09:25:32', '2018-10-01 09:53:30'),
(80, 'pages/shift/generator', '/pages', 'generator', 'GET', 'App\\Http\\Controllers\\PagesController@generator', '2018-09-30 09:25:32', '2018-10-01 10:31:34'),
(81, 'pages/shift/generator', '/pages', 'generator.store', 'POST', 'App\\Http\\Controllers\\PagesController@generatorStore', '2018-09-30 09:25:32', '2018-10-01 10:31:34'),
(82, 'pages/shift', '/pages', 'pages.shift', 'GET', 'App\\Http\\Controllers\\PagesController@shift', '2018-09-30 09:25:32', '2018-10-01 10:31:34'),
(83, 'pages/section', '/pages', 'section', 'GET', 'App\\Http\\Controllers\\PagesController@section', '2018-09-30 09:25:32', '2018-10-01 10:31:34'),
(84, 'pages/shift/show/{id}', '/pages', 'shift.show', 'GET', 'App\\Http\\Controllers\\PagesController@show', '2018-09-30 09:25:32', '2018-10-01 10:31:34'),
(85, 'pages/shift/generate', '/pages', 'generator.shift', 'GET', 'App\\Http\\Controllers\\PagesController@getShift', '2018-09-30 09:25:32', '2018-10-01 10:31:34'),
(86, 'pages/ajax/shift/add', '/pages', 'ajax.add.shifts', 'POST', 'App\\Http\\Controllers\\PagesController@ajaxAddShifts', '2018-09-30 09:25:32', '2018-10-01 10:31:34'),
(87, 'roles/roles', '/roles', 'roles.index', 'GET', 'App\\Http\\Controllers\\RoleController@index', '2018-09-30 09:25:32', '2018-10-01 10:37:17'),
(88, 'roles/roles/create', '/roles', 'roles.create', 'GET', 'App\\Http\\Controllers\\RoleController@create', '2018-09-30 09:25:32', '2018-10-01 10:37:17'),
(89, 'roles/roles', '/roles', 'roles.store', 'POST', 'App\\Http\\Controllers\\RoleController@store', '2018-09-30 09:25:32', '2018-10-01 10:37:17'),
(90, 'roles/roles/{role}', '/roles', 'roles.show', 'GET', 'App\\Http\\Controllers\\RoleController@show', '2018-09-30 09:25:32', '2018-10-01 10:37:17'),
(91, 'roles/roles/{role}/edit', '/roles', 'roles.edit', 'GET', 'App\\Http\\Controllers\\RoleController@edit', '2018-09-30 09:25:32', '2018-10-01 10:37:17'),
(92, 'roles/roles/{role}', '/roles', 'roles.update', 'PUT/PATCH', 'App\\Http\\Controllers\\RoleController@update', '2018-09-30 09:25:32', '2018-10-01 10:37:17'),
(93, 'roles/roles/{role}', '/roles', 'roles.destroy', 'DELETE', 'App\\Http\\Controllers\\RoleController@destroy', '2018-09-30 09:25:32', '2018-10-01 10:37:17'),
(94, 'permissions/permissions', '/permissions', 'permissions.index', 'GET', 'App\\Http\\Controllers\\PermissionController@index', '2018-09-30 09:25:32', '2018-10-01 10:37:17'),
(95, 'permissions/permissions/create', '/permissions', 'permissions.create', 'GET', 'App\\Http\\Controllers\\PermissionController@create', '2018-09-30 09:25:33', '2018-10-01 10:37:17'),
(96, 'permissions/permissions', '/permissions', 'permissions.store', 'POST', 'App\\Http\\Controllers\\PermissionController@store', '2018-09-30 09:25:33', '2018-10-01 10:37:17'),
(97, 'permissions/permissions/{permission}', '/permissions', 'permissions.show', 'GET', 'App\\Http\\Controllers\\PermissionController@show', '2018-09-30 09:25:33', '2018-10-01 10:37:17'),
(98, 'permissions/permissions/{permission}/edit', '/permissions', 'permissions.edit', 'GET', 'App\\Http\\Controllers\\PermissionController@edit', '2018-09-30 09:25:33', '2018-10-01 10:37:17'),
(99, 'permissions/permissions/{permission}', '/permissions', 'permissions.update', 'PUT/PATCH', 'App\\Http\\Controllers\\PermissionController@update', '2018-09-30 09:25:33', '2018-10-01 10:37:17'),
(100, 'permissions/permissions/{permission}', '/permissions', 'permissions.destroy', 'DELETE', 'App\\Http\\Controllers\\PermissionController@destroy', '2018-09-30 09:25:33', '2018-10-01 10:37:18'),
(101, 'pages/total', '/pages', 'total.necessary', 'GET', 'App\\Http\\Controllers\\TotalNecessaryController@totalNecessary', '2018-09-30 09:25:33', '2018-10-01 09:53:30'),
(102, 'leader/create', '/leader', 'leader.create', 'GET', 'App\\Http\\Controllers\\LeaderController@create', '2018-09-30 09:25:33', '2018-10-01 09:53:30'),
(103, 'leader/create', '/leader', 'leader.store', 'POST', 'App\\Http\\Controllers\\LeaderController@store', '2018-09-30 09:25:33', '2018-10-01 09:53:30'),
(104, 'leader', '/leader', 'leader', 'GET', 'App\\Http\\Controllers\\LeaderController@showName', '2018-09-30 09:25:33', '2018-10-01 09:53:30'),
(105, 'sheet/time_table', '/sheet', 'sheet.time_table', 'GET', 'App\\Http\\Controllers\\DessertController@generateTimeTable', '2018-09-30 09:25:33', '2018-10-01 09:56:53'),
(106, 'sheet/self', '/sheet', 'sheet.dessert', 'GET', 'App\\Http\\Controllers\\DessertController@dessert', '2018-09-30 09:25:33', '2018-10-01 09:56:53'),
(107, 'dessert', '/dessert', 'dessert', 'GET', 'App\\Http\\Controllers\\DessertController@generateDessert', '2018-09-30 09:25:33', '2018-10-01 09:56:53'),
(108, 'dessert', '/dessert', 'dessert.store', 'POST', 'App\\Http\\Controllers\\DessertController@storeDessert', '2018-09-30 09:25:33', '2018-10-01 09:56:53'),
(109, 'dessert/dessert_update', '/dessert', 'dessert.update', 'POST', 'App\\Http\\Controllers\\DessertController@dessert_update', '2018-09-30 09:25:33', '2018-10-01 09:56:53'),
(110, 'viber/viber_it', '/viber', 'viber.send', 'POST', 'App\\Http\\Controllers\\ViberMessageController@store_message', '2018-09-30 09:25:33', '2018-09-30 09:25:33'),
(111, 'viber/alert/setting', '/viber', 'viberAlert', 'GET', 'App\\Http\\Controllers\\ViberAlertController@setting', '2018-09-30 09:25:33', '2018-09-30 09:25:33'),
(112, 'viber/alert/setting', '/viber', 'storeSetting', 'POST', 'App\\Http\\Controllers\\ViberAlertController@storeSetting', '2018-09-30 09:25:33', '2018-09-30 09:25:33'),
(113, 'viber_bot', NULL, 'viber_bot', 'GET/POST/PUT/PATCH/DELETE/OPTIONS', 'App\\Http\\Controllers\\ViberBitIntegration@handleViberRequest', '2018-09-30 09:25:33', '2018-09-30 09:25:33'),
(114, 'primary/{id}', NULL, ' selectPrimary', 'GET', 'App\\Http\\Controllers\\UserController@selectPrimary', '2018-10-01 09:34:36', '2018-10-01 09:34:36'),
(115, 'employee/storeEmployeeApplication', '/employee', 'storeEmployeeApplication', 'POST', 'App\\Http\\Controllers\\Employee\\Dashboard@storeEmployeeApplication', '2018-10-01 09:34:36', '2018-10-01 09:34:36'),
(116, 'employee/getCompanyName', '/employee', 'getCompanyName', 'GET', 'App\\Http\\Controllers\\Employee\\Dashboard@getCompanyName', '2018-10-01 09:34:36', '2018-10-01 09:34:36');

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
(1, 4, 'conformation_day_before~~No response~~test', 'sent', 'viber', '2018-10-02 07:41:59', '2018-10-02 07:41:59'),
(2, 4, 'Conform 3 hours ago~~No response~~yes done', 'sent', 'viber', '2018-10-02 07:42:08', '2018-10-02 07:42:08'),
(3, 8, 'conformation_day_before~~Not OK~~test', 'sent', 'viber', '2018-10-06 08:06:01', '2018-10-06 08:06:01'),
(4, 8, 'Conform 3 hours ago~~No response~~est', 'sent', 'viber', '2018-10-06 08:06:55', '2018-10-06 08:06:55');

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

-- --------------------------------------------------------

--
-- Table structure for table `psi_vbier_bot`
--

CREATE TABLE `psi_vbier_bot` (
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

--
-- Dumping data for table `psi_viber_commands`
--

INSERT INTO `psi_viber_commands` (`id`, `command`, `execute_en`, `execute_ja`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'register', 'please provide your phone number?', 'あなたの電話番号をお知らせください。', 1, 'enable', NULL, NULL),
(2, 'mobile_number', 'please provide your date of birth?', '生年月日を記入してください。', 2, 'enable', NULL, NULL),
(3, 'registration_complete', 'your username and password is: ', 'あなたのユーザー名とパスワードは：', 3, 'enable', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `psi_viber_message_details`
--

CREATE TABLE `psi_viber_message_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `setype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'send,draft',
  `sender_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `psi_viber_stories`
--

CREATE TABLE `psi_viber_stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `step` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ask` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psi_viber_stories`
--

INSERT INTO `psi_viber_stories` (`id`, `sender_id`, `step`, `ask`, `ans`, `created_at`, `updated_at`) VALUES
(76, 'hGCeoeZl4HM6Z7gnEnRSVg==', NULL, 'register', 'register', '2018-10-14 01:25:18', '2018-10-14 01:25:18'),
(77, 'hGCeoeZl4HM6Z7gnEnRSVg==', NULL, 'mobile_number', '08021691995', '2018-10-14 01:25:21', '2018-10-14 01:25:21'),
(78, 'hGCeoeZl4HM6Z7gnEnRSVg==', NULL, 'registration_complete', '19950102', '2018-10-14 01:25:25', '2018-10-14 01:25:25');

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
(231, 'employee', 'psi_number', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(232, 'employee', 'base', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(233, 'employee', 'reg_officer', 'n', '4', '', NULL, '2018-09-24 03:52:09'),
(234, 'employee', 'for_work', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(235, 'employee', 'hire_date', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(236, 'employee', 'retirement_date', 'n', '4', '', NULL, '2018-09-24 03:52:09'),
(237, 'employee', 'opt_management', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(238, 'employee', 'country_citizenship', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(239, 'employee', 'contract_collection', 'n', '4', '', NULL, '2018-09-24 03:52:09'),
(240, 'employee', 'res_confirmation', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(241, 'employee', 'phoetic_kanji', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(242, 'employee', 'name', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(243, 'employee', 'birthdate', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(244, 'employee', 'sex', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(245, 'employee', 'cell_no', 'n', '4', '', NULL, '2018-09-24 03:52:09'),
(246, 'employee', 'postal_code', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(247, 'employee', 'address_jp', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(248, 'employee', 'residence_card_no', 'n', '4', '', NULL, '2018-09-24 03:52:09'),
(249, 'employee', 'residence_card_exp_date', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(250, 'employee', 'business_content', 'n', '4', '', NULL, '2018-09-24 03:52:09'),
(251, 'employee', 'dispatch_destination', 'n', '4', '', NULL, '2018-09-24 03:52:09'),
(252, 'employee', 'work_location', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(253, 'employee', 'name_of_facility', 'n', '4', '', NULL, '2018-09-24 03:52:09'),
(254, 'employee', 'hourly_wage', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(255, 'employee', 'path', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(256, 'employee', 'one_way_rate', 'n', '4', '', NULL, '2018-09-24 03:52:09'),
(257, 'employee', 'pass_price', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(258, 'employee', 'hourly_employee', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(259, 'employee', 'status_residence', 'n', '4', '', NULL, '2018-09-24 03:52:09'),
(260, 'employee', 'dependent_exemption', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(261, 'employee', 'notes', 'y', '4', '', NULL, '2018-09-24 03:52:09'),
(262, 'employee', 'updated_at', 'n', '4', '', NULL, '2018-09-24 03:52:09');

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
(18, 51, '13:00:00', '21:00:00', '2018-09-03 06:42:11', '2018-09-03 06:42:11'),
(19, 52, '14:00:00', '17:00:00', '2018-09-03 07:12:00', '2018-09-03 07:12:00'),
(20, 52, '23:00:00', '06:00:00', '2018-09-03 07:12:00', '2018-09-03 07:12:00'),
(21, 1, '06:00:00', '12:00:00', '2018-09-03 13:37:46', '2018-09-03 13:37:46'),
(22, 1, '13:00:00', '20:00:00', '2018-09-03 13:37:46', '2018-09-03 13:37:46'),
(23, 49, '14:00:00', '19:00:00', '2018-09-03 23:52:24', '2018-09-03 23:52:24'),
(24, 49, '08:00:00', '12:00:00', '2018-09-03 23:52:24', '2018-09-03 23:52:24'),
(25, 57, '13:00:00', '17:00:00', '2018-10-08 05:29:15', '2018-10-08 05:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` int(11) DEFAULT NULL,
  `primary_company` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `language`, `primary_company`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nivesh Acharya', 'nivesh@admin.com', '$2y$10$VUnFfdlCCXPOjAY/B7PNDehu0z3SeUBCcXHO5N7lBuM4T.fjlJ2Xu', 0, 49, 'QjUGOoDTwIy8krrXuyhmmRctgkCJfcBJGZHE4jHDY2BMFzaVR0Fy9Bb0a21J', '2018-07-31 04:10:47', '2018-08-09 23:42:03'),
(2, 'Admin', 'admin@admin.com', '$2y$10$Qr7rUQOMSFKBUNcfECpPO.d.Kg8r5TD6ZQtq1Iak3hKnDVDBH42Sy', 1, 2, 'c5xWZRBw3vF4FKwsvJH6LVGloMlrId7QYkPf4DaKYP4DPec1T0ghxWX32zi7', '2018-07-31 22:47:38', '2018-08-10 04:40:26'),
(4, 'Superuser', 'superuser@admin.com', '$2y$10$W/x8232aTatxHsk6Z6E77eaUdqEDGpUKAjMb3D1kfd1EhgMu/sO8m', 1, 1, 'wz6E9ihO5tN4pFnHHwRWJxIee7fXhKE4FcdEfathuOhfTLIYrH9h33gg07ED', '2018-08-12 04:39:47', '2018-09-15 07:03:16'),
(5, 'Acharya', 'acharya@admin.com', '$2y$10$Q1Oz/tcTSXM4Ca8PrBdbxe7CT9sPw/ad6GPoqWbDPRA8sEH9sV5WS', 0, 47, 'D0kmOkJUF95dl4mHV6IbMMskOMMN4DNpfZwU7UKukZwTCHTSxJXuA6urWxmb', '2018-09-14 00:52:19', '2018-09-15 01:30:22'),
(6, 'Jivnath', 'jivnath@gmail.com', '$2y$10$lqylKDZwkXMMiJ7vKvH3hO75LIzn4qWhQUo1JdTsX75MTIHK8Q4B.', 0, 1, 'eN2N5jJ46ILbF6Ff0m1OinkQxh35x0gbkbGQpJaMPBB3vDdbqMnE1BvuSoMj', '2018-09-15 07:39:06', '2018-09-15 07:39:27'),
(7, 'Shanti', 'shanti@gmail.com', '$2y$10$YfPfZLdkDqaoY7dpbrTNp.qgI9ijGOCVcsXCSnt.SoKjeRKnMllGe', 0, 44, NULL, '2018-09-15 08:40:52', '2018-09-15 08:41:54'),
(8, 'Bishnu', 'bishnu@admin.com', '$2y$10$0vmJqXHbiKd4RToVzpeGcO6CgQJtxNqkBgsExhQhN6U/mA/5lIBmO', 0, 49, 'fjyIXBFilL91iQ1xTzKrdqQtC3JTWW2C7DXj7RYA939VFNSn5huAn7dolKRc', '2018-09-17 04:30:00', '2018-09-17 07:08:46');

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
(1, 'Test 1', '2018-09-11 08:37:35', '2018-09-12 01:12:37'),
(2, 'Test 2', '2018-09-12 01:12:48', '2018-09-12 01:12:48'),
(3, 'Test 3', '2018-09-12 07:18:48', '2018-09-12 07:18:48'),
(4, 'test4', '2018-09-13 08:31:18', '2018-09-13 08:31:18'),
(5, 'test 5', '2018-09-13 23:50:02', '2018-09-13 23:50:02');

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
  ADD UNIQUE KEY `company_psi_num` (`psi_number`,`company_id`),
  ADD KEY `employees_company_id_foreign` (`company_id`);

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
-- Indexes for table `psi_vbier_bot`
--
ALTER TABLE `psi_vbier_bot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_viber_commands`
--
ALTER TABLE `psi_viber_commands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_viber_message_details`
--
ALTER TABLE `psi_viber_message_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psi_viber_stories`
--
ALTER TABLE `psi_viber_stories`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `company_time_schedules`
--
ALTER TABLE `company_time_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;

--
-- AUTO_INCREMENT for table `company_time_tables`
--
ALTER TABLE `company_time_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `company_to_employee_rels`
--
ALTER TABLE `company_to_employee_rels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `company_to_user_rels`
--
ALTER TABLE `company_to_user_rels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `company_users`
--
ALTER TABLE `company_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `employee_availabilities`
--
ALTER TABLE `employee_availabilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_logins`
--
ALTER TABLE `employee_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee_skills`
--
ALTER TABLE `employee_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `psi_alert_settings`
--
ALTER TABLE `psi_alert_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psi_dessert_entry`
--
ALTER TABLE `psi_dessert_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `psi_permission`
--
ALTER TABLE `psi_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `psi_self_sheet_comments`
--
ALTER TABLE `psi_self_sheet_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `psi_skill_master`
--
ALTER TABLE `psi_skill_master`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psi_vbier_bot`
--
ALTER TABLE `psi_vbier_bot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psi_viber_commands`
--
ALTER TABLE `psi_viber_commands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `psi_viber_message_details`
--
ALTER TABLE `psi_viber_message_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psi_viber_stories`
--
ALTER TABLE `psi_viber_stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `psi_view_customizable`
--
ALTER TABLE `psi_view_customizable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
