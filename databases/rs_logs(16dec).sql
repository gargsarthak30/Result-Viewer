-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2015 at 12:59 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

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
(36, '2015-12-16', '17:25:52', 'initadmin', 'admin', 'Logged-In', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
