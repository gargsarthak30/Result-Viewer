-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2015 at 06:58 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `result`
--

-- --------------------------------------------------------

--
-- Table structure for table `rs_admin`
--

CREATE TABLE IF NOT EXISTS `rs_admin` (
  `Admin_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Full_Name` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Start_Date` datetime NOT NULL,
  `End_Date` datetime NOT NULL,
  `Faculty_Created` int(11) NOT NULL,
  `Faculty_Removed` int(11) NOT NULL,
  `Flag` int(11) NOT NULL,
  PRIMARY KEY (`Admin_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `rs_admin`
--

INSERT INTO `rs_admin` (`Admin_Id`, `Username`, `Password`, `Full_Name`, `Designation`, `Email`, `Start_Date`, `End_Date`, `Faculty_Created`, `Faculty_Removed`, `Flag`) VALUES
(14, 'initadmin2', '$2y$10$qyToq0Keu5v2BfjGgZwDY.LvO8nOBYbobb.NNHnMN80ALRpuG/5vy', 'ABC Sharma', '', 'a@a', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rs_excel_details`
--

CREATE TABLE IF NOT EXISTS `rs_excel_details` (
  `Sheet_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Faculty_Id` int(11) NOT NULL,
  `School` varchar(10) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Course_Code` varchar(50) NOT NULL,
  `Published` int(11) NOT NULL DEFAULT '0',
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sheet_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `rs_excel_details`
--

INSERT INTO `rs_excel_details` (`Sheet_Id`, `Faculty_Id`, `School`, `Semester`, `Department`, `Course_Code`, `Published`, `Timestamp`) VALUES
(120, 7, 'sohss', '5', '5', '5', 1, '2015-12-31 23:09:45'),
(121, 7, 'soict', '5', '5', '5', 0, '2015-12-31 23:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `rs_faculty`
--

CREATE TABLE IF NOT EXISTS `rs_faculty` (
  `Faculty_Id` int(5) NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Faculty_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `rs_faculty`
--

INSERT INTO `rs_faculty` (`Faculty_Id`, `Full_Name`, `Username`, `Password`, `Email`, `Timestamp`) VALUES
(6, 'Arun Solanki', 'arun', '$2y$10$2tzulKRfTUi5qVc7dGsDn.z/y6Q3WwMNK7FIWaZnRrg4GoS.D7YvS', 'arun.solanki@gmail.com', '2015-12-28 15:50:13'),
(7, 'Amit K. Awasthi', 'amit', '$2y$10$2tzulKRfTUi5qVc7dGsDn.z/y6Q3WwMNK7FIWaZnRrg4GoS.D7YvS', 'amit.awasthik@gmail.com', '2015-12-28 15:50:13'),
(25, 'ABC Sharma', 'qscf', '$2y$10$5DSyYbHo4GdH1M83Q5otzuE9In/rB6ODkPwkXK6U/Irhutp394vHO', 'a@a', '2015-12-31 10:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `rs_logs`
--

CREATE TABLE IF NOT EXISTS `rs_logs` (
  `log_no` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  `action` varchar(300) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `user_agent` varchar(200) NOT NULL,
  PRIMARY KEY (`log_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=279 ;

--
-- Dumping data for table `rs_logs`
--

INSERT INTO `rs_logs` (`log_no`, `date`, `time`, `user_name`, `level`, `action`, `ip_address`, `user_agent`) VALUES
(1, '2015-12-16', '13:53:57', 'arun', 'faculty', 'Logged-In', '203.12.15.250', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(2, '2015-12-16', '14:20:34', 'arun', 'faculty', 'Logged-Out', '203.12.15.250', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(3, '2015-12-16', '14:38:58', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(4, '2015-12-16', '14:41:10', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(5, '2015-12-16', '16:04:33', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(6, '2015-12-16', '16:07:05', 'arun', 'faculty', 'Published excel Sheet-Id - 85', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(7, '2015-12-16', '16:08:29', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(8, '2015-12-16', '16:09:57', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(9, '2015-12-16', '16:10:29', 'arun', 'faculty', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(10, '2015-12-16', '16:13:49', 'arun', 'faculty', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(11, '2015-12-16', '16:14:05', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(12, '2015-12-16', '16:14:20', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(13, '2015-12-16', '16:15:41', 'initadmin', 'admin', 'Added Faculty - Pradeep Tomar', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(14, '2015-12-16', '16:17:07', 'initadmin', 'admin', 'Added Faculty - Sandeep Sharma', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(15, '2015-12-16', '16:17:32', 'initadmin', 'admin', 'Removed Faculty - Sandeep Sharma', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(16, '2015-12-16', '16:18:01', 'initadmin', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(17, '2015-12-16', '16:20:36', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(18, '2015-12-16', '16:21:21', 'initadmin', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is Second Admin</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(19, '2015-12-16', '16:22:09', 'secadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(20, '2015-12-16', '16:22:39', 'secadmin', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is JP Sharma</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(21, '2015-12-16', '16:24:32', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(22, '2015-12-16', '16:26:52', 'initadmin', 'admin', 'Removed Faculty - Arun Solanki', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(23, '2015-12-16', '16:27:32', 'initadmin', 'admin', 'Added Faculty - Arun Solanki', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(24, '2015-12-16', '16:28:33', 'initadmin', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(25, '2015-12-16', '16:28:59', '---', 'student', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(26, '2015-12-16', '16:35:32', '---', 'student', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(27, '2015-12-16', '16:36:11', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(28, '2015-12-16', '16:36:17', 'arun', 'faculty', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(29, '2015-12-16', '16:57:58', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(30, '2015-12-16', '16:58:07', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(31, '2015-12-16', '17:00:10', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(32, '2015-12-16', '17:20:21', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(33, '2015-12-16', '17:22:06', 'arun', 'faculty', 'Published excel Sheet-Id - 83', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(34, '2015-12-16', '17:22:33', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(35, '2015-12-16', '17:22:43', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(36, '2015-12-16', '17:25:52', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(37, '2015-12-17', '18:06:26', 'initadmin', 'admin', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(38, '2015-12-17', '19:58:05', 'initadmin', 'admin', 'Logged-Out', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(39, '2015-12-17', '19:58:18', 'initadmin', 'admin', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(40, '2015-12-17', '19:59:33', 'initadmin', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is Pradeep Tomar</b>', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(41, '2015-12-17', '22:05:31', 'ARUN', 'faculty', 'Uploaded excel Sheet-Id - 85', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(42, '2015-12-17', '22:06:15', 'ARUN', 'faculty', 'Uploaded excel Sheet-Id - 86', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(43, '2015-12-17', '22:11:10', 'ARUN', 'faculty', 'Uploaded excel Sheet-Id - 87', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(44, '2015-12-17', '22:14:01', 'ARUN', 'faculty', 'Uploaded excel Sheet-Id - 89', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(45, '2015-12-17', '22:18:29', 'ARUN', 'faculty', 'Uploaded excel Sheet-Id - 90', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(46, '2015-12-17', '22:39:37', 'ARUN', 'faculty', 'Uploaded excel Sheet-Id - 91', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(47, '2015-12-17', '22:41:59', 'ARUN', 'faculty', 'Uploaded excel Sheet-Id - 92', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(48, '2015-12-17', '22:43:42', 'ARUN', 'faculty', 'Uploaded excel Sheet-Id - 93', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(49, '2015-12-17', '22:58:17', 'ARUN', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(50, '2015-12-17', '22:59:37', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(51, '2015-12-17', '22:59:49', 'arun', 'faculty', 'Published excel Sheet-Id - 93', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(52, '2015-12-17', '22:59:53', 'arun', 'faculty', 'Published excel Sheet-Id - 87', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(53, '2015-12-17', '23:00:54', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 94', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(54, '2015-12-17', '23:01:03', 'arun', 'faculty', 'Published excel Sheet-Id - 94', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(55, '2015-12-17', '23:38:40', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 95', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(56, '2015-12-17', '23:44:29', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 96', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(57, '2015-12-17', '23:47:42', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 97', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(58, '2015-12-17', '23:50:14', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 98', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(59, '2015-12-17', '23:52:29', 'arun', 'faculty', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(60, '2015-12-17', '23:53:44', 'arun', 'faculty', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(61, '2015-12-17', '23:54:54', 'arun', 'faculty', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(62, '2015-12-17', '23:55:10', 'arun', 'faculty', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(63, '2015-12-17', '23:55:14', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(64, '2015-12-17', '23:56:00', 'ptomar', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(65, '2015-12-17', '23:56:23', 'ptomar', 'admin', 'Added Faculty - q', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(66, '2015-12-17', '23:56:26', 'ptomar', 'admin', 'Removed Faculty - q', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(67, '2015-12-17', '23:58:45', 'ptomar', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is initadmin</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(68, '2015-12-17', '23:58:56', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(69, '2015-12-17', '23:59:56', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(70, '2015-12-18', '09:47:34', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(71, '2015-12-18', '09:47:39', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(72, '2015-12-18', '09:47:49', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(73, '2015-12-18', '10:03:15', 'initadmin', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is Sandeep Sharma</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(74, '2015-12-18', '10:03:25', 'sandeep', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(75, '2015-12-18', '10:08:59', 'sandeep', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is ABC Sharma</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(76, '2015-12-18', '10:18:25', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(77, '2015-12-18', '10:18:44', 'initadmin', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is q</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(78, '2015-12-18', '10:22:31', 'sandeep', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(79, '2015-12-18', '10:23:25', 'sandeep', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is ASD</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(80, '2015-12-18', '10:26:06', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(81, '2015-12-18', '10:26:25', 'initadmin', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is q</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(82, '2015-12-18', '10:28:32', 'sandeep', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(83, '2015-12-18', '10:28:55', 'sandeep', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is q</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(84, '2015-12-20', '22:48:10', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(85, '2015-12-20', '23:03:46', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 99', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(86, '2015-12-20', '23:21:19', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(87, '2015-12-20', '23:21:46', 'amit', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(88, '2015-12-20', '23:31:22', 'amit', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(89, '2015-12-20', '23:31:46', 'amit', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(90, '2015-12-21', '07:33:57', '---', 'student', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(91, '2015-12-21', '07:34:25', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(92, '2015-12-27', '22:24:04', 'amit', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(93, '2015-12-27', '22:25:03', 'amit', 'faculty', 'Uploaded excel Sheet-Id - 100', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(94, '2015-12-27', '23:25:31', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(95, '2015-12-27', '23:26:04', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(96, '2015-12-27', '23:26:46', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 101', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(97, '2015-12-28', '09:59:39', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(98, '2015-12-28', '09:59:40', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(99, '2015-12-28', '10:01:11', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 102', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(100, '2015-12-28', '14:59:21', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(101, '2015-12-28', '15:20:23', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 104', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(102, '2015-12-28', '15:30:42', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 105', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(103, '2015-12-28', '15:32:21', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 106', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(104, '2015-12-28', '15:35:01', 'arun', 'faculty', 'Published excel Sheet-Id - 105', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(105, '2015-12-28', '16:54:43', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 107', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(106, '2015-12-28', '16:56:41', 'arun', 'faculty', 'Published excel Sheet-Id - 107', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(107, '2015-12-28', '16:57:03', 'arun', 'faculty', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(108, '2015-12-28', '16:57:08', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(109, '2015-12-28', '16:57:23', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(110, '2015-12-28', '16:58:21', 'initadmin', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(111, '2015-12-28', '16:58:53', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(112, '2015-12-28', '16:59:17', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(113, '2015-12-29', '11:06:53', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(114, '2015-12-29', '11:18:20', 'initadmin', 'admin', 'Added Faculty - Rama Thade', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(115, '2015-12-29', '11:21:50', 'rama', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(116, '2015-12-29', '11:21:59', 'rama', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(117, '2015-12-29', '11:22:08', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(118, '2015-12-29', '11:22:15', 'initadmin', 'admin', 'Removed Faculty - Rama Thade', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(119, '2015-12-29', '11:23:37', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(120, '2015-12-29', '11:28:29', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(121, '2015-12-29', '11:30:30', 'initadmin', 'admin', '<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is ABC Sharma</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(122, '2015-12-29', '11:30:58', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(123, '2015-12-29', '11:34:17', 'initadmin2', 'admin', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(124, '2015-12-29', '15:02:16', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(125, '2015-12-29', '16:34:28', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 109', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(126, '2015-12-29', '16:40:07', 'arun', 'faculty', 'Published excel Sheet-Id - 109', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(127, '2015-12-29', '16:42:26', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 110', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(128, '2015-12-29', '16:44:55', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 111', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(129, '2015-12-29', '16:45:15', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 112', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(130, '2015-12-29', '17:07:17', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(131, '2015-12-29', '17:07:34', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(132, '2015-12-29', '17:07:54', 'initadmin2', 'admin', 'Added Faculty - '';', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(133, '2015-12-29', '17:11:04', 'initadmin2', 'admin', 'Added Faculty - ''";', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(134, '2015-12-29', '17:12:14', 'initadmin2', 'admin', 'Added Faculty - '';', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(135, '2015-12-29', '17:34:50', 'initadmin2', 'admin', 'Added Faculty - <script>alert(''helloworld'');</script>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(136, '2015-12-29', '17:38:31', 'initadmin2', 'admin', 'Added Faculty - [removed]alert&#40;''helloworld''&#41;;[removed]', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(137, '2015-12-29', '17:44:12', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(138, '2015-12-29', '17:44:56', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 113', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(139, '2015-12-29', '20:13:09', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(140, '2015-12-29', '20:13:15', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(141, '2015-12-29', '20:13:26', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(142, '2015-12-29', '20:13:45', 'initadmin2', 'admin', 'Added Faculty - [removed]alert&amp;#40;&#039;helloworld&#039;&amp;#41;;[removed]', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(143, '2015-12-29', '20:14:41', 'initadmin2', 'admin', 'Added Faculty - [removed]alert&amp;#40;&#039;helloworld&#039;&amp;#41;;[removed]', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(144, '2015-12-29', '20:16:03', 'initadmin2', 'admin', 'Added Faculty - &lt;script&gt;alert(&#039;helloworld&#039;);&lt;/script&gt;', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(145, '2015-12-29', '20:19:40', 'initadmin2', 'admin', 'Added Faculty - [removed]alert&#40;''helloworld''&#41;;[removed]', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(146, '2015-12-29', '20:20:04', 'initadmin2', 'admin', 'Added Faculty - <b>rajat</b>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(147, '2015-12-29', '20:21:10', 'initadmin2', 'admin', 'Added Faculty - &lt;html&gt;&lt;i>rajat</i>&lt;html&gt;', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(148, '2015-12-29', '20:21:57', 'initadmin2', 'admin', 'Added Faculty - [removed]alert&#40;''helloworld''&#41;;[removed]', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(149, '2015-12-29', '20:22:31', 'initadmin2', 'admin', 'Added Faculty - <i>Rajat</i>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(150, '2015-12-29', '20:22:43', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(151, '2015-12-29', '20:24:18', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(152, '2015-12-29', '20:25:10', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 114', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(153, '2015-12-29', '20:26:02', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 115', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(154, '2015-12-29', '22:59:40', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(155, '2015-12-29', '23:00:04', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(156, '2015-12-29', '23:09:23', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(157, '2015-12-29', '23:09:29', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(158, '2015-12-29', '23:18:15', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(159, '2015-12-29', '23:19:14', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(160, '2015-12-29', '23:20:59', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(161, '2015-12-29', '23:21:26', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(162, '2015-12-29', '23:23:16', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(163, '2015-12-29', '23:23:29', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(164, '2015-12-29', '23:23:38', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(165, '2015-12-29', '23:23:43', 'initadmin2', 'admin', 'Removed Faculty - [removed]alert&#40;''helloworld''&#41;;[removed]', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(166, '2015-12-29', '23:23:46', 'initadmin2', 'admin', 'Removed Faculty - <i>Rajat</i>', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(167, '2015-12-29', '23:24:43', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(168, '2015-12-29', '23:24:49', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(169, '2015-12-29', '23:25:48', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(170, '2015-12-29', '23:30:16', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(171, '2015-12-29', '23:30:21', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(172, '2015-12-29', '23:33:29', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(173, '2015-12-29', '23:55:33', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(174, '2015-12-29', '23:55:47', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(175, '2015-12-29', '23:55:53', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(176, '2015-12-29', '23:56:31', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(177, '2015-12-30', '00:08:58', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(178, '2015-12-30', '00:12:12', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(180, '2015-12-30', '00:21:47', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(182, '2015-12-30', '00:32:26', '---', 'student', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(183, '2015-12-30', '00:32:37', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(184, '2015-12-30', '00:32:51', 'arun', 'faculty', 'Contacted Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(185, '2015-12-30', '00:33:30', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(186, '2015-12-30', '00:33:45', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(187, '2015-12-30', '00:36:04', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(188, '2015-12-30', '00:38:02', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(189, '2015-12-30', '00:40:15', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(190, '2015-12-30', '00:40:21', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(191, '2015-12-30', '00:57:50', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(192, '2015-12-30', '00:59:03', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(193, '2015-12-30', '01:00:38', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(194, '2015-12-30', '01:01:36', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(195, '2015-12-30', '01:01:55', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(196, '2015-12-30', '01:02:03', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(197, '2015-12-30', '01:10:41', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(198, '2015-12-30', '01:10:55', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(199, '2015-12-30', '01:11:41', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(200, '2015-12-30', '01:11:51', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(201, '2015-12-30', '01:12:02', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(202, '2015-12-30', '01:13:46', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(203, '2015-12-30', '01:14:06', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(204, '2015-12-30', '01:14:13', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(205, '2015-12-30', '01:14:22', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(206, '2015-12-30', '01:14:27', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(207, '2015-12-30', '01:14:40', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(208, '2015-12-30', '01:14:55', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(209, '2015-12-30', '01:15:02', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(210, '2015-12-30', '01:15:13', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(211, '2015-12-30', '01:15:57', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(212, '2015-12-30', '01:34:08', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(213, '2015-12-30', '01:34:15', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(214, '2015-12-30', '01:34:25', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(215, '2015-12-30', '01:36:32', 'initadmin2', 'admin', 'Added Faculty - ', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(216, '2015-12-30', '01:37:09', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(217, '2015-12-30', '01:37:16', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(218, '2015-12-30', '01:42:59', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(219, '2015-12-30', '01:43:30', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(220, '2015-12-30', '01:44:54', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(221, '2015-12-30', '01:53:41', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(222, '2015-12-30', '10:48:09', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(223, '2015-12-30', '10:52:54', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(224, '2015-12-30', '10:53:08', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(225, '2015-12-30', '10:54:09', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(226, '2015-12-30', '10:55:54', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(227, '2015-12-30', '10:57:13', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(228, '2015-12-30', '11:00:14', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(229, '2015-12-30', '11:05:10', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(230, '2015-12-30', '11:05:42', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(231, '2015-12-30', '11:06:02', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(232, '2015-12-30', '11:06:56', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(233, '2015-12-30', '11:07:15', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(234, '2015-12-30', '11:07:28', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(235, '2015-12-30', '11:09:05', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(236, '2015-12-30', '11:10:45', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(237, '2015-12-30', '11:12:58', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(238, '2015-12-30', '11:13:55', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(239, '2015-12-30', '11:14:03', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(240, '2015-12-30', '11:37:35', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(241, '2015-12-30', '11:37:41', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(242, '2015-12-30', '11:55:56', 'arun', 'faculty', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(243, '2015-12-30', '11:56:08', 'initadmin2', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(244, '2015-12-30', '11:56:13', 'initadmin2', 'admin', 'Logged-Out', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(245, '2015-12-30', '11:58:04', 'arun', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(246, '2015-12-31', '10:02:05', 'amit', 'faculty', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(247, '2015-12-31', '10:05:30', 'amit', 'faculty', 'Logged-Out', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(248, '2015-12-31', '10:05:41', 'initadmin2', 'admin', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(249, '2015-12-31', '10:05:44', 'initadmin2', 'admin', 'Removed Faculty - ', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(250, '2015-12-31', '10:06:08', 'initadmin2', 'admin', 'Added Faculty - ', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(251, '2015-12-31', '10:08:57', 'initadmin2', 'admin', 'Removed Faculty - ', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(252, '2015-12-31', '10:19:40', 'initadmin2', 'admin', 'Added Faculty - ', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(253, '2015-12-31', '10:20:13', 'initadmin2', 'admin', 'Removed Faculty - ', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(254, '2015-12-31', '10:21:11', 'initadmin2', 'admin', 'Added Faculty - ABC Sharma', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(255, '2015-12-31', '10:35:54', 'initadmin2', 'admin', 'Logged-Out', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(256, '2015-12-31', '10:36:14', 'initadmin2', 'admin', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(257, '2015-12-31', '10:50:02', 'initadmin2', 'admin', 'Logged-Out', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(258, '2015-12-31', '10:50:11', 'initadmin2', 'admin', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(259, '2015-12-31', '10:52:51', 'initadmin2', 'admin', 'Logged-Out', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(260, '2015-12-31', '10:52:59', 'initadmin2', 'admin', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(261, '2015-12-31', '10:53:05', 'initadmin2', 'admin', 'Logged-Out', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(262, '2015-12-31', '10:53:14', 'initadmin2', 'admin', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(263, '2015-12-31', '10:53:20', 'initadmin2', 'admin', 'Logged-Out', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(264, '2015-12-31', '10:53:54', 'amit', 'faculty', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(265, '2015-12-31', '11:02:19', 'amit', 'faculty', 'Logged-Out', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(266, '2015-12-31', '11:03:16', 'arun', 'faculty', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(267, '2015-12-31', '11:04:06', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 116', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(268, '2015-12-31', '11:04:35', 'arun', 'faculty', 'Uploaded excel Sheet-Id - 117', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(269, '2015-12-31', '11:43:05', '---', 'student', 'Logged-Out', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(270, '2015-12-31', '11:43:16', 'initadmin2', 'admin', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(271, '2015-12-31', '12:09:44', 'initadmin2', 'admin', 'Logged-Out', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(272, '2015-12-31', '12:10:03', 'arun', 'faculty', 'Logged-In', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(273, '2015-12-31', '17:17:15', 'amit', 'faculty', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(274, '2015-12-31', '22:17:05', 'amit', 'faculty', 'Uploaded excel Sheet-Id - 118', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(275, '2015-12-31', '22:59:35', 'amit', 'faculty', 'Uploaded excel Sheet-Id - 119', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(276, '2015-12-31', '23:09:46', 'amit', 'faculty', 'Uploaded excel Sheet-Id - 120', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(277, '2015-12-31', '23:11:19', 'amit', 'faculty', 'Published excel Sheet-Id - 120', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0'),
(278, '2015-12-31', '23:15:04', 'amit', 'faculty', 'Uploaded excel Sheet-Id - 121', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0');

-- --------------------------------------------------------

--
-- Table structure for table `rs_master`
--

CREATE TABLE IF NOT EXISTS `rs_master` (
  `School` varchar(20) NOT NULL,
  `School_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`School`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rs_master`
--

INSERT INTO `rs_master` (`School`, `School_Name`) VALUES
('sobsc', 'SCHOOL OF BUDDHIST STUDIES AND CIVILIZATION'),
('sobt', 'SCHOOL OF BIOTECHNOLOGY'),
('soe', 'SCHOOL OF ENGINEERING'),
('sohss', 'SCHOOL OF HUMANITIES AND SOCIAL SCIENCES'),
('soict', 'SCHOOL OF INFORMATION COMMUNICATION TECHNOLOGY'),
('soljg', 'SCHOOL OF LAW, JUSTICE AND GOVERNANCE'),
('som', 'SCHOOL OF MANAGEMENT'),
('sovsas', 'SCHOOL OF VOCATIONAL STUDIES AND APPLIED SCIENCES');

-- --------------------------------------------------------

--
-- Table structure for table `rs_messages`
--

CREATE TABLE IF NOT EXISTS `rs_messages` (
  `Message_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Message_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `rs_messages`
--

INSERT INTO `rs_messages` (`Message_Id`, `Name`, `Email`, `Message`, `Timestamp`) VALUES
(1, 'q', 'q', 'q', '2015-12-28 15:54:11'),
(2, 'w', 'w', 'w', '2015-12-28 15:54:11'),
(3, '', '', '', '2015-12-28 15:54:11'),
(4, '', '', '', '2015-12-28 15:54:11'),
(5, 's', 'a@a', 's', '2015-12-28 15:54:11'),
(6, 'qqq', 'qq@q', 'qq', '2015-12-28 15:54:11'),
(7, 'dddd', 'sandeep@gmail.com', 'd', '2015-12-28 16:57:03'),
(8, 'rajat', 'so@a', 'qwertttt', '2015-12-29 11:34:17'),
(9, '5', '5@5', '5', '2015-12-30 00:32:26'),
(10, '515', '515@515', '515', '2015-12-30 00:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `rs_school`
--

CREATE TABLE IF NOT EXISTS `rs_school` (
  `S_No` int(100) NOT NULL AUTO_INCREMENT,
  `Roll_No` varchar(12) NOT NULL,
  `S_M` varchar(10) NOT NULL,
  `M_T` varchar(10) NOT NULL,
  `E_T` varchar(10) NOT NULL,
  `Total` varchar(10) NOT NULL,
  `Grades` varchar(5) NOT NULL,
  `School` varchar(10) NOT NULL,
  `Department` varchar(60) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `Sheet_Id` int(11) NOT NULL,
  `Published` int(11) NOT NULL DEFAULT '0',
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`S_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2980 ;

--
-- Dumping data for table `rs_school`
--

INSERT INTO `rs_school` (`S_No`, `Roll_No`, `S_M`, `M_T`, `E_T`, `Total`, `Grades`, `School`, `Department`, `Semester`, `Course_Code`, `Sheet_Id`, `Published`, `Timestamp`) VALUES
(2844, '13/IEC/001', '20', '20', '24', '64', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2845, '13/IEC/034', '12', '17', '15', '44', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2846, '13/IEC/002', '20', '21', '42', '83', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2847, '13/IEC/036', '6', '7', '8', '21', 'F', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2848, '13/IEC/003', '6', '19', '23', '48', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2849, '13/IEC/037', '12', '22', '27', '61', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2850, '13/IEC/004', '22', '22', '42', '86', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2851, '13/IEC/038', '14', '8', '14', '36', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2852, '13/IEC/005', '23', '14', '23', '60', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2853, '13/IEC/040', '16', '17', '19', '52', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2854, '13/IEC/006', '12', '10', '15', '37', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2855, '13/IEC/041', '14', '21', '30', '65', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2856, '13/IEC/007', '23', '21', '36', '80', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2857, '13/IEC/042', '18', '19', '32', '69', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2858, '13/IEC/008', '10', '21', '33', '64', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2859, '13/IEC/043', '16', '21', '36', '73', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2860, '13/IEC/009', '12', '17', '19', '48', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2861, '13/IEC/044', '14', '15', '16', '45', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2862, '13/IEC/010', '22', '22', '46', '90', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2863, '13/IEC/045', '18', '20', '20', '58', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2864, '13/IEC/011', '10', '16', '25', '51', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2865, '13/IEC/047', '4', '21', '48', '73', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2866, '13/IEC/012', '4', '9', '11', '24', 'F', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2867, '13/IEC/048', '10', '17', '30', '57', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2868, '13/IEC/013', '18', '17', '29', '64', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2869, '13/IEC/049', '24', '21', '39', '84', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2870, '13/IEC/014', '20', '18', '34', '72', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2871, '13/IEC/050', '22', '19', '39', '80', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2872, '13/IEC/015', '20', '24', '48', '92', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2873, '13/IEC/051', '20', '21', '40', '81', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2874, '13/IEC/016', '20', '20', '23', '63', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2875, '13/IEC/052', '17', '21', '31', '69', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2876, '13/IEC/017', '12', '8', '15', '35', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2877, '13/IEC/053', '14', '13', '16', '43', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2878, '13/IEC/018', '18', '10', '19', '47', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2879, '13/IEC/054', '14', '20', '21', '55', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2880, '13/IEC/019', '22', '18', '45', '85', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2881, '13/IEC/055', '20', '20', '40', '80', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2882, '13/IEC/020', '22', '22', '30', '74', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2883, '13/IEC/056', '15', '21', '19', '55', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2884, '13/IEC/021', '12', '11', '19', '42', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2885, '13/IEC/057', '12', '9', '15', '36', 'C', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2886, '13/IEC/022', '18', '19', '25', '62', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2887, '13/IEC/058', '8', '20', '22', '50', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2888, '13/IEC/023', '22', '18', '32', '72', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2889, '13/IEC/059', '20', '21', '46', '87', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2890, '13/IEC/025', '20', '17', '26', '63', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2891, '13/IEC/060', '20', '21', '45', '86', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2892, '13/IEC/026', '20', '20', '35', '75', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2893, '13/IEC/061', '14', '21', '31', '66', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2894, '13/IEC/027', '20', '16', '14', '50', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2895, '13/IEC/062', '14', '14', '29', '57', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2896, '13/IEC/028', '13', '20', '25', '58', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2897, '13/IEC/063', '16', '20', '38', '74', 'A', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:45'),
(2898, '13/IEC/029', '22', '21', '38', '81', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2899, '12/IEC/019', '0', '14', 'Absent', '14', 'F', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2900, '13/IEC/032', '23', '21', '36', '80', 'Ex', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2901, '12/IEC/039', '0', '13', 'Absent', '13', 'F', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2902, '13/IEC/033', '14', '22', '19', '55', 'B', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2903, '', '', '', '', '0', '', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2904, '', '', '', '', '', '', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2905, '', '', '', '', '', '', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2906, '', '', '', '', '', '', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2907, '', '', '', '', '', '', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2908, 'Date:', '', '', '', '', '', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2909, 'Signature:', '', '', '', '', '', 'sohss', '5', '5', '5', 120, 1, '2015-12-31 23:09:46'),
(2910, '13/IEC/001', '29', '---', '39', '68', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2911, '13/IEC/034', '28', '---', '30', '58', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2912, '13/IEC/002', '39', '---', '48', '87', 'Ex', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2913, '13/IEC/036', '24', '---', '5', '29', 'F', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2914, '13/IEC/003', '27', '---', '20', '47', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2915, '13/IEC/037', '20', '---', '37', '57', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2916, '13/IEC/004', '36', '---', '37', '73', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2917, '13/IEC/038', '12', '---', '30', '42', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2918, '13/IEC/005', '36', '---', '20', '56', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2919, '13/IEC/040', '32', '---', '40', '72', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2920, '13/IEC/006', '33', '---', '11', '44', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2921, '13/IEC/041', '28', '---', '42', '70', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2922, '13/IEC/007', '36', '---', '40', '76', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2923, '13/IEC/042', '36', '---', '46', '82', 'Ex', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2924, '13/IEC/008', '26', '---', '24', '50', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2925, '13/IEC/043', '30', '---', '41', '71', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2926, '13/IEC/009', '21', '---', '36', '57', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2927, '13/IEC/044', '14', '---', '30', '44', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2928, '13/IEC/010', '46', '---', '48', '94', 'Ex', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2929, '13/IEC/045', '24', '---', '20', '44', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2930, '13/IEC/011', '29', '---', '22', '51', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2931, '13/IEC/047', '34', '---', '35', '69', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2932, '13/IEC/012', '28', '---', '18', '46', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2933, '13/IEC/048', '32', '---', '38', '70', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2934, '13/IEC/013', '35', '---', '47', '82', 'Ex', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2935, '13/IEC/049', '42', '---', '40', '82', 'Ex', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2936, '13/IEC/014', '34', '---', '36', '70', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2937, '13/IEC/050', '36', '---', '37', '73', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2938, '13/IEC/015', '34', '---', '46', '80', 'Ex', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2939, '13/IEC/051', '30', '---', '47', '77', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2940, '13/IEC/016', '21', '---', '25', '46', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2941, '13/IEC/052', '22', '---', '45', '67', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2942, '13/IEC/017', '24', '---', '15', '39', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2943, '13/IEC/053', '20', '---', '20', '40', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2944, '13/IEC/018', '28', '---', '12', '40', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2945, '13/IEC/054', '37', '---', '45', '82', 'Ex', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2946, '13/IEC/019', '21', '---', '37', '58', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2947, '13/IEC/055', '34', '---', '48', '82', 'Ex', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2948, '13/IEC/020', '29', '---', '21', '50', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2949, '13/IEC/056', '25', '---', '17', '42', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2950, '13/IEC/021', '23', '---', '30', '53', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2951, '13/IEC/057', '25', '---', '10', '35', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2952, '13/IEC/022', '30', '---', '47', '77', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2953, '13/IEC/058', '30', '---', '30', '60', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2954, '13/IEC/023', '32', '---', '47', '79', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2955, '13/IEC/059', '28', '---', '48', '76', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2956, '13/IEC/025', '34', '---', '28', '62', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2957, '13/IEC/060', '46', '---', '48', '94', 'Ex', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2958, '13/IEC/026', '39', '---', '35', '74', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2959, '13/IEC/061', '35', '---', '45', '80', 'Ex', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2960, '13/IEC/027', '25', '---', '20', '45', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2961, '13/IEC/062', '27', '---', '40', '67', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2962, '13/IEC/028', '28', '---', '22', '50', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2963, '13/IEC/063', '26', '---', '33', '59', 'B', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2964, '13/IEC/029', '34', '---', '41', '75', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2965, '12/IEC/019', '0', '---', 'Absent', '0', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2966, '13/IEC/032', '34', '---', '36', '70', 'A', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2967, '12/IEC/039', '0', '---', 'Absent', '0', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2968, '13/IEC/033', '20', '---', '20', '40', 'C', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2969, '', '', '---', '', '0', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2970, '', '', '---', '', '', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2971, '', '', '---', '', '', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2972, '', '', '---', '', '', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2973, '', '', '---', '', '', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2974, '', '', '---', '', '', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2975, 'Signature:', '', '---', '', '', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2976, '', '', '---', '', '', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2977, '', '', '---', '', '', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2978, '', '', '---', '', '', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04'),
(2979, 'Date:', '', '---', '', '', '', 'soict', '5', '5', '5', 121, 0, '2015-12-31 23:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `rs_users`
--

CREATE TABLE IF NOT EXISTS `rs_users` (
  `User_Id` int(5) NOT NULL AUTO_INCREMENT,
  `School` varchar(20) NOT NULL,
  `Roll_No` varchar(20) NOT NULL,
  `Password` varchar(60) NOT NULL,
  PRIMARY KEY (`User_Id`),
  KEY `College_Id` (`School`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `rs_users`
--

INSERT INTO `rs_users` (`User_Id`, `School`, `Roll_No`, `Password`) VALUES
(69, 'soict', '13ics047', '$2y$10$/wYD1GrI4/FqM4oDsZTwQugaam5mCRQd2u.hKP7z9IFCmzUOy7zBa'),
(72, 'soict', '13ics022', '$2y$10$ggHqI/IT4a8/frO8wGnWyufA7KX/tSKfAaKi.k5KMI0ti8z51H2lW'),
(75, 'soict', '13ics015', '$2y$10$rRdBy/6EdciQzCjRXwBiKOUtj9AULZdUmZ1EQI.OvBsRz05Ob0.xO'),
(76, 'soe', '13ime047', '$2y$10$1g.Yr4GrcUm1WYabzcGktOb/xiLWb3cOdUwhyWhqw64SjbJUPmDES'),
(77, 'sovsas', '13ics002', '$2y$10$ivPr.T3DAltHWsfVwaTPm.lMzhxYqEFXxCGc4dJmy0EgleVgySYVm'),
(78, 'som', '13som035', '$2y$10$F0pLopfFITEilRQ7LW0NxeRne6sNeITJci0oqxzmwz/oq8fy6VdfC'),
(79, 'sovsas', '13sovsas035', '$2y$10$1XAiY7HciAE8GLmKUUOLc.qs.4GAPncE0B6tKW02ER9cppWQeL3Uu'),
(80, 'Soljg', '13sol035', '$2y$10$GVUhzVA68vYfbxpT6pGuMOhPnKz2.hgzP6KXqKnlOFJHbxTTX4VZS'),
(81, 'Soict', '13ics035', '$2y$10$60i/Uv0svw5L8jO9XwzDr.Gl.eXzzFu6fbnnMhJ2U7.P8O5sghSQu'),
(82, 'Soict', '13/PET/025', '$2y$10$uU8j7uIygRAwJ9QNXYgXo.yEzCrtZq4FIP/QOyxpOLNaAxoDABo7m'),
(83, 'Soict', '13/ICS/047', '$2y$10$3pv7HAB6ScnysQMqS59rCe86868iJZ5ez2pZ.ELsYgQ.D5REtn7EC');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
