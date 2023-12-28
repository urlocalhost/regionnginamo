-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 08:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `region`
--

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Region I - Ilocos Region', NULL, NULL),
(2, 'Region II - Cagayan Valley', NULL, NULL),
(3, 'Region III - Central Luzon', NULL, NULL),
(4, 'Region IV-A - CALABARZON', NULL, NULL),
(5, 'Region IV-B - MIMAROPA', NULL, NULL),
(6, 'Region V - Bicol Region', NULL, NULL),
(7, 'Region VI - Western Visayas', NULL, NULL),
(8, 'Region VII - Central Visayas', NULL, NULL),
(9, 'Region VIII - Eastern Visayas', NULL, NULL),
(10, 'Region IX - Zamboanga Peninsula', NULL, NULL),
(11, 'Region X - Northern Mindanao', NULL, NULL),
(12, 'Region XI - Davao Region', NULL, NULL),
(13, 'Region XII - SOCCSKSARGEN', NULL, NULL),
(14, 'Region XIII - Caraga', NULL, NULL),
(15, 'National Capital Region (NCR)', NULL, NULL),
(16, 'Cordillera Administrative Region (CAR)', NULL, NULL),
(17, 'Autonomous Region in Muslim Mindanao (ARMM)', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
