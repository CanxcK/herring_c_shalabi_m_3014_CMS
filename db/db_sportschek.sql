-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 13, 2019 at 01:11 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportschek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_apparel`
--

CREATE TABLE `tbl_apparel` (
  `apparel_id` mediumint(8) UNSIGNED NOT NULL,
  `apparel_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `apparel_name` varchar(125) NOT NULL,
  `apparel_price` varchar(10) NOT NULL,
  `apparel_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_apparel`
--

INSERT INTO `tbl_apparel` (`apparel_id`, `apparel_cover`, `apparel_name`, `apparel_price`, `apparel_description`) VALUES
(2, 'tank1.png', 'Champion Tank Top', '39.99', 'Blue Champion Tank Top '),
(3, 'hoodie1.png', 'Puma Hoodie (Black)', '64.99', 'Black Puma Hoodie'),
(4, 'shoes1.png', 'adidas Ultraboost 19', '249.99', 'adidas Men\'s Ultraboost 19 Running Shoes - Black/Grey'),
(5, 'basketball1.png', 'Jordan Courtside 23 Basketball Shoes ', '169.99', 'Nike Men\'s Jordan Courtside 23 Basketball Shoes - Black/Red/White'),
(6, 'shoes2.png', 'New Balance M890', '149.99', 'New Balance Shoes M980'),
(9, 'shoes3.png', 'Under Armor Remix', '66.95', 'Under Armour Men\'s Remix Running Shoes - Black/Steel');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_apparel_genre`
--

CREATE TABLE `tbl_apparel_genre` (
  `apparel_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `apparel_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_apparel_genre`
--

INSERT INTO `tbl_apparel_genre` (`apparel_genre_id`, `apparel_id`, `genre_id`) VALUES
(1, 2, 2),
(2, 3, 3),
(3, 1, 1),
(5, 5, 5),
(42, 4, 4),
(43, 6, 4),
(44, 7, 2),
(45, 8, 3),
(46, 9, 4),
(47, 11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Long Sleeve'),
(2, 'Tanks'),
(3, 'Hoodies'),
(4, 'Running Shoes'),
(5, 'Basketball Shoes'),
(6, 'Pants'),
(7, 'Shorts');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_access` tinyint(4) DEFAULT NULL,
  `user_admin` tinyint(4) DEFAULT NULL,
  `first_login` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `last_login`, `user_access`, `user_admin`, `first_login`) VALUES
(1, 'connor', 'connor', 'connor', 'connorcanuck96@gmail.com', '2019-02-04 22:04:56', '::1', '2019-04-12 22:18:38', NULL, NULL, 1),
(3, 'kya', 'kya', 'kya', 'kyadalexo@gmail.com', '2019-02-05 22:28:30', 'no', '2019-02-05 22:54:07', NULL, NULL, 0),
(15, 'mainoo', 'main', 'main', 'main@gmail.com', '2019-03-10 21:24:08', '::1', '2019-03-11 20:51:47', NULL, NULL, 1),
(16, 'admin', 'admin', 'admin', 'admin@sportschek.ca', '2019-03-11 20:54:26', '::1', '2019-03-11 21:19:51', NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_apparel`
--
ALTER TABLE `tbl_apparel`
  ADD PRIMARY KEY (`apparel_id`);

--
-- Indexes for table `tbl_apparel_genre`
--
ALTER TABLE `tbl_apparel_genre`
  ADD PRIMARY KEY (`apparel_genre_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_apparel`
--
ALTER TABLE `tbl_apparel`
  MODIFY `apparel_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_apparel_genre`
--
ALTER TABLE `tbl_apparel_genre`
  MODIFY `apparel_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
