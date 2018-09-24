-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2018 at 03:26 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

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
(57, 'App\\Models\\User', 6, 'updated', 'App\\Models\\User', 6, '{\"remember_token\":\"eN2N5jJ46ILbF6Ff0m1OinkQxh35x0gbkbGQpJaMPBB3vDdbqMnE1BvuSoMj\"}', '{\"remember_token\":\"01Lv9qpOEMt3T3e5NuzDqjd2Rpu1CPoxjPjPY0yEpICdHjXki43WIa1q3vLg\"}', 'http://localhost/logout?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 06:45:34', '2018-09-22 06:45:34'),
(58, 'App\\Models\\User', 4, 'created', 'App\\Models\\ShiftMasterData', 25, '[]', '{\"company_id\":\"57\",\"start_time\":\"13:00\",\"end_time\":\"17:00\",\"id\":25}', 'http://localhost/ajax/shift/add?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:02:42', '2018-09-22 08:02:42'),
(59, 'App\\Models\\User', 4, 'created', 'App\\Models\\ShiftMasterData', 26, '[]', '{\"company_id\":\"57\",\"start_time\":\"06:00\",\"end_time\":\"00:00\",\"id\":26}', 'http://localhost/ajax/shift/add?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:02:42', '2018-09-22 08:02:42'),
(60, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 630, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-22\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":630}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:12', '2018-09-22 08:03:12'),
(61, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 631, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-23\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":631}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:12', '2018-09-22 08:03:12'),
(62, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 632, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-24\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":632}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:12', '2018-09-22 08:03:12'),
(63, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 633, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-25\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":633}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:12', '2018-09-22 08:03:12'),
(64, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 634, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-26\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":634}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:13', '2018-09-22 08:03:13'),
(65, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 635, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-27\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":635}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:13', '2018-09-22 08:03:13'),
(66, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 636, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-28\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":636}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:13', '2018-09-22 08:03:13'),
(67, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 637, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-29\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":637}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:13', '2018-09-22 08:03:13'),
(68, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 638, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-30\",\"time\":\"13:00:00\",\"normal\":null,\"help\":null,\"id\":638}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:13', '2018-09-22 08:03:13'),
(69, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 639, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-22\",\"time\":\"06:00:00\",\"normal\":null,\"help\":null,\"id\":639}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:13', '2018-09-22 08:03:13'),
(70, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 640, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-23\",\"time\":\"06:00:00\",\"normal\":null,\"help\":null,\"id\":640}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:13', '2018-09-22 08:03:13'),
(71, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 641, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-24\",\"time\":\"06:00:00\",\"normal\":null,\"help\":null,\"id\":641}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:13', '2018-09-22 08:03:13'),
(72, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 642, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-25\",\"time\":\"06:00:00\",\"normal\":null,\"help\":null,\"id\":642}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:13', '2018-09-22 08:03:13'),
(73, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 643, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-26\",\"time\":\"06:00:00\",\"normal\":null,\"help\":null,\"id\":643}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:14', '2018-09-22 08:03:14'),
(74, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 644, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-27\",\"time\":\"06:00:00\",\"normal\":null,\"help\":null,\"id\":644}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:14', '2018-09-22 08:03:14'),
(75, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 645, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-28\",\"time\":\"06:00:00\",\"normal\":null,\"help\":null,\"id\":645}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:14', '2018-09-22 08:03:14'),
(76, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 646, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-29\",\"time\":\"06:00:00\",\"normal\":null,\"help\":null,\"id\":646}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:14', '2018-09-22 08:03:14'),
(77, 'App\\Models\\User', 4, 'created', 'App\\Models\\CompanyTimeSchedule', 647, '[]', '{\"companyTT_id\":48,\"date\":\"2018-09-30\",\"time\":\"06:00:00\",\"normal\":null,\"help\":null,\"id\":647}', 'http://localhost/shift/generator?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:03:14', '2018-09-22 08:03:14'),
(78, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 639, '{\"normal\":null}', '{\"normal\":\"3\"}', 'http://localhost/shift/updateCell?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:05:45', '2018-09-22 08:05:45'),
(79, 'App\\Models\\User', 4, 'updated', 'App\\Models\\CompanyTimeSchedule', 639, '{\"help\":null}', '{\"help\":\"4\"}', 'http://localhost/shift/updateCell?', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-22 08:05:49', '2018-09-22 08:05:49');

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
(2, 'Company 2', NULL, 0, NULL, '2018-07-20 11:39:28', '2018-08-13 05:55:31'),
(55, 'WARABIA', NULL, 9878237345, 'Tokyo', '2018-09-20 08:36:27', '2018-09-20 08:36:27'),
(56, 'URAWA', 55, 45734523, 'Tokyo', '2018-09-20 08:36:27', '2018-09-20 08:36:27'),
(57, 'URAWA-1', 56, 45734523, 'Tokyo', '2018-09-20 08:36:27', '2018-09-20 08:36:27'),
(58, 'URAWA-11', 56, 45734523, 'Tokyo', '2018-09-22 03:04:57', '2018-09-22 03:04:57'),
(59, 'SARABIA', 55, 34567890, 'Tokyo', '2018-09-22 03:08:48', '2018-09-22 03:08:48'),
(60, 'SARABIA-1', 59, 34567890, 'Tokyo', '2018-09-22 03:08:48', '2018-09-22 03:08:48'),
(61, 'SARABIA-2', 59, 34567890, 'Tokyo', '2018-09-22 04:28:27', '2018-09-22 04:28:27'),
(63, 'UNRAWA', 55, 3456789, 'Tokyo', '2018-09-22 04:35:02', '2018-09-22 04:35:02'),
(64, 'UNWARA-1', 63, 3456789, 'Tokyo', '2018-09-22 04:35:02', '2018-09-22 04:35:02'),
(66, 'URAWA-11', 63, 3456789, 'Tokyo', '2018-09-22 04:37:40', '2018-09-22 04:37:40'),
(67, 'URAWA-1111', 59, 34567890, 'Tokyo', '2018-09-22 04:49:05', '2018-09-22 04:49:05'),
(68, 'URAWA-111', 63, 3456789, 'Tokyo', '2018-09-22 04:49:57', '2018-09-22 04:49:57');

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
(38, 1, 44, '2018-09-15 07:44:39', '2018-09-15 07:44:39'),
(39, 1, 47, '2018-09-15 07:44:39', '2018-09-15 07:44:39'),
(40, 1, 50, '2018-09-15 07:44:39', '2018-09-15 07:44:39'),
(41, 6, 1, '2018-09-15 07:45:07', '2018-09-15 07:45:07'),
(42, 6, 50, '2018-09-15 07:45:07', '2018-09-15 07:45:07'),
(43, 4, 1, '2018-09-15 07:46:06', '2018-09-15 07:46:06'),
(44, 4, 44, '2018-09-15 07:46:06', '2018-09-15 07:46:06'),
(45, 4, 47, '2018-09-15 07:46:06', '2018-09-15 07:46:06'),
(46, 4, 50, '2018-09-15 07:46:06', '2018-09-15 07:46:06'),
(47, 7, 44, '2018-09-15 08:40:53', '2018-09-15 08:40:53'),
(48, 7, 49, '2018-09-15 08:40:53', '2018-09-15 08:40:53'),
(51, 8, 49, '2018-09-17 04:30:20', '2018-09-17 04:30:20'),
(52, 8, 50, '2018-09-17 04:30:20', '2018-09-17 04:30:20');

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
(277, 2, 71203, NULL, 'チェ', NULL, NULL, '2018-05-09', NULL, 'ET', 'Y', NULL, 'ﾃｽﾌｧ ﾊﾅ ｹﾞﾙﾏ', 'Tesfa Hana Girma', '1992-05-29', '女性', '070-2793-5454', NULL, '埼玉県さいたま市見沼区春岡3丁目18番5メゾン東大宮102', 'DU21179800FA', '2018-12-14', 'ホテル客室清掃', '日本ビル・メンテナンス㈱', '銀座', '銀座キャピタルホテル', NULL, NULL, NULL, NULL, '3', '家族滞在', NULL, NULL, '2018-09-19 04:36:43', '2018-09-19 04:36:43'),
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
(27, '2018_08_29_084910_create_employee_skills_table', 18),
(28, '2018_09_05_093312_create_company_users_table', 19),
(29, '2018_09_05_112938_create_self_sheet_comments_table', 19),
(30, '2018_09_06_091028_create_psi_alert_settings', 19),
(31, '2018_09_06_095052_create_company_to_user_rels_table', 19),
(32, '2018_09_07_064809_create_user_groups_table', 19),
(33, '2018_09_08_142854_create_audits_table', 19),
(34, '2018_09_09_171651_create_viber_bot_request', 19),
(35, '2018_09_17_213639_create_company_to_employee_rels_table', 20),
(36, '2018_09_19_084307_create_skill_master_table', 21);

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
(25, 57, '13:00:00', '17:00:00', '2018-09-22 08:02:42', '2018-09-22 08:02:42'),
(26, 57, '06:00:00', '00:00:00', '2018-09-22 08:02:42', '2018-09-22 08:02:42');

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
(4, 'Superuser', 'superuser@admin.com', '$2y$10$W/x8232aTatxHsk6Z6E77eaUdqEDGpUKAjMb3D1kfd1EhgMu/sO8m', 1, 1, 'ZpWjnpAJ43m7t3fQpME0DdZNVOXeBw1JVvKWuPZjPCP5wHSmwHrstJoM74D8', '2018-08-12 04:39:47', '2018-09-15 07:03:16'),
(5, 'Acharya', 'acharya@admin.com', '$2y$10$Q1Oz/tcTSXM4Ca8PrBdbxe7CT9sPw/ad6GPoqWbDPRA8sEH9sV5WS', 0, 47, 'D0kmOkJUF95dl4mHV6IbMMskOMMN4DNpfZwU7UKukZwTCHTSxJXuA6urWxmb', '2018-09-14 00:52:19', '2018-09-15 01:30:22'),
(6, 'Jivnath', 'jivnath@gmail.com', '$2y$10$lqylKDZwkXMMiJ7vKvH3hO75LIzn4qWhQUo1JdTsX75MTIHK8Q4B.', 0, 1, '01Lv9qpOEMt3T3e5NuzDqjd2Rpu1CPoxjPjPY0yEpICdHjXki43WIa1q3vLg', '2018-09-15 07:39:06', '2018-09-15 07:39:27'),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `company_time_schedules`
--
ALTER TABLE `company_time_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=648;

--
-- AUTO_INCREMENT for table `company_time_tables`
--
ALTER TABLE `company_time_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `company_to_employee_rels`
--
ALTER TABLE `company_to_employee_rels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `company_to_user_rels`
--
ALTER TABLE `company_to_user_rels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `psi_self_sheet_comments`
--
ALTER TABLE `psi_self_sheet_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
