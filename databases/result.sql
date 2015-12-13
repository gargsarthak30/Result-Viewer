-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2015 at 01:29 PM
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
-- Dumping data for table `soict`
--

INSERT INTO `soict` (`S_No`, `Roll_No`, `S-M`, `M-T`, `E-T`, `Total`, `Grades`, `Semester`, `Course_Code`) VALUES
(0, '13ics047', 20, 25, 45, 90, '', '2', 'MA-102'),
(0, '13ics047', 20, 20, 40, 80, '', '3', 'CS-203');

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
