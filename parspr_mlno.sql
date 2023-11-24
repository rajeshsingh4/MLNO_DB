-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 05:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `Bank` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Product` varchar(20) NOT NULL,
  `Logo` varchar(5) NOT NULL,
  `Scheme` varchar(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address1` varchar(255) NOT NULL,
  `Address2` varchar(255) NOT NULL,
  `Address3` varchar(255) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Pin` int(6) NOT NULL,
  `Mobile` int(10) NOT NULL,
  `Other_Contact` int(10) NOT NULL,
  `Reference_No` varchar(20) NOT NULL,
  `AWB_No` varchar(20) NOT NULL,
  `RTO_Address1` varchar(255) NOT NULL,
  `RTO_Address2` varchar(255) NOT NULL,
  `RTO_Address3` varchar(255) NOT NULL,
  `RTO_City` varchar(50) NOT NULL,
  `RTO_State` varchar(20) NOT NULL,
  `RTO_Pin` int(6) NOT NULL,
  `Office_Address1` varchar(255) NOT NULL,
  `Office_Address2` varchar(255) NOT NULL,
  `Office_Address3` varchar(255) NOT NULL,
  `Office_City` varchar(50) NOT NULL,
  `Office_State` varchar(20) NOT NULL,
  `Office_Pin` int(6) NOT NULL,
  `PA_Flag` varchar(1) NOT NULL,
  `NRWC_Flag` varchar(1) NOT NULL,
  `Priority` varchar(1) NOT NULL,
  `Third_Party` varchar(100) NOT NULL,
  `Bureau_Code` varchar(10) NOT NULL,
  `Courier_Code` varchar(10) NOT NULL,
  `Form_Factor` varchar(1) NOT NULL,
  `Comments` varchar(255) NOT NULL,
  `Personalized_NonPersonalized` varchar(1) NOT NULL,
  `Individual_Bulk_Break` varchar(1) NOT NULL,
  `Sub_Customer` varchar(10) NOT NULL,
  `Status` int(2) NOT NULL,
  `If_PULL` int(2) NOT NULL,
  `Field_1` varchar(255) NOT NULL,
  `Field_2` varchar(255) NOT NULL,
  `Field_3` int(11) NOT NULL,
  `Field_4` int(11) NOT NULL,
  `Field_5` date NOT NULL,
  `Field_6` varchar(255) NOT NULL,
  `Field_7` varchar(255) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` ('id', `Bank`, `Date`, `Product`, `Logo`, `Scheme`, `Name`, `Address1`, `Address2`, `Address3`, `City`, `State`, `Pin`, `Mobile`, `Other_Contact`, `Reference_No`, `AWB_No`, `RTO_Address1`, `RTO_Address2`, `RTO_Address3`, `RTO_City`, `RTO_State`, `RTO_Pin`, `Office_Address1`, `Office_Address2`, `Office_Address3`, `Office_City`, `Office_State`, `Office_Pin`, `PA_Flag`, `NRWC_Flag`, `Priority`, `Third_Party`, `Bureau_Code`, `Courier_Code`, `Form_Factor`, `Comments`, `Personalized_NonPersonalized`, `Individual_Bulk_Break`, `Sub_Customer`, `Status`, `If_PULL`, `Field_1`, `Field_2`, `Field_3`, `Field_4`, `Field_5`, `Field_6`, `Field_7`, `createdAt`, `updatedAt`) VALUES
(1, 'icici', '2023-10-10', 'Visa Platinum', 'FPL', 'JCB', 'Rajesh', 'add1', 'add2', 'add3', 'noida', 'UP', 201301, 999999999, 999999991, 'ref123', 'awb123', 'rtoadd1', 'rtoadd2', 'rtoadd3', 'rtocity', 'rtostate', 201301, 'officeadd1', 'officeadd2', 'officeadd3', 'office_city', 'officestate', 123456, 'P', 'N', 'N', '3rdparty', 'bcode1', 'courier_1', 'D', 'test comments', 'P', 'I', 'sub_custom', 3, 0, 'fld1', 'fld2', 3, 4, '2023-10-16', 'fld6', 'fld7', '2023-11-20', '2023-11-20'),
(2, 'icici', '2023-11-10', 'Visa Platinum', 'FPL', 'JCB', 'Rajesh1', 'add11', 'add12', 'add3', 'noida', 'UP', 201301, 999999999, 999999991, 'ref1123', 'awb123', 'rtoadd1', 'rtoadd2', 'rtoadd3', 'rtocity', 'rtostate', 201301, 'officeadd1', 'officeadd2', 'officeadd3', 'office_city', 'officestate', 123456, 'P', 'N', 'N', '3rdparty', 'bcode1', 'courier_1', 'D', 'test comments', 'P', 'I', 'sub_custom', 3, 0, 'fld1', 'fld2', 3, 4, '2023-10-16', 'fld6', 'fld7', '2023-11-20', '2023-11-20'),
(3, 'icici', '2023-11-10', 'Visa Platinum', 'FPL', 'JCB', 'Khushbu', 'add11', 'add12', 'add3', 'noida', 'UP', 201301, 999999999, 999999991, 'kh1123', 'awb123', 'rtoadd1', 'rtoadd2', 'rtoadd3', 'rtocity', 'rtostate', 201301, 'officeadd1', 'officeadd2', 'officeadd3', 'office_city', 'officestate', 123456, 'P', 'N', 'N', '3rdparty', 'bcode1', 'courier_1', 'D', 'test comments', 'P', 'I', 'sub_custom', 3, 0, 'fld1', 'fld2', 3, 4, '2023-10-16', 'fld6', 'fld7', '2023-11-20', '2023-11-20'),
(4, 'icici', '2023-09-10', 'Visa Platinum', 'FPL', 'JCB', 'Khushbu', 'add113', 'add122', 'add33', 'noida', 'UP', 201301, 999999999, 999999991, 'kh1123', 'awb123', 'rtoadd1', 'rtoadd2', 'rtoadd3', 'rtocity', 'rtostate', 201301, 'officeadd1', 'officeadd2', 'officeadd3', 'office_city', 'officestate', 123456, 'P', 'N', 'N', '3rdparty', 'bcode1', 'courier_1', 'D', 'test comments', 'P', 'I', 'sub_custom', 3, 0, 'fld1', 'fld2', 3, 4, '2023-10-16', 'fld6', 'fld7', '2023-11-20', '2023-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `cardsupdates`
--

CREATE TABLE `cardsupdates` (
  `id` int(11) NOT NULL,
  `Changemode` varchar(255) DEFAULT NULL,
  `Logjson` text DEFAULT NULL,
  `Comments` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cardsupdates`
--

INSERT INTO `cardsupdates` (`id`, `Changemode`, `Logjson`, `Comments`, `createdAt`, `updatedAt`) VALUES
(1, 'filename12-3-14.text', '{\r\n\"Product\":\"product1\",\r\n\"Address1\":\"Newaddress1\"\r\n}', NULL, '2023-10-27 17:37:39', '2023-10-27 17:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'admin@mlno.in', '$2a$08$/58Hx8qA992Z5F0tSUDbd.gR1QD0tTxS4RTpN.KBEpDsAtXA/liHy', '2023-10-10 19:01:14', '2023-10-10 19:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardId` varchar(255) DEFAULT NULL,
  `previous` varchar() NOT NULL,
  `current` varchar() NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardsupdates`
--
ALTER TABLE `cardsupdates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cardsupdates`
--
ALTER TABLE `cardsupdates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

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
