-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2017 at 03:19 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `can_edit`
--

CREATE TABLE `can_edit` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `sender_name` varchar(30) NOT NULL,
  `reciver` int(11) NOT NULL,
  `reciver_name` varchar(30) NOT NULL,
  `file_id` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `can_view`
--

CREATE TABLE `can_view` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `sender_name` varchar(30) NOT NULL,
  `reciver` int(11) NOT NULL,
  `reciver_name` varchar(30) NOT NULL,
  `file_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `can_view`
--

INSERT INTO `can_view` (`id`, `sender`, `sender_name`, `reciver`, `reciver_name`, `file_id`) VALUES
(7, 8, 'testa', 10, 'testc', '93583-plan.txt');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uploads`
--

CREATE TABLE `tbl_uploads` (
  `id` int(10) NOT NULL,
  `file` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `size` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_uploads`
--

INSERT INTO `tbl_uploads` (`id`, `file`, `type`, `size`, `userId`) VALUES
(29, '93583-plan.txt', 'text/plain', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(7, 'test', 'test1@gmail.com', '6cdd839b07ee5fb17125866e173e3c61d4b1111ac8b1d4c87062e9711de15096'),
(8, 'testa', 'test_a@gmail.com', 'd5d14323fda5d693fe8cb7ec01d6c71fbfa15de3e8808bd9d6ce503d157e6ffb'),
(9, 'testb', 'test_b@gmail.com', 'dc686421a7dbf123095e8eee1dee62733ada216d788528b663c6231c831ef3ea'),
(10, 'testc', 'test_c@gmail.com', '482f5a356f22cd27daaff6dc99e29a6dacfa3f71d5a5af66f9c904e980ee6597');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `can_edit`
--
ALTER TABLE `can_edit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `can_view`
--
ALTER TABLE `can_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_uploads`
--
ALTER TABLE `tbl_uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `can_edit`
--
ALTER TABLE `can_edit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `can_view`
--
ALTER TABLE `can_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_uploads`
--
ALTER TABLE `tbl_uploads`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
