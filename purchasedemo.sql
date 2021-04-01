-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Apr 01, 2021 at 12:22 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `purchasedemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `amount` decimal(15,0) NOT NULL DEFAULT '0',
  `purchase_from` tinyint(4) NOT NULL DEFAULT '0',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '0',
  `purchase_date` datetime NOT NULL,
  `isdeleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `name`, `email`, `phone`, `amount`, `purchase_from`, `purchase_type`, `purchase_date`, `isdeleted`) VALUES
(1, 'Jignesh Patel', 'jigneshpatel006@gmail.com', 2147483647, '214', 2, 2, '2021-04-03 09:13:00', 0),
(2, 'Jayesh Patel', 'j@gmail.com', 1234567897, '412', 1, 1, '2021-04-03 12:00:00', 0),
(3, 'Jayesh Patel', 'j@gmail.com', 2147483647, '412', 3, 1, '2021-04-03 12:00:00', 0),
(4, 'Vijay Patel', 'v@gmail.com', 1234557897, '1000', 2, 1, '2021-04-04 12:00:00', 0),
(5, 'mahul Patel', 'm@gmail.com', 2147483647, '3000', 3, 1, '2021-04-05 12:00:00', 0),
(6, 'hardik Patel', 'h@gmail.com', 2147483647, '2000', 1, 1, '2021-04-06 12:00:00', 0),
(7, 'Hardi Patel', 'hd@gmail.com', 2147483647, '1000', 2, 1, '2021-04-07 12:00:00', 0),
(8, 'Jay Patel', 'jy@gmail.com', 1234556897, '2000', 3, 1, '2021-04-08 12:00:00', 0),
(9, 'Parth Patel', 'p@gmail.com', 1234877897, '1000', 1, 2, '2021-04-09 12:00:00', 0),
(10, 'paresh Patel', 'ps@gmail.com', 1234567897, '400', 2, 2, '2021-04-10 12:00:00', 0),
(11, 'haresh Patel', 'hr@gmail.com', 1232367897, '1000', 3, 2, '2021-04-11 12:00:00', 0),
(12, 'Taral Patel', 'tr@gmail.com', 1234457897, '2000', 1, 2, '2021-04-12 12:00:00', 0),
(13, 'hd Patel', 'hp@gmail.com', 1234589897, '1000', 2, 2, '2021-04-13 12:00:00', 0),
(14, 'Falgun Patel', 'f@gmail.com', 1234457897, '2000', 3, 2, '2021-04-14 12:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchasefrom`
--

DROP TABLE IF EXISTS `purchasefrom`;
CREATE TABLE IF NOT EXISTS `purchasefrom` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchasefrom`
--

INSERT INTO `purchasefrom` (`id`, `name`) VALUES
(1, 'Android'),
(2, 'iOS'),
(3, 'Web');

-- --------------------------------------------------------

--
-- Table structure for table `purchasetype`
--

DROP TABLE IF EXISTS `purchasetype`;
CREATE TABLE IF NOT EXISTS `purchasetype` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchasetype`
--

INSERT INTO `purchasetype` (`id`, `name`) VALUES
(1, 'Self'),
(2, 'Other');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
