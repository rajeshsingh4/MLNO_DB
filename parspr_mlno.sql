-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 12:44 PM
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
CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `cardId` int(11) DEFAULT NULL,
  `previous` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`previous`)),
  `current` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`current`)),
  `createdBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT '2023-12-22 18:20:41',
  `updatedAt` datetime DEFAULT '2023-12-22 18:20:41',
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `cardId`, `previous`, `current`, `createdBy`, `modifiedBy`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 1, '{}', '{}', 1, 1, '2023-12-20 20:43:45', '2023-12-20 20:43:45', 1),
(2, 1, '{}', '{}', 1, 1, '2023-12-20 20:43:45', '2023-12-20 20:43:45', 1),
(3, 2, '{}', '{}', 1, 1, '2023-12-20 20:43:45', '2023-12-20 20:43:45', 1),
(4, 5, '{}', '{}', 1, 1, '2023-12-20 20:47:38', '2023-12-20 20:47:38', 1),
(5, 4, '{}', '{}', 1, 1, '2023-12-20 20:47:38', '2023-12-20 20:47:38', 1),
(6, 7, '{}', '{}', 1, 1, '2023-12-20 20:48:34', '2023-12-20 20:48:34', 1),
(7, 6, '{}', '{}', 1, 1, '2023-12-20 20:54:46', '2023-12-20 20:54:46', 1),
(8, 8, '{}', '{}', 1, 1, '2023-12-20 20:56:20', '2023-12-20 20:56:20', 1),
(9, 2, '{}', '{}', 1, 1, '2023-12-20 20:58:45', '2023-12-20 20:58:45', 1),
(10, 9, '{}', '{}', 1, 1, '2023-12-20 21:00:03', '2023-12-20 21:00:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `Bank` varchar(255) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Product` varchar(255) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL,
  `Scheme` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Bureau_Status` int(11) DEFAULT NULL,
  `Courier_Status` int(11) DEFAULT NULL,
  `Bureau_Status_Timestamp` datetime DEFAULT NULL,
  `Courier_Status_Timestamp` datetime DEFAULT NULL,
  `Address1` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `Address3` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Pin` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `Other_Contact` varchar(255) DEFAULT NULL,
  `Reference_No` varchar(255) DEFAULT NULL,
  `AWB_No` varchar(255) DEFAULT NULL,
  `RTO_Address1` varchar(255) DEFAULT NULL,
  `RTO_Address2` varchar(255) DEFAULT NULL,
  `RTO_Address3` varchar(255) DEFAULT NULL,
  `RTO_City` varchar(255) DEFAULT NULL,
  `RTO_State` varchar(255) DEFAULT NULL,
  `RTO_Pin` varchar(255) DEFAULT NULL,
  `Office_Address1` varchar(255) DEFAULT NULL,
  `Office_Address2` varchar(255) DEFAULT NULL,
  `Office_Address3` varchar(255) DEFAULT NULL,
  `Office_City` varchar(255) DEFAULT NULL,
  `Office_State` varchar(255) DEFAULT NULL,
  `Office_Pin` varchar(255) DEFAULT NULL,
  `PA_Flag` varchar(255) DEFAULT NULL,
  `NRWC_Flag` varchar(255) DEFAULT NULL,
  `Priority` varchar(255) DEFAULT NULL,
  `Third_Party` varchar(255) DEFAULT NULL,
  `Bureau_Code` int(11) DEFAULT NULL,
  `Courier_Code` int(11) DEFAULT NULL,
  `Form_Factor` varchar(255) DEFAULT NULL,
  `Comments` varchar(255) DEFAULT NULL,
  `Personalized_NonPersonalized` varchar(255) DEFAULT NULL,
  `Individual_Bulk_Break` varchar(255) DEFAULT NULL,
  `Sub_Customer` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `If_PULL` varchar(255) DEFAULT NULL,
  `Field_1` varchar(255) DEFAULT NULL,
  `Field_2` varchar(255) DEFAULT NULL,
  `Field_3` varchar(255) DEFAULT NULL,
  `Field_4` datetime DEFAULT NULL,
  `Field_5` datetime DEFAULT NULL,
  `Field_6` int(11) DEFAULT NULL,
  `Field_7` int(11) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT '2023-12-22 18:30:57',
  `updatedAt` datetime DEFAULT '2023-12-22 18:30:57',
  `fileMasterId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `Bank`, `Date`, `Product`, `Logo`, `Scheme`, `Name`, `Bureau_Status`, `Courier_Status`, `Bureau_Status_Timestamp`, `Courier_Status_Timestamp`, `Address1`, `Address2`, `Address3`, `City`, `State`, `Pin`, `Mobile`, `Other_Contact`, `Reference_No`, `AWB_No`, `RTO_Address1`, `RTO_Address2`, `RTO_Address3`, `RTO_City`, `RTO_State`, `RTO_Pin`, `Office_Address1`, `Office_Address2`, `Office_Address3`, `Office_City`, `Office_State`, `Office_Pin`, `PA_Flag`, `NRWC_Flag`, `Priority`, `Third_Party`, `Bureau_Code`, `Courier_Code`, `Form_Factor`, `Comments`, `Personalized_NonPersonalized`, `Individual_Bulk_Break`, `Sub_Customer`, `Status`, `If_PULL`, `Field_1`, `Field_2`, `Field_3`, `Field_4`, `Field_5`, `Field_6`, `Field_7`, `createdBy`, `modifiedBy`, `createdAt`, `updatedAt`, `fileMasterId`, `userId`) VALUES
(1, 'HDFC', '2023-12-11 09:19:33', 'Platinum', 'GPL', 'AMEX', 'tempore', 0, NULL, '2023-12-11 09:19:33', '2023-12-11 09:19:33', 'Address1_ut', 'Address2_id', 'Address3_ut', 'Add_c_ut', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 9, 1),
(2, 'HDFC', '2023-12-11 09:19:33', 'VISA Master', 'PPL', 'VISA', 'tenetur', 1, 0, '2023-12-11 09:19:33', '2023-12-11 09:19:33', 'Address1_id', 'Address2_in', 'Address3_ut', 'Add_c_ut', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 7, 1),
(3, 'IDFC', '2023-12-11 09:19:33', 'Platinum', 'FPL', 'MC', 'aliquam', 0, NULL, '2023-12-11 09:19:33', '2023-12-11 09:19:33', 'Address1_et', 'Address2_et', 'Address3_in', 'Add_c_et', 'Address_s_ut', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 3, 1),
(4, 'IDFC', '2023-12-11 09:19:33', 'VISA Master', 'FPL', 'AMEX', 'dolorum', 1, 1, '2023-12-11 09:19:33', '2023-12-11 09:19:33', 'Address1_ut', 'Address2_id', 'Address3_et', 'Add_c_id', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1, 1),
(5, 'HDFC', '2023-12-11 09:19:33', 'Platinum', 'FPL', 'CUP', 'quaerat', 0, NULL, '2023-12-11 09:19:33', '2023-12-11 09:19:33', 'Address1_et', 'Address2_ut', 'Address3_ut', 'Add_c_ea', 'Address_s_ad', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 7, 1),
(6, 'IDFC', '2023-12-11 09:19:33', 'VISA Master', 'GPL', 'CUP', 'aliquam', 1, 1, '2023-12-11 09:19:33', '2023-12-11 09:19:33', 'Address1_ut', 'Address2_et', 'Address3_et', 'Add_c_et', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 6, 1),
(7, 'SBI', '2023-12-11 09:19:33', 'Platinum', 'FPL', 'VISA', 'ducimus', 1, 2, '2023-12-11 09:19:33', '2023-12-11 09:19:33', 'Address1_et', 'Address2_ut', 'Address3_ut', 'Add_c_et', 'Address_s_ea', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 10, 1),
(8, 'SBI', '2023-12-11 09:19:33', 'VISA Master', 'FPL', 'AMEX', 'nostrum', 1, 2, '2023-12-11 09:19:33', '2023-12-11 09:19:33', 'Address1_in', 'Address2_ad', 'Address3_et', 'Add_c_ut', 'Address_s_id', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 5, 1),
(9, 'HDFC', '2023-12-11 09:19:33', 'VISA Master', 'GPL', 'CUP', 'ducimus', 0, NULL, '2023-12-11 09:19:33', '2023-12-11 09:19:33', 'Address1_et', 'Address2_ut', 'Address3_in', 'Add_c_ex', 'Address_s_ut', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 4, 1),
(10, 'SBI', '2023-12-11 09:19:33', 'Platinum', 'GPL', 'JCB', 'ducimus', 0, NULL, '2023-12-11 09:19:33', '2023-12-11 09:19:33', 'Address1_ea', 'Address2_ex', 'Address3_et', 'Add_c_ut', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 4, 1),
(11, 'HDFC', '2023-12-11 11:39:21', 'VISA Master', 'PPL', 'MC', 'dolores', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_ea', 'Address2_et', 'Address3_id', 'Add_c_et', 'Address_s_ad', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-11-02 05:44:48', '2023-12-10 08:15:05', 7, 1),
(12, 'SBI', '2023-12-11 11:39:21', 'Platinum', 'FPL', 'JCB', 'aliquam', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_et', 'Address2_ut', 'Address3_in', 'Add_c_in', 'Address_s_ut', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-11-02 23:21:28', '2023-12-10 08:15:05', 1, 1),
(13, 'HDFC', '2023-12-11 11:39:21', 'VISA Master', 'PPL', 'JCB', 'ratione', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_et', 'Address2_et', 'Address3_ea', 'Add_c_et', 'Address_s_id', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-09-06 18:55:48', '2023-12-10 08:15:05', 2, 1),
(14, 'IDFC', '2023-12-11 11:39:21', 'VISA Master', 'PPL', 'CUP', 'tempore', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_ex', 'Address2_ad', 'Address3_at', 'Add_c_ut', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-11-28 06:55:01', '2023-12-10 08:15:05', 2, 1),
(15, 'IDFC', '2023-12-11 11:39:21', 'VISA Master', 'PPL', 'CUP', 'ratione', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_ea', 'Address2_ex', 'Address3_ut', 'Add_c_et', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-11-20 09:02:09', '2023-12-10 08:15:05', 3, 1),
(16, 'HDFC', '2023-12-11 11:39:21', 'VISA Master', 'PPL', 'MC', 'aliquam', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_et', 'Address2_ut', 'Address3_in', 'Add_c_et', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-08 12:50:45', '2023-12-10 08:15:05', 3, 1),
(17, 'HDFC', '2023-12-11 11:39:21', 'Platinum', 'PPL', 'CUP', 'dolorum', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_ex', 'Address2_ea', 'Address3_et', 'Add_c_id', 'Address_s_id', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-11-27 16:17:35', '2023-12-10 08:15:05', 3, 1),
(18, 'IDFC', '2023-12-11 11:39:21', 'VISA Master', 'PPL', 'VISA', 'placeat', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_et', 'Address2_id', 'Address3_et', 'Add_c_et', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'W', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-09-15 13:14:58', '2023-12-10 08:15:05', 6, 1),
(19, 'SBI', '2023-12-11 11:39:21', 'Platinum', 'GPL', 'CUP', 'debitis', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_ea', 'Address2_ab', 'Address3_in', 'Add_c_id', 'Address_s_ad', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-11-04 22:32:31', '2023-12-10 08:15:05', 7, 1),
(20, 'SBI', '2023-12-11 11:39:21', 'VISA Master', 'GPL', 'MC', 'ducimus', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_at', 'Address2_in', 'Address3_ea', 'Add_c_et', 'Address_s_id', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-10-01 18:21:42', '2023-12-10 08:15:05', 8, 1),
(21, 'IDFC', '2023-12-11 11:39:21', 'VISA Master', 'GPL', 'CUP', 'ratione', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_ut', 'Address2_ut', 'Address3_et', 'Add_c_et', 'Address_s_in', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-09-25 12:18:59', '2023-12-10 08:15:05', 2, 1),
(22, 'HDFC', '2023-12-11 11:39:21', 'VISA Master', 'GPL', 'CUP', 'placeat', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_ea', 'Address2_in', 'Address3_ut', 'Add_c_ut', 'Address_s_ut', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-09-23 14:56:08', '2023-12-10 08:15:05', 9, 1),
(23, 'IDFC', '2023-12-11 11:39:21', 'Platinum', 'PPL', 'VISA', 'nostrum', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_ut', 'Address2_ea', 'Address3_et', 'Add_c_id', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-10-13 09:40:11', '2023-12-10 08:15:05', 7, 1),
(24, 'SBI', '2023-12-11 11:39:21', 'VISA Master', 'GPL', 'AMEX', 'tempore', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_ex', 'Address2_id', 'Address3_id', 'Add_c_ad', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-09-05 11:39:01', '2023-12-10 08:15:05', 1, 1),
(25, 'HDFC', '2023-12-11 11:39:21', 'VISA Master', 'PPL', 'VISA', 'quaerat', 0, NULL, '2023-12-11 11:39:21', '2023-12-11 11:39:21', 'Address1_et', 'Address2_et', 'Address3_et', 'Add_c_et', 'Address_s_et', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-09-06 22:17:15', '2023-12-10 08:15:05', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `filemasters`
--

DROP TABLE IF EXISTS `filemasters`;
CREATE TABLE `filemasters` (
  `id` int(11) NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `DataProcessor` varchar(255) DEFAULT NULL,
  `BureauName` varchar(255) DEFAULT NULL,
  `FileAttribute` varchar(255) DEFAULT NULL,
  `CutOffTime` datetime DEFAULT NULL,
  `FileUploadTime` datetime DEFAULT '2023-12-22 18:30:57',
  `createdBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT '2023-12-22 18:30:57',
  `updatedAt` datetime DEFAULT '2023-12-22 18:30:57',
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filemasters`
--

INSERT INTO `filemasters` (`id`, `fileName`, `DataProcessor`, `BureauName`, `FileAttribute`, `CutOffTime`, `FileUploadTime`, `createdBy`, `modifiedBy`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'hdfc_itaque.zip', 'magnam', 'Bureau3', '', '2023-10-04 18:56:04', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(2, 'hdfc_veniam.zip', 'libero', 'Bureau2', '', '2023-09-23 21:13:18', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(3, 'hdfc_itaque.zip', 'minima', 'Bureau2', '', '2023-10-18 16:54:23', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(4, 'hdfc_cumque.zip', 'magnam', 'Bureau2', '', '2023-09-19 10:57:30', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(5, 'hdfc_libero.zip', 'fugiat', 'Bureau1', '', '2023-11-28 03:04:19', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(6, 'hdfc_veniam_5.zip', 'cumque', 'Bureau3', '', '2023-12-11 18:09:23', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(7, 'hdfc_cumque_6.zip', 'beatae', 'Bureau1', '', '2023-12-13 08:07:56', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(8, 'icici_maxime.zip', 'facere', 'Bureau2', '', '2023-09-19 20:37:32', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(9, 'icici_minima.zip', 'veniam', 'Bureau3', '', '2023-12-09 01:54:59', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(10, 'icici_veniam.zip', 'soluta', 'Bureau1', '', '2023-09-19 20:25:26', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(11, 'icici_dolore.zip', 'labore', 'Bureau3', '', '2023-11-22 19:23:15', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(12, 'icici_beatae.zip', 'fugiat', 'Bureau1', '', '2023-09-17 12:43:13', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(13, 'icici_fugiat_5.zip', 'cumque', 'Bureau1', '', '2023-12-12 07:36:23', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1),
(14, 'icici_facere_6.zip', 'libero', 'Bureau1', '', '2023-12-11 16:43:02', '2023-12-10 08:15:05', 1, 1, '2023-12-10 08:15:05', '2023-12-10 08:15:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `label`, `path`, `createdAt`, `updatedAt`) VALUES
(1, 'Bureau Comparision', '/bureau-comparision', '2023-12-22 14:43:37', '2023-12-22 14:43:37'),
(2, 'Pending Bureau Reports', '/bureau-reports', '2023-12-22 14:44:11', '2023-12-22 14:44:11'),
(3, 'File Wise Tracking', '/files', '2023-12-22 14:44:11', '2023-12-22 14:44:11'),
(4, 'File Wise Tracking Cards', '/files/:id', '2023-12-22 19:22:00', '2023-12-22 19:22:00'),
(5, 'File TAT Report', '/file-tat-report', '2023-12-22 19:22:49', '2023-12-22 19:22:49'),
(6, 'Pull Request', '/pull-request', '2023-12-22 19:22:49', '2023-12-22 19:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_roles`
--

