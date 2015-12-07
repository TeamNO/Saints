-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2015 at 08:21 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp4711`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

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
(62, 24, 'Wilson, Kyle', 'DB', 'ACT', '5''10"', 190, '0000-00-00', 6, 'Boise State'),
(63, 12, '123', 'as', 'asd', '123', 12, '0000-00-00', 12, 'asd'),
(64, 12, '123', 'as', 'asd', '123', 12, '0000-00-00', 12, 'asd'),
(65, 12, '123', 'as', 'asd', '123', 12, '0000-00-00', 12, 'asd'),
(66, 12, '123', 'as', 'asd', '123', 12, '0000-00-00', 12, 'asd'),
(67, 0, '', '', '', '', 0, '0000-00-00', 0, ''),
(68, 3, 'AS', 'qb', 'cv', '123', 123, '0000-00-00', 12, 'bab'),
(69, 0, '', '', '', '', 0, '0000-00-00', 0, ''),
(70, 3, 'AS', 'qb', 'cv', '123', 123, '0000-00-00', 12, 'bab'),
(71, 0, '', '', '', '', 0, '0000-00-00', 0, '');

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
(1, 'AFC', 'East', 'New England Patriots', 'New England', 0, 0, 0, '0.000', 0, 0, 0, 0, '6-0', '4-1', '4-0', '0.999', '7-1', '0.875', '3-0', '--', '0-0', 'NE'),
(2, 'AFC', 'East', 'New York Jets', 'New York', 0, 0, 0, '0.000', 0, 0, 0, 0, '4-2', '2-3', '2-2', '0.500', '5-4', '0.556', '1-1', '--', '0-0', 'NYJ'),
(3, 'AFC', 'East', 'Buffalo Bills', 'Buffalo', 0, 0, 0, '0.000', 0, 0, 0, 0, '2-3', '3-3', '3-2', '0.600', '5-5', '0.500', '0-1', '--', '0-0', 'BUF'),
(4, 'AFC', 'East', 'Miami Dolphins', 'Miami', 0, 0, 0, '0.000', 0, 0, 0, 0, '1-3', '3-4', '0-5', '0.000', '2-6', '0.250', '2-1', '--', '0-0', 'MIA'),
(5, 'AFC', 'North', 'Cincinnati Bengals', 'Cincinnati', 0, 0, 0, '0.000', 0, 0, 0, 0, '5-1', '4-1', '3-0', '0.999', '7-1', '0.875', '2-1', '--', '0-0', 'CIN'),
(6, 'AFC', 'North', 'Pittsburgh Steelers', 'Pittsburgh', 0, 0, 0, '0.000', 0, 0, 0, 0, '4-2', '2-3', '1-2', '0.333', '3-4', '0.429', '3-1', '--', '0-0', 'PIT'),
(7, 'AFC', 'North', 'Baltimore Ravens', 'Baltimore', 0, 0, 0, '0.000', 0, 0, 0, 0, '2-3', '2-4', '2-2', '0.500', '3-5', '0.375', '1-2', '--', '0-0', 'BAL'),
(8, 'AFC', 'North', 'Cleveland Browns', 'Cleveland', 0, 0, 0, '0.000', 0, 0, 0, 0, '1-4', '1-5', '1-3', '0.250', '2-7', '0.222', '0-2', '--', '0-0', 'CLE'),
(9, 'AFC', 'South', 'Houston Texans', 'Houston', 0, 0, 0, '0.000', 0, 0, 0, 0, '4-2', '2-3', '2-1', '0.667', '4-3', '0.571', '2-2', '--', '0-0', 'HOU'),
(10, 'AFC', 'South', 'Indianapolis Colts', 'Indianapolis', 0, 0, 0, '0.000', 0, 0, 0, 0, '3-3', '3-2', '3-0', '0.999', '4-3', '0.571', '2-2', '--', '0-0', 'IND'),
(11, 'AFC', 'South', 'Jacksonville Jaguars', 'Jacksonville', 0, 0, 0, '0.000', 0, 0, 0, 0, '3-3', '1-4', '1-2', '0.333', '4-5', '0.444', '0-2', '--', '0-0', 'JAC'),
(12, 'AFC', 'South', 'Tennessee Titans', 'Tennessee', 0, 0, 0, '0.000', 0, 0, 0, 0, '0-6', '2-3', '0-3', '0.000', '0-7', '0.000', '2-2', '--', '0-0', 'TEN'),
(13, 'AFC', 'West', 'Denver Broncos', 'Denver', 0, 0, 0, '0.000', 0, 0, 0, 0, '4-1', '5-1', '2-1', '0.667', '5-2', '0.714', '4-0', '--', '0-0', 'DEN'),
(14, 'AFC', 'West', 'Kansas City Chiefs', 'Kansas City', 0, 0, 0, '0.000', 0, 0, 0, 0, '3-2', '3-3', '2-1', '0.667', '5-2', '0.714', '1-3', '--', '0-0', 'KC'),
(15, 'AFC', 'West', 'Oakland Raiders', 'Oakland', 0, 0, 0, '0.000', 0, 0, 0, 0, '2-3', '3-3', '1-1', '0.500', '5-3', '0.625', '0-3', '--', '0-0', 'OAK'),
(16, 'AFC', 'West', 'San Diego Chargers', 'San Diego', 0, 0, 0, '0.000', 0, 0, 0, 0, '2-4', '1-4', '0-2', '0.000', '2-5', '0.286', '1-3', '--', '0-0', 'SD'),
(17, 'NFC', 'East', 'New York Giants', 'New York', 0, 0, 0, '0.000', 0, 0, 0, 0, '3-2', '2-4', '2-3', '0.400', '4-5', '0.444', '1-1', '--', '0-0', 'NYG'),
(18, 'NFC', 'East', 'Washington Redskins', 'Washington', 0, 0, 0, '0.000', 0, 0, 0, 0, '5-1', '0-5', '2-1', '0.667', '5-3', '0.625', '0-3', '--', '0-0', 'WAS'),
(19, 'NFC', 'East', 'Philadelphia Eagles', 'Philadelphia', 0, 0, 0, '0.000', 0, 0, 0, 0, '2-3', '2-4', '2-2', '0.500', '3-6', '0.333', '1-1', '--', '0-0', 'PHI'),
(20, 'NFC', 'East', 'Dallas Cowboys', 'Dallas', 0, 0, 0, '0.000', 0, 0, 0, 0, '1-5', '2-3', '2-2', '0.500', '2-7', '0.222', '1-1', '--', '0-0', 'DAL'),
(21, 'NFC', 'North', 'Minnesota Vikings', 'Minnesota', 0, 0, 0, '0.000', 0, 0, 0, 0, '4-1', '4-2', '3-1', '0.750', '5-2', '0.714', '3-1', '--', '0-0', 'MIN'),
(22, 'NFC', 'North', 'Green Bay Packers', 'Green Bay', 0, 0, 0, '0.000', 0, 0, 0, 0, '4-2', '4-2', '3-2', '0.600', '6-3', '0.667', '2-1', '--', '0-0', 'GB'),
(23, 'NFC', 'North', 'Chicago Bears', 'Chicago', 0, 0, 0, '0.000', 0, 0, 0, 0, '1-4', '4-2', '1-3', '0.250', '2-5', '0.286', '3-1', '--', '0-0', 'CHI'),
(24, 'NFC', 'North', 'Detroit Lions', 'Detroit', 0, 0, 0, '0.000', 0, 0, 0, 0, '3-4', '1-4', '2-3', '0.400', '3-5', '0.375', '1-3', '--', '0-0', 'DET'),
(25, 'NFC', 'South', 'Carolina Panthers', 'Carolina', 0, 0, 0, '0.000', 0, 0, 0, 0, '6-0', '5-0', '2-0', '0.999', '7-0', '0.999', '4-0', '--', '0-0', 'CAR'),
(26, 'NFC', 'South', 'Atlanta Falcons', 'Atlanta', 0, 0, 0, '0.000', 0, 0, 0, 0, '3-3', '3-2', '0-2', '0.000', '4-4', '0.500', '2-1', '--', '0-0', 'ATL'),
(27, 'NFC', 'South', 'Tampa Bay Buccaneers', 'Tampa Bay', 0, 0, 0, '0.000', 0, 0, 0, 0, '2-3', '3-3', '2-1', '0.667', '4-3', '0.571', '1-3', '--', '0-0', 'TB'),
(28, 'NFC', 'South', 'New Orleans Saints', 'New Orleans', 0, 0, 0, '0.000', 0, 0, 0, 0, '3-2', '1-5', '1-2', '0.333', '3-5', '0.375', '1-2', '--', '0-0', 'NO'),
(29, 'NFC', 'West', 'Arizona Cardinals', 'Arizona', 0, 0, 0, '0.000', 0, 0, 0, 0, '4-1', '5-1', '3-1', '0.750', '6-1', '0.857', '3-1', '--', '0-0', 'ARI'),
(30, 'NFC', 'West', 'Seattle Seahawks', 'Seattle', 0, 0, 0, '0.000', 0, 0, 0, 0, '4-2', '2-3', '2-2', '0.500', '5-4', '0.556', '1-1', '--', '0-0', 'SEA'),
(31, 'NFC', 'West', 'St. Louis Rams', 'St. Louis', 0, 0, 0, '0.000', 0, 0, 0, 0, '3-2', '1-5', '3-0', '0.999', '3-4', '0.429', '1-3', '--', '0-0', 'STL'),
(32, 'NFC', 'West', 'San Francisco 49ers', 'San Francisco', 0, 0, 0, '0.000', 0, 0, 0, 0, '3-3', '0-5', '0-5', '0.000', '2-7', '0.222', '1-1', '--', '0-0', 'SF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
