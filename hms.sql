-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2024 at 10:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminUser`
--

CREATE TABLE `adminUser` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminUser`
--

INSERT INTO `adminUser` (`username`, `password`) VALUES
('Tariq', '12345'),
('Tariq', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `idNumber` varchar(10) NOT NULL,
  `number_of_persons` int(11) NOT NULL,
  `room` varchar(255) NOT NULL,
  `amount` int(255) DEFAULT 0,
  `checkin` varchar(255) DEFAULT NULL,
  `checkout` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `idNumber`, `number_of_persons`, `room`, `amount`, `checkin`, `checkout`) VALUES
(7, '1247654367', 1, '101', 1893, '2024-02-01 01:52:41', '2024-02-01 03:27:25'),
(8, '1234235678', 1, '101', 1893, '2024-02-01 04:15:06', '2024-02-01 04:15:41'),
(9, '1234235699', 2, '101', 1893, '2024-02-01 04:20:23', '2024-02-01 04:20:58'),
(10, '2345678943', 1, '101', 1893, '2024-02-01 04:26:12', '2024-02-01 04:26:38'),
(11, '2345678943', 1, '101', 1893, '2024-02-01 04:27:23', '2024-02-01 16:26:06'),
(12, '1234568765', 1, '205', 5780, '2024-02-01 17:21:21', '2024-02-01 17:21:35'),
(13, '1023452367', 2, '204', 2300, '2024-02-01 21:53:00', '2024-02-01 22:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idNumber` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idNumber`, `name`, `contact`, `address`, `nation`) VALUES
('1234235678', 'ryfgjgih', '0563675783', 'uae', 'saudi'),
('1234235699', 'ryfgjgih', '0563675783', 'uae', 'saudi'),
('1247654367', 'fgsrfdg', '9876545678', 'wer', 'dew'),
('2345678943', 'jvkghkhi', '0507562230', 'sdew', 'stfjfv'),
('2345678943', 'jvkghkhi', '0507562230', 'sdew', 'stfjfv'),
('1234568765', 'mohamed', '0557912881', 'uae', 'britch'),
('1023452367', 'saleh', '0576342568', 'makkah', 'saudi');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `idRoom` int(255) NOT NULL,
  `beds` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `occupied` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`idRoom`, `beds`, `capacity`, `price`, `occupied`) VALUES
(101, 2, 3, 1893, 0),
(102, 1, 2, 1394, 1),
(103, 3, 4, 3899, 0),
(204, 2, 3, 2300, 0),
(205, 4, 6, 5780, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`idRoom`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `idRoom` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
