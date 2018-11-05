-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2018 at 01:39 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.1.23-2+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `psi_inbox`
--

CREATE TABLE `psi_inbox` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleid` int(10) UNSIGNED NOT NULL,
  `employeeid` int(10) UNSIGNED NOT NULL,
  `message_date` datetime NOT NULL,
  `response_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response_by_userid` int(10) UNSIGNED DEFAULT NULL,
  `response_date` datetime DEFAULT NULL,
  `file_upload_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `psi_inbox`
--
ALTER TABLE `psi_inbox`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `psi_inbox`
--
ALTER TABLE `psi_inbox`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
