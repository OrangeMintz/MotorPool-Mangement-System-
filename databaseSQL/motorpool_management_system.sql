-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 09:11 PM
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
-- Database: `motorpool_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `birthday` date NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `phone_number` char(11) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `first_name`, `middle_name`, `last_name`, `suffix`, `birthday`, `barangay`, `city`, `province`, `phone_number`, `email_address`, `created_at`, `updated_at`) VALUES
(1000, 'Djeikuje Nickolai', '', 'Gacus', NULL, '2002-09-10', 'Poblacion', 'Valencia City', 'Bukidnon', '9350050225', 'nickolaigacus@yahoo.com', '2023-05-04 14:39:57', '2023-05-07 09:31:15'),
(1001, 'Jhon Kert', '', 'Talha', NULL, '2002-02-07', 'Poblacion', 'Valencia City', 'Bukidnon', '9564566454', 'talhajhonkert@gmail.com', '2023-05-07 00:36:07', '2023-05-07 09:15:32'),
(1002, 'Jeffrey', '', 'Sedoro', NULL, '2023-05-04', 'Bagontaas', 'Valencia City', 'Bukidnon', '9566756756', 'example@gmail.com', '2023-05-07 04:22:50', '2023-05-07 04:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `scheduling`
--

CREATE TABLE `scheduling` (
  `schedule_id` int(20) NOT NULL,
  `appointed_vd` int(20) NOT NULL,
  `departure_datetime` datetime NOT NULL,
  `arrival_datetime` datetime DEFAULT NULL,
  `schedule_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scheduling`
--

INSERT INTO `scheduling` (`schedule_id`, `appointed_vd`, `departure_datetime`, `arrival_datetime`, `schedule_status`, `created_at`, `updated_at`) VALUES
(109, 9, '2023-06-09 00:58:00', '0000-00-00 00:00:00', 'Traveling ', '2023-05-07 09:41:22', '2023-05-07 16:58:26'),
(110, 7, '2023-05-07 19:50:00', '0000-00-00 00:00:00', 'Traveling ', '2023-05-07 11:50:52', '2023-05-07 18:48:36'),
(111, 8, '2023-05-08 02:48:00', '2023-05-08 02:48:00', 'Arrived', '2023-05-07 18:48:44', '2023-05-07 18:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_number` int(5) NOT NULL,
  `vehicle_brand` varchar(255) NOT NULL,
  `vehicle_model` varchar(255) NOT NULL,
  `vehicle_plate` varchar(5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_number`, `vehicle_brand`, `vehicle_model`, `vehicle_plate`, `created_at`, `updated_at`) VALUES
(12312, 'Nissan', 'ViosN', '67867', '2023-05-07 04:32:10', '2023-05-07 04:32:10'),
(12315, 'Nissan', 'Vios', '4567S', '2023-05-03 15:14:57', '2023-05-04 15:59:36'),
(67786, 'Ford', 'ViosH', 'zUwUz', '2023-05-03 15:59:45', '2023-05-07 09:16:36'),
(67867, 'Nissan', 'ViosN', 'SASF4', '2023-05-04 02:40:11', '2023-05-07 04:36:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `driver_id` (`driver_id`),
  ADD UNIQUE KEY `driver_id_2` (`driver_id`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- Indexes for table `scheduling`
--
ALTER TABLE `scheduling`
  ADD PRIMARY KEY (`schedule_id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`),
  ADD UNIQUE KEY `appointed_vd` (`appointed_vd`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_number`),
  ADD UNIQUE KEY `vehicle_number` (`vehicle_number`),
  ADD UNIQUE KEY `vehicle_plate` (`vehicle_plate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scheduling`
--
ALTER TABLE `scheduling`
  MODIFY `schedule_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scheduling`
--
ALTER TABLE `scheduling`
  ADD CONSTRAINT `scheduling_ibfk_1` FOREIGN KEY (`appointed_vd`) REFERENCES `appointed` (`appointed_vd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
