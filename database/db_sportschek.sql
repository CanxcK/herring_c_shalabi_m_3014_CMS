-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 20, 2019 at 12:00 AM
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
(2, 'tank1.png', 'Champion Tank Top', '39.98', 'Blue Champion Tank Top '),
(4, 'shoes1.png', 'adidas Ultraboost 19', '249.99', 'adidas Men\'s Ultraboost 19 Running Shoes - Black/Grey'),
(5, 'basketball1.png', 'Jordan Courtside 23 Basketball Shoes ', '169.99', 'Nike Men\'s Jordan Courtside 23 Basketball Shoes - Black/Red/White'),
(6, 'shoes2.png', 'New Balance M890', '149.99', 'New Balance Shoes M980'),
(9, 'shoes3.png', 'Under Armor Remix', '66.95', 'Under Armour Men\'s Remix Running Shoes - Black/Steel'),
(12, 'tank2.png', 'Hurley Men\'s One & Only Tank Top', '29.99', 'Hurley Men\'s One & Only Tank Top - Dark Grey'),
(13, 'tank3.png', 'Fox Men\'s Fox Head Basketball Tank', '46.99', 'Fox Men\'s Fox Head Basketball Tank - Black/Grey'),
(14, 'tank4.png', 'PUMA Men\'s Ace Tank', '39.99', 'PUMA Men\'s Ace Tank - White/Black'),
(15, 'tank5.png', 'Nike Sportswear Men\'s Statement Mesh Tank', '48.00', 'Nike Sportswear Men\'s Statement Mesh Tank - White/Black'),
(16, 'tank6.png', 'Vans Men\'s Print Box Tank', '24.99', 'Vans Men\'s Print Box Tank - White/Jazzy'),
(17, 'tank7.png', 'PUMA Men\'s Classics Tank', '29.99', 'PUMA Men\'s Classics Tank - White/Black'),
(18, 'hoodie2.png', 'Champion Men\'s Powerblend Fleece Pullover Hoodie', '69.99', 'Champion Men\'s Powerblend Fleece Pullover Hoodie - Blue/Logo'),
(19, 'hoodie3.png', 'Fox Men\'s Throwback Pullover Hoodie', '69.99', 'Fox Men\'s Throwback Pullover Hoodie - Navy'),
(20, 'hoodie4.png', 'The North Face Men\'s Half Dome Pullover Hoodie', '69.99', 'The North Face Men\'s Half Dome Pullover Hoodie - Black'),
(21, 'hoodie5.png', 'Vans Men\'s Classic Pullover Hoodie', '64.99', 'Vans Men\'s Classic Pullover Hoodie - Black/Sunny Lime'),
(22, 'hoodie6.png', 'PUMA Men\'s Modern Sports Pullover Hoodie', '69.99', 'PUMA Men\'s Modern Sports Pullover Hoodie - Peacoat'),
(23, 'hoodie7.png', 'Champion Men\'s Powerblend Fleece Full Zip Hoodie', '54.99', 'Champion Men\'s Powerblend Fleece Full Zip Hoodie - Grey'),
(24, 'longsleeves2.png', 'Craft High Function Men\'s Jacket', '84.88', 'Craft High Function Men\'s Jacket - Lime Green'),
(25, 'longsleeves3.png', 'PUMA Men\'s Rebel Fleece Crew Sweatshirt', '59.99', 'PUMA Men\'s Rebel Fleece Crew Sweatshirt - High Risk Red'),
(26, 'longsleeves4.png', 'Burton Men\'s Retro Mountain Crew Sweatshirt', '34.88', 'Burton Men\'s Retro Mountain Crew Sweatshirt - True Black'),
(27, 'longsleeves5.png', 'adidas Originals Men\'s Trefoil Long Sleeve T Shirt', '24.88', 'adidas Originals Men\'s Trefoil Long Sleeve T Shirt - Grey/Black'),
(28, 'longsleeves6.png', 'Woods Men\'s Castle Midlayer Full Zip Jacket', '59.88', 'Woods Men\'s Castle Midlayer Full Zip Jacket - Blue'),
(29, 'longsleeves7.png', 'Woods Men\'s Castle Midlayer Full Zip Jacket', '59.88', 'Woods Men\'s Castle Midlayer Full Zip Jacket - Black'),
(30, 'longsleeves1.png', 'Helly Hansen Long Sleeve', '54.99', 'Helly Hansen Long Sleeve Shirt - Red'),
(31, 'running4.png', 'Brooks Men\'s Cascadia 13 Trail Running Shoes', '159.99', 'Brooks Men\'s Cascadia 13 Trail Running Shoes - Red/Yellow/Black'),
(32, 'running5.png', 'Reebok Men\'s Sole Fury Running Shoes', '129.99', 'Reebok Men\'s Sole Fury Running Shoes - Black/White/Solar'),
(33, 'running6.png', 'New Balance Women\'s Fresh Foam ROAV Running Shoes', '109.99', 'New Balance Women\'s Fresh Foam ROAV Running Shoes - White/Black'),
(34, 'running7.png', 'Nike Men\'s Air Zoom Terra Wild Horse 5 LT Trail Running Shoes', '144.99', 'Nike Men\'s Air Zoom Terra Wild Horse 5 LT Trail Running Shoes - White/Pink/Black'),
(35, 'basketball2.png', 'Nike Men\'s LeBron XVI Basketball Shoes', '244.99', 'Nike Men\'s LeBron XVI Basketball Shoes - White/MTC'),
(36, 'basketball3.png', 'adidas Men\'s Harden Vol 3 Basketball Shoes ', '219.99', 'adidas Men\'s Harden Vol 3 Basketball Shoes - Black/Blue/Gray'),
(37, 'basketball4.png', 'Nike Men\'s N7 Jordan Retro 1 Hi Strap Basketball Shoes', '214.99', 'Nike Men\'s N7 Jordan Retro 1 Hi Strap Basketball Shoes - Cream'),
(38, 'basketball5.png', 'Nike Men\'s Zoom KD XI Basketball Shoes', '199.99', 'Nike Men\'s Zoom KD XI Basketball Shoes - Black/Grey/Gold'),
(39, 'basketball6.png', 'Nike Men\'s Kobe AD Exodus Basketball Shoes', '189.99', 'Nike Men\'s Kobe AD Exodus Basketball Shoes - Black/Grey/Purple'),
(40, 'basketball7.png', 'Nike Men\'s Kyrie 5 \"JDI\" Basketball Shoes', '175.00', 'Nike Men\'s Kyrie 5 \"JDI\" Basketball Shoes - Black/Volt/Pink');

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
(47, 11, 4),
(48, 10, 1),
(49, 11, 1),
(50, 12, 2),
(51, 13, 2),
(52, 14, 2),
(53, 15, 2),
(54, 16, 2),
(55, 17, 2),
(56, 18, 3),
(57, 19, 3),
(58, 20, 3),
(59, 21, 3),
(60, 22, 3),
(61, 23, 3),
(62, 24, 1),
(63, 25, 1),
(64, 26, 1),
(65, 27, 1),
(66, 28, 1),
(67, 29, 1),
(68, 30, 1),
(69, 31, 4),
(70, 32, 4),
(71, 33, 4),
(72, 34, 4),
(73, 35, 5),
(74, 36, 5),
(75, 37, 5),
(76, 38, 5),
(77, 39, 5),
(78, 40, 5);

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
(1, 'connor', 'connor', 'connor', 'connorcanuck96@gmail.com', '2019-02-04 22:04:56', '::1', '2019-04-19 23:57:03', NULL, NULL, 1),
(16, 'admin', 'admin', 'admin', 'admin@sportschek.ca', '2019-03-11 20:54:26', '::1', '2019-03-11 21:19:51', NULL, NULL, 1),
(17, 'spiderpan', 'pan', 'pan', 'pan@gmail.com', '2019-04-19 20:44:37', '::1', '2019-04-19 23:58:26', NULL, NULL, 1);

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
  MODIFY `apparel_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_apparel_genre`
--
ALTER TABLE `tbl_apparel_genre`
  MODIFY `apparel_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
