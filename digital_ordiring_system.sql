-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2025 at 04:50 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `digital_ordiring_system`
--
CREATE DATABASE IF NOT EXISTS `digital_ordiring_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `digital_ordiring_system`;

-- --------------------------------------------------------

--
-- Table structure for table `customer_order_list`
--

CREATE TABLE IF NOT EXISTS `customer_order_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(20) NOT NULL,
  `customer_id` int(20) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `totalp` double NOT NULL,
  `type` varchar(50) NOT NULL,
  `station` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `customer_order_list`
--

INSERT INTO `customer_order_list` (`id`, `prod_id`, `customer_id`, `prod_name`, `quantity`, `price`, `totalp`, `type`, `station`, `image`, `date`, `table_name`) VALUES
(18, 23432, 1, 'Blue raspberry lemonade', 1, 120, 120, 'Beverages', 'Pending', '8ebec65c-2a09-4da5-a446-0c451e1a371e.jfif', '2025-02-13', 'TABLE 1'),
(19, 324, 1, 'Tuna pasta', 1, 250, 250, 'Meals', 'Pending', '9df5263f-9c81-4f42-b43b-f145127a278f.jfif', '2025-02-13', 'TABLE 1'),
(20, 23432, 1, 'Blue raspberry lemonade', 3, 120, 360, 'Beverages', 'Pending', '8ebec65c-2a09-4da5-a446-0c451e1a371e.jfif', '2025-03-06', 'TABLE 1'),
(21, 32445, 1, 'Fundador', 1, 600, 600, 'Alcoholic Beverages', 'Pending', 'fundador.jpg', '2025-03-06', 'TABLE 1'),
(22, 12345, 1, 'Pizza', 1, 350, 350, 'Dessert', 'Pending', '07e9a276-e0a5-4384-a0bd-be1af1451449.jfif', '2025-03-06', 'TABLE 1');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_data`
--

CREATE TABLE IF NOT EXISTS `dashboard_data` (
  `seqno` int(11) NOT NULL AUTO_INCREMENT,
  `total_income` double NOT NULL,
  `num_of_sold` int(100) NOT NULL,
  `transact` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `station` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY (`seqno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `dashboard_data`
--

