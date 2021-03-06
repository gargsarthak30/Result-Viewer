-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2015 at 09:15 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_Id`, `Username`, `Password`, `Full_Name`, `Designation`, `Email`, `Start_Date`, `End_Date`, `Faculty_Created`, `Faculty_Removed`, `Flag`) VALUES
(5, 'initadmin', '$2y$10$wR8yznt6KYRR.EUMYdToVuZXkLFZC5lpPWVt.LxUpT5u8vUcg5Ut2', 'Arun Solanki', '', 'arun.solanki@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `excel_details`
--

CREATE TABLE IF NOT EXISTS `excel_details` (
  `Sheet_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Faculty_Id` int(11) NOT NULL,
  `College_Id` varchar(10) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Course_Code` varchar(50) NOT NULL,
  `Published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Sheet_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `excel_details`
--

INSERT INTO `excel_details` (`Sheet_Id`, `Faculty_Id`, `College_Id`, `Semester`, `Department`, `Course_Code`, `Published`) VALUES
(79, 6, 'soict', '', '', '', 1),
(80, 6, 'soict', '', '', '', 1),
(81, 5, '$school', '$sem', '$department', '$course', 0),
(82, 5, '$school', '$sem', '$department', '$course', 0),
(83, 6, 'soict', '', '', '', 1),
(84, 5, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `Faculty_Id` int(5) NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  PRIMARY KEY (`Faculty_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Faculty_Id`, `Full_Name`, `Username`, `Password`, `Email`) VALUES
(6, 'Arun Solanki', 'arun', '$2y$10$2tzulKRfTUi5qVc7dGsDn.z/y6Q3WwMNK7FIWaZnRrg4GoS.D7YvS', 'arun.solanki@gmail.com'),
(7, 'Amit K. Awasthi', 'amit', '$2y$10$2tzulKRfTUi5qVc7dGsDn.z/y6Q3WwMNK7FIWaZnRrg4GoS.D7YvS', 'amit.awasthik@gmail.com');

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
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `Message_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  PRIMARY KEY (`Message_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`Message_Id`, `Name`, `Email`, `Message`) VALUES
(1, 'q', 'q', 'q'),
(2, 'w', 'w', 'w');

-- --------------------------------------------------------

--
-- Table structure for table `sobsc`
--

CREATE TABLE IF NOT EXISTS `sobsc` (
  `S_No` int(5) NOT NULL,
  `Roll_No` varchar(12) NOT NULL,
  `S_M` int(5) NOT NULL,
  `M_T` int(5) NOT NULL,
  `E_T` int(5) NOT NULL,
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
  `S_M` int(5) NOT NULL,
  `M_T` int(5) NOT NULL,
  `E_T` int(5) NOT NULL,
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
  `S_M` int(5) NOT NULL,
  `M_T` int(5) NOT NULL,
  `E_T` int(5) NOT NULL,
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
  `S_M` int(5) NOT NULL,
  `M_T` int(5) NOT NULL,
  `E_T` int(5) NOT NULL,
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
  `S_M` int(5) NOT NULL,
  `M_T` int(5) NOT NULL,
  `E_T` int(5) NOT NULL,
  `Total` int(5) NOT NULL,
  `Grades` varchar(5) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `Sheet_Id` int(11) NOT NULL,
  `Published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soict`
--

INSERT INTO `soict` (`S_No`, `Roll_No`, `S_M`, `M_T`, `E_T`, `Total`, `Grades`, `Semester`, `Course_Code`, `Sheet_Id`, `Published`) VALUES
(1, '13/ICS/047', 20, 20, 40, 80, '', '3', 'CS-203', 80, 1),
(2, '13/ICS/047', 20, 25, 45, 90, '', '2', 'MA-102', 79, 1);

-- --------------------------------------------------------

--
-- Table structure for table `soljg`
--

CREATE TABLE IF NOT EXISTS `soljg` (
  `S_No` int(5) NOT NULL,
  `Roll_No` varchar(12) NOT NULL,
  `S_M` int(5) NOT NULL,
  `M_T` int(5) NOT NULL,
  `E_T` int(5) NOT NULL,
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
  `S_M` int(5) NOT NULL,
  `M_T` int(5) NOT NULL,
  `E_T` int(5) NOT NULL,
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
  `S_M` int(5) NOT NULL,
  `M_T` int(5) NOT NULL,
  `E_T` int(5) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_Id`, `College_Id`, `Roll_No`, `Password`) VALUES
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
