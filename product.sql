-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 06:49 AM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_prod_type`
--

CREATE TABLE `master_prod_type` (
  `type_id` int(10) NOT NULL,
  `type_name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_prod_type`
--

INSERT INTO `master_prod_type` (`type_id`, `type_name`) VALUES
(1, 'Pen'),
(2, 'Pencil'),
(3, 'Scale'),
(4, 'Sticky Notes');

-- --------------------------------------------------------

--
-- Table structure for table `product_entry`
--

CREATE TABLE `product_entry` (
  `entri_id` int(10) NOT NULL,
  `type_id` int(10) NOT NULL,
  `count` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_entry`
--

INSERT INTO `product_entry` (`entri_id`, `type_id`, `count`) VALUES
(1, 1, 1),
(2, 1, 20),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimonial_id` int(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `user_title` varchar(45) NOT NULL,
  `user_description` varchar(100) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `testimonial_status` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimonial_id`, `name`, `user_title`, `user_description`, `user_profile`, `testimonial_status`) VALUES
(1, 'kannan', 'chennai', 'this is best service', 'https://mdbootstrap.com/img/Photos/Avatars/img%20(1).webp', 'Active'),
(2, 'raman', 'madurai', 'good service', 'https://mdbootstrap.com/img/Photos/Avatars/img%20(1).webp', 'Active'),
(3, 'ganesh', 'chennai', 'desc3', 'https://mdbootstrap.com/img/Photos/Avatars/img%20(1).webp', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `title`, `description`, `published`) VALUES
(1, 'tit1', 'desc1', 0),
(2, 'tit2', 'desc2', 0),
(3, 'tit3', 'desc3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_prod_type`
--
ALTER TABLE `master_prod_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `product_entry`
--
ALTER TABLE `product_entry`
  ADD PRIMARY KEY (`entri_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_prod_type`
--
ALTER TABLE `master_prod_type`
  MODIFY `type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `product_entry`
--
ALTER TABLE `product_entry`
  MODIFY `entri_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimonial_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