INSERT INTO `dashboard_data` (`seqno`, `total_income`, `num_of_sold`, `transact`, `date`, `station`, `table_name`) VALUES
(1, 450, 3, 'RAYMOND, M. PEDRLABA', '2024-12-19', 'done', 'TABLE 2'),
(2, 45, 1, 'RAYMOND, M. PEDRLABA', '2024-12-19', 'done', 'TABLE 6'),
(3, 45, 1, 'RAYMOND, M. PEDRLABA', '2024-12-19', 'done', 'TABLE 2'),
(4, 136, 4, 'DASD, S. ASDAS', '2024-12-18', 'done', 'TABLE 2'),
(5, 195, 2, 'DASD, S. ASDAS', '2024-12-18', 'done', 'TABLE 1'),
(6, 920, 10, 'DASD, S. ASDAS', '2024-12-19', 'done', 'TABLE 2'),
(7, 90, 2, 'DASD, S. ASDAS', '2024-12-19', 'done', 'TABLE 6'),
(8, 135, 3, 'DASD, S. ASDAS', '2024-12-19', 'done', 'TABLE 6'),
(9, 421, 13, 'DASD, S. ASDAS', '2024-12-19', 'done', 'TABLE 5'),
(10, 500, 15, 'DASD, S. ASDAS', '2024-12-19', 'done', 'TABLE 5'),
(11, 579, 17, 'RAYMOND, M. PEDRLABA', '2024-12-19', 'done', 'TABLE 5'),
(12, 624, 18, 'DASD, S. ASDAS', '2024-12-19', 'done', 'TABLE 5'),
(13, 658, 19, 'DASD, S. ASDAS', '2024-12-19', 'done', 'TABLE 5'),
(14, 150, 1, 'RAYMOND, M. PEDRLABA', '2024-12-19', 'done', 'TABLE 5'),
(15, 114, 2, 'RAYMOND, M. PEDRLABA', '2024-12-19', 'done', 'TABLE 5'),
(16, 60, 1, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(17, 60, 1, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(18, 1280, 3, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(19, 134, 2, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 3'),
(20, 374, 4, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 1'),
(21, 1280, 3, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 4'),
(22, 280, 3, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 2'),
(23, 2040, 26, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 9'),
(24, 3748, 10, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(25, 2160, 4, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(26, 400, 2, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(27, 1329, 5, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(28, 908, 9, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(29, 528, 9, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(30, 545, 9, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(31, 500, 8, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(32, 625, 10, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(33, 125, 2, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 5'),
(34, 80, 1, 'DASD, S. ASDAS', '2024-12-20', 'done', 'TABLE 5'),
(35, 45, 1, 'RAYMOND, M. PEDRLABA', '2024-12-20', 'done', 'TABLE 6'),
(36, 66, 3, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(37, 2900, 30, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(38, 17450, 35, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(39, 2450, 20, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(40, 240, 12, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(41, 12000, 12, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(42, 20, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(43, 23, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(44, 23, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(45, 335, 4, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(46, 23, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(47, 4800, 8, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(48, 1040, 3, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(49, 1435, 65, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(50, 1223, 3, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(51, 65, 2, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(52, 265, 3, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(53, 688, 32, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(54, 430, 20, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(55, 1068, 3, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(56, 640, 9, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(57, 562, 17, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(58, 3450, 21, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(59, 268, 3, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(60, 12450, 30, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(61, 10250, 21, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(62, 2430, 30, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(63, 2983, 26, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(64, 4148, 31, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(65, 1288, 5, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(66, 1288, 5, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(67, 12023, 13, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(68, 20, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(69, 15256, 50, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(70, 20, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(71, 20, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(72, 43, 2, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(73, 65, 2, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(74, 285, 4, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(75, 45, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(76, 45, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(77, 45, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(78, 200, 1, 'DASD, S. ASDAS', '2024-12-21', 'done', 'TABLE 6'),
(79, 45, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(80, 45, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(81, 45, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 6'),
(82, 23, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(83, 23, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(84, 23, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(85, 45, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(86, 23, 1, 'RAYMOND, M. PEDRLABA', '2024-12-21', 'done', 'TABLE 1'),
(87, 130, 4, 'DASD, S. ASDAS', '2024-12-23', 'done', 'TABLE 9'),
(88, 36, 2, 'DASD, S. ASDAS', '2024-12-23', 'done', 'TABLE 8'),
(89, 38.7, 2, 'DASD, S. ASDAS', '2024-12-23', 'done', 'TABLE 6'),
(90, 90, 2, 'DASD, S. ASDAS', '2024-12-23', 'done', 'TABLE 1'),
(91, 80, 2, 'DASD, S. ASDAS', '2024-12-23', 'done', 'TABLE 6'),
(92, 45.5, 2, 'DASD, S. ASDAS', '2024-12-23', 'done', 'TABLE 9'),
(93, 2062.8, 9, 'DASD, S. ASDAS', '2024-12-23', 'done', 'TABLE 8'),
(94, 80, 4, 'DASD, S. ASDAS', '2024-12-23', 'done', 'TABLE 6'),
(95, 240, 12, 'DASD, S. ASDAS', '2024-12-24', 'done', 'TABLE 1'),
(96, 1145, 7, 'DASD, S. ASDAS', '2024-12-24', 'done', 'TABLE 1'),
(97, 1800, 4, 'KEN, B. FLORES', '2024-12-26', 'done', 'TABLE 1');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingr` varchar(100) NOT NULL,
  `cat` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `ingr`, `cat`, `unit`, `qty`) VALUES
(7, 'MILK', 'Dairy', 'Liters', 5),
(8, 'ONION', 'Vegetables', 'Kilograms', 50),
(9, 'PAPPER', 'Spices', 'grams', 500);

-- --------------------------------------------------------

--
-- Table structure for table `ingr_catrgory`
--

CREATE TABLE IF NOT EXISTS `ingr_catrgory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ingr_catrgory`
--

INSERT INTO `ingr_catrgory` (`id`, `name`) VALUES
(1, 'Spices'),
(2, 'Vegetables'),
(7, 'meat'),
(8, 'Dairy');

-- --------------------------------------------------------

--
-- Table structure for table `ingr_units`
--

CREATE TABLE IF NOT EXISTS `ingr_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ingr_units`
--

INSERT INTO `ingr_units` (`id`, `name`) VALUES
(3, 'Kilograms'),
(4, 'Liters'),
(6, 'grams');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE IF NOT EXISTS `notify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `mgs` varchar(10000) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prodid` int(20) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` double NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prodid`, `prod_name`, `quantity`, `price`, `type`, `status`, `image`, `date`) VALUES
(10, 213, 'ice cream', 1, 23, 'Dessert', 'Available', '3cc62a51-3fb6-4a61-997a-220d7c93f6aa.jfif', '2024-07-12'),
(14, 2323, 'coffee', 1, 20, 'Beverages', 'Available', 'a841b21d-55de-4f89-af0a-a579d5d6dcb6.jfif', '2024-07-13'),
(30, 2314, 'Mango milkshake', 3, 80, 'Beverages', 'Available', '8a93f97a-51b2-4e0d-b769-0c627d263676.jfif', '2024-08-17'),
(31, 23432, 'Blue raspberry lemonade', 1, 120, 'Beverages', 'Available', '8ebec65c-2a09-4da5-a446-0c451e1a371e.jfif', '2024-08-17'),
(32, 543, 'Ham & Cheese sandwich', 1, 150, 'Meals', 'Available', '875119fa-e2e8-4430-83e3-588f9f2332e2.jfif', '2024-08-17'),
(33, 232, 'chicken salad sandwich', 10, 200, 'Dessert', 'Available', '6474cbff-0b41-4fc3-b5c1-178c2ab35e67.jfif', '2024-08-17'),
(34, 324, 'Tuna pasta', 29, 250, 'Meals', 'Available', '9df5263f-9c81-4f42-b43b-f145127a278f.jfif', '2024-08-17'),
(35, 2334, 'Crispy Duck', 92, 45, 'Meals', 'Available', 'ce87ebd7-08a4-4549-861f-a9c0d0ea9cd2.jfif', '2024-08-19'),
(47, 12345, 'Pizza', 0, 350, 'Dessert', 'Unavailable', '07e9a276-e0a5-4384-a0bd-be1af1451449.jfif', '2024-09-04'),
(55, 21322, 'Beef-bulalo', 20, 450, 'Meals', 'Available', 'Beef-Bulalo-Recipe-.jpg', '2024-12-25'),
(56, 23123, 'Bucket-Beer', 33, 350, 'Alcoholic Beverages', 'Available', 'bucket beer.jpg', '2024-12-25'),
(57, 2445, 'Buffalo Wings', 19, 250, 'Meals', 'Available', 'buffalo wings.jpg', '2024-12-25'),
(58, 32445, 'Fundador', 19, 600, 'Alcoholic Beverages', 'Available', 'fundador.jpg', '2024-12-25'),
(59, 2123, 'CocaCola', 50, 60, 'Soft Drinks', 'Available', '577c640a-00bf-4875-b5ca-bf5a33c30472.png', '2024-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE IF NOT EXISTS `receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(20) NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `station` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `refresher`
--

CREATE TABLE IF NOT EXISTS `refresher` (
  `seqno` int(11) NOT NULL AUTO_INCREMENT,
  `refresh` varchar(50) NOT NULL,
  PRIMARY KEY (`seqno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `refresher`
--

INSERT INTO `refresher` (`seqno`, `refresh`) VALUES
(1, 'auto refresh');

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE IF NOT EXISTS `security` (
  `seqno` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`seqno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`seqno`, `username`, `password`, `fullname`, `position`, `date`) VALUES
(3, 'admin', 'admin', 'RAYMOND, M. PEDRLABA', 'ADMIN', '2024-09-13'),
(16, 'cashier01', 'cashier01', 'KEN, B. FLORES', 'CASHIER', '2024-12-25'),
(17, 'kvs', 'kvs10', 'GLENARD, N. JAVIER', 'KVS', '2024-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `security_log`
--

CREATE TABLE IF NOT EXISTS `security_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee` varchar(500) NOT NULL,
  `station` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=166 ;

--
-- Dumping data for table `security_log`
--

INSERT INTO `security_log` (`id`, `employee`, `station`, `status`, `date`) VALUES
(1, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2024-12-26 08:49:13'),
(2, 'KEN, B. FLORES', 'CASHIER', 'ACTIVE', '2024-12-26 09:04:59'),
(3, 'GLENARD, N. JAVIER', 'KVS', 'ACTIVE', '2024-12-26 09:05:23'),
(4, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2024-12-26 09:53:02'),
(5, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2024-12-26 09:57:45'),
(6, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2024-12-26 09:58:00'),
(7, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 16:07:56'),
(8, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 16:08:27'),
(9, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 16:16:31'),
(10, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 16:16:43'),
(11, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 16:22:17'),
(12, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 16:25:32'),
(13, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 16:29:30'),
(14, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 16:30:06'),
(15, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 17:07:45'),
(16, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 17:07:55'),
(17, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 17:08:36'),
(18, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 17:08:47'),
(19, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 17:17:47'),
(20, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 17:18:07'),
(21, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 18:03:27'),
(22, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 18:43:49'),
(23, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:01:45'),
(24, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:01:57'),
(25, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:04:29'),
(26, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:09:28'),
(27, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:09:44'),
(28, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:10:34'),
(29, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:10:50'),
(30, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:11:20'),
(31, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:11:37'),
(32, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:14:31'),
(33, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:16:05'),
(34, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 20:16:42'),
(35, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:04:35'),
(36, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:04:52'),
(37, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:31:14'),
(38, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:35:15'),
(39, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:37:05'),
(40, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:37:42'),
(41, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:38:12'),
(42, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:38:40'),
(43, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:39:02'),
(44, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:39:32'),
(45, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:40:08'),
(46, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:41:07'),
(47, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:41:18'),
(48, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:44:03'),
(49, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:44:21'),
(50, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:44:23'),
(51, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:46:25'),
(52, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:49:09'),
(53, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:51:34'),
(54, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-02 22:53:45'),
(55, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:18:52'),
(56, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:20:59'),
(57, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:22:28'),
(58, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:22:43'),
(59, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:24:15'),
(60, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:34:53'),
(61, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:35:10'),
(62, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:35:42'),
(63, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:42:12'),
(64, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:46:29'),
(65, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-03 15:47:54'),
(66, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 11:46:22'),
(67, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 11:48:37'),
(68, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 11:51:58'),
(69, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 11:53:07'),
(70, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 11:53:21'),
(71, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 11:57:59'),
(72, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:28:09'),
(73, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:28:23'),
(74, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:31:17'),
(75, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:31:27'),
(76, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:33:23'),
(77, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:35:25'),
(78, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:36:15'),
(79, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:46:49'),
(80, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:47:57'),
(81, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:48:41'),
(82, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:49:40'),
(83, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:49:57'),
(84, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:50:18'),
(85, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:51:14'),
(86, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 12:58:02'),
(87, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 13:04:14'),
(88, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 13:04:29'),
(89, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 13:06:02'),
(90, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 13:09:40'),
(91, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 13:10:37'),
(92, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 15:20:27'),
(93, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 15:22:18'),
(94, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 15:22:41'),
(95, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 15:24:06'),
(96, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 15:26:26'),
(97, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 15:31:36'),
(98, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:19:57'),
(99, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:20:28'),
(100, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:23:31'),
(101, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:23:35'),
(102, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:25:37'),
(103, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:25:45'),
(104, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:26:38'),
(105, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:29:21'),
(106, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:33:31'),
(107, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:33:35'),
(108, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:34:22'),
(109, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:34:38'),
(110, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:35:51'),
(111, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:36:00'),
(112, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:36:58'),
(113, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:37:16'),
(114, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:45:25'),
(115, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:47:07'),
(116, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:47:19'),
(117, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:47:39'),
(118, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:47:52'),
(119, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:48:17'),
(120, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:48:29'),
(121, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 16:48:30'),
(122, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:05:15'),
(123, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:05:42'),
(124, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:06:20'),
(125, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:06:21'),
(126, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:06:39'),
(127, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:11:47'),
(128, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:12:05'),
(129, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:13:25'),
(130, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:14:17'),
(131, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:14:20'),
(132, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 17:14:36'),
(133, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 22:58:28'),
(134, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 22:59:12'),
(135, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:04:16'),
(136, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:04:33'),
(137, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:06:00'),
(138, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:07:14'),
(139, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:07:17'),
(140, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:08:45'),
(141, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:09:25'),
(142, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:09:38'),
(143, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:17:02'),
(144, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:19:11'),
(145, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-04 23:19:37'),
(146, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-09 15:15:21'),
(147, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-09 17:02:29'),
(148, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-10 01:49:10'),
(149, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-10 02:07:39'),
(150, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-10 04:07:19'),
(151, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-10 04:07:58'),
(152, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-10 22:00:13'),
(153, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-10 22:00:18'),
(154, 'RAYMOND, M. PEDRLABA', 'CASHIER', 'OFFLINE', '2025-01-10 22:02:18'),
(155, 'RAYMOND, M. PEDRLABA', 'CASHIER', 'OFFLINE', '2025-01-10 22:02:53'),
(156, 'RAYMOND, M. PEDRLABA', 'CASHIER', 'OFFLINE', '2025-01-10 22:11:36'),
(157, 'RAYMOND, M. PEDRLABA', 'CASHIER', 'OFFLINE', '2025-01-10 22:12:17'),
(158, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-11 10:12:18'),
(159, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-11 10:18:10'),
(160, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-11 10:25:24'),
(161, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-11 10:32:21'),
(162, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-18 23:45:49'),
(163, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-01-18 23:46:06'),
(164, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'OFFLINE', '2025-02-28 09:45:32'),
(165, 'RAYMOND, M. PEDRLABA', 'ADMIN', 'LOGOUT', '2025-02-28 09:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `tablecode`
--

CREATE TABLE IF NOT EXISTS `tablecode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_code` varchar(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tablecode`
--

INSERT INTO `tablecode` (`id`, `table_code`, `table_name`, `date`, `status`, `image`) VALUES
(22, 'table1', 'TABLE 1', '2024-10-10', 'active', 'C:\\Users\\Administrator\\Pictures\\table 1.png'),
(23, 'table2', 'TABLE 2', '2024-10-10', 'active', 'C:\\Users\\Administrator\\Pictures\\table 2.png'),
(24, 'table3', 'TABLE 3', '2024-10-10', 'active', 'C:\\Users\\Administrator\\Pictures\\table 3.png'),
(25, 'table4', 'TABLE 4', '2024-10-10', 'active', 'C:\\Users\\Administrator\\Pictures\\table 4.png'),
(26, 'table5', 'TABLE 5', '2024-10-10', 'active', 'C:\\Users\\Administrator\\Pictures\\table 5.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblcashier`
--

CREATE TABLE IF NOT EXISTS `tblcashier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `station` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbldicount`
--

CREATE TABLE IF NOT EXISTS `tbldicount` (
  `seqno` int(11) NOT NULL AUTO_INCREMENT,
  `dicount_name` varchar(100) NOT NULL,
  `percent` double NOT NULL,
  PRIMARY KEY (`seqno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbldicount`
--

INSERT INTO `tbldicount` (`seqno`, `dicount_name`, `percent`) VALUES
(7, 'Senior', 30),
(8, 'Student', 10),
(9, 'PWD', 10),
(10, 'asda', 20);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
