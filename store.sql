-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2025 at 08:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Fertilizer A', 360),
(2, 'Fertilizer B', 400),
(3, 'Fertilizer C', 500),
(4, 'Fertilizer D', 800),
(5, 'tbu 1', 13000),
(6, 'tbu 2', 3000),
(7, 'tbu 3\r\n', 8000),
(8, 'tbu 4\r\n', 18000),
(9, 'tbu 5', 1500),
(10, 'tbu 6\r\n', 1000),
(11, 'tbu 7', 900),
(12, 'tbu 8\r\n', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Sajal', 'sajal.agrawal1997@gmail.com', '57f231b1ec41dc6641270cb09a56f897', '8899889988', 'Indore', '100 palace colony, Indore'),
(2, 'Ram', 'ram1234@xyz.com', '57f231b1ec41dc6641270cb09a56f897', '8899889989', 'Pune', '100 palace colony, Pune'),
(3, 'Shyam', 'shyam@xyz.com', '57f231b1ec41dc6641270cb09a56f897', '8899889990', 'Bangalore', '100 palace colony, Bangalore'),
(4, 'Achi Yadav', 'achidas@gmail.com', '123456', '1234567891', 'Bengaluru', 'Nitte meenakshi road, MIT Gate no 3'),
(5, 'Mokshita Yadav', 'bala.mokshita@gmail.com', '14e1b600b1fd579f47433b88e8d85291', '9876543219', 'Bengaluru', 'Nitte meenakshi road, MIT Gate no 3');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `orderid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`orderid`, `user_id`, `item_id`, `status`, `item_name`, `delivery`) VALUES
(7, 3, 3, 'Added to cart', 'Fertilizer C', 0),
(8, 3, 4, 'Added to cart', 'Fertilizer D', 0),
(9, 3, 5, 'Added to cart', 'tbu 1', 0),
(10, 3, 11, 'Added to cart', 'tbu 7', 1),
(11, 1, 9, 'Added to cart', 'tbu 5', 0),
(12, 1, 2, 'Added to cart', 'Fertilizer B', 1),
(13, 1, 8, 'Added to cart', 'tbu 4\r\n', 0),
(14, 4, 2, 'Confirmed', 'Fertilizer B', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_items`
--
ALTER TABLE `users_items`
  ADD CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
