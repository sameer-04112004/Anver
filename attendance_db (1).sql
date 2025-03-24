-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2025 at 04:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `login_time`, `logout_time`) VALUES
(1, 'admin', 'admin123', '2025-03-08 21:51:51', '2025-03-08 21:51:58'),
(2, 'manager', 'manager123', '2025-03-08 21:52:19', '2025-03-08 21:53:13'),
(3, 'supervisor', 'supervisor123', '2025-03-08 21:53:32', '2025-03-08 21:56:39'),
(4, 'head', 'head123', '2025-03-08 23:00:24', '2025-03-08 23:01:20'),
(5, 'boss', 'boss123', '2025-03-08 22:20:34', '2025-03-08 22:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `username`, `password`, `login_time`, `logout_time`) VALUES
(1, 'sudhar', 'sudhar123', '2025-03-08 22:32:52', '2025-03-08 22:33:43'),
(2, 'tarun', 'tarun123', '2025-03-08 15:24:42', '2025-03-08 15:24:45'),
(3, 'ayyash', 'ayyash123', NULL, NULL),
(4, 'sathi', 'sathi123', NULL, NULL),
(5, 'sawfan', 'sawfan123', NULL, NULL),
(6, 'sarav', 'sarav123', '2025-03-08 22:17:25', '2025-03-08 22:17:32'),
(7, 'selva', 'selva123', NULL, NULL),
(8, 'ibu', 'ibu123', '2025-03-08 22:19:10', '2025-03-08 22:20:16'),
(9, 'sathya', 'sathya123', NULL, NULL),
(10, 'siva', 'siva123', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
