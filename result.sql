-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2015 at 06:59 PM
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
  `Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL
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
  `RegistrationNumber` varchar(12) NOT NULL,
  `Score` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sobt`
--

CREATE TABLE IF NOT EXISTS `sobt` (
  `RegistrationNumber` varchar(12) NOT NULL,
  `Score` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soe`
--

CREATE TABLE IF NOT EXISTS `soe` (
  `RegistrationNumber` varchar(12) NOT NULL,
  `Score` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sohss`
--

CREATE TABLE IF NOT EXISTS `sohss` (
  `RegistrationNumber` varchar(12) NOT NULL,
  `Score` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soict`
--

CREATE TABLE IF NOT EXISTS `soict` (
  `RegistrationNumber` varchar(12) NOT NULL,
  `Score` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soict`
--

INSERT INTO `soict` (`RegistrationNumber`, `Score`, `Semester`, `Subject`) VALUES
('13ics047', '75', '3', 'MA-103'),
('13ics047', '90', '4', 'EC-104');

-- --------------------------------------------------------

--
-- Table structure for table `soljg`
--

CREATE TABLE IF NOT EXISTS `soljg` (
  `RegistrationNumber` varchar(12) NOT NULL,
  `Score` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `som`
--

CREATE TABLE IF NOT EXISTS `som` (
  `RegistrationNumber` varchar(12) NOT NULL,
  `Score` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sovsas`
--

CREATE TABLE IF NOT EXISTS `sovsas` (
  `RegistrationNumber` varchar(12) NOT NULL,
  `Score` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `User_Id` int(5) NOT NULL AUTO_INCREMENT,
  `College_Id` varchar(20) NOT NULL,
  `RegistrationNumber` varchar(20) NOT NULL,
  `Password` varchar(60) NOT NULL,
  PRIMARY KEY (`User_Id`),
  KEY `College_Id` (`College_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_Id`, `College_Id`, `RegistrationNumber`, `Password`) VALUES
(69, 'soict', '13ics047', '$2y$10$/wYD1GrI4/FqM4oDsZTwQugaam5mCRQd2u.hKP7z9IFCmzUOy7zBa'),
(72, 'soict', '13ics022', '$2y$10$ggHqI/IT4a8/frO8wGnWyufA7KX/tSKfAaKi.k5KMI0ti8z51H2lW'),
(75, 'soict', '13ics015', '$2y$10$rRdBy/6EdciQzCjRXwBiKOUtj9AULZdUmZ1EQI.OvBsRz05Ob0.xO');

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