DROP TABLE IF EXISTS `menu_roles`;
CREATE TABLE `menu_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_roles`
--

INSERT INTO `menu_roles` (`createdAt`, `updatedAt`, `roleId`, `menuId`) VALUES
('2023-12-22 14:47:26', '2023-12-22 14:47:26', 0, 1),
('2023-12-22 14:47:27', '2023-12-22 14:47:27', 0, 2),
('2023-12-22 14:48:18', '2023-12-22 14:48:18', 0, 3),
('2023-12-22 14:48:30', '2023-12-22 14:48:30', 1, 3),
('2023-12-22 19:24:09', '2023-12-22 19:24:09', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pullrequests`
--

DROP TABLE IF EXISTS `pullrequests`;
CREATE TABLE `pullrequests` (
  `id` int(11) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `changeCommunicatedTo` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `originalValue` varchar(255) DEFAULT NULL,
  `newValue` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `serviceRequest` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `cardId` int(11) DEFAULT NULL,
  `fileMasterId` int(11) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT '2023-12-29 09:02:57',
  `updatedAt` datetime DEFAULT '2023-12-29 09:02:57',
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pullrequests`
--

INSERT INTO `pullrequests` (`id`, `action`, `changeCommunicatedTo`, `field`, `originalValue`, `newValue`, `mode`, `comment`, `ipaddress`, `serviceRequest`, `status`, `cardId`, `fileMasterId`, `createdBy`, `modifiedBy`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'newvalue', 'Admin', 'Address1', 'Address1_ut', 'Higher floor 3', 'sms', 'Re-opened', '127.0.0.0', '1cec2eca-ec83-4ff4-ad57-f1438fd66e2d', 2, 1, 9, 1, 1, '2023-12-29 09:02:57', '2023-12-29 11:36:32', 1),
(2, 'newvalue', 'Admin', 'Address1', 'Address1_et', 'Nearby circle under construction', 'email', 'Change in address communication', '127.0.0.0', '0968a7cd-2e9e-43e6-81bd-f1f0421267e0', 0, 5, 7, 1, 1, '2023-12-29 11:36:32', '2024-01-06 04:34:27', 1),
(3, 'newvalue', 'Holder', 'Bureau_Status', 'holder', 'folder', 'sms', 'Change holder value', '127.0.0.0', '4a49ef90-a954-434b-a299-71dba1aad3a8', 0, 5, 7, 1, 1, '2023-12-29 11:36:32', '2023-12-29 11:36:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pullrequest_logs`
--

DROP TABLE IF EXISTS `pullrequest_logs`;
CREATE TABLE `pullrequest_logs` (
  `id` int(11) NOT NULL,
  `serviceRequestId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `pullRequestId` int(11) DEFAULT NULL,
  `cardId` int(11) DEFAULT NULL,
  `fileMasterId` int(11) DEFAULT NULL,
  `previous` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`previous`)),
  `current` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`current`)),
  `createdBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT '2023-12-29 09:02:57',
  `updatedAt` datetime DEFAULT '2023-12-29 09:02:57',
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pullrequest_logs`
--

INSERT INTO `pullrequest_logs` (`id`, `serviceRequestId`, `pullRequestId`, `cardId`, `fileMasterId`, `previous`, `current`, `createdBy`, `modifiedBy`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, '1cec2eca-ec83-4ff4-ad57-f1438fd66e2d', 1, 1, 9, '\"{\\\"createdAt\\\":\\\"2023-12-29T09:02:57.204Z\\\",\\\"updatedAt\\\":\\\"2023-12-29T09:02:57.204Z\\\",\\\"serviceRequest\\\":\\\"1cec2eca-ec83-4ff4-ad57-f1438fd66e2d\\\",\\\"status\\\":0,\\\"id\\\":1,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Admin\\\",\\\"field\\\":\\\"Address1\\\",\\\"originalValue\\\":\\\"Address1_ut\\\",\\\"newValue\\\":\\\"Higher floor\\\",\\\"mode\\\":\\\"email\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"comment\\\":\\\"Change in address\\\",\\\"cardId\\\":1,\\\"fileMasterId\\\":9,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"userId\\\":1}\"', '\"{\\\"createdAt\\\":\\\"2023-12-29T09:02:57.204Z\\\",\\\"updatedAt\\\":\\\"2023-12-29T09:02:57.204Z\\\",\\\"serviceRequest\\\":\\\"1cec2eca-ec83-4ff4-ad57-f1438fd66e2d\\\",\\\"status\\\":0,\\\"id\\\":1,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Admin\\\",\\\"field\\\":\\\"Address1\\\",\\\"originalValue\\\":\\\"Address1_ut\\\",\\\"newValue\\\":\\\"Higher floor\\\",\\\"mode\\\":\\\"email\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"comment\\\":\\\"Change in address\\\",\\\"cardId\\\":1,\\\"fileMasterId\\\":9,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"userId\\\":1}\"', 1, 1, '2023-12-29 09:02:57', '2023-12-29 09:02:57', 1),
(2, '1cec2eca-ec83-4ff4-ad57-f1438fd66e2d', 1, 1, 9, '\"{\\\"id\\\":1,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Admin\\\",\\\"field\\\":\\\"Address1\\\",\\\"originalValue\\\":\\\"Address1_ut\\\",\\\"newValue\\\":\\\"Higher floor\\\",\\\"mode\\\":\\\"email\\\",\\\"comment\\\":\\\"Change in address\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"serviceRequest\\\":\\\"1cec2eca-ec83-4ff4-ad57-f1438fd66e2d\\\",\\\"status\\\":0,\\\"cardId\\\":1,\\\"fileMasterId\\\":9,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"createdAt\\\":\\\"2023-12-29T09:02:57.000Z\\\",\\\"updatedAt\\\":\\\"2023-12-29T09:02:57.000Z\\\",\\\"userId\\\":1}\"', '\"{\\\"id\\\":1,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Admin\\\",\\\"field\\\":\\\"Address1\\\",\\\"originalValue\\\":\\\"Address1_ut\\\",\\\"newValue\\\":\\\"Higher floor\\\",\\\"mode\\\":\\\"email\\\",\\\"comment\\\":\\\"Rejected\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"serviceRequest\\\":\\\"1cec2eca-ec83-4ff4-ad57-f1438fd66e2d\\\",\\\"status\\\":2,\\\"cardId\\\":1,\\\"fileMasterId\\\":9,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"createdAt\\\":\\\"2023-12-29T09:02:57.000Z\\\",\\\"updatedAt\\\":\\\"2023-12-29T09:05:05.353Z\\\",\\\"userId\\\":1}\"', 1, 1, '2023-12-29 09:02:57', '2023-12-29 09:02:57', 1),
(3, '0968a7cd-2e9e-43e6-81bd-f1f0421267e0', 2, 5, 7, '\"{\\\"createdAt\\\":\\\"2023-12-29T11:36:32.949Z\\\",\\\"updatedAt\\\":\\\"2023-12-29T11:36:32.949Z\\\",\\\"serviceRequest\\\":\\\"0968a7cd-2e9e-43e6-81bd-f1f0421267e0\\\",\\\"status\\\":0,\\\"id\\\":2,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Admin\\\",\\\"field\\\":\\\"Address3\\\",\\\"originalValue\\\":\\\"Address3_ut\\\",\\\"newValue\\\":\\\"Nearby circle\\\",\\\"mode\\\":\\\"phone\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"comment\\\":\\\"Change in address communication\\\",\\\"cardId\\\":5,\\\"fileMasterId\\\":7,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"userId\\\":1}\"', '\"{\\\"createdAt\\\":\\\"2023-12-29T11:36:32.949Z\\\",\\\"updatedAt\\\":\\\"2023-12-29T11:36:32.949Z\\\",\\\"serviceRequest\\\":\\\"0968a7cd-2e9e-43e6-81bd-f1f0421267e0\\\",\\\"status\\\":0,\\\"id\\\":2,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Admin\\\",\\\"field\\\":\\\"Address3\\\",\\\"originalValue\\\":\\\"Address3_ut\\\",\\\"newValue\\\":\\\"Nearby circle\\\",\\\"mode\\\":\\\"phone\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"comment\\\":\\\"Change in address communication\\\",\\\"cardId\\\":5,\\\"fileMasterId\\\":7,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"userId\\\":1}\"', 1, 1, '2023-12-29 11:36:32', '2023-12-29 11:36:32', 1),
(4, '4a49ef90-a954-434b-a299-71dba1aad3a8', 3, 5, 7, '\"{\\\"createdAt\\\":\\\"2023-12-29T11:36:32.949Z\\\",\\\"updatedAt\\\":\\\"2023-12-29T11:36:32.949Z\\\",\\\"serviceRequest\\\":\\\"4a49ef90-a954-434b-a299-71dba1aad3a8\\\",\\\"status\\\":0,\\\"id\\\":3,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Holder\\\",\\\"field\\\":\\\"Bureau_Status\\\",\\\"originalValue\\\":\\\"holder\\\",\\\"newValue\\\":\\\"folder\\\",\\\"mode\\\":\\\"sms\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"comment\\\":\\\"Change holder value\\\",\\\"cardId\\\":5,\\\"fileMasterId\\\":7,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"userId\\\":1}\"', '\"{\\\"createdAt\\\":\\\"2023-12-29T11:36:32.949Z\\\",\\\"updatedAt\\\":\\\"2023-12-29T11:36:32.949Z\\\",\\\"serviceRequest\\\":\\\"4a49ef90-a954-434b-a299-71dba1aad3a8\\\",\\\"status\\\":0,\\\"id\\\":3,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Holder\\\",\\\"field\\\":\\\"Bureau_Status\\\",\\\"originalValue\\\":\\\"holder\\\",\\\"newValue\\\":\\\"folder\\\",\\\"mode\\\":\\\"sms\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"comment\\\":\\\"Change holder value\\\",\\\"cardId\\\":5,\\\"fileMasterId\\\":7,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"userId\\\":1}\"', 1, 1, '2023-12-29 11:36:32', '2023-12-29 11:36:32', 1),
(5, '1cec2eca-ec83-4ff4-ad57-f1438fd66e2d', 1, 1, 9, '\"{\\\"id\\\":1,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Admin\\\",\\\"field\\\":\\\"Address1\\\",\\\"originalValue\\\":\\\"Address1_ut\\\",\\\"newValue\\\":\\\"Higher floor\\\",\\\"mode\\\":\\\"email\\\",\\\"comment\\\":\\\"Rejected\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"serviceRequest\\\":\\\"1cec2eca-ec83-4ff4-ad57-f1438fd66e2d\\\",\\\"status\\\":2,\\\"cardId\\\":1,\\\"fileMasterId\\\":9,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"createdAt\\\":\\\"2023-12-29T09:02:57.000Z\\\",\\\"updatedAt\\\":\\\"2023-12-29T09:02:57.000Z\\\",\\\"userId\\\":1}\"', '\"{\\\"id\\\":1,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Admin\\\",\\\"field\\\":\\\"Address1\\\",\\\"originalValue\\\":\\\"Address1_ut\\\",\\\"newValue\\\":\\\"Higher floor 3\\\",\\\"mode\\\":\\\"sms\\\",\\\"comment\\\":\\\"Re-opened\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"serviceRequest\\\":\\\"1cec2eca-ec83-4ff4-ad57-f1438fd66e2d\\\",\\\"status\\\":2,\\\"cardId\\\":1,\\\"fileMasterId\\\":9,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"createdAt\\\":\\\"2023-12-29T09:02:57.000Z\\\",\\\"updatedAt\\\":\\\"2024-01-06T04:22:20.619Z\\\",\\\"userId\\\":1}\"', 1, 1, '2023-12-29 11:36:32', '2023-12-29 11:36:32', 1),
(6, '0968a7cd-2e9e-43e6-81bd-f1f0421267e0', 2, 5, 7, '\"{\\\"id\\\":2,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Admin\\\",\\\"field\\\":\\\"Address3\\\",\\\"originalValue\\\":\\\"Address3_ut\\\",\\\"newValue\\\":\\\"Nearby circle\\\",\\\"mode\\\":\\\"phone\\\",\\\"comment\\\":\\\"Change in address communication\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"serviceRequest\\\":\\\"0968a7cd-2e9e-43e6-81bd-f1f0421267e0\\\",\\\"status\\\":0,\\\"cardId\\\":5,\\\"fileMasterId\\\":7,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"createdAt\\\":\\\"2023-12-29T11:36:32.000Z\\\",\\\"updatedAt\\\":\\\"2023-12-29T11:36:32.000Z\\\",\\\"userId\\\":1}\"', '\"{\\\"id\\\":2,\\\"action\\\":\\\"newvalue\\\",\\\"changeCommunicatedTo\\\":\\\"Admin\\\",\\\"field\\\":\\\"Address1\\\",\\\"originalValue\\\":\\\"Address1_et\\\",\\\"newValue\\\":\\\"Nearby circle under construction\\\",\\\"mode\\\":\\\"email\\\",\\\"comment\\\":\\\"Change in address communication\\\",\\\"ipaddress\\\":\\\"127.0.0.0\\\",\\\"serviceRequest\\\":\\\"0968a7cd-2e9e-43e6-81bd-f1f0421267e0\\\",\\\"status\\\":0,\\\"cardId\\\":5,\\\"fileMasterId\\\":7,\\\"createdBy\\\":1,\\\"modifiedBy\\\":1,\\\"createdAt\\\":\\\"2023-12-29T11:36:32.000Z\\\",\\\"updatedAt\\\":\\\"2024-01-06T04:36:18.346Z\\\",\\\"userId\\\":1}\"', 1, 1, '2024-01-06 04:34:27', '2024-01-06 04:34:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(0, 'user', '2023-12-22 12:50:10', '2023-12-22 12:50:10'),
(1, 'admin', '2023-12-22 12:50:10', '2023-12-22 12:50:10'),
(2, 'bureau', '2023-12-22 12:51:08', '2023-12-22 12:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT '2023-12-26 09:09:58',
  `updatedAt` datetime DEFAULT '2023-12-26 09:09:58',
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `firstname`, `middlename`, `lastname`, `address`, `pincode`, `bio`, `phone`, `createdBy`, `modifiedBy`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'Aditya', NULL, 'Kumar', 'Temporary address, dummy street, hometown', 999999, NULL, '9999999999', 1, 1, '2023-12-26 06:50:00', '2023-12-26 06:50:00', 1),
(2, 'HDFC', NULL, 'Banker', 'HDFC Banker,Temporary street, vendor add', 10101, NULL, '5656565656', 1, 1, '2023-12-26 09:09:58', '2023-12-26 09:09:58', 5),
(3, 'IDFC', NULL, 'Banker', 'IDFC Road, New Street, Penthouse apartment', 222222, 'I\'m a simple banker with no interest in party and pool clubs. Hangout with me on the hills or a calm/serene place like beach', '4545454545', 1, 1, '2023-12-26 09:09:58', '2023-12-26 09:09:58', 6),
(4, 'Bureau HDFC', NULL, 'Banker', 'Bureau HDFC Road, New Street, Penthouse apartment', 333333, 'I\'m a simple banker with no interest in party and pool clubs. Hangout with me on the hills or a calm/serene place like beach', '1212121212', 2, 2, '2023-12-26 09:09:58', '2023-12-26 09:09:58', 7),
(5, 'Bureau HDFC', NULL, 'Banker', 'Bureau HDFC Road, New Street, Penthouse apartment', 111222, 'I\'m a simple banker with high interest in party and pool clubs. Hangout with me on the hills or a calm/serene place like beach', '2323232323', 2, 2, '2023-12-26 09:09:58', '2023-12-26 09:09:58', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `organisation` varchar(255) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `organisation`, `type`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'admin@mlno.in', '$2a$08$/58Hx8qA992Z5F0tSUDbd.gR1QD0tTxS4RTpN.KBEpDsAtXA/liHy', 'HDFC', 'bank', '2023-10-10 19:01:14', '2024-10-17 12:41:14'),
(2, 'adminr', 'test@test.com', '$2a$08$ncbgbEmP.GDXts0Y1hqthek6uuVFYB2Rx8uPl9oXRvMSbblHELdCS', 'SBI', 'bank', '2023-12-22 11:59:23', '2023-12-22 11:59:23'),
(3, 'bureau1', 'moderator@test.com', '$2a$08$miheRAZao6NRxc4ktsAOkOqOu1I4vRLRxEg.evz0WK40nDdodqDNi', 'SBI', 'bank', '2023-12-22 12:00:44', '2024-01-02 12:00:44'),
(4, 'test1', 'test1@test.com', '$2a$08$7p3bWDQBQNl.8wxRkw2.9u5qxvD2PWMHoMMf.FeRK704aLU5z2yuu', 'SBI', 'bank', '2023-12-22 12:01:12', '2023-12-29 12:01:12'),
(5, 'hdfcadmin', 'hdfcbank@ok.ok', '$2a$08$6OjD95WNm0Ctm2i/XCI3qe.kmi6X1Q0p3vSolWPWcqntHfiAX2Byy', 'HDFC', 'bank', '2024-01-17 08:14:37', '2024-01-17 08:14:37'),
(6, 'idfcadmin', 'idfcbank@ok.ok', '$2a$08$Gpdv.svtKIPGx1G7IAf.Eu44EghkzBD2gLTvCu2tnmVtDz8K.Hxk.', 'IDFC', 'bank', '2024-01-17 08:14:52', '2024-01-17 09:14:52'),
(7, 'bureauhdfc', 'bureauhdfc@ok.ok', '$2a$08$XU/Uw8UoGTXeWTlgm61/VupIg85hFbL/WOGnTbF8nHpD9uWsDMql6', 'Bureau1', 'bureau', '2024-01-17 08:15:28', '2024-01-17 09:15:28'),
(8, 'bureauidfc', 'bureauidfc@ok.ok', '$2a$08$MMaY8T6m2Vdy9AbO6iYakeT2VxOMei1vQICGq8dPmSsMT6afSF4sG', 'Bureau2', 'bureau', '2024-01-17 08:15:36', '2024-01-17 10:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2023-12-22 12:01:12', '2023-12-22 12:01:12', 0, 4),
('2023-12-26 08:13:24', '2023-12-26 08:13:24', 1, 1),
('2023-12-22 11:59:23', '2023-12-22 11:59:23', 1, 2),
('2024-01-17 08:14:37', '2024-01-17 08:14:37', 1, 5),
('2024-01-17 08:14:52', '2024-01-17 08:14:52', 1, 6),
('2024-01-17 08:15:28', '2024-01-17 08:15:28', 1, 7),
('2024-01-17 08:15:36', '2024-01-17 08:15:36', 1, 8),
('2023-12-22 12:00:44', '2023-12-22 12:00:44', 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cardId` (`cardId`),
  ADD KEY `createdBy` (`createdBy`),
  ADD KEY `modifiedBy` (`modifiedBy`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdBy`),
  ADD KEY `modifiedBy` (`modifiedBy`),
  ADD KEY `fileMasterId` (`fileMasterId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `filemasters`
--
ALTER TABLE `filemasters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdBy`),
  ADD KEY `modifiedBy` (`modifiedBy`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_roles`
--
ALTER TABLE `menu_roles`
  ADD PRIMARY KEY (`roleId`,`menuId`),
  ADD KEY `menuId` (`menuId`);

--
-- Indexes for table `pullrequests`
--
ALTER TABLE `pullrequests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cardId` (`cardId`),
  ADD KEY `fileMasterId` (`fileMasterId`),
  ADD KEY `createdBy` (`createdBy`),
  ADD KEY `modifiedBy` (`modifiedBy`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `pullrequest_logs`
--
ALTER TABLE `pullrequest_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pullRequestId` (`pullRequestId`),
  ADD KEY `cardId` (`cardId`),
  ADD KEY `fileMasterId` (`fileMasterId`),
  ADD KEY `createdBy` (`createdBy`),
  ADD KEY `modifiedBy` (`modifiedBy`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdBy`),
  ADD KEY `modifiedBy` (`modifiedBy`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `filemasters`
--
ALTER TABLE `filemasters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pullrequests`
--
ALTER TABLE `pullrequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pullrequest_logs`
--
ALTER TABLE `pullrequest_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`cardId`) REFERENCES `cards` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `audit_logs_ibfk_2` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `audit_logs_ibfk_3` FOREIGN KEY (`modifiedBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `audit_logs_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cards_ibfk_2` FOREIGN KEY (`modifiedBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cards_ibfk_3` FOREIGN KEY (`fileMasterId`) REFERENCES `filemasters` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cards_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `filemasters`
--
ALTER TABLE `filemasters`
  ADD CONSTRAINT `filemasters_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `filemasters_ibfk_2` FOREIGN KEY (`modifiedBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `filemasters_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `menu_roles`
--
ALTER TABLE `menu_roles`
  ADD CONSTRAINT `menu_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_roles_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pullrequests`
--
ALTER TABLE `pullrequests`
  ADD CONSTRAINT `pullrequests_ibfk_1` FOREIGN KEY (`cardId`) REFERENCES `cards` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pullrequests_ibfk_2` FOREIGN KEY (`fileMasterId`) REFERENCES `filemasters` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pullrequests_ibfk_3` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pullrequests_ibfk_4` FOREIGN KEY (`modifiedBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pullrequests_ibfk_5` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pullrequest_logs`
--
ALTER TABLE `pullrequest_logs`
  ADD CONSTRAINT `pullrequest_logs_ibfk_1` FOREIGN KEY (`pullRequestId`) REFERENCES `pullrequests` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pullrequest_logs_ibfk_2` FOREIGN KEY (`cardId`) REFERENCES `cards` (`id`),
  ADD CONSTRAINT `pullrequest_logs_ibfk_3` FOREIGN KEY (`fileMasterId`) REFERENCES `filemasters` (`id`),
  ADD CONSTRAINT `pullrequest_logs_ibfk_4` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pullrequest_logs_ibfk_5` FOREIGN KEY (`modifiedBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pullrequest_logs_ibfk_6` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD CONSTRAINT `userdetails_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userdetails_ibfk_2` FOREIGN KEY (`modifiedBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userdetails_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
