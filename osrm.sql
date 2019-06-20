-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 07:10 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `srm_config`
--

CREATE TABLE `srm_config` (
  `ACCESS_TOKEN` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFRESH_TOKEN` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NEXT_REFRESH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `srm_config`
--

INSERT INTO `srm_config` (`ACCESS_TOKEN`, `REFRESH_TOKEN`, `NEXT_REFRESH`) VALUES
('7d4cbfde1d544b5cc9ed6cd4ab88876269f9c666e39e73db1588f8add591333e', '8c2ea69c7325ed463ba22ae68d87e0c7d64d2866c1fe83d32d33fc0696d2ec7e', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `srm_message`
--

CREATE TABLE `srm_message` (
  `message_Id` int(11) NOT NULL,
  `unique_Id` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_Id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `resource_Name` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_Type` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listen_Source` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_Link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posted_At` date DEFAULT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labels` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favorited` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `srm_message_attach`
--

CREATE TABLE `srm_message_attach` (
  `message_Id` int(11) DEFAULT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_Url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_Downloadable` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
