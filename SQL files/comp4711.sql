-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2015 at 08:57 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `comp4711`
--
CREATE DATABASE IF NOT EXISTS `comp4711` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `comp4711`;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roster`
--

DROP TABLE IF EXISTS `roster`;
CREATE TABLE IF NOT EXISTS `roster` (
`ID` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  `Name` varchar(22) NOT NULL,
  `Pos` varchar(4) NOT NULL,
  `Status` varchar(4) NOT NULL,
  `Height` varchar(6) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Birthdate` date NOT NULL,
  `Exp` int(11) NOT NULL,
  `College` varchar(24) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roster`
--

INSERT INTO `roster` (`ID`, `Number`, `Name`, `Pos`, `Status`, `Height`, `Weight`, `Birthdate`, `Exp`, `College`) VALUES
(1, 100, 'Anderson, James', 'LB', 'ACT', '6''2"', 235, '0000-00-00', 10, 'Virginia Tech'),
(2, 50, 'Anthony, Stephone', 'MLB', 'ACT', '6''2"', 245, '0000-00-00', 0, 'Clemson'),
(3, 72, 'Armstead, Terron', 'T', 'ACT', '6''5"', 304, '0000-00-00', 3, 'Arkansas-Pine Bluff'),
(4, 90, 'Barnes, Tavaris', 'DE', 'ACT', '6''3"', 275, '0000-00-00', 0, 'Clemson'),
(5, 40, 'Breaux, Delvin', 'CB', 'ACT', '6''1"', 196, '0000-00-00', 1, 'LSU'),
(6, 9, 'Brees, Drew', 'QB', 'ACT', '6''0"', 209, '0000-00-00', 15, 'Purdue'),
(7, 71, 'Brown, Austin', 'NT', 'RES', '6''2"', 295, '0000-00-00', 0, 'Miami (Ohio)'),
(8, 39, 'Browner, Brandon', 'CB', 'ACT', '6''4"', 221, '0000-00-00', 6, 'Oregon State'),
(9, 25, 'Bush, Rafael', 'FS', 'RES', '5''11"', 205, '0000-00-00', 5, 'South Carolina State'),
(10, 31, 'Byrd, Jairus', 'FS', 'ACT', '5''10"', 203, '0000-00-00', 7, 'Oregon'),
(11, 16, 'Coleman, Brandon', 'WR', 'ACT', '6''6"', 225, '0000-00-00', 1, 'Rutgers'),
(12, 12, 'Colston, Marques', 'WR', 'ACT', '6''4"', 225, '0000-00-00', 10, 'Hofstra'),
(13, 10, 'Cooks, Brandin', 'WR', 'ACT', '5''10"', 189, '0000-00-00', 2, 'Oregon State'),
(14, 95, 'Davison, Tyeler', 'DT', 'ACT', '6''2"', 309, '0000-00-00', 0, 'Fresno State'),
(15, 20, 'Dixon, Brian', 'DB', 'ACT', '6''0"', 195, '0000-00-00', 2, 'Northwest Missouri State'),
(16, 47, 'Drescher, Justin', 'LS', 'ACT', '6''1"', 235, '0000-00-00', 6, 'Colorado'),
(17, 54, 'Dunbar, Jo-Lonn', 'LB', 'ACT', '6''0"', 235, '0000-00-00', 8, 'Boston College'),
(18, 91, 'Edebali, Kasim', 'OLB', 'ACT', '6''2"', 253, '0000-00-00', 2, 'Boston College'),
(19, 59, 'Ellerbe, Dannell', 'OLB', 'ACT', '6''1"', 245, '0000-00-00', 7, 'Georgia'),
(20, 104, 'Eulls, Kaleb', 'DT', 'ACT', '6''4"', 285, '0000-00-00', 0, 'Mississippi State'),
(21, 73, 'Evans, Jahri', 'G', 'ACT', '6''4"', 318, '0000-00-00', 10, 'Bloomsburg'),
(22, 101, 'Flynn, Matt', 'QB', 'ACT', '6''2"', 225, '0000-00-00', 8, 'LSU'),
(23, 5, 'Forbath, Kai', 'K', 'ACT', '5''11"', 197, '0000-00-00', 4, 'UCLA'),
(24, 17, 'Graham, T.J.', 'WR', 'ACT', '5''11"', 188, '0000-00-00', 4, 'North Carolina State'),
(25, 18, 'Grayson, Garrett', 'QB', 'ACT', '6''2"', 220, '0000-00-00', 0, 'Colorado State'),
(26, 58, 'Gwacham, Obum', 'DE', 'ACT', '6''5"', 246, '0000-00-00', 0, 'Oregon State'),
(27, 57, 'Hawthorne, DavNumber', 'OLB', 'ACT', '6''0"', 246, '0000-00-00', 8, 'Texas Christian'),
(28, 34, 'Hightower, Tim', 'RB', 'ACT', '6''0"', 220, '0000-00-00', 4, 'Richmond'),
(29, 89, 'Hill, Josh', 'TE', 'ACT', '6''5"', 250, '0000-00-00', 3, 'Numberaho State'),
(30, 98, 'Hills, Tony', 'OT', 'ACT', '6''5"', 304, '0000-00-00', 7, 'Texas'),
(31, 84, 'Hoomanawanui, Michael', 'TE', 'ACT', '6''4"', 265, '0000-00-00', 6, 'Illinois'),
(32, 53, 'Humber, Ramon', 'OLB', 'ACT', '5''11"', 232, '0000-00-00', 7, 'North Dakota State'),
(33, 22, 'Ingram, Mark', 'RB', 'ACT', '5''9"', 215, '0000-00-00', 5, 'Alabama'),
(34, 92, 'Jenkins, John', 'DT', 'ACT', '6''3"', 359, '0000-00-00', 3, 'Georgia'),
(35, 94, 'Jordan, Cameron', 'DE', 'ACT', '6''4"', 287, '0000-00-00', 5, 'California'),
(36, 65, 'Kelemete, Senio', 'G', 'ACT', '6''3"', 300, '0000-00-00', 3, 'Washington'),
(37, 44, 'Kikaha, Hau''oli', 'OLB', 'ACT', '6''3"', 246, '0000-00-00', 0, 'Washington'),
(38, 68, 'Lelito, Tim', 'OG', 'ACT', '6''4"', 315, '0000-00-00', 3, 'Grand Valley State'),
(39, 21, 'Lewis, Keenan', 'CB', 'ACT', '6''1"', 208, '0000-00-00', 7, 'Oregon State'),
(40, 56, 'Mauti, Michael', 'LB', 'ACT', '6''2"', 243, '0000-00-00', 3, 'Penn State'),
(41, 82, 'McCown, Luke', 'QB', 'RES', '6''4"', 217, '0000-00-00', 12, 'Louisiana Tech'),
(42, 77, 'McGlynn, Mike', 'OT', 'ACT', '6''4"', 325, '0000-00-00', 7, 'Pittsburgh'),
(43, 6, 'Morstead, Thomas', 'P', 'ACT', '6''4"', 235, '0000-00-00', 7, 'Southern Methodist'),
(44, 48, 'Murphy, Marcus', 'RB', 'ACT', '5''9"', 195, '0000-00-00', 0, 'Missouri State'),
(45, 75, 'Peat, Andrus', 'OT', 'ACT', '6''7"', 316, '0000-00-00', 0, 'Stanford'),
(46, 78, 'Richardson, Bobby', 'DE', 'ACT', '6''3"', 286, '0000-00-00', 0, 'Indiana'),
(47, 29, 'Robinson, Khiry', 'RB', 'RES', '6''0"', 220, '0000-00-00', 3, 'West Texas A&M'),
(48, 33, 'Sanford, Jamarca', 'SS', 'ACT', '5''10"', 200, '0000-00-00', 7, 'Mississippi'),
(49, 83, 'Snead, Willie', 'WR', 'ACT', '5''11"', 195, '0000-00-00', 1, 'Ball State'),
(50, 28, 'Spiller, C.J.', 'RB', 'ACT', '5''11"', 200, '0000-00-00', 6, 'Clemson'),
(51, 64, 'Strief, Zach', 'T', 'ACT', '6''7"', 320, '0000-00-00', 10, 'Northwestern'),
(52, 43, 'Sunseri, Vinnie', 'SAF', 'RES', '6''0"', 210, '0000-00-00', 2, 'Alabama'),
(53, 27, 'Swann, Damian', 'CB', 'ACT', '6''0"', 189, '0000-00-00', 0, 'Georgia'),
(54, 102, 'Tabb, Jack', 'TE', 'RES', '6''3"', 250, '0000-00-00', 0, 'North Carolina'),
(55, 55, 'Tull, Davis', 'OLB', 'RES', '6''3"', 240, '0000-00-00', 0, 'Tennessee-Chattanooga'),
(56, 60, 'Unger, Max', 'C', 'ACT', '6''5"', 305, '0000-00-00', 7, 'Oregon'),
(57, 32, 'Vaccaro, Kenny', 'SS', 'ACT', '6''0"', 214, '0000-00-00', 3, 'Texas'),
(58, 96, 'Virgil, Lawrence', 'DT', 'RES', '6''5"', 290, '0000-00-00', 1, 'Valdosta State'),
(59, 105, 'Watson, Benjamin', 'TE', 'ACT', '6''3"', 255, '0000-00-00', 12, 'Georgia'),
(60, 36, 'Williams, P.J.', 'CB', 'RES', '6''0"', 196, '0000-00-00', 0, 'FlorNumbera State'),
(61, 93, 'Williams, Kevin', 'DT', 'ACT', '6''5"', 311, '0000-00-00', 13, 'Oklahoma State'),
(62, 24, 'Wilson, Kyle', 'DB', 'ACT', '5''10"', 190, '0000-00-00', 6, 'Boise State');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
CREATE TABLE IF NOT EXISTS `scores` (
  `Id` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  `Away` varchar(4) NOT NULL,
  `Home` varchar(4) NOT NULL,
  `Date` date NOT NULL,
  `Score` varchar(7) NOT NULL,
  `AwayScores` int(3) NOT NULL,
  `HomeScores` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`Id`, `Number`, `Away`, `Home`, `Date`, `Score`, `AwayScores`, `HomeScores`) VALUES
(1, 1, 'PIT', 'NE', '2015-09-10', '21:28', 21, 28),
(2, 2, 'CAR', 'JAC', '2015-09-13', '20:9', 20, 9),
(3, 3, 'CLE', 'NYJ', '2015-09-13', '10:31', 10, 31),
(4, 4, 'GB', 'CHI', '2015-09-13', '31:23', 31, 23),
(5, 5, 'IND', 'BUF', '2015-09-13', '14:27', 14, 27),
(6, 6, 'KC', 'HOU', '2015-09-13', '27:20', 27, 20),
(7, 7, 'MIA', 'WAS', '2015-09-13', '17:10', 17, 10),
(8, 8, 'SEA', 'STL', '2015-09-13', '31:34', 31, 34),
(9, 9, 'DET', 'SD', '2015-09-13', '28:33', 28, 33),
(10, 10, 'NO', 'ARI', '2015-09-13', '19:31', 19, 31),
(11, 11, 'BAL', 'DEN', '2015-09-13', '13:19', 13, 19),
(12, 12, 'CIN', 'OAK', '2015-09-13', '33:13', 33, 13),
(13, 13, 'TEN', 'TB', '2015-09-13', '42:14', 42, 14),
(14, 14, 'NYG', 'DAL', '2015-09-13', '26:27', 26, 27),
(15, 15, 'PHI', 'ATL', '2015-09-14', '24:26', 24, 26),
(16, 16, 'MIN', 'SF', '2015-09-14', '3:20', 3, 20),
(17, 17, 'DEN', 'KC', '2015-09-17', '31:24', 31, 24),
(18, 18, 'ARI', 'CHI', '2015-09-20', '48:23', 48, 23),
(19, 19, 'ATL', 'NYG', '2015-09-20', '24:20', 24, 20),
(20, 20, 'DET', 'MIN', '2015-09-20', '16:26', 16, 26),
(21, 21, 'HOU', 'CAR', '2015-09-20', '17:24', 17, 24),
(22, 22, 'NE', 'BUF', '2015-09-20', '40:32', 40, 32),
(23, 23, 'SD', 'CIN', '2015-09-20', '19:24', 19, 24),
(24, 24, 'SF', 'PIT', '2015-09-20', '18:43', 18, 43),
(25, 25, 'STL', 'WAS', '2015-09-20', '10:24', 10, 24),
(26, 26, 'TB', 'NO', '2015-09-20', '26:19', 26, 19),
(27, 27, 'TEN', 'CLE', '2015-09-20', '14:28', 14, 28),
(28, 28, 'BAL', 'OAK', '2015-09-20', '33:37', 33, 37),
(29, 29, 'MIA', 'JAC', '2015-09-20', '20:23', 20, 23),
(30, 30, 'DAL', 'PHI', '2015-09-20', '20:10', 20, 10),
(31, 31, 'SEA', 'GB', '2015-09-20', '17:27', 17, 27),
(32, 32, 'NYJ', 'IND', '2015-09-21', '20:7', 20, 7),
(33, 33, 'WAS', 'NYG', '2015-09-24', '21:32', 21, 32),
(34, 34, 'ATL', 'DAL', '2015-09-27', '39:28', 39, 28),
(35, 35, 'CIN', 'BAL', '2015-09-27', '28:24', 28, 24),
(36, 36, 'IND', 'TEN', '2015-09-27', '35:33', 35, 33),
(37, 37, 'JAC', 'NE', '2015-09-27', '17:51', 17, 51),
(38, 38, 'NO', 'CAR', '2015-09-27', '22:27', 22, 27),
(39, 39, 'OAK', 'CLE', '2015-09-27', '27:20', 27, 20),
(40, 40, 'PHI', 'NYJ', '2015-09-27', '24:17', 24, 17),
(41, 41, 'PIT', 'STL', '2015-09-27', '12:6', 12, 6),
(42, 42, 'SD', 'MIN', '2015-09-27', '14:31', 14, 31),
(43, 43, 'TB', 'HOU', '2015-09-27', '9:19', 9, 19),
(44, 44, 'SF', 'ARI', '2015-09-27', '7:47', 7, 47),
(45, 45, 'BUF', 'MIA', '2015-09-27', '41:14', 41, 14),
(46, 46, 'CHI', 'SEA', '2015-09-27', '0:26', 0, 26),
(47, 47, 'DEN', 'DET', '2015-09-27', '24:12', 24, 12),
(48, 48, 'KC', 'GB', '2015-09-28', '28:38', 28, 38),
(49, 49, 'BAL', 'PIT', '2015-10-01', '23:20', 23, 20),
(50, 50, 'NYJ', 'MIA', '2015-10-04', '27:14', 27, 14),
(51, 51, 'CAR', 'TB', '2015-10-04', '37:23', 37, 23),
(52, 52, 'HOU', 'ATL', '2015-10-04', '21:48', 21, 48),
(53, 53, 'JAC', 'IND', '2015-10-04', '13:16', 13, 16),
(54, 54, 'KC', 'CIN', '2015-10-04', '21:36', 21, 36),
(55, 55, 'NYG', 'BUF', '2015-10-04', '24:10', 24, 10),
(56, 56, 'OAK', 'CHI', '2015-10-04', '20:22', 20, 22),
(57, 57, 'PHI', 'WAS', '2015-10-04', '20:23', 20, 23),
(58, 58, 'CLE', 'SD', '2015-10-04', '27:30', 27, 30),
(59, 59, 'GB', 'SF', '2015-10-04', '17:3', 17, 3),
(60, 60, 'MIN', 'DEN', '2015-10-04', '20:23', 20, 23),
(61, 61, 'STL', 'ARI', '2015-10-04', '24:22', 24, 22),
(62, 62, 'DAL', 'NO', '2015-10-04', '20:26', 20, 26),
(63, 63, 'DET', 'SEA', '2015-10-05', '10:13', 10, 13),
(64, 64, 'IND', 'HOU', '2015-10-08', '27:20', 27, 20),
(65, 65, 'BUF', 'TEN', '2015-10-11', '14:13', 14, 13),
(66, 66, 'CHI', 'KC', '2015-10-11', '18:17', 18, 17),
(67, 67, 'CLE', 'BAL', '2015-10-11', '33:30', 33, 30),
(68, 68, 'JAC', 'TB', '2015-10-11', '31:38', 31, 38),
(69, 69, 'NO', 'PHI', '2015-10-11', '17:39', 17, 39),
(70, 70, 'SEA', 'CIN', '2015-10-11', '24:27', 24, 27),
(71, 71, 'STL', 'GB', '2015-10-11', '10:24', 10, 24),
(72, 72, 'WAS', 'ATL', '2015-10-11', '19:25', 19, 25),
(73, 73, 'ARI', 'DET', '2015-10-11', '42:17', 42, 17),
(74, 74, 'DEN', 'OAK', '2015-10-11', '16:10', 16, 10),
(75, 75, 'NE', 'DAL', '2015-10-11', '30:6', 30, 6),
(76, 76, 'SF', 'NYG', '2015-10-11', '27:30', 27, 30),
(77, 77, 'PIT', 'SD', '2015-10-12', '24:20', 24, 20),
(78, 78, 'ATL', 'NO', '2015-10-15', '21:31', 21, 31),
(79, 79, 'ARI', 'PIT', '2015-10-18', '13:25', 13, 25),
(80, 80, 'CHI', 'DET', '2015-10-18', '34:37', 34, 37),
(81, 81, 'CIN', 'BUF', '2015-10-18', '34:21', 34, 21),
(82, 82, 'DEN', 'CLE', '2015-10-18', '26:23', 26, 23),
(83, 83, 'HOU', 'JAC', '2015-10-18', '31:20', 31, 20),
(84, 84, 'KC', 'MIN', '2015-10-18', '10:16', 10, 16),
(85, 85, 'MIA', 'TEN', '2015-10-18', '38:10', 38, 10),
(86, 86, 'WAS', 'NYJ', '2015-10-18', '20:34', 20, 34),
(87, 87, 'CAR', 'SEA', '2015-10-18', '27:23', 27, 23),
(88, 88, 'BAL', 'SF', '2015-10-18', '20:25', 20, 25),
(89, 89, 'SD', 'GB', '2015-10-18', '20:27', 20, 27),
(90, 90, 'NE', 'IND', '2015-10-18', '34:27', 34, 27),
(91, 91, 'NYG', 'PHI', '2015-10-19', '7:27', 7, 27),
(92, 92, 'SEA', 'SF', '2015-10-22', '20:3', 20, 3),
(93, 93, 'BUF', 'JAC', '2015-10-25', '31:34', 31, 34),
(94, 94, 'ATL', 'TEN', '2015-10-25', '10:7', 10, 7),
(95, 95, 'CLE', 'STL', '2015-10-25', '6:24', 6, 24),
(96, 96, 'HOU', 'MIA', '2015-10-25', '26:44', 26, 44),
(97, 97, 'MIN', 'DET', '2015-10-25', '28:19', 28, 19),
(98, 98, 'NO', 'IND', '2015-10-25', '27:21', 27, 21),
(99, 99, 'NYJ', 'NE', '2015-10-25', '23:30', 23, 30),
(100, 100, 'PIT', 'KC', '2015-10-25', '13:23', 13, 23),
(101, 101, 'TB', 'WAS', '2015-10-25', '30:31', 30, 31),
(102, 102, 'OAK', 'SD', '2015-10-25', '37:29', 37, 29),
(103, 103, 'DAL', 'NYG', '2015-10-25', '20:27', 20, 27),
(104, 104, 'PHI', 'CAR', '2015-10-25', '16:27', 16, 27),
(105, 105, 'BAL', 'ARI', '2015-10-26', '18:26', 18, 26),
(106, 106, 'MIA', 'NE', '2015-10-29', '7:36', 7, 36),
(107, 107, 'DET', 'KC', '2015-11-01', '10:45', 10, 45),
(108, 108, 'ARI', 'CLE', '2015-11-01', '34:20', 34, 20),
(109, 109, 'CIN', 'PIT', '2015-11-01', '16:10', 16, 10),
(110, 110, 'MIN', 'CHI', '2015-11-01', '23:20', 23, 20),
(111, 111, 'NYG', 'NO', '2015-11-01', '49:52', 49, 52),
(112, 112, 'SD', 'BAL', '2015-11-01', '26:29', 26, 29),
(113, 113, 'SF', 'STL', '2015-11-01', '6:27', 6, 27),
(114, 114, 'TB', 'ATL', '2015-11-01', '23:20', 23, 20),
(115, 115, 'TEN', 'HOU', '2015-11-01', '6:20', 6, 20),
(116, 116, 'NYJ', 'OAK', '2015-11-01', '20:34', 20, 34),
(117, 117, 'SEA', 'DAL', '2015-11-01', '13:12', 13, 12),
(118, 118, 'GB', 'DEN', '2015-11-01', '10:29', 10, 29),
(119, 119, 'IND', 'CAR', '2015-11-02', '26:29', 26, 29),
(120, 120, 'CLE', 'CIN', '2015-11-05', '10:31', 10, 31),
(121, 121, 'GB', 'CAR', '2015-11-08', '29:37', 29, 37),
(122, 122, 'JAC', 'NYJ', '2015-11-08', '23:28', 23, 28),
(123, 123, 'MIA', 'BUF', '2015-11-08', '17:33', 17, 33),
(124, 124, 'OAK', 'PIT', '2015-11-08', '35:38', 35, 38),
(125, 125, 'STL', 'MIN', '2015-11-08', '18:21', 18, 21),
(126, 126, 'TEN', 'NO', '2015-11-08', '34:28', 34, 28),
(127, 127, 'WAS', 'NE', '2015-11-08', '10:27', 10, 27),
(128, 128, 'ATL', 'SF', '2015-11-08', '16:17', 16, 17),
(129, 129, 'NYG', 'TB', '2015-11-08', '32:18', 32, 18),
(130, 130, 'DEN', 'IND', '2015-11-08', '24:27', 24, 27),
(131, 131, 'PHI', 'DAL', '2015-11-08', '33:27', 33, 27),
(132, 132, 'CHI', 'SD', '2015-11-09', '22:19', 22, 19),
(133, 133, 'BUF', 'NYJ', '2015-11-12', '22:17', 22, 17),
(134, 134, 'CAR', 'TEN', '2015-11-15', '27:10', 27, 10),
(135, 135, 'CHI', 'STL', '2015-11-15', '37:13', 37, 13),
(136, 136, 'CLE', 'PIT', '2015-11-15', '9:30', 9, 30),
(137, 137, 'DAL', 'TB', '2015-11-15', '6:10', 6, 10),
(138, 138, 'DET', 'GB', '2015-11-15', '18:16', 18, 16),
(139, 139, 'JAC', 'BAL', '2015-11-15', '22:20', 22, 20),
(140, 140, 'MIA', 'PHI', '2015-11-15', '20:19', 20, 19),
(141, 141, 'NO', 'WAS', '2015-11-15', '14:47', 14, 47),
(142, 142, 'MIN', 'OAK', '2015-11-15', '30:14', 30, 14),
(143, 143, 'KC', 'DEN', '2015-11-15', '29:13', 29, 13),
(144, 144, 'NE', 'NYG', '2015-11-15', '27:26', 27, 26),
(145, 145, 'ARI', 'SEA', '2015-11-15', '39:32', 39, 32);

-- --------------------------------------------------------

--
-- Table structure for table `standing`
--

DROP TABLE IF EXISTS `standing`;
CREATE TABLE IF NOT EXISTS `standing` (
  `Id` int(11) NOT NULL,
  `cName` varchar(30) NOT NULL,
  `dName` varchar(30) NOT NULL,
  `Team` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `W` int(11) NOT NULL,
  `L` int(11) NOT NULL,
  `T` int(11) NOT NULL,
  `oPct` decimal(3,3) NOT NULL,
  `PF` int(11) NOT NULL,
  `PA` int(11) NOT NULL,
  `Net` int(11) NOT NULL,
  `TD` int(11) NOT NULL,
  `Home` varchar(30) NOT NULL,
  `Road` varchar(30) NOT NULL,
  `Division` varchar(30) NOT NULL,
  `dPct` decimal(3,3) NOT NULL,
  `Conf` varchar(30) NOT NULL,
  `cPct` decimal(3,3) NOT NULL,
  `NonConf` varchar(30) NOT NULL,
  `Streak` varchar(30) NOT NULL,
  `Last5` varchar(30) NOT NULL,
  `TLC` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standing`
