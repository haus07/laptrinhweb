-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 01:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bkc`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_price` double NOT NULL,
  `product_description` text NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_email` varchar(55) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `updated_at`, `created_at`) VALUES
(1, '1', '1@gmail.com', '1', NULL, NULL),
(2, '2', '2@gmail.com', '2', NULL, NULL),
(3, '2', '2@gmail.com', '2', NULL, NULL),
(4, '2', '2@gmail.com', '2', NULL, NULL),
(5, '2', '2@gmail.com', '2', NULL, NULL),
(6, '2', '2@gmail.com', '2', NULL, NULL),
(7, '2', '2@gmail.com', '2', NULL, NULL),
(8, '2', '2@gmail.com', '2', NULL, NULL),
(9, '2', '2@gmail.com', '2', NULL, NULL),
(10, '2', '2@gmail.com', '2', NULL, NULL),
(11, '2', '2@gmail.com', '2', NULL, NULL),
(12, '2', '2@gmail.com', '2', NULL, NULL),
(13, '2', '2@gmail.com', '2', NULL, NULL),
(14, '2', '2@gmail.com', '2', NULL, NULL),
(15, '2', '2@gmail.com', '2', NULL, NULL),
(16, '2', '2@gmail.com', '2', NULL, NULL),
(17, '2', '2@gmail.com', '2', NULL, NULL),
(18, '2', '2@gmail.com', '2', NULL, NULL),
(19, '2', '2@gmail.com', '2', NULL, NULL),
(20, '2', '2@gmail.com', '2', NULL, NULL),
(21, '2', '2@gmail.com', '2', NULL, NULL),
(22, '2', '2@gmail.com', '2', NULL, NULL),
(23, '2', '2@gmail.com', '2', NULL, NULL),
(24, '2', '2@gmail.com', '2', NULL, NULL),
(25, '2', '2@gmail.com', '2', NULL, NULL),
(26, '2', '2@gmail.com', '2', NULL, NULL),
(27, '2', '2@gmail.com', '2', NULL, NULL),
(28, '2', '2@gmail.com', '2', NULL, NULL),
(29, '2', '2@gmail.com', '2', NULL, NULL),
(30, '2', '2@gmail.com', '2', NULL, NULL),
(31, '2', '2@gmail.com', '2', NULL, NULL),
(32, '2', '2@gmail.com', '2', NULL, NULL),
(33, '2', '2@gmail.com', '2', NULL, NULL),
(34, '2', '2@gmail.com', '2', NULL, NULL),
(35, '2', '2@gmail.com', '2', NULL, NULL),
(36, '2', '2@gmail.com', '2', NULL, NULL),
(37, '2', '2@gmail.com', '2', NULL, NULL),
(99, '99', '99@gmail.com', '99', NULL, NULL),
(100, '99', '99@gmail.com', '99', NULL, NULL),
(101, '99', '99@gmail.com', '99', NULL, NULL),
(102, '99', '99@gmail.com', '99', NULL, NULL),
(103, '99', '99@gmail.com', '99', NULL, NULL),
(104, '99', '99@gmail.com', '99', NULL, NULL),
(105, '99', '99@gmail.com', '99', NULL, NULL),
(106, '99', '99@gmail.com', '99', NULL, NULL),
(107, '99', '99@gmail.com', '99', NULL, NULL),
(108, '99', '99@gmail.com', '99', NULL, NULL),
(109, '99', '99@gmail.com', '99', NULL, NULL),
(110, '99', '99@gmail.com', '99', NULL, NULL),
(111, '99', '99@gmail.com', '99', NULL, NULL),
(112, '99', '99@gmail.com', '99', NULL, NULL),
(999, '999', '999@gmail.com', '999', NULL, NULL),
(1000, '999', '999@gmail.com', '999', NULL, NULL),
(1001, '999', '999@gmail.com', '999', NULL, NULL),
(1002, '999', '999@gmail.com', '999', NULL, NULL),
(1003, '999', '999@gmail.com', '999', NULL, NULL),
(1004, '999', '999@gmail.com', '999', NULL, NULL),
(1005, '999', '999@gmail.com', '999', NULL, NULL),
(1006, '999', '999@gmail.com', '999', NULL, NULL),
(1007, '999', '999@gmail.com', '999', NULL, NULL),
(1008, '999', '999@gmail.com', '999', NULL, NULL),
(1009, '999', '999@gmail.com', '999', NULL, NULL),
(1010, '999', '999@gmail.com', '999', NULL, NULL),
(1011, '999', '999@gmail.com', '999', NULL, NULL),
(1012, '999', '999@gmail.com', '999', NULL, NULL),
(1013, '999', '999@gmail.com', '999', NULL, NULL),
(1014, '999', '999@gmail.com', '999', NULL, NULL),
(1015, '999', '999@gmail.com', '999', NULL, NULL),
(1016, '999', '999@gmail.com', '999', NULL, NULL),
(1017, '999', '999@gmail.com', '999', NULL, NULL),
(1018, '999', '999@gmail.com', '999', NULL, NULL),
(1019, '999', '999@gmail.com', '999', NULL, NULL),
(1020, '999', '999@gmail.com', '999', NULL, NULL),
(1021, '999', '999@gmail.com', '999', NULL, NULL),
(1022, '999', '999@gmail.com', '999', NULL, NULL),
(1023, '999', '999@gmail.com', '999', NULL, NULL),
(1024, '999', '999@gmail.com', '999', NULL, NULL),
(1025, '999', '999@gmail.com', '999', NULL, NULL),
(1026, '999', '999@gmail.com', '999', NULL, NULL),
(1027, '999', '999@gmail.com', '999', NULL, NULL),
(1028, '999', '999@gmail.com', '999', NULL, NULL),
(1029, '999', '999@gmail.com', '999', NULL, NULL),
(1030, '999', '999@gmail.com', '999', NULL, NULL),
(1031, '999', '999@gmail.com', '999', NULL, NULL),
(1032, '999', '999@gmail.com', '999', NULL, NULL),
(1033, '999', '999@gmail.com', '999', NULL, NULL),
(1034, '999', '999@gmail.com', '999', NULL, NULL),
(1035, '999', '999@gmail.com', '999', NULL, NULL),
(1036, '999', '999@gmail.com', '999', NULL, NULL),
(1037, '999', '999@gmail.com', '999', NULL, NULL),
(1038, '999', '999@gmail.com', '999', NULL, NULL),
(1039, '999', '999@gmail.com', '999', NULL, NULL),
(1040, '999', '999@gmail.com', '999', NULL, NULL),
(1041, '999', '999@gmail.com', '999', NULL, NULL),
(1042, '999', '999@gmail.com', '999', NULL, NULL),
(1043, '999', '999@gmail.com', '999', NULL, NULL),
(1044, '999', '999@gmail.com', '999', NULL, NULL),
(1045, '999', '999@gmail.com', '999', NULL, NULL),
(1046, '999', '999@gmail.com', '999', NULL, NULL),
(1047, '999', '999@gmail.com', '999', NULL, NULL),
(1048, '999', '999@gmail.com', '999', NULL, NULL),
(1049, '999', '999@gmail.com', '999', NULL, NULL),
(1050, '999', '999@gmail.com', '999', NULL, NULL),
(1051, '999', '999@gmail.com', '999', NULL, NULL),
(1052, '999', '999@gmail.com', '999', NULL, NULL),
(1053, '999', '999@gmail.com', '999', NULL, NULL),
(1054, '999', '999@gmail.com', '999', NULL, NULL),
(1055, '999', '999@gmail.com', '999', NULL, NULL),
(1056, '999', '999@gmail.com', '999', NULL, NULL),
(1057, '999', '999@gmail.com', '999', NULL, NULL),
(1058, '999', '999@gmail.com', '999', NULL, NULL),
(1059, '999', '999@gmail.com', '999', NULL, NULL),
(1060, '999', '999@gmail.com', '999', NULL, NULL),
(1061, '999', '999@gmail.com', '999', NULL, NULL),
(1062, '999', '999@gmail.com', '999', NULL, NULL),
(1063, '999', '999@gmail.com', '999', NULL, NULL),
(1064, '999', '999@gmail.com', '999', NULL, NULL),
(1065, '999', '999@gmail.com', '999', NULL, NULL),
(1066, '999', '999@gmail.com', '999', NULL, NULL),
(1067, '999', '999@gmail.com', '999', NULL, NULL),
(1068, '999', '999@gmail.com', '999', NULL, NULL),
(1069, '999', '999@gmail.com', '999', NULL, NULL),
(1070, '999', '999@gmail.com', '999', NULL, NULL),
(1071, '999', '999@gmail.com', '999', NULL, NULL),
(1072, '999', '999@gmail.com', '999', NULL, NULL),
(1073, '999', '999@gmail.com', '999', NULL, NULL),
(1074, '999', '999@gmail.com', '999', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1075;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
