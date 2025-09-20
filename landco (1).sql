-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2025 at 10:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landco`
--

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `cnt_id` int(11) NOT NULL,
  `cnt_year` int(11) NOT NULL,
  `cnt_type` int(11) NOT NULL,
  `cnt_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`cnt_id`, `cnt_year`, `cnt_type`, `cnt_number`) VALUES
(2, 2025, 0, 18),
(3, 2025, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(1000) NOT NULL,
  `cus_phone` varchar(200) NOT NULL,
  `cus_email` varchar(200) NOT NULL,
  `cus_address` text NOT NULL,
  `cus_country` varchar(200) NOT NULL,
  `cus_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_name`, `cus_phone`, `cus_email`, `cus_address`, `cus_country`, `cus_status`) VALUES
(1, 'Export City', '065 803 777', 'export@city.com', '', '2', 0),
(2, 'Bonito', '063 066 669', 'bonito@gmail.com', '', '2', 1),
(4, 'Metalex', '067 432 123', 'metalex@gmail.com', '', '1', 1),
(10, 'Fortuna', '066 345 294', 'mail@ikea.com', '', '1', 1),
(11, 'Moj Market', '066 228 031', 'info@mm.com', '', '1', 1),
(12, 'Delta Planet', '066 665 543', 'delta@mail.ru', 'Vlade Vincica 33', '1', 1),
(13, 'Euro Company', '+381 43 430 5422', 'eurocompany@yahoo.com', 'Kralja Petra I, Prnjavor', '2', 1),
(14, 'Klijent ABC', '123456', 'ADADS', 'ASSDASAD AS FAFA ', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `dri_id` int(11) NOT NULL,
  `dri_user` int(11) NOT NULL,
  `dri_name` varchar(100) NOT NULL,
  `dri_surname` varchar(100) NOT NULL,
  `dri_country` int(11) NOT NULL,
  `dri_truck` int(11) NOT NULL,
  `dri_license` varchar(100) NOT NULL,
  `dri_phone` varchar(100) NOT NULL,
  `dri_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`dri_id`, `dri_user`, `dri_name`, `dri_surname`, `dri_country`, `dri_truck`, `dri_license`, `dri_phone`, `dri_status`) VALUES
(1, 6, 'Marko', 'Pezer', 2, 1, '124743', '12332132231', 0),
(2, 7, 'Marko', 'Markovic', 1, 1, '960438', 'asdads', 0),
(3, 8, 'Bogdan', 'Bogdanovic', 2, 1, '123-432-B123', '+387 65 803 777', 1),
(4, 9, 'Marko', 'Petrovic', 1, 2, '0698362', 'sadassadasd', 1),
(5, 10, 'Nikola', 'Nikolic', 1, 1, '8592361', 'asddsa', 1),
(6, 11, 'Ivan', 'Ivanovic', 1, 4, '123321', '213213213123', 1),
(7, 12, 'asdasd', 'dsaasd', 1, 14, '305-A-124', '', 0),
(8, 13, 'Marko', 'Pezer', 1, 14, '123-4-567-8', '065 803 777', 1),
(9, 14, 'Test', 'Test', 1, 14, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `exp_id` int(11) NOT NULL,
  `exp_type` int(11) NOT NULL,
  `exp_description` text NOT NULL,
  `exp_date` date NOT NULL,
  `exp_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`exp_id`, `exp_type`, `exp_description`, `exp_date`, `exp_amount`) VALUES
