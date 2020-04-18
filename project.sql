-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2018 at 02:22 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_reg`
--

CREATE TABLE `company_reg` (
  `ID` int(10) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  `COM_NO` int(10) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ESTABLISHED_YEAR` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `developer_reg`
--

CREATE TABLE `developer_reg` (
  `ID` int(10) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `SKILLS` varchar(100) DEFAULT NULL,
  `EXPERIENCE` varchar(100) DEFAULT NULL,
  `MOB_NO` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `BASE_PRICE` varchar(50) DEFAULT NULL,
  `PROJECTS` varchar(100) DEFAULT NULL,
  `TOTAL_INCOME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developer_reg`
--

INSERT INTO `developer_reg` (`ID`, `NAME`, `SKILLS`, `EXPERIENCE`, `MOB_NO`, `EMAIL`, `BASE_PRICE`, `PROJECTS`, `TOTAL_INCOME`, `PASSWORD`) VALUES
(1, 'pparth967@gmail.com', 'all', '1', '7405131728', 'pparth967@gmail.com', '500', 'Freelancer', '9000', '7405131728'),
(2, 'pparth967', 'java based technology, html,c,c++,javascript,php,css', '0', '7405131728', 'pparth967@gmail.com', '500', 'Freelancer', '0', '7405131728'),
(3, 'Akhand Sanyasi', 'All', '4', '0987654321', 'akhandsanyasi123@gmail.com', '1000', 'Freelancer', '9999999', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `projects_det`
--

CREATE TABLE `projects_det` (
  `ID` int(10) NOT NULL,
  `C_NAME` varchar(100) DEFAULT NULL,
  `PROJECTS_DETAILS` varchar(100) DEFAULT NULL,
  `PRICE` int(10) DEFAULT NULL,
  `DEVELOPER` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_reg`
--
ALTER TABLE `company_reg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `developer_reg`
--
ALTER TABLE `developer_reg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `projects_det`
--
ALTER TABLE `projects_det`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_reg`
--
ALTER TABLE `company_reg`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `developer_reg`
--
ALTER TABLE `developer_reg`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects_det`
--
ALTER TABLE `projects_det`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
