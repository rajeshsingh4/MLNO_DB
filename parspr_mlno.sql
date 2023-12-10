-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 08:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parspr_mlno`
--
CREATE DATABASE IF NOT EXISTS `parspr_mlno` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `parspr_mlno`;

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
CREATE TABLE IF NOT EXISTS `audit_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardId` int(11) DEFAULT NULL,
  `previous` varchar(255) DEFAULT NULL,
  `current` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT '2023-12-10 09:45:41',
  `updatedAt` datetime DEFAULT '2023-12-10 09:45:41',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
CREATE TABLE IF NOT EXISTS `cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Bank` varchar(255) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Product` varchar(255) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL,
  `Scheme` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Address1` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `Address3` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Pin` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `Other_Contact` varchar(255) DEFAULT NULL,
  `Reference_No` datetime DEFAULT NULL,
  `AWB_No` datetime DEFAULT NULL,
  `RTO_Address1` datetime DEFAULT NULL,
  `RTO_Address2` datetime DEFAULT NULL,
  `RTO_Address3` datetime DEFAULT NULL,
  `RTO_City` datetime DEFAULT NULL,
  `RTO_State` datetime DEFAULT NULL,
  `RTO_Pin` datetime DEFAULT NULL,
  `Office_Address1` datetime DEFAULT NULL,
  `Office_Address2` datetime DEFAULT NULL,
  `Office_Address3` datetime DEFAULT NULL,
  `Office_City` datetime DEFAULT NULL,
  `Office_State` datetime DEFAULT NULL,
  `Office_Pin` datetime DEFAULT NULL,
  `PA_Flag` datetime DEFAULT NULL,
  `NRWC_Flag` datetime DEFAULT NULL,
  `Priority` datetime DEFAULT NULL,
  `Third_Party` datetime DEFAULT NULL,
  `Bureau_Code` datetime DEFAULT NULL,
  `BureauStatus` int(3) DEFAULT NULL,
  `BureauCutOffTime` datetime DEFAULT NULL,
  `Courier_Code` datetime DEFAULT NULL,
  `CourierStatus` int(3) DEFAULT NULL,
  `CourierCutOffTime` datetime DEFAULT NULL,
  `Form_Factor` datetime DEFAULT NULL,
  `Comments` datetime DEFAULT NULL,
  `Personalized_NonPersonalized` datetime DEFAULT NULL,
  `Individual_Bulk_Break` datetime DEFAULT NULL,
  `Sub_Customer` varchar(255) DEFAULT NULL,
  `Status` datetime DEFAULT NULL,
  `If_PULL` datetime DEFAULT NULL,
  `Field_1` datetime DEFAULT NULL,
  `Field_2` datetime DEFAULT NULL,
  `Field_3` datetime DEFAULT NULL,
  `Field_4` datetime DEFAULT NULL,
  `Field_5` datetime DEFAULT NULL,
  `Field_6` varchar(255) DEFAULT NULL,
  `Field_7` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT '2023-12-10 09:45:41',
  `updatedAt` datetime DEFAULT '2023-12-10 09:45:41',
  `fileMasterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fileMasterId` (`fileMasterId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `Bank`, `Date`, `Product`, `Logo`, `Scheme`, `Name`, `Address1`, `Address2`, `Address3`, `City`, `State`, `Pin`, `Mobile`, `Other_Contact`, `Reference_No`, `AWB_No`, `RTO_Address1`, `RTO_Address2`, `RTO_Address3`, `RTO_City`, `RTO_State`, `RTO_Pin`, `Office_Address1`, `Office_Address2`, `Office_Address3`, `Office_City`, `Office_State`, `Office_Pin`, `PA_Flag`, `NRWC_Flag`, `Priority`, `Third_Party`, `Bureau_Code`, `BureauStatus`, `BureauCutOffTime`, `Courier_Code`, `CourierStatus`, `CourierCutOffTime`, `Form_Factor`, `Comments`, `Personalized_NonPersonalized`, `Individual_Bulk_Break`, `Sub_Customer`, `Status`, `If_PULL`, `Field_1`, `Field_2`, `Field_3`, `Field_4`, `Field_5`, `Field_6`, `Field_7`, `createdAt`, `updatedAt`, `fileMasterId`) VALUES
(1, 'hdfc', '2023-10-10 00:00:00', 'Visa Platinum', 'FPL', 'JCB', 'Rajesh', 'add1', 'add2', 'add3', 'noida', 'UP', '201301', '999999999', '999999991', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sub_custom', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-10-16 00:00:00', 'fld6', '0000-00-00 00:00:00', '2023-11-20 00:00:00', '2023-11-20 00:00:00', 1),
(2, 'IDFC', '2023-11-10 00:00:00', 'Visa Platinum', 'FPL', 'JCB', 'Rajesh1', 'add11', 'add12', 'add3', 'noida', 'UP', '201301', '999999999', '999999991', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sub_custom', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-10-16 00:00:00', 'fld6', '0000-00-00 00:00:00', '2023-11-20 00:00:00', '2023-11-20 00:00:00', 2),
(3, 'IDFC', '2023-11-10 00:00:00', 'Visa Platinum', 'FPL', 'JCB', 'Khushbu', 'add11', 'add12', 'add3', 'noida', 'UP', '201301', '999999999', '999999991', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sub_custom', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-10-16 00:00:00', 'fld6', '0000-00-00 00:00:00', '2023-11-20 00:00:00', '2023-11-20 00:00:00', 2),
(4, 'HDFC', '2023-09-10 00:00:00', 'REGALIA GOLD', 'FPL', 'JCB', 'Khushbu', 'add113', 'add122', 'add33', 'noida', 'UP', '201301', '999999999', '999999991', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sub_custom', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-10-16 00:00:00', 'fld6', '0000-00-00 00:00:00', '2023-11-20 00:00:00', '2023-11-20 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cardsupdates`
--

DROP TABLE IF EXISTS `cardsupdates`;
CREATE TABLE IF NOT EXISTS `cardsupdates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Changemode` varchar(255) DEFAULT NULL,
  `Logjson` text DEFAULT NULL,
  `Comments` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filemasters`
--

DROP TABLE IF EXISTS `filemasters`;
CREATE TABLE IF NOT EXISTS `filemasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(255) DEFAULT NULL,
  `DataProcessor` varchar(255) DEFAULT NULL,
  `BureauName` varchar(255) DEFAULT NULL,
  `FileAttribute` varchar(255) DEFAULT NULL,
  `CutOffTime` datetime DEFAULT NULL,
  `FileUploadTime` datetime DEFAULT '2023-12-10 09:45:41',
  `createdAt` datetime DEFAULT '2023-12-10 09:45:41',
  `updatedAt` datetime DEFAULT '2023-12-10 09:45:41',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filemasters`
--

INSERT INTO `filemasters` (`id`, `fileName`, `DataProcessor`, `BureauName`, `FileAttribute`, `CutOffTime`, `FileUploadTime`, `createdAt`, `updatedAt`) VALUES
(1, 'HDFC_REGLIA_20231210', 'XYZ', 'BU1', '{}', '2023-12-10 11:30:00', '2023-12-10 09:45:41', '2023-12-10 09:45:41', '2023-12-10 09:45:41'),
(2, 'IDFC_MILLENIA_20231211', 'PQ1', 'BU2', '{}', '2023-12-10 11:00:00', '2023-12-10 09:45:41', '2023-12-10 09:45:41', '2023-12-10 09:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`fileMasterId`) REFERENCES `filemasters` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
