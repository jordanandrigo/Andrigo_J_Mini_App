-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 02, 2020 at 10:18 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_miniApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `miniCooper`
--

CREATE TABLE `miniCooper` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `img` text NOT NULL,
  `thumb` text NOT NULL,
  `vid` text NOT NULL,
  `description` text NOT NULL,
  `price` varchar(12) NOT NULL,
  `slogan` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `miniCooper`
--

INSERT INTO `miniCooper` (`id`, `name`, `img`, `thumb`, `vid`, `description`, `price`, `slogan`) VALUES
(1, 'Mini Countryman', 'countryman.jpg', 'countryman_thumb.png', 'countryman.mp4', 'The new MINI Countryman ALL4 is as daring and adventure minded as you are. Whether you prefer playing in the city or escaping it at the first opportunity, you’ll have the freedom and flexibility to go wherever your wandering mind takes you. Time to discover the new MINI Countryman and start writing your next adventure.\r\n\r\n', '$32,990', 'Inspire Your Drive.'),
(2, 'Mini 5 Door', '5door.jpg', '5door_thumb.png', '5door.mp4', 'It’s the iconic MINI hatch, with two extra doors and a bit more room for passengers and cargo. Featuring our hallmark wheels-pushed stance and a low centre of gravity, the MINI 5 door is designed to deliver the same level of corner-carving agility as its 3-door brother. But thanks to a surprisingly spacious interior equipped with added legroom and up to 941 Litres of cargo space, it’s as functional to own as it is fun to drive.', '$24,790', 'Explore More Corners.'),
(3, 'Mini 3 Door', '3door.jpg', '3door_thumb.png', '3door.mp4', 'It’s the original icon, reborn and reimagined for modern motoring. The MINI 3 door builds on 60+ years of timeless MINI design, but comes equipped with a whole host of 21st century tech features and practical touches to cater to your every need. Distinct by design and urban by nature, it’s made to stand out as you explore new corners of your city. And with its ultra-nimble go-kart feel, you’re sure to find something exciting around every turn.\r\n\r\n', '$23,490', 'Explore More Corners.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `miniCooper`
--
ALTER TABLE `miniCooper`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `miniCooper`
--
ALTER TABLE `miniCooper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
