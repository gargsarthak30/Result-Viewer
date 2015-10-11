-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2015 at 06:35 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `S.no` varchar(100) NOT NULL,
  `Roll No.` varchar(100) NOT NULL,
  `Marks` varchar(100) NOT NULL,
  `Marks in words` varchar(100) NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`S.no`, `Roll No.`, `Marks`, `Marks in words`, `publish`) VALUES
('S.no', 'Roll No.', 'Marks', '', 1),
('1', '2', '3', '', 1),
('1', '2', '3', '', 1),
('1', '13/IEC/001', '20', '#NAME?', 1),
('2', '13/IEC/002', '21', '#NAME?', 1),
('3', '13/IEC/003', '19', '#NAME?', 1),
('4', '13/IEC/004', '22', '#NAME?', 1),
('5', '13/IEC/005', '14', '#NAME?', 1),
('6', '13/IEC/006', '10', '#NAME?', 1),
('7', '13/IEC/007', '21', '#NAME?', 1),
('8', '13/IEC/008', '21', '#NAME?', 1),
('9', '13/IEC/009', '17', '#NAME?', 1),
('10', '13/IEC/010', '22', '#NAME?', 1),
('11', '13/IEC/011', '16', '#NAME?', 1),
('12', '13/IEC/012', '9', '#NAME?', 1),
('13', '13/IEC/013', '17', '#NAME?', 1),
('14', '13/IEC/014', '18', '#NAME?', 1),
('15', '13/IEC/015', '24', '#NAME?', 1),
('16', '13/IEC/016', '20', '#NAME?', 1),
('17', '13/IEC/017', '8', '#NAME?', 1),
('18', '13/IEC/018', '10', '#NAME?', 1),
('19', '13/IEC/019', '18', '#NAME?', 1),
('20', '13/IEC/020', '22', '#NAME?', 1),
('21', '13/IEC/021', '11', '#NAME?', 1),
('22', '13/IEC/022', '19', '#NAME?', 1),
('23', '13/IEC/023', '18', '#NAME?', 1),
('24', '13/IEC/024', 'Ab', 'ABSENT', 1),
('25', '13/IEC/025', '17', '#NAME?', 1),
('26', '13/IEC/026', '20', '#NAME?', 1),
('27', '13/IEC/027', '16', '#NAME?', 1),
('28', '13/IEC/028', '20', '#NAME?', 1),
('29', '13/IEC/029', '21', '#NAME?', 1),
('30', '13/IEC/030', 'Ab', 'ABSENT', 1),
('1', '13/IEC/001', '20', '#NAME?', 1),
('2', '13/IEC/002', '21', '#NAME?', 1),
('3', '13/IEC/003', '19', '#NAME?', 1),
('4', '13/IEC/004', '22', '#NAME?', 1),
('5', '13/IEC/005', '14', '#NAME?', 1),
('6', '13/IEC/006', '10', '#NAME?', 1),
('7', '13/IEC/007', '21', '#NAME?', 1),
('8', '13/IEC/008', '21', '#NAME?', 1),
('9', '13/IEC/009', '17', '#NAME?', 1),
('10', '13/IEC/010', '22', '#NAME?', 1),
('11', '13/IEC/011', '16', '#NAME?', 1),
('12', '13/IEC/012', '9', '#NAME?', 1),
('13', '13/IEC/013', '17', '#NAME?', 1),
('14', '13/IEC/014', '18', '#NAME?', 1),
('15', '13/IEC/015', '24', '#NAME?', 1),
('16', '13/IEC/016', '20', '#NAME?', 1),
('17', '13/IEC/017', '8', '#NAME?', 1),
('18', '13/IEC/018', '10', '#NAME?', 1),
('19', '13/IEC/019', '18', '#NAME?', 1),
('20', '13/IEC/020', '22', '#NAME?', 1),
('21', '13/IEC/021', '11', '#NAME?', 1),
('22', '13/IEC/022', '19', '#NAME?', 1),
('23', '13/IEC/023', '18', '#NAME?', 1),
('24', '13/IEC/024', 'Ab', 'ABSENT', 1),
('25', '13/IEC/025', '17', '#NAME?', 1),
('26', '13/IEC/026', '20', '#NAME?', 1),
('27', '13/IEC/027', '16', '#NAME?', 1),
('28', '13/IEC/028', '20', '#NAME?', 1),
('29', '13/IEC/029', '21', '#NAME?', 1),
('30', '13/IEC/030', 'Ab', 'ABSENT', 1),
('1', '13/IEC/001', '20', '#NAME?', 1),
('2', '13/IEC/002', '21', '#NAME?', 1),
('3', '13/IEC/003', '19', '#NAME?', 1),
('4', '13/IEC/004', '22', '#NAME?', 1),
('5', '13/IEC/005', '14', '#NAME?', 1),
('6', '13/IEC/006', '10', '#NAME?', 1),
('7', '13/IEC/007', '21', '#NAME?', 1),
('8', '13/IEC/008', '21', '#NAME?', 1),
('9', '13/IEC/009', '17', '#NAME?', 1),
('10', '13/IEC/010', '22', '#NAME?', 1),
('11', '13/IEC/011', '16', '#NAME?', 1),
('12', '13/IEC/012', '9', '#NAME?', 1),
('13', '13/IEC/013', '17', '#NAME?', 1),
('14', '13/IEC/014', '18', '#NAME?', 1),
('15', '13/IEC/015', '24', '#NAME?', 1),
('16', '13/IEC/016', '20', '#NAME?', 1),
('17', '13/IEC/017', '8', '#NAME?', 1),
('18', '13/IEC/018', '10', '#NAME?', 1),
('19', '13/IEC/019', '18', '#NAME?', 1),
('20', '13/IEC/020', '22', '#NAME?', 1),
('21', '13/IEC/021', '11', '#NAME?', 1),
('22', '13/IEC/022', '19', '#NAME?', 1),
('23', '13/IEC/023', '18', '#NAME?', 1),
('24', '13/IEC/024', 'Ab', 'ABSENT', 1),
('25', '13/IEC/025', '17', '#NAME?', 1),
('26', '13/IEC/026', '20', '#NAME?', 1),
('27', '13/IEC/027', '16', '#NAME?', 1),
('28', '13/IEC/028', '20', '#NAME?', 1),
('29', '13/IEC/029', '21', '#NAME?', 1),
('30', '13/IEC/030', 'Ab', 'ABSENT', 1);

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
-- Table structure for table `newdata`
--

