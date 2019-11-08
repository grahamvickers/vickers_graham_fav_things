-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 08, 2019 at 06:00 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favourite`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_things`
--

CREATE TABLE `tbl_things` (
  `ID` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `bio` text NOT NULL,
  `image` varchar(30) NOT NULL,
  `age` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_things`
--

INSERT INTO `tbl_things` (`ID`, `title`, `bio`, `image`, `age`) VALUES
(1, 'Football', 'When I first started playing Football, I really didn’t know too much about the game, but my dad encouraged me to try it out anyways and I did for two years with the LMFA Panthers. With the football being in the fall it overlapped with my hockey schedule a lot, so eventually I had to choose between one another, and I chose hockey. But once grade 8 came around and I quit hockey, I decided to pick up football again with the LMFA Panthers. This prepared me for the next 4 years of football at Oakridge Secondary School where I played Center and Guard on the O-Line and Tackle on the D-Line. I had a lot of fun playing for the school and with my best friends making memories. In grade 12 I had to make the choice of whether or not I continued to play at a post-secondary level, but as explored my options I never found a program that truly interested me enough to play football there too. So I hung up my cleats once again.', 'football.png', '8'),
(2, 'Hockey', 'Hockey was the first sport I was ever taught how to play, just like most Canadian kids. I started off playing right wing in Timbits, but then I became a goalie in Minor Novice, and I played A with the Oakridge Aero’s until Minor Bantam. The reason I stopped all the sudden was because I wasn’t enjoying playing the game anymore, so I took a break for a couple years. I started back playing again in Minor Midget again with Oakridge Aero’s but this time I wanted a change, so I went back to right wing. I had a lot of fun playing forward for those few years and it re-sparked my love for the game.', 'hockey.png', '5'),
(3, 'Golf', 'I was introduced to golf at a younger age than most, which has given me the advantage in the game. My dad joined the London Hunt and Country Club when I was eight years old, so my dad wanted to get me into the game right away. I still remember the day my dad and I went and picked out my first set of clubs out. I’ve played gold every year since I started playing back in 2007 and I plan on playing until I can’t swing anymore. As my best friends and I have gotten older, we don’t get to see each other all the time anymore since we are all at different schools, so during the summers we always try to get together at least once a week and play a round of golf. It doesn’t matter what course we are playing at or how we play, we just go out to enjoy each other’s company. ', 'golf.png', '8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_things`
--
ALTER TABLE `tbl_things`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_things`
--
ALTER TABLE `tbl_things`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
