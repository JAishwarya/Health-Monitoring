-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 07:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user-registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `designation` varchar(50) DEFAULT NULL,
  `qualification` varchar(200) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `about` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstname`, `lastname`, `email`, `gender`, `password`, `role`, `designation`, `qualification`, `address`, `about`) VALUES
(1, 'Pavan', 'Kumar', 'pavanthumpudi@gmail.com', 1, 'e10adc3949ba59abbe56e057f20f883e', 0, 'Engineer', 'B.Tech (Electronics and instrumentation. “Batch: 2008-2012”)', 'HSR Lauout,\nBangalore,\nKarnataka,\nIndia', ''),
(7, 'Aishwarya', 'Jadhav', 'aishwaryajadhav1@gmail.com', 0, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'B.S. in Computer Science from the University of Tennessee at Knoxville', 'Banglore, Karnataka, India', 'B.S. in Computer Science from the University of Tennessee at Knoxville'),
(23, 'Sarala', 'Gajapathy', 'sarala.gajapathy@altran.com', 0, 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 'B.S. in Computer Science from the University of Tennessee at Knoxville', 'Banglore, Karnataka, India', 'B.S. in Computer Science from the University of Tennessee at Knoxville'),
(26, 'hari', 'kumar', 'harikumar@gmail.com', 1, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'B.S. in Computer Science from the University of Tennessee at Knoxville', 'Banglore, Karnataka, India', 'B.S. in Computer Science from the University of Tennessee at Knoxville'),
(31, 'Manjunatha', 'kr', 'manjunatha.kr@altran.com', 1, 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 'B.S. in Computer Science from the University of Tennessee at Knoxville', 'Banglore, Karnataka, India', 'B.S. in Computer Science from the University of Tennessee at Knoxville');

-- --------------------------------------------------------

--
-- Table structure for table `emp_skill`
--

CREATE TABLE `emp_skill` (
  `id` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_skill`
--

INSERT INTO `emp_skill` (`id`, `eid`, `sid`) VALUES
(10, 4, 1),
(71, 8, 1),
(78, 17, 1),
(96, 23, 1),
(97, 23, 2),
(113, 25, 1),
(114, 25, 2),
(115, 25, 3),
(116, 25, 4),
(117, 25, 5),
(118, 25, 6),
(119, 26, 1),
(120, 26, 2),
(121, 26, 3),
(122, 26, 4),
(123, 26, 5),
(124, 26, 6),
(149, 7, 1),
(150, 7, 2),
(151, 7, 3),
(152, 7, 4),
(153, 7, 5),
(154, 7, 6),
(253, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `skill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `skill`) VALUES
(1, 'Java'),
(2, 'Python'),
(3, 'TypeScript'),
(4, 'JavaScript'),
(5, 'PHP'),
(6, 'MySql');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `experience` int(10) NOT NULL,
  `domain` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `experience`, `domain`) VALUES
(1, 'pavan', 'pavanthumpudi@gmail.com', 7, 'fullstack');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `emp_skill`
--
ALTER TABLE `emp_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `emp_skill`
--
ALTER TABLE `emp_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
