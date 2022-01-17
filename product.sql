-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 08:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(45) NOT NULL,
  `customer_mobileno` varchar(45) NOT NULL,
  `customer_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inserttest`
--

CREATE TABLE `inserttest` (
  `id` int(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  `rating` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2022-01-17 12:10:20', '2022-01-17 12:10:20'),
(2, 'moderator', '2022-01-17 12:10:20', '2022-01-17 12:10:20'),
(3, 'admin', '2022-01-17 12:10:20', '2022-01-17 12:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(10) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `user_title` varchar(100) NOT NULL,
  `user_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `user_profile`, `name`, `user_title`, `user_description`) VALUES
(1, 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.w3schools.com%2Fhowto%2Fimg_avatar.png&imgref', 'test name', 'test profile', 'test description');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(3, 'admin', 'admin@bezkoder.com', '$2a$08$OdL8gIlmv.tOfsejoAcEMu2NsSp577eRWDB7TZRXSdM4rdKdb31Y6', '2022-01-17 06:42:11', '2022-01-17 06:42:11'),
(4, 'mod', 'mod@bezkoder.com', '$2a$08$kOSKOeSdx/KDZkY2X2Dge.yiLuwlxZkVbZ3.6V0aHgoV9OUoRh3ou', '2022-01-17 06:43:20', '2022-01-17 06:43:20'),
(5, 'zkoder', 'user@bezkoder.com', '$2a$08$9Ji2QxCxIzksKmsptYhb1ObwQFUP5zlTv0jTCwBLy7wjYQYb7yp6G', '2022-01-17 06:47:34', '2022-01-17 06:47:34'),
(6, 'test', 'test@bezkoder.com', '$2a$08$sHc8pBzQW6pPz2vgsk4a3erb28lZpsj8BSoAoi5eHGZSrD/LYtt.C', '2022-01-17 06:50:32', '2022-01-17 06:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2022-01-17 06:43:20', '2022-01-17 06:43:20', 1, 4),
('2022-01-17 06:47:34', '2022-01-17 06:47:34', 1, 5),
('2022-01-17 06:42:11', '2022-01-17 06:42:11', 2, 3),
('2022-01-17 06:43:20', '2022-01-17 06:43:20', 2, 4),
('2022-01-17 06:47:34', '2022-01-17 06:47:34', 2, 5),
('2022-01-17 06:50:32', '2022-01-17 06:50:32', 2, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `inserttest`
--
ALTER TABLE `inserttest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inserttest`
--
ALTER TABLE `inserttest`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