(1, 1, 'Opis troska random', '2025-08-13', 200),
(2, 2, 'Kosenje trave', '2025-08-07', 430),
(3, 2, 'bez opisa', '2025-08-26', 220),
(5, 1, 'test', '2025-09-03', 500),
(6, 1, '', '2025-09-10', 500);

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `ext_id` int(11) NOT NULL,
  `ext_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`ext_id`, `ext_name`) VALUES
(1, 'Racunovodstvo'),
(2, 'Odrzavanje firme'),
(3, 'adsasd'),
(4, 'sdasadads');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `tour_id` int(11) NOT NULL,
  `tour_internal_id` varchar(100) NOT NULL,
  `tour_type` int(11) NOT NULL,
  `tour_created` date NOT NULL DEFAULT current_timestamp(),
  `tour_admin_note` text NOT NULL,
  `tour_driver` int(11) NOT NULL,
  `tour_driver_2` int(11) NOT NULL DEFAULT 0,
  `tour_truck` int(11) NOT NULL,
  `tour_trailer` int(11) NOT NULL,
  `tour_start_date` date DEFAULT NULL,
  `tour_start_place` varchar(500) NOT NULL,
  `tour_visibility` int(11) NOT NULL DEFAULT 0,
  `tour_driver_percentage` double NOT NULL,
  `tour_payment_country` int(11) NOT NULL,
  `tour_driver_amount` double NOT NULL,
  `tour_visibility2` int(11) NOT NULL,
  `tour_driver_percentage2` double NOT NULL,
  `tour_driver_amount2` double NOT NULL,
  `tour_price` double NOT NULL,
  `tour_expenses` double NOT NULL,
  `tour_note` text NOT NULL,
  `tour_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`tour_id`, `tour_internal_id`, `tour_type`, `tour_created`, `tour_admin_note`, `tour_driver`, `tour_driver_2`, `tour_truck`, `tour_trailer`, `tour_start_date`, `tour_start_place`, `tour_visibility`, `tour_driver_percentage`, `tour_payment_country`, `tour_driver_amount`, `tour_visibility2`, `tour_driver_percentage2`, `tour_driver_amount2`, `tour_price`, `tour_expenses`, `tour_note`, `tour_status`) VALUES
