-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 07:12 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empId` int(11) NOT NULL DEFAULT '0',
  `nic` char(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `tel_home` varchar(10) NOT NULL,
  `tel_mobile` varchar(10) NOT NULL,
  `date_of_joining` date NOT NULL,
  `salType` varchar(10) NOT NULL,
  `salAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empId`, `nic`, `fname`, `lname`, `dob`, `address`, `city`, `gender`, `designation`, `department`, `tel_home`, `tel_mobile`, `date_of_joining`, `salType`, `salAmount`) VALUES
(1, '951552171v', 'anuska', 'Perera', '1995-06-03', 'Kurunegala', 'Wattala', 'Male', 'Software Engineer', 'IT', '0112934766', '0775096052', '2020-06-12', 'Monthly', 90000),
(2, '951547812v', 'Natasha', 'Perera', '1995-05-04', 'Kuliyapitiya', 'Kuliyapitiya', 'Female', 'Accountant', 'Finance', '0112568478', '0778412563', '2015-01-05', 'Monthly', 30000),
(3, '951336587v', 'Sanuka', 'Alwis', '1995-05-04', 'Thekkawaththa,Maho', 'Maho', 'Male', 'Clerk', 'Finance', '0112789654', '0713456258', '2020-04-08', 'Monthly', 38000),
(4, '931778564v', 'Kasunu', 'Fernando', '1993-05-08', 'Kandy', 'Kandy', 'Female', 'Business Analyst', 'IT', '0112789456', '0778236145', '2020-06-08', 'Monthly', 50000),
(5, '964885214v', 'Ashen', 'Fernando', '1993-04-04', 'Piliyandala', 'Colombo', 'Male', 'Executive', 'Finance', '0112604122', '0778419652', '2019-12-05', 'Monthly', 30000),
(6, '934632587v', 'Gayan', 'Perera', '1993-08-06', 'Kotte', 'Colombo', 'Male', 'Manager', 'Marketing', '0112456963', '0771625963', '2020-06-08', 'Monthly', 105000),
(7, '909352641v', 'Harindra', 'Abeyratne', '1990-06-04', 'Rampita,Ragama', 'Ragama', 'Male', 'Assistant Manager', 'Sales', '0112934766', '0774125896', '2002-08-09', 'Monthly', 85000),
(8, '965217485v', 'Shenelle', 'Fernando', '1993-06-05', 'Hunupitiya', 'wattala', 'Female', 'Accountant', 'Finance', '0112963287', '0713852789', '2012-08-09', 'Monthly', 62000),
(9, '965228744v', 'Ayantha', 'Perera', '1996-08-07', 'Hendala', 'Wattala', 'Male', 'Supervisor', 'Operations', '0112934766', '0776683052', '2011-02-06', 'Monthly', 25000),
(10, '851447852v', 'Keerthi', 'Alwis', '1985-08-09', 'Homagama', 'Piliyandala', 'Male', 'Executive', 'Sales', '0112478523', '0774125963', '2015-08-09', 'Monthly', 48000);

-- --------------------------------------------------------

--
-- Table structure for table `salary_details`
--

CREATE TABLE `salary_details` (
  `empId` int(11) NOT NULL,
  `travelAllow` double NOT NULL,
  `foodAllow` double NOT NULL,
  `bonus` double NOT NULL,
  `epf` double NOT NULL,
  `tax` double NOT NULL,
  `paye` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary_details`
--

INSERT INTO `salary_details` (`empId`, `travelAllow`, `foodAllow`, `bonus`, `epf`, `tax`, `paye`) VALUES
(1, 48, 40, 60, 32, 8, 8),
(2, 3000, 3000, 4500, 2400, 1500, 600),
(3, 1, 1, 1.5, 0.8, 0.5, 0.2),
(4, 5000, 5000, 7500, 4000, 2500, 1000),
(5, 600, 4500, 4500, 2400, 600, 600),
(6, 15750, 15750, 15750, 8400, 2100, 2100),
(7, 12750, 12750, 12750, 6800, 1700, 1700),
(8, 9300, 9300, 9300, 4960, 1240, 1240),
(9, 3750, 3750, 3750, 2000, 500, 500),
(10, 7200, 7200, 5760, 3840, 960, 960);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave`
--

CREATE TABLE `tbl_leave` (
  `empId` int(11) NOT NULL,
  `annual` double NOT NULL DEFAULT '15',
  `casual` double NOT NULL DEFAULT '10',
  `optional` double NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_leave`
--

INSERT INTO `tbl_leave` (`empId`, `annual`, `casual`, `optional`) VALUES
(1, 15, 10, 5),
(2, 15, 10, 5),
(3, 15, 10, 5),
(4, 15, 10, 5),
(5, 15, 10, 5),
(6, 15, 10, 5),
(7, 15, 10, 5),
(8, 15, 10, 5),
(9, 15, 10, 5),
(10, 15, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `password`, `admin`) VALUES
(1, 'admin', 'admin', 1),
(2, 'admin', '1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empId`),
  ADD UNIQUE KEY `empId` (`empId`);

--
-- Indexes for table `salary_details`
--
ALTER TABLE `salary_details`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `tbl_leave`
--
ALTER TABLE `tbl_leave`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `salary_details`
--
ALTER TABLE `salary_details`
  ADD CONSTRAINT `fl_salary` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_leave`
--
ALTER TABLE `tbl_leave`
  ADD CONSTRAINT `fk_leave` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`userId`) REFERENCES `employee` (`empId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
