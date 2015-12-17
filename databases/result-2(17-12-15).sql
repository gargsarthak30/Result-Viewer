-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2015 at 05:53 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rs_admin`
--

INSERT INTO `rs_admin` (`Admin_Id`, `Username`, `Password`, `Full_Name`, `Designation`, `Email`, `Start_Date`, `End_Date`, `Faculty_Created`, `Faculty_Removed`, `Flag`) VALUES
(6, 'ptomar', '$2y$10$DDRfHt/ZOYyiw8wbAxOsQOC4Q4vFMBABgxIZsPymdDwXYmIruSTNC', 'Pradeep Tomar', '', 'ptomar@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1);

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
  PRIMARY KEY (`Sheet_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `rs_excel_details`
--

INSERT INTO `rs_excel_details` (`Sheet_Id`, `Faculty_Id`, `School`, `Semester`, `Department`, `Course_Code`, `Published`) VALUES
(79, 6, 'soict', '', '', '', 1),
(80, 6, 'soict', '', '', '', 1),
(81, 5, '$school', '$sem', '$department', '$course', 0),
(82, 5, '$school', '$sem', '$department', '$course', 0),
(83, 6, 'soict', '', '', '', 1),
(84, 5, '', '', '', '', 0),
(85, 6, 'sobsc', '9', 'qwerty', 'asdfg', 0),
(86, 6, 'sobsc', '9', 'qwerty', 'asdfg', 0),
(87, 6, 'sobsc', '9', 'qwerty', 'asdfg', 0),
(88, 6, 'sobsc', '1', '7', '4', 0),
(89, 6, 'sobsc', '1', '7', '4', 0),
(90, 6, 'sobsc', '3', '1', '2', 0);

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
  PRIMARY KEY (`Faculty_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `rs_faculty`
--

INSERT INTO `rs_faculty` (`Faculty_Id`, `Full_Name`, `Username`, `Password`, `Email`) VALUES
(6, 'Arun Solanki', 'arun', '$2y$10$2tzulKRfTUi5qVc7dGsDn.z/y6Q3WwMNK7FIWaZnRrg4GoS.D7YvS', 'arun.solanki@gmail.com'),
(7, 'Amit K. Awasthi', 'amit', '$2y$10$2tzulKRfTUi5qVc7dGsDn.z/y6Q3WwMNK7FIWaZnRrg4GoS.D7YvS', 'amit.awasthik@gmail.com');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

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
(45, '2015-12-17', '22:18:29', 'ARUN', 'faculty', 'Uploaded excel Sheet-Id - 90', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0');

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
  PRIMARY KEY (`Message_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rs_messages`
--

INSERT INTO `rs_messages` (`Message_Id`, `Name`, `Email`, `Message`) VALUES
(1, 'q', 'q', 'q'),
(2, 'w', 'w', 'w');

-- --------------------------------------------------------

--
-- Table structure for table `rs_school`
--

CREATE TABLE IF NOT EXISTS `rs_school` (
  `S_No` int(100) NOT NULL AUTO_INCREMENT,
  `Roll_No` varchar(12) NOT NULL,
  `S_M` int(5) NOT NULL,
  `M_T` int(5) NOT NULL,
  `E_T` int(5) NOT NULL,
  `Total` int(5) NOT NULL,
  `Grades` varchar(5) NOT NULL,
  `School` varchar(10) NOT NULL,
  `Department` varchar(60) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `Sheet_Id` int(11) NOT NULL,
  `Published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`S_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1087 ;

--
-- Dumping data for table `rs_school`
--

INSERT INTO `rs_school` (`S_No`, `Roll_No`, `S_M`, `M_T`, `E_T`, `Total`, `Grades`, `School`, `Department`, `Semester`, `Course_Code`, `Sheet_Id`, `Published`) VALUES
(1021, '13/IEC/001', 20, 20, 17, 64, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1022, '13/IEC/034', 12, 17, 15, 44, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1023, '13/IEC/002', 20, 21, 7, 83, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1024, '13/IEC/036', 6, 7, 8, 21, 'F', 'sobsc', '1', '3', '2', 90, 0),
(1025, '13/IEC/003', 6, 19, 22, 48, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1026, '13/IEC/037', 12, 22, 27, 61, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1027, '13/IEC/004', 22, 22, 8, 86, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1028, '13/IEC/038', 14, 8, 14, 36, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1029, '13/IEC/005', 23, 14, 17, 60, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1030, '13/IEC/040', 16, 17, 19, 52, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1031, '13/IEC/006', 12, 10, 21, 37, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1032, '13/IEC/041', 14, 21, 30, 65, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1033, '13/IEC/007', 23, 21, 19, 80, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1034, '13/IEC/042', 18, 19, 32, 69, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1035, '13/IEC/008', 10, 21, 21, 64, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1036, '13/IEC/043', 16, 21, 36, 73, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1037, '13/IEC/009', 12, 17, 15, 48, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1038, '13/IEC/044', 14, 15, 16, 45, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1039, '13/IEC/010', 22, 22, 20, 90, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1040, '13/IEC/045', 18, 20, 20, 58, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1041, '13/IEC/011', 10, 16, 21, 51, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1042, '13/IEC/047', 4, 21, 48, 73, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1043, '13/IEC/012', 4, 9, 17, 24, 'F', 'sobsc', '1', '3', '2', 90, 0),
(1044, '13/IEC/048', 10, 17, 30, 57, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1045, '13/IEC/013', 18, 17, 21, 64, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1046, '13/IEC/049', 24, 21, 39, 84, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1047, '13/IEC/014', 20, 18, 19, 72, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1048, '13/IEC/050', 22, 19, 39, 80, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1049, '13/IEC/015', 20, 24, 21, 92, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1050, '13/IEC/051', 20, 21, 40, 81, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1051, '13/IEC/016', 20, 20, 21, 63, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1052, '13/IEC/052', 17, 21, 31, 69, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1053, '13/IEC/017', 12, 8, 13, 35, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1054, '13/IEC/053', 14, 13, 16, 43, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1055, '13/IEC/018', 18, 10, 20, 47, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1056, '13/IEC/054', 14, 20, 21, 55, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1057, '13/IEC/019', 22, 18, 20, 85, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1058, '13/IEC/055', 20, 20, 40, 80, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1059, '13/IEC/020', 22, 22, 21, 74, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1060, '13/IEC/056', 15, 21, 19, 55, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1061, '13/IEC/021', 12, 11, 9, 42, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1062, '13/IEC/057', 12, 9, 15, 36, 'C', 'sobsc', '1', '3', '2', 90, 0),
(1063, '13/IEC/022', 18, 19, 20, 62, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1064, '13/IEC/058', 8, 20, 22, 50, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1065, '13/IEC/023', 22, 18, 21, 72, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1066, '13/IEC/059', 20, 21, 46, 87, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1067, '13/IEC/025', 20, 17, 21, 63, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1068, '13/IEC/060', 20, 21, 45, 86, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1069, '13/IEC/026', 20, 20, 21, 75, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1070, '13/IEC/061', 14, 21, 31, 66, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1071, '13/IEC/027', 20, 16, 14, 50, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1072, '13/IEC/062', 14, 14, 29, 57, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1073, '13/IEC/028', 13, 20, 20, 58, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1074, '13/IEC/063', 16, 20, 38, 74, 'A', 'sobsc', '1', '3', '2', 90, 0),
(1075, '13/IEC/029', 22, 21, 14, 81, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1076, '12/IEC/019', 0, 14, 0, 14, 'F', 'sobsc', '1', '3', '2', 90, 0),
(1077, '13/IEC/032', 23, 21, 13, 80, 'Ex', 'sobsc', '1', '3', '2', 90, 0),
(1078, '12/IEC/039', 0, 13, 0, 13, 'F', 'sobsc', '1', '3', '2', 90, 0),
(1079, '13/IEC/033', 14, 22, 0, 55, 'B', 'sobsc', '1', '3', '2', 90, 0),
(1080, '', 0, 0, 0, 0, '', 'sobsc', '1', '3', '2', 90, 0),
(1081, '', 0, 0, 0, 0, '', 'sobsc', '1', '3', '2', 90, 0),
(1082, '', 0, 0, 0, 0, '', 'sobsc', '1', '3', '2', 90, 0),
(1083, '', 0, 0, 0, 0, '', 'sobsc', '1', '3', '2', 90, 0),
(1084, '', 0, 0, 0, 0, '', 'sobsc', '1', '3', '2', 90, 0),
(1085, 'Date:', 0, 0, 0, 0, '', 'sobsc', '1', '3', '2', 90, 0),
(1086, 'Signature:', 0, 0, 0, 0, '', 'sobsc', '1', '3', '2', 90, 0);

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
