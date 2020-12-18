-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 03:32 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `prestb_id` int(11) NOT NULL,
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintb`
--
ALTER TABLE `admintb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctb`
--
ALTER TABLE `doctb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `prestb`
--
ALTER TABLE `prestb`
  ADD PRIMARY KEY (`prestb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintb`
--
ALTER TABLE `admintb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctb`
--
ALTER TABLE `doctb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prestb`
--
ALTER TABLE `prestb`
  MODIFY `prestb_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
