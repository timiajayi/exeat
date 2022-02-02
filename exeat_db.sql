-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 02, 2022 at 12:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exeat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `exeats`
--

CREATE TABLE `exeats` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `leave_date` date NOT NULL,
  `return_date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exeats`
--

INSERT INTO `exeats` (`id`, `student_id`, `staff_id`, `type`, `reason`, `leave_date`, `return_date`, `status`) VALUES
(2, 1, 1, 'bank', 'bank', '2022-01-23', '2022-01-26', 1),
(3, 1, 1, 'home', 'home', '2022-01-09', '2022-01-20', 1),
(4, 1, 1, 'home', 'reason', '2022-01-27', '2022-01-25', 2),
(5, 2, 1, 'home', 'kkk', '2022-04-05', '2022-05-05', 2),
(6, 1, 2, 'home', 'type', '2022-12-15', '2022-02-16', 2),
(7, 2, 2, 'home', 'sick need hospital', '2022-01-17', '2022-01-18', 1),
(8, 2, 0, 'home', 'i am sick and need to go to the hospital', '2022-01-24', '2022-01-26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `staff_num` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hall` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `first_name`, `last_name`, `staff_num`, `password`, `hall`) VALUES
(1, 'test', 'staff', 1111, 'passwords', 'amina'),
(2, 'ussdsu', 'ussxju', 1211, 'passwords', 'reb');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mat_num` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hall` varchar(255) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `mat_num`, `password`, `hall`, `room_no`) VALUES
(1, 'student', 'test', 2222, 'password', 'amkina', 3),
(2, 'test', 'tset', 2322, 'password', 'reb', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exeats`
--
ALTER TABLE `exeats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exeats`
--
ALTER TABLE `exeats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
