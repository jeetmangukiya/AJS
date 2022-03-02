-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 02:47 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajs`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tb`
--

CREATE TABLE `adminlogin_tb` (
  `a_login_id` int(11) NOT NULL,
  `a_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `a_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `adminlogin_tb`
--

INSERT INTO `adminlogin_tb` (`a_login_id`, `a_name`, `a_email`, `a_password`) VALUES
(1, 'admin1', 'admin1@gmail.com', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `assignwork_tb`
--

CREATE TABLE `assignwork_tb` (
  `rno` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8_bin NOT NULL,
  `request_desc` text COLLATE utf8_bin NOT NULL,
  `user_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_add1` text COLLATE utf8_bin NOT NULL,
  `user_add2` text COLLATE utf8_bin NOT NULL,
  `user_city` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_state` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_pincode` int(11) NOT NULL,
  `user_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_mobile` bigint(20) NOT NULL,
  `assign_tech` varchar(50) COLLATE utf8_bin NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assignwork_tb`
--

INSERT INTO `assignwork_tb` (`rno`, `request_id`, `request_info`, `request_desc`, `user_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_pincode`, `user_email`, `user_mobile`, `assign_tech`, `assign_date`) VALUES
(5, 4, 'request demo', 'Desc demo', 'user1', '12', 'Bus station', 'Surendranagar', 'Gujarat', 363040, 'user1@gmail.com', 948298581, 'Tech2', '2021-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `custid` int(11) NOT NULL,
  `custname` varchar(60) COLLATE utf8_bin NOT NULL,
  `custadd` varchar(60) COLLATE utf8_bin NOT NULL,
  `cpname` varchar(60) COLLATE utf8_bin NOT NULL,
  `cpquantity` int(11) NOT NULL,
  `cpeach` int(11) NOT NULL,
  `cptotal` int(11) NOT NULL,
  `cpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`custid`, `custname`, `custadd`, `cpname`, `cpquantity`, `cpeach`, `cptotal`, `cpdate`) VALUES
(1, 'Customer1', 'Customer1 Address Demo', 'mouse', 1, 200, 250, '2021-11-09'),
(2, 'Customer2', 'Customer2 Address Demo', 'mouse', 1, 250, 250, '2021-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `products_tb`
--

CREATE TABLE `products_tb` (
  `pid` int(11) NOT NULL,
  `pname` varchar(50) COLLATE utf8_bin NOT NULL,
  `pdop` date NOT NULL,
  `ptotal` int(11) NOT NULL,
  `pava` int(11) NOT NULL,
  `poriginalcost` float NOT NULL,
  `psellingcost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `products_tb`
--

INSERT INTO `products_tb` (`pid`, `pname`, `pdop`, `ptotal`, `pava`, `poriginalcost`, `psellingcost`) VALUES
(1, 'mouse', '2021-11-09', 10, 8, 100, 250);

-- --------------------------------------------------------

--
-- Table structure for table `services_tb`
--

CREATE TABLE `services_tb` (
  `sid` int(11) NOT NULL,
  `sname` varchar(60) COLLATE utf8_bin NOT NULL,
  `smincost` int(11) NOT NULL,
  `smaxcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `services_tb`
--

INSERT INTO `services_tb` (`sid`, `sname`, `smincost`, `smaxcost`) VALUES
(1, 'Laptop Screen Repair/Replacement', 2000, 8000),
(2, 'Laptop Battery Repair/Replacement', 500, 4000),
(4, 'Mobile Screen Replacement', 1000, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `submitrequest_tb`
--

CREATE TABLE `submitrequest_tb` (
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8_bin NOT NULL,
  `request_desc` text COLLATE utf8_bin NOT NULL,
  `user_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_add1` text COLLATE utf8_bin NOT NULL,
  `user_add2` text COLLATE utf8_bin NOT NULL,
  `user_city` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_state` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_pincode` int(11) NOT NULL,
  `user_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_mobile` bigint(20) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `submitrequest_tb`
--

INSERT INTO `submitrequest_tb` (`request_id`, `request_info`, `request_desc`, `user_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_pincode`, `user_email`, `user_mobile`, `request_date`) VALUES
(6, 'dummy request', 'dummy request desc', 'user1', '12', 'Bus station', 'Surendranagar', 'Gujarat', 363040, 'user1@gmail.com', 918251, '2021-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `technician_tb`
--

CREATE TABLE `technician_tb` (
  `empid` int(11) NOT NULL,
  `empName` varchar(50) COLLATE utf8_bin NOT NULL,
  `empCity` varchar(60) COLLATE utf8_bin NOT NULL,
  `empMobile` bigint(20) NOT NULL,
  `empEmail` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `technician_tb`
--

INSERT INTO `technician_tb` (`empid`, `empName`, `empCity`, `empMobile`, `empEmail`) VALUES
(1, 'Tech1 Kumar', 'Baroda', 8338271, 'tech1@gmail.com'),
(2, 'Tech2', 'Surat', 82917172, 'tech2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin_tb`
--

CREATE TABLE `userlogin_tb` (
  `u_login_id` int(11) NOT NULL,
  `u_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `u_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `u_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `userlogin_tb`
--

INSERT INTO `userlogin_tb` (`u_login_id`, `u_name`, `u_email`, `u_password`) VALUES
(1, 'user kumar', 'user1@gmail.com', 'user1'),
(2, 'user2', 'user2@yahoo.com', 'user2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  ADD PRIMARY KEY (`a_login_id`);

--
-- Indexes for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `products_tb`
--
ALTER TABLE `products_tb`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `services_tb`
--
ALTER TABLE `services_tb`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `technician_tb`
--
ALTER TABLE `technician_tb`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `userlogin_tb`
--
ALTER TABLE `userlogin_tb`
  ADD PRIMARY KEY (`u_login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  MODIFY `a_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_tb`
--
ALTER TABLE `customer_tb`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products_tb`
--
ALTER TABLE `products_tb`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services_tb`
--
ALTER TABLE `services_tb`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `technician_tb`
--
ALTER TABLE `technician_tb`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlogin_tb`
--
ALTER TABLE `userlogin_tb`
  MODIFY `u_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