--

INSERT INTO `standing` (`Id`, `cName`, `dName`, `Team`, `City`, `W`, `L`, `T`, `oPct`, `PF`, `PA`, `Net`, `TD`, `Home`, `Road`, `Division`, `dPct`, `Conf`, `cPct`, `NonConf`, `Streak`, `Last5`, `TLC`) VALUES
(1, 'AFC', 'East', 'New England Patriots', 'New England', 10, 1, 0, '0.909', 347, 212, 135, 39, '6-0', '4-1', '4-0', '0.999', '7-1', '0.875', '3-0', '--', '0-0', 'NE'),
(2, 'AFC', 'East', 'New York Jets', 'New York', 6, 5, 0, '0.545', 272, 228, 44, 32, '4-2', '2-3', '2-2', '0.500', '5-4', '0.556', '1-1', '--', '0-0', 'NYJ'),
(3, 'AFC', 'East', 'Buffalo Bills', 'Buffalo', 5, 6, 0, '0.455', 266, 257, 9, 32, '2-3', '3-3', '3-2', '0.600', '5-5', '0.500', '0-1', '--', '0-0', 'BUF'),
(4, 'AFC', 'East', 'Miami Dolphins', 'Miami', 4, 7, 0, '0.364', 225, 287, -62, 29, '1-3', '3-4', '0-5', '0.000', '2-6', '0.250', '2-1', '--', '0-0', 'MIA'),
(5, 'AFC', 'North', 'Cincinnati Bengals', 'Cincinnati', 9, 2, 0, '0.818', 297, 193, 104, 36, '5-1', '4-1', '3-0', '0.999', '7-1', '0.875', '2-1', '--', '0-0', 'CIN'),
(6, 'AFC', 'North', 'Pittsburgh Steelers', 'Pittsburgh', 6, 5, 0, '0.545', 266, 230, 36, 28, '4-2', '2-3', '1-2', '0.333', '3-4', '0.429', '3-1', '--', '0-0', 'PIT'),
(7, 'AFC', 'North', 'Baltimore Ravens', 'Baltimore', 4, 7, 0, '0.364', 259, 276, -17, 27, '2-3', '2-4', '2-2', '0.500', '3-5', '0.375', '1-2', '--', '0-0', 'BAL'),
(8, 'AFC', 'North', 'Cleveland Browns', 'Cleveland', 2, 9, 0, '0.182', 213, 310, -97, 23, '1-4', '1-5', '1-3', '0.250', '2-7', '0.222', '0-2', '--', '0-0', 'CLE'),
(9, 'AFC', 'South', 'Houston Texans', 'Houston', 6, 5, 0, '0.545', 232, 234, -2, 28, '4-2', '2-3', '2-1', '0.667', '4-3', '0.571', '2-2', '--', '0-0', 'HOU'),
(10, 'AFC', 'South', 'Indianapolis Colts', 'Indianapolis', 6, 5, 0, '0.545', 249, 260, -11, 29, '3-3', '3-2', '3-0', '0.999', '4-3', '0.571', '2-2', '--', '0-0', 'IND'),
(11, 'AFC', 'South', 'Jacksonville Jaguars', 'Jacksonville', 4, 7, 0, '0.364', 236, 299, -63, 25, '3-3', '1-4', '1-2', '0.333', '4-5', '0.444', '0-2', '--', '0-0', 'JAC'),
(12, 'AFC', 'South', 'Tennessee Titans', 'Tennessee', 2, 9, 0, '0.182', 203, 257, -54, 24, '0-6', '2-3', '0-3', '0.000', '0-7', '0.000', '2-2', '--', '0-0', 'TEN'),
(13, 'AFC', 'West', 'Denver Broncos', 'Denver', 9, 2, 0, '0.818', 252, 207, 45, 27, '4-1', '5-1', '2-1', '0.667', '5-2', '0.714', '4-0', '--', '0-0', 'DEN'),
(14, 'AFC', 'West', 'Kansas City Chiefs', 'Kansas City', 6, 5, 0, '0.545', 287, 220, 67, 30, '3-2', '3-3', '2-1', '0.667', '5-2', '0.714', '1-3', '--', '0-0', 'KC'),
(15, 'AFC', 'West', 'Oakland Raiders', 'Oakland', 5, 6, 0, '0.455', 264, 280, -16, 31, '2-3', '3-3', '1-1', '0.500', '5-3', '0.625', '0-3', '--', '0-0', 'OAK'),
(16, 'AFC', 'West', 'San Diego Chargers', 'San Diego', 3, 8, 0, '0.273', 244, 307, -63, 27, '2-4', '1-4', '0-2', '0.000', '2-5', '0.286', '1-3', '--', '0-0', 'SD'),
(17, 'NFC', 'East', 'New York Giants', 'New York', 5, 6, 0, '0.455', 287, 273, 14, 31, '3-2', '2-4', '2-3', '0.400', '4-5', '0.444', '1-1', '--', '0-0', 'NYG'),
(18, 'NFC', 'East', 'Washington Redskins', 'Washington', 5, 6, 0, '0.455', 241, 267, -26, 26, '5-1', '0-5', '2-1', '0.667', '5-3', '0.625', '0-3', '--', '0-0', 'WAS'),
(19, 'NFC', 'East', 'Philadelphia Eagles', 'Philadelphia', 4, 7, 0, '0.364', 243, 274, -31, 28, '2-3', '2-4', '2-2', '0.500', '3-6', '0.333', '1-1', '--', '0-0', 'PHI'),
(20, 'NFC', 'East', 'Dallas Cowboys', 'Dallas', 3, 8, 0, '0.273', 204, 261, -57, 20, '1-5', '2-3', '2-2', '0.500', '2-7', '0.222', '1-1', '--', '0-0', 'DAL'),
(21, 'NFC', 'North', 'Minnesota Vikings', 'Minnesota', 8, 3, 0, '0.727', 231, 194, 37, 23, '4-1', '4-2', '3-1', '0.750', '5-2', '0.714', '3-1', '--', '0-0', 'MIN'),
(22, 'NFC', 'North', 'Green Bay Packers', 'Green Bay', 8, 4, 0, '0.667', 289, 238, 51, 33, '4-2', '4-2', '3-2', '0.600', '6-3', '0.667', '2-1', '--', '0-0', 'GB'),
(23, 'NFC', 'North', 'Chicago Bears', 'Chicago', 5, 6, 0, '0.455', 231, 264, -33, 23, '1-4', '4-2', '1-3', '0.250', '2-5', '0.286', '3-1', '--', '0-0', 'CHI'),
(24, 'NFC', 'North', 'Detroit Lions', 'Detroit', 4, 8, 0, '0.333', 253, 315, -62, 29, '3-4', '1-4', '2-3', '0.400', '3-5', '0.375', '1-3', '--', '0-0', 'DET'),
(25, 'NFC', 'South', 'Carolina Panthers', 'Carolina', 11, 0, 0, '0.999', 332, 205, 127, 37, '6-0', '5-0', '2-0', '0.999', '7-0', '0.999', '4-0', '--', '0-0', 'CAR'),
(26, 'NFC', 'South', 'Atlanta Falcons', 'Atlanta', 6, 5, 0, '0.545', 260, 234, 26, 31, '3-3', '3-2', '0-2', '0.000', '4-4', '0.500', '2-1', '--', '0-0', 'ATL'),
(27, 'NFC', 'South', 'Tampa Bay Buccaneers', 'Tampa Bay', 5, 6, 0, '0.455', 248, 279, -31, 26, '2-3', '3-3', '2-1', '0.667', '4-3', '0.571', '1-3', '--', '0-0', 'TB'),
(28, 'NFC', 'South', 'New Orleans Saints', 'New Orleans', 4, 7, 0, '0.364', 261, 339, -78, 33, '3-2', '1-5', '1-2', '0.333', '3-5', '0.375', '1-2', '--', '0-0', 'NO'),
(29, 'NFC', 'West', 'Arizona Cardinals', 'Arizona', 9, 2, 0, '0.818', 355, 229, 126, 42, '4-1', '5-1', '3-1', '0.750', '6-1', '0.857', '3-1', '--', '0-0', 'ARI'),
(30, 'NFC', 'West', 'Seattle Seahawks', 'Seattle', 6, 5, 0, '0.545', 267, 222, 45, 30, '4-2', '2-3', '2-2', '0.500', '5-4', '0.556', '1-1', '--', '0-0', 'SEA'),
(31, 'NFC', 'West', 'St. Louis Rams', 'St. Louis', 4, 7, 0, '0.364', 186, 230, -44, 20, '3-2', '1-5', '3-0', '0.999', '3-4', '0.429', '1-3', '--', '0-0', 'STL'),
(32, 'NFC', 'West', 'San Francisco 49ers', 'San Francisco', 3, 8, 0, '0.273', 152, 271, -119, 14, '3-3', '0-5', '0-5', '0.000', '2-7', '0.222', '1-1', '--', '0-0', 'SF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`session_id`), ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `roster`
--
ALTER TABLE `roster`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `standing`
--
ALTER TABLE `standing`
 ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roster`
--
ALTER TABLE `roster`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
