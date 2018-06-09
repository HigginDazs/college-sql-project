-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 09, 2018 at 03:12 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mscim2017_cth1`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `album_id` int(10) NOT NULL,
  `title` varchar(29) CHARACTER SET utf8 DEFAULT NULL,
  `artist` varchar(17) CHARACTER SET utf8 DEFAULT NULL,
  `genre` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `year` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`album_id`, `title`, `artist`, `genre`, `year`) VALUES
(1, 'Inhuman Rampage', 'DragonForce', 'Power Metal', 2006),
(2, 'Come Clarity', 'In Flames', 'Melodic Death Metal', 2006),
(3, 'The Fall of Ideals', 'All That Remains', 'Metalcore', 2006),
(4, 'A Matter of Life and Death', 'Iron Maiden', 'Heavy Metal', 2006),
(5, 'Daylight Dies', 'Killswitch Engage', 'Metalcore', 2006),
(6, 'The Blackening', 'Machine Head', 'Thrash Metal', 2007),
(7, 'Fiction', 'Dark Tranquility', 'Melodic Death Metal', 2007),
(8, 'In Sorte Diaboli', 'Dimmu Borgir', 'Black Metal', 2007),
(9, 'The Apostasy', 'Behemoth', 'Death Metal', 2007),
(10, 'Systematic Chaos', 'Dream Theatre', 'Progressive Metal', 2007),
(11, 'A Sense of Purpose', 'In Flames', 'Melodic Death Metal', 2008),
(12, 'The Art of War', 'Sabaton', 'Power Metal', 2008),
(13, 'The Way of All Flesh', 'Gojira', 'Death Metal', 2008),
(14, 'Death Magnetic', 'Metallica', 'Thrash Metal', 2008),
(15, 'The Age of Nero', 'Satyricon', 'Black Metal', 2008),
(16, 'Into the Labyrinth', 'Saxon', 'Heavy Metal', 2009),
(17, 'Crack the Skye', 'Mastodon', 'Heavy Metal', 2009),
(18, 'Evangelion', 'Behemoth', 'Death Metal', 2009),
(19, 'Killswitch Engage', 'Killswitch Engage', 'Metalcore', 2009),
(20, 'No Sacrifice, No Victory', 'HammerFall', 'Power Metal', 2009),
(21, 'We Are the Void', 'Dark Tranquility', 'Melodic Death Metal', 2010),
(22, 'Reptilian', 'Keep of Kalessin', 'Black Metal', 2010),
(23, 'Coat of Arms', 'Sabaton', 'Power Metal', 2010),
(24, 'The Final Frontier', 'Iron Maiden', 'Heavy Metal', 2010),
(25, 'Abrahadabra', 'Dimmu Borgir', 'Black Metal', 2010),
(26, 'Unto the Locust', 'Machine Head', 'Thrash Metal', 2011),
(27, 'A Dramatic Turn of Events', 'Dream Theatre', 'Progressive Metal', 2011),
(28, 'Heritage', 'Opeth', 'Progressive Metal', 2011),
(29, 'Surtur Rising', 'Amon Amarth', 'Death Metal', 2011),
(30, 'Infected', 'HammerFall', 'Power Metal', 2011),
(31, 'Resolution', 'Lamb of God', 'Thrash Metal', 2012),
(32, 'The Power Within', 'DragonForce', 'Power Metal', 2012),
(33, 'A War You Cannot Win', 'All That Remains', 'Metalcore', 2012),
(34, 'L\'Enfant Sauvage', 'Gojira', 'Death Metal', 2012),
(35, 'Carolus Rex', 'Sabaton', 'Power Metal', 2012),
(36, 'Sacrifice', 'Saxon', 'Heavy Metal', 2013),
(37, 'Satyricon', 'Satyricon', 'Black Metal', 2013),
(38, 'Disarm the Descent', 'Killswitch Engage', 'Metalcore', 2013),
(39, 'Deceiver of the Gods', 'Amon Amarth', 'Death Metal', 2013),
(40, 'The Living Infinite', 'Soilwork', 'Melodic Death Metal', 2013),
(41, 'Once More \'Round the Sun', 'Mastodon', 'Heavy Metal', 2014),
(42, 'Pale Communion', 'Opeth', 'Progressive Metal', 2014),
(43, '(r)Evolution', 'HammerFall', 'Power Metal', 2014),
(44, 'Maximum Overload', 'DragonForce', 'Power Metal', 2014),
(45, 'The Satanist', 'Behemoth', 'Death Metal', 2014),
(46, 'Epistemology', 'Keep of Kalessin', 'Black Metal', 2015),
(47, 'VII: Sturm und Drang', 'Lamb of God', 'Thrash Metal', 2015),
(48, 'Battering Ram', 'Saxon', 'Heavy Metal', 2015),
(49, 'The Book of Souls', 'Iron Maiden', 'Heavy Metal', 2015),
(50, 'The Ride Majestic', 'Soilwork', 'Melodic Death Metal', 2015),
(51, 'Hardwired... to Self-Destruct', 'Metallica', 'Thrash Metal', 2016),
(52, 'The Astonishing', 'Dream Theatre', 'Progressive Metal', 2016),
(53, 'Sorceress', 'Opeth', 'Progressive Metal', 2016),
(54, 'Magma', 'Gojira', 'Death Metal', 2016);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `album_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
