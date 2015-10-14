-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2015 at 05:04 PM
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
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_ID` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Name`, `Username`, `Password`, `Email`) VALUES
(1, 'admin', 'admin', '$2y$10$tmVdqmG8/omqb2pWmCMn.u9O9WDcBUkcMeh1qO.BR8xmPTM.abZxe', ''),
(2, 'xyz', 'xyz1', '$2y$10$195G8gD/K9jZMKzXMaoUsu7PiMsjeMghE58KIlhY2qOwDK0hZYspa', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `excel_details`
--

CREATE TABLE IF NOT EXISTS `excel_details` (
  `Admin_ID` int(5) NOT NULL,
  `College_Id` varchar(10) NOT NULL,
  `Semester` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE IF NOT EXISTS `master` (
  `College_Id` varchar(20) NOT NULL,
  `College_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`College_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`College_Id`, `College_Name`) VALUES
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
-- Table structure for table `sobsc`
--

CREATE TABLE IF NOT EXISTS `sobsc` (
  `S_No` int(5) NOT NULL,
  `Roll_No` varchar(12) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL,
  `Total` int(5) NOT NULL,
  `Grades` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sobsc`
--

INSERT INTO `sobsc` (`S_No`, `Roll_No`, `S-M`, `M-T`, `E-T`, `Total`, `Grades`, `Semester`, `Course_Code`) VALUES
(1, '13/IEC/001', 20, 20, 24, 64, 'B', '4', 'ma-202'),
(2, '13/IEC/002', 20, 21, 42, 83, 'Ex', '4', 'ma-202'),
(3, '13/IEC/003', 6, 19, 23, 48, 'C', '4', 'ma-202'),
(4, '13/IEC/004', 22, 22, 42, 86, 'Ex', '4', 'ma-202'),
(5, '13/IEC/005', 23, 14, 23, 60, 'B', '4', 'ma-202'),
(6, '13/IEC/006', 12, 10, 15, 37, 'C', '4', 'ma-202'),
(7, '13/IEC/007', 23, 21, 36, 80, 'Ex', '4', 'ma-202'),
(8, '13/IEC/008', 10, 21, 33, 64, 'B', '4', 'ma-202'),
(9, '13/IEC/009', 12, 17, 19, 48, 'C', '4', 'ma-202'),
(10, '13/IEC/010', 22, 22, 46, 90, 'Ex', '4', 'ma-202'),
(11, '13/IEC/011', 10, 16, 25, 51, 'B', '4', 'ma-202'),
(12, '13/IEC/012', 4, 9, 11, 24, 'F', '4', 'ma-202'),
(13, '13/IEC/013', 18, 17, 29, 64, 'B', '4', 'ma-202'),
(14, '13/IEC/014', 20, 18, 34, 72, 'A', '4', 'ma-202'),
(15, '13/IEC/015', 20, 24, 48, 92, 'Ex', '4', 'ma-202'),
(16, '13/IEC/016', 20, 20, 23, 63, 'B', '4', 'ma-202'),
(17, '13/IEC/017', 12, 8, 15, 35, 'C', '4', 'ma-202'),
(18, '13/IEC/018', 18, 10, 19, 47, 'C', '4', 'ma-202'),
(19, '13/IEC/019', 22, 18, 45, 85, 'Ex', '4', 'ma-202'),
(20, '13/IEC/020', 22, 22, 30, 74, 'A', '4', 'ma-202'),
(21, '13/IEC/021', 12, 11, 19, 42, 'C', '4', 'ma-202'),
(22, '13/IEC/022', 18, 19, 25, 62, 'B', '4', 'ma-202'),
(23, '13/IEC/023', 22, 18, 32, 72, 'A', '4', 'ma-202'),
(24, '13/IEC/025', 20, 17, 26, 63, 'B', '4', 'ma-202'),
(25, '13/IEC/026', 20, 20, 35, 75, 'A', '4', 'ma-202'),
(26, '13/IEC/027', 20, 16, 14, 50, 'B', '4', 'ma-202'),
(27, '13/IEC/028', 13, 20, 25, 58, 'B', '4', 'ma-202'),
(28, '13/IEC/029', 22, 21, 38, 81, 'Ex', '4', 'ma-202'),
(29, '13/IEC/032', 23, 21, 36, 80, 'Ex', '4', 'ma-202'),
(30, '13/IEC/033', 14, 22, 19, 55, 'B', '4', 'ma-202');

-- --------------------------------------------------------

--
-- Table structure for table `sobt`
--

CREATE TABLE IF NOT EXISTS `sobt` (
  `S_No` int(11) NOT NULL,
  `Roll_No` varchar(12) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL,
  `Total` int(5) NOT NULL,
  `Grades` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sobt`
--

INSERT INTO `sobt` (`S_No`, `Roll_No`, `S-M`, `M-T`, `E-T`, `Total`, `Grades`, `Semester`, `Course_Code`) VALUES
(1, '13/IEC/001', 20, 20, 24, 64, 'B', '4', 'ma-202'),
(2, '13/IEC/002', 20, 21, 42, 83, 'Ex', '4', 'ma-202'),
(3, '13/IEC/003', 6, 19, 23, 48, 'C', '4', 'ma-202'),
(4, '13/IEC/004', 22, 22, 42, 86, 'Ex', '4', 'ma-202'),
(5, '13/IEC/005', 23, 14, 23, 60, 'B', '4', 'ma-202'),
(6, '13/IEC/006', 12, 10, 15, 37, 'C', '4', 'ma-202'),
(7, '13/IEC/007', 23, 21, 36, 80, 'Ex', '4', 'ma-202'),
(8, '13/IEC/008', 10, 21, 33, 64, 'B', '4', 'ma-202'),
(9, '13/IEC/009', 12, 17, 19, 48, 'C', '4', 'ma-202'),
(10, '13/IEC/010', 22, 22, 46, 90, 'Ex', '4', 'ma-202'),
(11, '13/IEC/011', 10, 16, 25, 51, 'B', '4', 'ma-202'),
(12, '13/IEC/012', 4, 9, 11, 24, 'F', '4', 'ma-202'),
(13, '13/IEC/013', 18, 17, 29, 64, 'B', '4', 'ma-202'),
(14, '13/IEC/014', 20, 18, 34, 72, 'A', '4', 'ma-202'),
(15, '13/IEC/015', 20, 24, 48, 92, 'Ex', '4', 'ma-202'),
(16, '13/IEC/016', 20, 20, 23, 63, 'B', '4', 'ma-202'),
(17, '13/IEC/017', 12, 8, 15, 35, 'C', '4', 'ma-202'),
(18, '13/IEC/018', 18, 10, 19, 47, 'C', '4', 'ma-202'),
(19, '13/IEC/019', 22, 18, 45, 85, 'Ex', '4', 'ma-202'),
(20, '13/IEC/020', 22, 22, 30, 74, 'A', '4', 'ma-202'),
(21, '13/IEC/021', 12, 11, 19, 42, 'C', '4', 'ma-202'),
(22, '13/IEC/022', 18, 19, 25, 62, 'B', '4', 'ma-202'),
(23, '13/IEC/023', 22, 18, 32, 72, 'A', '4', 'ma-202'),
(24, '13/IEC/025', 20, 17, 26, 63, 'B', '4', 'ma-202'),
(25, '13/IEC/026', 20, 20, 35, 75, 'A', '4', 'ma-202'),
(26, '13/IEC/027', 20, 16, 14, 50, 'B', '4', 'ma-202'),
(27, '13/IEC/028', 13, 20, 25, 58, 'B', '4', 'ma-202'),
(28, '13/IEC/029', 22, 21, 38, 81, 'Ex', '4', 'ma-202'),
(29, '13/IEC/032', 23, 21, 36, 80, 'Ex', '4', 'ma-202'),
(30, '13/IEC/033', 14, 22, 19, 55, 'B', '4', 'ma-202');

-- --------------------------------------------------------

--
-- Table structure for table `soe`
--

CREATE TABLE IF NOT EXISTS `soe` (
  `S_No` int(5) NOT NULL,
  `Roll_No` varchar(12) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL,
  `Total` int(5) NOT NULL,
  `Grades` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soe`
--

INSERT INTO `soe` (`S_No`, `Roll_No`, `S-M`, `M-T`, `E-T`, `Total`, `Grades`, `Semester`, `Course_Code`) VALUES
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(0, '', 0, 0, 0, 0, '', '4', 'ma-202'),
(1, '13/IEC/001', 20, 20, 24, 64, 'B', '4', 'ma-202'),
(2, '13/IEC/002', 20, 21, 42, 83, 'Ex', '4', 'ma-202'),
(3, '13/IEC/003', 6, 19, 23, 48, 'C', '4', 'ma-202'),
(4, '13/IEC/004', 22, 22, 42, 86, 'Ex', '4', 'ma-202'),
(5, '13/IEC/005', 23, 14, 23, 60, 'B', '4', 'ma-202'),
(6, '13/IEC/006', 12, 10, 15, 37, 'C', '4', 'ma-202'),
(7, '13/IEC/007', 23, 21, 36, 80, 'Ex', '4', 'ma-202'),
(8, '13/IEC/008', 10, 21, 33, 64, 'B', '4', 'ma-202'),
(9, '13/IEC/009', 12, 17, 19, 48, 'C', '4', 'ma-202'),
(10, '13/IEC/010', 22, 22, 46, 90, 'Ex', '4', 'ma-202'),
(11, '13/IEC/011', 10, 16, 25, 51, 'B', '4', 'ma-202'),
(12, '13/IEC/012', 4, 9, 11, 24, 'F', '4', 'ma-202'),
(13, '13/IEC/013', 18, 17, 29, 64, 'B', '4', 'ma-202'),
(14, '13/IEC/014', 20, 18, 34, 72, 'A', '4', 'ma-202'),
(15, '13/IEC/015', 20, 24, 48, 92, 'Ex', '4', 'ma-202'),
(16, '13/IEC/016', 20, 20, 23, 63, 'B', '4', 'ma-202'),
(17, '13/IEC/017', 12, 8, 15, 35, 'C', '4', 'ma-202'),
(18, '13/IEC/018', 18, 10, 19, 47, 'C', '4', 'ma-202'),
(19, '13/IEC/019', 22, 18, 45, 85, 'Ex', '4', 'ma-202'),
(20, '13/IEC/020', 22, 22, 30, 74, 'A', '4', 'ma-202'),
(21, '13/IEC/021', 12, 11, 19, 42, 'C', '4', 'ma-202'),
(22, '13/IEC/022', 18, 19, 25, 62, 'B', '4', 'ma-202'),
(23, '13/IEC/023', 22, 18, 32, 72, 'A', '4', 'ma-202'),
(24, '13/IEC/025', 20, 17, 26, 63, 'B', '4', 'ma-202'),
(25, '13/IEC/026', 20, 20, 35, 75, 'A', '4', 'ma-202'),
(26, '13/IEC/027', 20, 16, 14, 50, 'B', '4', 'ma-202'),
(27, '13/IEC/028', 13, 20, 25, 58, 'B', '4', 'ma-202'),
(28, '13/IEC/029', 22, 21, 38, 81, 'Ex', '4', 'ma-202'),
(29, '13/IEC/032', 23, 21, 36, 80, 'Ex', '4', 'ma-202'),
(30, '13/IEC/033', 14, 22, 19, 55, 'B', '4', 'ma-202');

-- --------------------------------------------------------

--
-- Table structure for table `sohss`
--

CREATE TABLE IF NOT EXISTS `sohss` (
  `S_No` int(5) NOT NULL,
  `Roll_No` varchar(12) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL,
  `Total` int(5) NOT NULL,
  `Grades` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Couse_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soict`
--

CREATE TABLE IF NOT EXISTS `soict` (
  `S_No` varchar(100) NOT NULL,
  `Roll_No` varchar(100) NOT NULL,
  `S-M` varchar(100) NOT NULL,
  `M-T` varchar(100) NOT NULL,
  `E-T` varchar(100) NOT NULL,
  `Total` varchar(100) NOT NULL,
  `Grades` varchar(100) NOT NULL,
  `Semester` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soict`
--

INSERT INTO `soict` (`S_No`, `Roll_No`, `S-M`, `M-T`, `E-T`, `Total`, `Grades`, `Semester`) VALUES
('1', '13/IEC/001', '20', '20', '24', '64', 'B', '4'),
('2', '13/IEC/002', '20', '21', '42', '83', 'Ex', '4'),
('3', '13/IEC/003', '6', '19', '23', '48', 'C', '4'),
('4', '13/IEC/004', '22', '22', '42', '86', 'Ex', '4'),
('5', '13/IEC/005', '23', '14', '23', '60', 'B', '4'),
('6', '13/IEC/006', '12', '10', '15', '37', 'C', '4'),
('7', '13/IEC/007', '23', '21', '36', '80', 'Ex', '4'),
('8', '13/IEC/008', '10', '21', '33', '64', 'B', '4'),
('9', '13/IEC/009', '12', '17', '19', '48', 'C', '4'),
('10', '13/IEC/010', '22', '22', '46', '90', 'Ex', '4'),
('11', '13/IEC/011', '10', '16', '25', '51', 'B', '4'),
('12', '13/IEC/012', '4', '9', '11', '24', 'F', '4'),
('13', '13/IEC/013', '18', '17', '29', '64', 'B', '4'),
('14', '13/IEC/014', '20', '18', '34', '72', 'A', '4'),
('15', '13/IEC/015', '20', '24', '48', '92', 'Ex', '4'),
('16', '13/IEC/016', '20', '20', '23', '63', 'B', '4'),
('17', '13/IEC/017', '12', '8', '15', '35', 'C', '4'),
('18', '13/IEC/018', '18', '10', '19', '47', 'C', '4'),
('19', '13/IEC/019', '22', '18', '45', '85', 'Ex', '4'),
('20', '13/IEC/020', '22', '22', '30', '74', 'A', '4'),
('21', '13/IEC/021', '12', '11', '19', '42', 'C', '4'),
('22', '13/IEC/022', '18', '19', '25', '62', 'B', '4'),
('23', '13/IEC/023', '22', '18', '32', '72', 'A', '4'),
('24', '13/IEC/025', '20', '17', '26', '63', 'B', '4'),
('25', '13/IEC/026', '20', '20', '35', '75', 'A', '4'),
('26', '13/IEC/027', '20', '16', '14', '50', 'B', '4'),
('27', '13/IEC/028', '13', '20', '25', '58', 'B', '4'),
('28', '13/IEC/029', '22', '21', '38', '81', 'Ex', '4'),
('29', '13/IEC/032', '23', '21', '36', '80', 'Ex', '4'),
('30', '13/IEC/033', '14', '22', '19', '55', 'B', '4');

-- --------------------------------------------------------

--
-- Table structure for table `soljg`
--

CREATE TABLE IF NOT EXISTS `soljg` (
  `S_No` int(5) NOT NULL,
  `Roll_No` varchar(12) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL,
  `Total` int(5) NOT NULL,
  `Grades` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `som`
--

CREATE TABLE IF NOT EXISTS `som` (
  `S_No` int(5) NOT NULL,
  `Roll_No` varchar(12) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL,
  `Total` int(5) NOT NULL,
  `Grades` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sovsas`
--

CREATE TABLE IF NOT EXISTS `sovsas` (
  `S_No` int(5) NOT NULL,
  `Roll_No` varchar(12) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL,
  `Total` int(5) NOT NULL,
  `Grades` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `User_Id` int(5) NOT NULL AUTO_INCREMENT,
  `College_Id` varchar(20) NOT NULL,
  `Roll_No` varchar(20) NOT NULL,
  `Password` varchar(60) NOT NULL,
  PRIMARY KEY (`User_Id`),
  KEY `College_Id` (`College_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_Id`, `College_Id`, `Roll_No`, `Password`) VALUES
(69, 'soict', '13ics047', '$2y$10$/wYD1GrI4/FqM4oDsZTwQugaam5mCRQd2u.hKP7z9IFCmzUOy7zBa'),
(72, 'soict', '13ics022', '$2y$10$ggHqI/IT4a8/frO8wGnWyufA7KX/tSKfAaKi.k5KMI0ti8z51H2lW'),
(75, 'soict', '13ics015', '$2y$10$rRdBy/6EdciQzCjRXwBiKOUtj9AULZdUmZ1EQI.OvBsRz05Ob0.xO'),
(76, 'soe', '13ime047', '$2y$10$1g.Yr4GrcUm1WYabzcGktOb/xiLWb3cOdUwhyWhqw64SjbJUPmDES');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`College_Id`) REFERENCES `master` (`College_Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
