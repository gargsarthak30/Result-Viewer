-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2015 at 04:26 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `excel_details`
--

INSERT INTO `excel_details` (`Sheet_Id`, `Faculty_Id`, `College_Id`, `Semester`, `Department`, `Course_Code`, `Published`) VALUES
(96, 6, 'soict', '2', 'PPP', 'ppp', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
  `S_No` int(5) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `soict`
--

INSERT INTO `soict` (`S_No`, `Roll_No`, `S_M`, `M_T`, `E_T`, `Total`, `Grades`, `Semester`, `Course_Code`, `Sheet_Id`, `Published`) VALUES
(69, '13/IEC/001', 20, 20, 24, 64, 'B', '2', 'ppp', 96, 0),
(70, '13/IEC/002', 20, 21, 42, 83, 'Ex', '2', 'ppp', 96, 0),
(71, '13/IEC/003', 6, 19, 23, 48, 'C', '2', 'ppp', 96, 0),
(72, '13/IEC/004', 22, 22, 42, 86, 'Ex', '2', 'ppp', 96, 0),
(73, '13/IEC/005', 23, 14, 23, 60, 'B', '2', 'ppp', 96, 0),
(74, '13/IEC/006', 12, 10, 15, 37, 'C', '2', 'ppp', 96, 0),
(75, '13/IEC/007', 23, 21, 36, 80, 'Ex', '2', 'ppp', 96, 0),
(76, '13/IEC/008', 10, 21, 33, 64, 'B', '2', 'ppp', 96, 0),
(77, '13/IEC/009', 12, 17, 19, 48, 'C', '2', 'ppp', 96, 0),
(78, '13/IEC/010', 22, 22, 46, 90, 'Ex', '2', 'ppp', 96, 0),
(79, '13/IEC/011', 10, 16, 25, 51, 'B', '2', 'ppp', 96, 0),
(80, '13/IEC/012', 4, 9, 11, 24, 'F', '2', 'ppp', 96, 0),
(81, '13/IEC/013', 18, 17, 29, 64, 'B', '2', 'ppp', 96, 0),
(82, '13/IEC/014', 20, 18, 34, 72, 'A', '2', 'ppp', 96, 0),
(83, '13/IEC/015', 20, 24, 48, 92, 'Ex', '2', 'ppp', 96, 0),
(84, '13/IEC/016', 20, 20, 23, 63, 'B', '2', 'ppp', 96, 0),
(85, '13/IEC/017', 12, 8, 15, 35, 'C', '2', 'ppp', 96, 0),
(86, '13/IEC/018', 18, 10, 19, 47, 'C', '2', 'ppp', 96, 0),
(87, '13/IEC/019', 22, 18, 45, 85, 'Ex', '2', 'ppp', 96, 0),
(88, '13/IEC/020', 22, 22, 30, 74, 'A', '2', 'ppp', 96, 0),
(89, '13/IEC/021', 12, 11, 19, 42, 'C', '2', 'ppp', 96, 0),
(90, '13/IEC/022', 18, 19, 25, 62, 'B', '2', 'ppp', 96, 0),
(91, '13/IEC/023', 22, 18, 32, 72, 'A', '2', 'ppp', 96, 0),
(92, '13/IEC/025', 20, 17, 26, 63, 'B', '2', 'ppp', 96, 0),
(93, '13/IEC/026', 20, 20, 35, 75, 'A', '2', 'ppp', 96, 0),
(94, '13/IEC/027', 20, 16, 14, 50, 'B', '2', 'ppp', 96, 0),
(95, '13/IEC/028', 13, 20, 25, 58, 'B', '2', 'ppp', 96, 0),
(96, '13/IEC/029', 22, 21, 38, 81, 'Ex', '2', 'ppp', 96, 0),
(97, '13/IEC/032', 23, 21, 36, 80, 'Ex', '2', 'ppp', 96, 0),
(98, '13/IEC/033', 14, 22, 19, 55, 'B', '2', 'ppp', 96, 0),
(99, '', 0, 0, 0, 0, '', '2', 'ppp', 96, 0),
(100, '', 0, 0, 0, 0, '', '2', 'ppp', 96, 0),
(101, '', 0, 0, 0, 0, '', '2', 'ppp', 96, 0);

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