CREATE TABLE IF NOT EXISTS `newdata` (
  `S.No.` int(11) NOT NULL,
  `Roll No.` int(11) NOT NULL,
  `Ma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newexcel`
--

CREATE TABLE IF NOT EXISTS `newexcel` (
  `S.No.` varchar(100) NOT NULL,
  `Roll No.` varchar(100) NOT NULL,
  `Marks` varchar(100) NOT NULL,
  `Grades` varchar(100) NOT NULL,
  `S-M` varchar(100) NOT NULL,
  `M-T (25)` varchar(100) NOT NULL,
  `E-T(50)` varchar(100) NOT NULL,
  `Total (100)` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newexcel`
--

INSERT INTO `newexcel` (`S.No.`, `Roll No.`, `Marks`, `Grades`, `S-M`, `M-T (25)`, `E-T(50)`, `Total (100)`) VALUES
('1', '13/IEC/001', '20', '20', '24', '64', 'B', ''),
('2', '13/IEC/002', '20', '21', '42', '83', 'Ex', ''),
('3', '13/IEC/003', '6', '19', '23', '48', 'C', ''),
('4', '13/IEC/004', '22', '22', '42', '86', 'Ex', ''),
('5', '13/IEC/005', '23', '14', '23', '60', 'B', ''),
('6', '13/IEC/006', '12', '10', '15', '37', 'C', ''),
('7', '13/IEC/007', '23', '21', '36', '80', 'Ex', ''),
('8', '13/IEC/008', '10', '21', '33', '64', 'B', ''),
('9', '13/IEC/009', '12', '17', '19', '48', 'C', ''),
('10', '13/IEC/010', '22', '22', '46', '90', 'Ex', ''),
('11', '13/IEC/011', '10', '16', '25', '51', 'B', ''),
('12', '13/IEC/012', '4', '9', '11', '24', 'F', ''),
('13', '13/IEC/013', '18', '17', '29', '64', 'B', ''),
('14', '13/IEC/014', '20', '18', '34', '72', 'A', ''),
('15', '13/IEC/015', '20', '24', '48', '92', 'Ex', ''),
('16', '13/IEC/016', '20', '20', '23', '63', 'B', ''),
('17', '13/IEC/017', '12', '8', '15', '35', 'C', ''),
('18', '13/IEC/018', '18', '10', '19', '47', 'C', ''),
('19', '13/IEC/019', '22', '18', '45', '85', 'Ex', ''),
('20', '13/IEC/020', '22', '22', '30', '74', 'A', ''),
('21', '13/IEC/021', '12', '11', '19', '42', 'C', ''),
('22', '13/IEC/022', '18', '19', '25', '62', 'B', ''),
('23', '13/IEC/023', '22', '18', '32', '72', 'A', ''),
('24', '13/IEC/025', '20', '17', '26', '63', 'B', ''),
('25', '13/IEC/026', '20', '20', '35', '75', 'A', ''),
('26', '13/IEC/027', '20', '16', '14', '50', 'B', ''),
('27', '13/IEC/028', '13', '20', '25', '58', 'B', ''),
('28', '13/IEC/029', '22', '21', '38', '81', 'Ex', ''),
('29', '13/IEC/032', '23', '21', '36', '80', 'Ex', ''),
('30', '13/IEC/033', '14', '22', '19', '55', 'B', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('1', '13/IEC/001', '20', '20', '24', '64', 'B', ''),
('2', '13/IEC/002', '20', '21', '42', '83', 'Ex', ''),
('3', '13/IEC/003', '6', '19', '23', '48', 'C', ''),
('4', '13/IEC/004', '22', '22', '42', '86', 'Ex', ''),
('5', '13/IEC/005', '23', '14', '23', '60', 'B', ''),
('6', '13/IEC/006', '12', '10', '15', '37', 'C', ''),
('7', '13/IEC/007', '23', '21', '36', '80', 'Ex', ''),
('8', '13/IEC/008', '10', '21', '33', '64', 'B', ''),
('9', '13/IEC/009', '12', '17', '19', '48', 'C', ''),
('10', '13/IEC/010', '22', '22', '46', '90', 'Ex', ''),
('11', '13/IEC/011', '10', '16', '25', '51', 'B', ''),
('12', '13/IEC/012', '4', '9', '11', '24', 'F', ''),
('13', '13/IEC/013', '18', '17', '29', '64', 'B', ''),
('14', '13/IEC/014', '20', '18', '34', '72', 'A', ''),
('15', '13/IEC/015', '20', '24', '48', '92', 'Ex', ''),
('16', '13/IEC/016', '20', '20', '23', '63', 'B', ''),
('17', '13/IEC/017', '12', '8', '15', '35', 'C', ''),
('18', '13/IEC/018', '18', '10', '19', '47', 'C', ''),
('19', '13/IEC/019', '22', '18', '45', '85', 'Ex', ''),
('20', '13/IEC/020', '22', '22', '30', '74', 'A', ''),
('21', '13/IEC/021', '12', '11', '19', '42', 'C', ''),
('22', '13/IEC/022', '18', '19', '25', '62', 'B', ''),
('23', '13/IEC/023', '22', '18', '32', '72', 'A', ''),
('24', '13/IEC/025', '20', '17', '26', '63', 'B', ''),
('25', '13/IEC/026', '20', '20', '35', '75', 'A', ''),
('26', '13/IEC/027', '20', '16', '14', '50', 'B', ''),
('27', '13/IEC/028', '13', '20', '25', '58', 'B', ''),
('28', '13/IEC/029', '22', '21', '38', '81', 'Ex', ''),
('29', '13/IEC/032', '23', '21', '36', '80', 'Ex', ''),
('30', '13/IEC/033', '14', '22', '19', '55', 'B', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sobsc`
--

CREATE TABLE IF NOT EXISTS `sobsc` (
  `Roll_No` varchar(12) NOT NULL,
  `Total` int(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sobt`
--

CREATE TABLE IF NOT EXISTS `sobt` (
  `Roll_No` varchar(12) NOT NULL,
  `Total` int(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(12) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soe`
--

CREATE TABLE IF NOT EXISTS `soe` (
  `Roll_No` varchar(12) NOT NULL,
  `Total` int(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sohss`
--

CREATE TABLE IF NOT EXISTS `sohss` (
  `Roll_No` varchar(12) NOT NULL,
  `Total` int(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Couse_Code` varchar(10) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soict`
--

CREATE TABLE IF NOT EXISTS `soict` (
  `Roll_No` varchar(12) NOT NULL,
  `Total` int(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soict`
--

INSERT INTO `soict` (`Roll_No`, `Total`, `Semester`, `Course_Code`, `S-M`, `M-T`, `E-T`) VALUES
('13ics047', 90, '2', 'MA-102', 20, 25, 45),
('13ics047', 80, '3', 'CS-203', 20, 20, 40);

-- --------------------------------------------------------

--
-- Table structure for table `soljg`
--

CREATE TABLE IF NOT EXISTS `soljg` (
  `Roll_No` varchar(12) NOT NULL,
  `Total` int(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `som`
--

CREATE TABLE IF NOT EXISTS `som` (
  `Roll_No` varchar(12) NOT NULL,
  `Total` int(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sovsas`
--

CREATE TABLE IF NOT EXISTS `sovsas` (
  `Roll_No` varchar(12) NOT NULL,
  `Total` int(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `S-M` int(5) NOT NULL,
  `M-T` int(5) NOT NULL,
  `E-T` int(5) NOT NULL
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
