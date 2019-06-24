-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2019 at 02:30 PM
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
  `CLIENT_ID` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_SECRET` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `ACCESS_TOKEN` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `REFRESH_TOKEN` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `NEXT_REFRESH` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `srm_config`
--

INSERT INTO `srm_config` (`CLIENT_ID`, `CLIENT_SECRET`, `ACCESS_TOKEN`, `REFRESH_TOKEN`, `NEXT_REFRESH`) VALUES
('d7352213c60829be595904d191ce4d291395501f371308062c69b59f3998ef37', '50d8ae34562a392c09f467b2dbf8258504249f73618138f05c9d18943036b7da', '9474314dccae6c563ed950ede76b108139ff592f42583b735e59897517ac68d5', 'e713a7278bb7401872ee608ab39eb67c1eab0595ef62de2e72bf4fc97f7a4ced', '12:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `srm_message`
--

CREATE TABLE `srm_message` (
  `message_Id` int(11) DEFAULT NULL,
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `srm_config`
--
ALTER TABLE `srm_config`
  ADD PRIMARY KEY (`CLIENT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
