-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2018 at 09:11 AM
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
-- Table structure for table `employee_availabilities`
--

CREATE TABLE `employee_availabilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `psi_number` int(10) UNSIGNED NOT NULL,
  `sun` int(10) UNSIGNED NOT NULL,
  `mon` int(10) UNSIGNED NOT NULL,
  `tue` int(10) UNSIGNED NOT NULL,
  `wed` int(10) UNSIGNED NOT NULL,
  `thu` int(10) UNSIGNED NOT NULL,
  `fri` int(10) UNSIGNED NOT NULL,
  `sat` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_availabilities`
--

INSERT INTO `employee_availabilities` (`id`, `psi_number`, `sun`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `created_at`, `updated_at`) VALUES
(1, 1, 19, 22, 21, 9, 13, 24, 7, NULL, '2018-08-15 01:10:38'),
(2, 1, 17, 14, 7, 1, 3, 3, 24, '2018-08-10 05:40:24', '2018-08-15 01:13:20'),
(3, 1, 15, 20, 7, 9, 19, 5, 23, '2018-08-10 05:40:31', '2018-08-15 01:18:45'),
(4, 71203, 12, 11, 10, 9, 8, 7, 6, '2018-08-14 05:41:38', '2018-08-14 06:01:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_availabilities`
--
ALTER TABLE `employee_availabilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_availabilities`
--
ALTER TABLE `employee_availabilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
