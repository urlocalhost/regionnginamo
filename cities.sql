-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 08:19 AM
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
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `province_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Adams', 1, NULL, NULL),
(2, 'Bacarra', 1, NULL, NULL),
(3, 'Badoc', 1, NULL, NULL),
(4, 'Bangui', 1, NULL, NULL),
(5, 'Banna', 1, NULL, NULL),
(6, 'Batac', 1, NULL, NULL),
(7, 'Burgos', 1, NULL, NULL),
(8, 'Carasi', 1, NULL, NULL),
(9, 'Currimao', 1, NULL, NULL),
(10, 'Dingras', 1, NULL, NULL),
(11, 'Dumalneg', 1, NULL, NULL),
(12, 'Laoag', 1, NULL, NULL),
(13, 'Marcos', 1, NULL, NULL),
(14, 'Nueva Era', 1, NULL, NULL),
(15, 'Pagudpud', 1, NULL, NULL),
(16, 'Paoay', 1, NULL, NULL),
(17, 'Pasuquin', 1, NULL, NULL),
(18, 'Piddig', 1, NULL, NULL),
(19, 'Pinili', 1, NULL, NULL),
(20, 'San Nicolas', 1, NULL, NULL),
(21, 'Sarrat', 1, NULL, NULL),
(22, 'Solsona', 1, NULL, NULL),
(23, 'Vintar', 1, NULL, NULL),
(24, 'Alilem', 2, NULL, NULL),
(25, 'Banayoyo', 2, NULL, NULL),
(26, 'Bantay', 2, NULL, NULL),
(27, 'Burgos', 2, NULL, NULL),
(28, 'Cabugao', 2, NULL, NULL),
(29, 'Candon', 2, NULL, NULL),
(30, 'Caoayan', 2, NULL, NULL),
(31, 'Cervantes', 2, NULL, NULL),
(32, 'Galimuyod', 2, NULL, NULL),
(33, 'Gregorio del Pilar', 2, NULL, NULL),
(34, 'Lidlidda', 2, NULL, NULL),
(35, 'Magsingal', 2, NULL, NULL),
(36, 'Nagbukel', 2, NULL, NULL),
(37, 'Narvacan', 2, NULL, NULL),
(38, 'Quirino', 2, NULL, NULL),
(39, 'Salcedo', 2, NULL, NULL),
(40, 'San Emilio', 2, NULL, NULL),
(41, 'San Esteban', 2, NULL, NULL),
(42, 'San Ildefonso', 2, NULL, NULL),
(43, 'San Juan', 2, NULL, NULL),
(44, 'San Vicente', 2, NULL, NULL),
(45, 'Santa', 2, NULL, NULL),
(46, 'Santa Catalina', 2, NULL, NULL),
(47, 'Santa Cruz', 2, NULL, NULL),
(48, 'Santa Lucia', 2, NULL, NULL),
(49, 'Santa Maria', 2, NULL, NULL),
(50, 'Santiago', 2, NULL, NULL),
(51, 'Santo Domingo', 2, NULL, NULL),
(52, 'Sigay', 2, NULL, NULL),
(53, 'Sinait', 2, NULL, NULL),
(54, 'Sugpon', 2, NULL, NULL),
(55, 'Suyo', 2, NULL, NULL),
(56, 'Tagudin', 2, NULL, NULL),
(57, 'Vigan', 2, NULL, NULL),
(58, 'Agoo', 3, NULL, NULL),
(59, 'Aringay', 3, NULL, NULL),
(60, 'Bacnotan', 3, NULL, NULL),
(61, 'Bagulin', 3, NULL, NULL),
(62, 'Balaoan', 3, NULL, NULL),
(63, 'Bangar', 3, NULL, NULL),
(64, 'Bauang', 3, NULL, NULL),
(65, 'Burgos', 3, NULL, NULL),
(66, 'Caba', 3, NULL, NULL),
(67, 'Luna', 3, NULL, NULL),
(68, 'Naguilian', 3, NULL, NULL),
(69, 'Pugo', 3, NULL, NULL),
(70, 'Rosario', 3, NULL, NULL),
(71, 'San Fernando', 3, NULL, NULL),
(72, 'San Gabriel', 3, NULL, NULL),
(73, 'San Juan', 3, NULL, NULL),
(74, 'Santo Tomas', 3, NULL, NULL),
(75, 'Santol', 3, NULL, NULL),
(76, 'Sudipen', 3, NULL, NULL),
(77, 'Tubao', 3, NULL, NULL),
(78, 'Agno', 4, NULL, NULL),
(79, 'Aguilar', 4, NULL, NULL),
(80, 'Alaminos', 4, NULL, NULL),
(81, 'Alcala', 4, NULL, NULL),
(82, 'Anda', 4, NULL, NULL),
(83, 'Asingan', 4, NULL, NULL),
(84, 'Balungao', 4, NULL, NULL),
(85, 'Bani', 4, NULL, NULL),
(86, 'Basista', 4, NULL, NULL),
(87, 'Bautista', 4, NULL, NULL),
(88, 'Bayambang', 4, NULL, NULL),
(89, 'Binalonan', 4, NULL, NULL),
(90, 'Binmaley', 4, NULL, NULL),
(91, 'Bolinao', 4, NULL, NULL),
(92, 'Bugallon', 4, NULL, NULL),
(93, 'Burgos', 4, NULL, NULL),
(94, 'Calasiao', 4, NULL, NULL),
(95, 'Dagupan', 4, NULL, NULL),
(96, 'Dasol', 4, NULL, NULL),
(97, 'Infanta', 4, NULL, NULL),
(98, 'Labrador', 4, NULL, NULL),
(99, 'Laoac', 4, NULL, NULL),
(100, 'Lingayen', 4, NULL, NULL),
(101, 'Mabini', 4, NULL, NULL),
(102, 'Malasiqui', 4, NULL, NULL),
(103, 'Manaoag', 4, NULL, NULL),
(104, 'Mangaldan', 4, NULL, NULL),
(105, 'Mangatarem', 4, NULL, NULL),
(106, 'Mapandan', 4, NULL, NULL),
(107, 'Natividad', 4, NULL, NULL),
(108, 'Pozorrubio', 4, NULL, NULL),
(109, 'Rosales', 4, NULL, NULL),
(110, 'San Carlos', 4, NULL, NULL),
(111, 'San Fabian', 4, NULL, NULL),
(112, 'San Jacinto', 4, NULL, NULL),
(113, 'San Manuel', 4, NULL, NULL),
(114, 'San Nicolas', 4, NULL, NULL),
(115, 'San Quintin', 4, NULL, NULL),
(116, 'Santa Barbara', 4, NULL, NULL),
(117, 'Santa Maria', 4, NULL, NULL),
(118, 'Santo Tomas', 4, NULL, NULL),
(119, 'Sison', 4, NULL, NULL),
(120, 'Sual', 4, NULL, NULL),
(121, 'Tayug', 4, NULL, NULL),
(122, 'Umingan', 4, NULL, NULL),
(123, 'Urbiztondo', 4, NULL, NULL),
(124, 'Urdaneta', 4, NULL, NULL),
(125, 'Villasis', 4, NULL, NULL),
(126, 'Basco', 5, NULL, NULL),
(127, 'Itbayat', 5, NULL, NULL),
(128, 'Ivana', 5, NULL, NULL),
(129, 'Mahatao', 5, NULL, NULL),
(130, 'Sabtang', 5, NULL, NULL),
(131, 'Uyugan', 5, NULL, NULL),
(132, 'Abulug', 6, NULL, NULL),
(133, 'Alcala', 6, NULL, NULL),
(134, 'Allacapan', 6, NULL, NULL),
(135, 'Amulung', 6, NULL, NULL),
(136, 'Aparri', 6, NULL, NULL),
(137, 'Baggao', 6, NULL, NULL),
(138, 'Ballesteros', 6, NULL, NULL),
(139, 'Buguey', 6, NULL, NULL),
(140, 'Calayan', 6, NULL, NULL),
(141, 'Camalaniugan', 6, NULL, NULL),
(142, 'Claveria', 6, NULL, NULL),
(143, 'Enrile', 6, NULL, NULL),
(144, 'Gattaran', 6, NULL, NULL),
(145, 'Gonzaga', 6, NULL, NULL),
(146, 'Iguig', 6, NULL, NULL),
(147, 'Lal-lo', 6, NULL, NULL),
(148, 'Lasam', 6, NULL, NULL),
(149, 'Pamplona', 6, NULL, NULL),
(150, 'Peñablanca', 6, NULL, NULL),
(151, 'Piat', 6, NULL, NULL),
(152, 'Rizal', 6, NULL, NULL),
(153, 'Sanchez-Mira', 6, NULL, NULL),
(154, 'Santa Ana', 6, NULL, NULL),
(155, 'Santa Praxedes', 6, NULL, NULL),
(156, 'Santa Teresita', 6, NULL, NULL),
(157, 'Santo Niño', 6, NULL, NULL),
(158, 'Solana', 6, NULL, NULL),
(159, 'Tuao', 6, NULL, NULL),
(160, 'Tuguegarao', 6, NULL, NULL),
(161, 'Alicia', 7, NULL, NULL),
(162, 'Angadanan', 7, NULL, NULL),
(163, 'Aurora', 7, NULL, NULL),
(164, 'Benito Soliven', 7, NULL, NULL),
(165, 'Burgos', 7, NULL, NULL),
(166, 'Cabagan', 7, NULL, NULL),
(167, 'Cabatuan', 7, NULL, NULL),
(168, 'Cauayan', 7, NULL, NULL),
(169, 'Cordon', 7, NULL, NULL),
(170, 'Delfin Albano', 7, NULL, NULL),
(171, 'Dinapigue', 7, NULL, NULL),
(172, 'Divilacan', 7, NULL, NULL),
(173, 'Echague', 7, NULL, NULL),
(174, 'Gamu', 7, NULL, NULL),
(175, 'Ilagan', 7, NULL, NULL),
(176, 'Jones', 7, NULL, NULL),
(177, 'Luna', 7, NULL, NULL),
(178, 'Maconacon', 7, NULL, NULL),
(179, 'Mallig', 7, NULL, NULL),
(180, 'Naguilian', 7, NULL, NULL),
(181, 'Palanan', 7, NULL, NULL),
(182, 'Quezon', 7, NULL, NULL),
(183, 'Quirino', 7, NULL, NULL),
(184, 'Ramon', 7, NULL, NULL),
(185, 'Reina Mercedes', 7, NULL, NULL),
(186, 'Roxas', 7, NULL, NULL),
(187, 'San Agustin', 7, NULL, NULL),
(188, 'San Guillermo', 7, NULL, NULL),
(189, 'San Isidro', 7, NULL, NULL),
(190, 'San Manuel', 7, NULL, NULL),
(191, 'San Mariano', 7, NULL, NULL),
(192, 'San Mateo', 7, NULL, NULL),
(193, 'San Pablo', 7, NULL, NULL),
(194, 'Santa Maria', 7, NULL, NULL),
(195, 'Santiago', 7, NULL, NULL),
(196, 'Santo Tomas', 7, NULL, NULL),
(197, 'Tumauini', 7, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