(28, 'P0004/2025', 0, '2025-08-18', 'test', 3, 5, 14, 9, '2025-09-09', 'Derventa', 1, 25, 0, 0, 0, 0, 0, 300, 0, '', 1),
(39, '10220', 1, '2025-08-18', 'zbirna 23', 6, 3, 4, 8, '2025-09-09', 'Ilova', 1, 22, 0, 250, 0, 0, 0, 90, 1500, 'zbirna 2', 0),
(42, 'P0005/2025', 0, '2025-08-18', '', 3, 3, 14, 0, '2025-02-22', 'Brcko', 1, 1, 0, 0, 0, 0, 0, 2312, 0, '', 1),
(43, 'Z0000/2025', 1, '2025-08-23', 'napomena', 3, 0, 1, 0, '2025-11-01', 'Drvar', 0, 0, 0, 200, 0, 0, 0, 2283, 220, '', 1),
(44, 'P0006/2025', 0, '2025-08-26', '', 3, 0, 14, 0, '2025-03-02', 'Minhen', 0, 0, 0, 0, 0, 0, 0, 5500, 0, '', 0),
(45, 'P0007/2025', 0, '2025-08-27', '312213231', 5, 5, 4, 0, '2025-08-29', 'Bosanski Brod', 0, 0, 0, 200, 0, 0, 0, 231, 200, '', 0),
(46, 'P0008/2025', 0, '2025-08-27', '213213321', 6, 6, 14, 0, '2025-08-25', 'Trebinje', 0, 0, 0, 10, 0, 0, 0, 321, 10, '', 0),
(47, 'P0009/2025', 0, '2025-08-27', '213123321', 4, 4, 14, 0, '2025-08-28', 'Foca', 1, 10, 0, 0, 0, 0, 0, 23000, 2300, '', 0),
(48, 'P0010/2025', 0, '2025-08-28', 'xxx', 8, 3, 1, 0, '2025-08-22', 'Prnjavor', 0, 0, 0, 0, 0, 0, 0, 23, 330, 'dasdsadasdasdsda', 1),
(49, 'Z0001/2025', 1, '2025-08-28', '', 3, 0, 14, 0, '2025-08-27', 'Prijedor', 0, 0, 0, 0, 0, 0, 0, 2000, 0, '', 0),
(50, 'Z0002/2025', 1, '2025-08-28', '', 8, 0, 14, 0, '2025-08-27', 'Bileca', 0, 0, 0, 0, 0, 0, 0, 2222, 0, '', 1),
(51, 'P0011/2025', 0, '2025-08-28', 'Napomena 1', 3, 8, 14, 9, '2025-09-03', 'Prnjavor', 1, 20, 0, 0, 1, 10, 0, 2000, 400, '', 0),
(52, 'Z0003/2025', 1, '2025-08-28', '', 8, 0, 6, 9, '2025-09-01', 'Trebinje', 1, 10, 0, 0, 0, 0, 0, 1100, 292, '', 2),
(53, 'P0013/2025', 0, '2025-09-04', '', 3, 4, 1, 8, '2025-09-18', 'Prnjavor', 1, 10, 0, 0, 0, 0, 0, 3000, 300, '', 0),
(54, 'P0014/2025', 0, '2025-09-04', '', 3, 6, 14, 0, '2025-10-09', 'x', 0, 0, 0, 50, 1, 10, 0, 3000, 50, '', 0),
(55, 'P0015/2025', 0, '2025-09-04', '', 6, 4, 1, 0, '2025-10-09', 'aaa', 1, 10, 0, 0, 0, 0, 500, 3000, 800, '', 0),
(56, 'P0016/2025', 0, '2025-09-04', 'xx', 3, 6, 4, 9, '2025-10-02', 'xxx', 0, 0, 0, 50, 1, 10, 0, 45, 54.5, '', 0),
(57, 'Z0004/2025', 1, '2025-09-04', '', 4, 3, 1, 8, '2025-09-30', 'bbb', 1, 10, 0, 0, 0, 0, 50, 1100, 160, '', 0),
(58, 'Z0005/2025', 1, '2025-09-08', 'vvv', 3, 8, 14, 9, '2025-09-09', 'Prnjavor', 0, 0, 0, 50, 1, 10, 0, 1100, 180, '', 0),
(59, 'P0017/2025', 0, '2025-09-08', '123321', 3, 3, 14, 9, '2025-09-09', '213231', 1, 1, 0, 0, 1, 2, 0, 1000, 630, '', 0),
(60, 'P0018/2025', 0, '2025-09-10', '', 8, 6, 14, 9, '2025-09-12', 'Prnjavor', 0, 17, 0, 100, 1, 17, 0, 600, 382, 'desilo se to i khk ... dlaodua-a', 1),
(61, 'Z0006/2025', 1, '2025-09-10', 'xxx', 3, 0, 1, 9, '2025-09-13', 'A', 0, 0, 0, 100, 0, 0, 0, 1800, 100, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tour_expenses`
--

CREATE TABLE `tour_expenses` (
  `tex_id` int(11) NOT NULL,
  `tex_tour` int(11) NOT NULL,
  `tex_type` int(11) NOT NULL,
  `tex_date` date NOT NULL,
  `tex_created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tex_created_by` int(11) NOT NULL,
  `tex_place` varchar(500) NOT NULL,
  `tex_distance` int(11) NOT NULL,
  `tex_amount` double NOT NULL,
  `tex_liters` decimal(10,0) NOT NULL,
  `tex_bill` int(11) NOT NULL,
  `tex_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_expenses`
--

INSERT INTO `tour_expenses` (`tex_id`, `tex_tour`, `tex_type`, `tex_date`, `tex_created_time`, `tex_created_by`, `tex_place`, `tex_distance`, `tex_amount`, `tex_liters`, `tex_bill`, `tex_note`) VALUES
(12, 48, 1, '2025-09-02', '2025-09-08 14:45:23', 1, 'Prijedor', 32000, 300, '20', 1, 'Nema napomena'),
(13, 48, 2, '2025-09-02', '2025-09-08 14:45:32', 1, 'Brcko', 32200, 500, '40', 0, ''),
(14, 52, 1, '2025-09-03', '2025-09-02 22:29:22', 13, 'Bijeljina', 32000, 0, '20', 0, 'Nema'),
(15, 52, 2, '2025-09-03', '2025-09-02 22:30:19', 13, 'Brcko', 32300, 0, '200', 1, 'Dodatna napomena'),
(16, 52, 3, '2025-09-03', '2025-09-02 22:31:30', 13, 'Bajakovo', 0, 20, '0', 0, ''),
(17, 48, 1, '2025-09-03', '2025-09-08 14:45:46', 13, 'Sarajevo', 0, 600, '0', 1, ''),
(18, 52, 1, '2025-09-03', '2025-09-02 23:27:02', 13, '2222', 42000, 222, '222', 1, ''),
(19, 42, 2, '2025-09-03', '2025-09-02 23:33:24', 1, '', 0, 0, '0', 1, ''),
(20, 42, 3, '2025-09-03', '2025-09-02 23:33:41', 1, '', 45000, 0, '0', 1, ''),
(21, 44, 3, '2025-09-03', '2025-09-02 23:38:09', 1, '', 46000, 0, '0', 1, ''),
(22, 58, 2, '2025-09-08', '2025-09-08 08:57:38', 1, 'prnj', 600000, 70, '60', 1, ''),
(23, 48, 1, '2025-09-08', '2025-09-08 09:04:58', 13, 'Der', 36000, 0, '60', 1, ''),
(24, 48, 1, '2025-09-08', '2025-09-08 09:05:11', 13, 'etrttr', 36000, 50, '50', 1, ''),
(25, 48, 3, '2025-09-08', '2025-09-08 09:06:02', 13, 'batr', 37000, 60, '0', 1, ''),
(26, 59, 2, '2025-09-08', '2025-09-08 14:49:58', 1, '', 600000, 600, '0', 1, ''),
(28, 60, 3, '2025-09-10', '2025-09-10 15:42:57', 1, '', 650000, 70, '0', 1, ''),
(29, 60, 1, '2025-09-09', '2025-09-10 16:13:27', 13, 'laktasi', 670000, 50, '60', 1, ''),
(30, 60, 2, '2025-09-10', '2025-09-10 16:10:17', 13, 'f', 670000, 0, '20', 1, ''),
(31, 60, 3, '2025-09-10', '2025-09-10 16:11:34', 13, 'prnjavor', 670000, 20, '0', 0, ''),
(32, 60, 1, '2025-09-10', '2025-09-10 16:13:14', 13, 'ddd', 670000, 40, '0', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tour_expense_types`
--

CREATE TABLE `tour_expense_types` (
  `toet_id` int(11) NOT NULL,
  `toet_name` varchar(100) NOT NULL,
  `toet_type` int(11) NOT NULL,
  `toet_has_liters` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_expense_types`
--

INSERT INTO `tour_expense_types` (`toet_id`, `toet_name`, `toet_type`, `toet_has_liters`) VALUES
(1, 'Gorivo', 1, 1),
(2, 'AdBlue', 1, 1),
(3, 'Carina', 1, 0),
(4, 'xxx', 0, 1),
(5, 'sdadsaasd', 1, 1),
(6, 'dsasdasda', 0, 0),
(7, 'fhhfhffff', 0, 0),
(8, 'trosak', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tour_stops`
--

CREATE TABLE `tour_stops` (
  `tos_id` int(11) NOT NULL,
  `tos_tour` int(11) NOT NULL,
  `tos_place` varchar(1000) NOT NULL,
  `tos_customer` int(11) NOT NULL,
  `tos_price` double NOT NULL,
  `tos_invoice_country` int(11) NOT NULL,
  `tos_paid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_stops`
--

INSERT INTO `tour_stops` (`tos_id`, `tos_tour`, `tos_place`, `tos_customer`, `tos_price`, `tos_invoice_country`, `tos_paid`) VALUES
(7, 28, 'Brod', 2, 20, 1, 1),
(28, 39, 'Doboj', 2, 20, 1, 1),
(29, 39, 'Sarajevo', 1, 30, 2, 1),
(30, 39, 'Foca', 1, 40, 1, 0),
(33, 42, '2', 2, 2312, 1, 0),
(34, 43, 'Vogosca', 2, 1050, 1, 1),
(35, 43, 'Trebinje', 1, 200, 2, 1),
(36, 43, 'Raca', 1, 33, 1, 1),
(37, 44, 'Derventa', 10, 5500, 1, 0),
(38, 45, '132231', 11, 231, 1, 0),
(39, 46, '2132', 4, 321, 1, 0),
(40, 47, '321231', 4, 23000, 1, 0),
(41, 48, 'Bijeljina', 10, 23, 1, 1),
(42, 49, 'foca', 4, 2000, 1, 0),
(43, 50, 'trebinje', 2, 222, 1, 1),
(44, 50, 'foca', 4, 2000, 1, 0),
(45, 51, 'Derventa', 10, 2000, 1, 0),
(46, 52, 'Ljubinje', 10, 500, 1, 0),
(47, 52, 'Mostar', 2, 600, 2, 1),
(48, 53, 'Banja Luka', 2, 3000, 1, 1),
(49, 54, 'x', 4, 3000, 1, 0),
(50, 55, '222', 4, 3000, 2, 0),
(51, 56, 'xxx', 4, 45, 2, 0),
(52, 57, 'bbb', 12, 500, 1, 1),
(53, 57, 'bbb', 13, 600, 2, 1),
(54, 58, 'Derventa', 2, 500, 1, 1),
(55, 58, 'Maribor', 13, 600, 2, 0),
(56, 59, '12', 4, 1000, 1, 0),
(57, 60, 'Derventa', 4, 600, 1, 0),
(58, 61, 'B', 4, 300, 1, 1),
(59, 61, 'C', 4, 300, 1, 1),
(60, 61, 'D', 2, 700, 2, 1),
(61, 61, 'E', 10, 500, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `tru_id` int(11) NOT NULL,
  `tru_group` int(11) NOT NULL DEFAULT 0,
  `tru_model` varchar(200) NOT NULL,
  `tru_type` int(11) NOT NULL,
  `tru_year` int(11) NOT NULL,
  `tru_number` varchar(100) NOT NULL,
  `tru_country` int(11) NOT NULL,
  `tru_registration_date` date DEFAULT NULL,
  `tru_cemt_date` date DEFAULT NULL,
  `tru_dist` int(11) NOT NULL,
  `tru_oil_dist` int(11) NOT NULL,
  `tru_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`tru_id`, `tru_group`, `tru_model`, `tru_type`, `tru_year`, `tru_number`, `tru_country`, `tru_registration_date`, `tru_cemt_date`, `tru_dist`, `tru_oil_dist`, `tru_status`) VALUES
(1, 0, 'MAN', 1, 2015, '203-A-767', 2, '2026-08-10', '2025-09-25', 37000, 34500, 1),
(2, 0, 'Scania', 2, 2010, 'A34-5-422', 2, '2025-06-05', '2025-06-13', 0, 0, 0),
(3, 0, 'Mercedes', 3, 2001, '546-V-453', 2, '2026-01-01', '2026-01-09', 500, 0, 1),
(4, 0, 'Volkswagen', 3, 2025, '345-A-242', 2, '2026-08-12', '2026-08-12', 0, 0, 1),
(5, 0, 'MAN', 1, 1999, '123-X-124', 2, '2026-07-12', '2026-12-26', 6000, 0, 1),
(6, 0, 'Volvo', 1, 2001, '321-X-124', 2, '2027-07-04', '2026-09-03', 43000, 43000, 1),
(7, 0, 'MAN', 0, 2000, '345-A-000', 2, '2025-07-12', '2025-07-12', 1, 0, 0),
(8, 1, 'VW', 11, 2050, '445-A-431', 2, '2025-07-06', '2025-07-06', 444, 0, 1),
(9, 1, 'MAN', 10, 2006, '005-O-504', 2, '2026-06-29', '2027-04-01', 231123, 0, 1),
(10, 1, 'Volvo', 10, 2022, '445-A-431', 2, '2025-07-09', '2025-07-10', 321312, 0, 0),
(12, 1, 'Scania', 11, 2010, '770-T-543', 2, '2025-07-10', '2025-07-11', 65765, 0, 0),
(13, 0, 'Scania', 2, 2010, '445-A-432', 2, '2026-06-27', '2026-06-29', 25000, 25000, 1),
(14, 0, 'MAN', 0, 2022, '422-A-C32', 1, '2029-10-02', '2026-09-07', 670000, 600000, 1),
(15, 0, 'aaaa', 0, 1900, 'aaaa', 1, '2025-09-07', '2025-09-10', 700000, 700900, 1);

-- --------------------------------------------------------

--
-- Table structure for table `truck_expenses`
--

CREATE TABLE `truck_expenses` (
  `tre_id` int(11) NOT NULL,
  `tre_truck` int(11) NOT NULL,
  `tre_type` int(11) NOT NULL,
  `tre_created` datetime NOT NULL DEFAULT current_timestamp(),
  `tre_cost` double NOT NULL,
  `tre_date` date DEFAULT NULL,
  `tre_dist` int(11) DEFAULT NULL,
  `tre_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `truck_expenses`
--

INSERT INTO `truck_expenses` (`tre_id`, `tre_truck`, `tre_type`, `tre_created`, `tre_cost`, `tre_date`, `tre_dist`, `tre_note`) VALUES
(1, 1, 1, '2025-06-25 21:01:46', 10000, '2025-12-02', 34501, '123'),
(2, 1, 1, '2025-06-25 22:36:51', 12, '0000-00-00', 34500, ''),
(4, 5, 3, '2025-06-25 23:32:02', 50, '0000-00-00', 1234, '123321'),
(6, 5, 1, '2025-06-26 11:35:58', 0, '2025-06-26', 0, 'b'),
(7, 5, 1, '2025-06-26 11:36:10', 231, '2025-06-26', 6000, 'c'),
(9, 5, 3, '2025-06-26 11:37:14', 0, '2025-06-26', 0, 'e'),
(10, 5, 2, '2025-06-26 11:37:28', 0, '2025-06-28', 6000, 'f'),
(11, 5, 2, '2025-06-26 11:50:19', 0, '2025-06-29', 6000, 'g'),
(12, 5, 2, '2025-06-26 12:00:24', 500, '2025-12-26', 6000, 'h'),
(13, 13, 1, '2025-06-29 11:25:53', 300, '2025-06-27', 27000, 'napomena'),
(14, 13, 2, '2025-06-29 11:26:16', 200, '2025-06-29', 25000, ''),
(15, 13, 3, '2025-06-29 11:26:51', 500, '2025-06-29', 25000, ''),
(16, 13, 1, '2025-06-29 11:27:23', 20, '2025-06-29', 25000, 'Amortizacija'),
(17, 9, 2, '2025-06-29 15:29:40', 0, '2025-06-29', 231123, ''),
(19, 9, 6, '2025-06-29 15:31:15', 0, '2025-06-29', 231123, 'ewqweewq'),
(20, 1, 2, '2025-08-12 15:39:11', 340, '2025-08-12', 37700, ''),
(21, 1, 2, '2025-08-12 18:30:42', 400, '2025-08-10', 34500, 'TEST'),
(22, 1, 4, '2025-08-12 18:32:21', 500, '2025-08-12', 34500, ''),
(23, 4, 2, '2025-08-12 18:43:20', 0, '2025-08-12', 0, ''),
(24, 4, 3, '2025-08-12 18:43:25', 0, '2025-08-12', 0, ''),
(25, 14, 2, '2025-08-24 22:22:56', 0, '2025-10-02', 4000, ''),
(26, 14, 1, '2025-08-26 19:31:44', 0, '2025-08-26', 4000, ''),
(27, 14, 1, '2025-08-26 19:33:05', 50, '2025-08-26', 4000, ''),
(28, 5, 2, '2025-08-26 19:48:25', 0, '2025-07-12', 6000, ''),
(29, 14, 3, '2025-08-27 11:12:17', 0, '2025-08-27', 4000, ''),
(30, 14, 2, '2025-08-27 11:13:01', 0, '2026-10-02', 6000, ''),
(31, 14, 3, '2025-08-27 11:13:16', 200, '2027-10-02', 6000, ''),
(32, 14, 2, '2025-08-27 11:14:58', 0, '2027-10-02', 6000, ''),
(33, 14, 1, '2025-08-27 11:15:18', 200, '2025-08-27', 8000, '2332123'),
(34, 14, 4, '2025-08-27 11:15:34', 0, '2025-08-27', 20000, ''),
(35, 14, 4, '2025-08-27 11:15:44', 0, '2025-08-27', 20000, ''),
(36, 14, 3, '2025-08-27 11:15:51', 0, '2025-08-27', 30000, ''),
(37, 6, 2, '2025-09-03 01:31:37', 0, '2025-07-04', 41000, ''),
(38, 6, 2, '2025-09-03 01:31:40', 0, '2026-07-04', 43000, ''),
(39, 6, 3, '2025-09-03 01:31:46', 0, '2025-09-03', 43000, ''),
(40, 6, 3, '2025-09-03 01:32:44', 0, '2025-09-03', 43000, ''),
(41, 14, 1, '2025-09-03 01:38:29', 500, '2025-09-03', 80000, ''),
(42, 9, 5, '2025-09-03 16:21:25', 50, '2025-09-03', 231123, ''),
(43, 14, 4, '2025-09-04 20:05:36', 0, '2025-09-04', 600000, ''),
(44, 14, 2, '2025-09-10 17:29:21', 400, '2028-10-02', 600000, ''),
(45, 14, 3, '2025-09-10 17:30:06', 400, '2025-09-07', 620000, ''),
(46, 14, 5, '2025-09-10 17:31:09', 400, '2025-09-10', 650000, ''),
(47, 6, 4, '2025-09-10 17:55:39', 0, '2025-09-10', 43000, '');

-- --------------------------------------------------------

--
-- Table structure for table `truck_expense_types`
--

CREATE TABLE `truck_expense_types` (
  `tet_id` int(11) NOT NULL,
  `tet_name` varchar(100) NOT NULL,
  `tet_type` int(11) NOT NULL,
  `tet_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `truck_expense_types`
--

INSERT INTO `truck_expense_types` (`tet_id`, `tet_name`, `tet_type`, `tet_active`) VALUES
(1, 'Ostalo', 2, 1),
(2, 'Registracija', 2, 1),
(3, 'CEMT', 2, 1),
(4, 'Zamjena ulja', 0, 1),
(5, 'Amortizacija', 2, 1),
(6, 'Popravka prikolice', 1, 1),
(7, 'xxx', 0, 1),
(8, '333123', 0, 1),
(9, '123123213', 2, 1),
(10, '2', 1, 1),
(11, 'zamjena neceg', 2, 1),
(12, 'Farbanje', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_email` varchar(500) NOT NULL,
  `user_password` varchar(1000) NOT NULL,
  `user_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_username`, `user_email`, `user_password`, `user_role`) VALUES
(1, 'admin', 'markopezer@gmail.com', '$2y$10$aWHqx2xsbo/vCr2vhSJoSOkYWIQHpqNn9Pe3bfhFlv3JeUaWQUd3u', 0),
(2, 'driver1', 'driver@mail.ru', '$2y$10$5iP2OViDa7YqcC7pwspqSulZnqWV5VUteAV5Ar0GzGpJO.sgs6oJ6', 1),
(6, 'marko1', '', '$2y$10$lqmNlHJKQegxn4wOIgbUIeQ/2w8wRqscvJxuXxjzVsvypvOkuzuQS', 1),
(7, 'asddsa', '', '$2y$10$.XC8BI4uD0HKTk89x4CMdeYuaDCql6DL7j8GYShM882XlCnuimSwK', 1),
(8, 'bogdan', '', '$2y$10$LW0AHcPhbGWkYf23sz99je/UZ/xBNQXZMsWqFG1ZbBYXeGRYFGEmC', 1),
(9, 'adsdas', '', '$2y$10$r8jkTA8uhV3GvBc1P7qfBeQBhFXc7fKEQPnnxBoUKmmQNrtLRSwaC', 1),
(10, 'sdadsa', '', '$2y$10$FEEjVF0GGgNnrDEqNoS6AOoIzCpAdqllXGQGVTc0lHe7lK.tXmvhG', 1),
(11, '213', '', '$2y$10$rY6FNwTq/IrSTLUBQyYpp.SQXmACDsYQv/KJE7TmbXwlmBw7HhNni', 1),
(12, 'asS', '', '$2y$10$epdluMDR32BJtODm.QuXUeCeN2a7.msS1iM6/neIOutMRLVpZs4Xm', 1),
(13, 'marko', '', '$2y$10$GSF079314HmZmVyBew8JC.vFv3kNXHpUXhtzaWzFVkBJNPIQ4xqwq', 1),
(14, 'Test', '', '$2y$10$m8kLBE.tgkEKk7MIHNizW.yWG0xXTZ.RTaSZ8JTuVif4810z9tGNi', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`cnt_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`dri_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`ext_id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`tour_id`),
  ADD KEY `tour_trailer` (`tour_trailer`);

--
-- Indexes for table `tour_expenses`
--
ALTER TABLE `tour_expenses`
  ADD PRIMARY KEY (`tex_id`),
  ADD KEY `tex_tour` (`tex_tour`);

--
-- Indexes for table `tour_expense_types`
--
ALTER TABLE `tour_expense_types`
  ADD PRIMARY KEY (`toet_id`);

--
-- Indexes for table `tour_stops`
--
ALTER TABLE `tour_stops`
  ADD PRIMARY KEY (`tos_id`),
  ADD KEY `tos_tour` (`tos_tour`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`tru_id`);

--
-- Indexes for table `truck_expenses`
--
ALTER TABLE `truck_expenses`
  ADD PRIMARY KEY (`tre_id`);

--
-- Indexes for table `truck_expense_types`
--
ALTER TABLE `truck_expense_types`
  ADD PRIMARY KEY (`tet_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `cnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `dri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `ext_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tour_expenses`
--
ALTER TABLE `tour_expenses`
  MODIFY `tex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tour_expense_types`
--
ALTER TABLE `tour_expense_types`
  MODIFY `toet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tour_stops`
--
ALTER TABLE `tour_stops`
  MODIFY `tos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `tru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `truck_expenses`
--
ALTER TABLE `truck_expenses`
  MODIFY `tre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `truck_expense_types`
--
ALTER TABLE `truck_expense_types`
  MODIFY `tet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tour_expenses`
--
ALTER TABLE `tour_expenses`
  ADD CONSTRAINT `tex_tour` FOREIGN KEY (`tex_tour`) REFERENCES `tours` (`tour_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tour_stops`
--
ALTER TABLE `tour_stops`
  ADD CONSTRAINT `tos_tour` FOREIGN KEY (`tos_tour`) REFERENCES `tours` (`tour_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
