-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 11:28 PM
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
-- Database: `dhuyedibo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(0, 'shaan1', 'shaansaud695@gmail.com', '$2y$10$wAZX9WHPSH3upw1J8ld9guYrbIzSIMe29PJrb8qvn1T.v5jblN1Aa'),
(0, 'ahona', 'ahona@gmail.com', '$2y$10$F7mtqVUHdmUpIWCxb9SgdOqSBRJNAvB3AFiD0ks2v3B6dmVAsGB5.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`product_id`, `ip_address`, `quantity`) VALUES
(1, '::1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact-data`
--

CREATE TABLE `contact-data` (
  `id` int(20) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(55) NOT NULL,
  `messages` text NOT NULL,
  `file` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact-data`
--

INSERT INTO `contact-data` (`id`, `firstname`, `lastname`, `phone`, `email`, `messages`, `file`) VALUES
(1, 'Shabab', 'Abdullah', '01747288843', 'ashabab181@gmail.com', 'Hi', ''),
(2, '', '', '', '', '', ''),
(3, '', '', '', '', '', ''),
(4, '', '', '', '', '', ''),
(5, '', '', '', '', '', ''),
(6, '', '', '', '', '', ''),
(7, 'Shabab', 'Abdullah', '01747288843', 'ashabab181@gmail.com', 'Hi', ''),
(8, '', '', '', '', '', ''),
(9, 'Shabab', 'Abdullah', '01747288843', 'ashabab181@gmail.com', 'You ', ''),
(10, 'Shabab', 'Abdullah', '01747288843', 'ashabab181@gmail.com', ' ABC', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(0, 6, 1398121650, 2, 4, 'pending'),
(0, 6, 663473345, 2, 2, 'pending'),
(0, 6, 1019157916, 3, 3, 'pending'),
(0, 6, 1861633206, 3, 3, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_keywords`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `insert_date`, `product_status`) VALUES
(1, 'Shirt', 'Dry Cleaning Shirt', 'Shirt', 'Shirt.jpg', 'Mens_Corporate_Shirt_Long_Sleeve_Float_Navy-875x1000.jpg', 'web1-73.jpg', 70, '2023-08-21 19:44:10', 'true'),
(2, 'Pant', 'Dry Cleaning Pant', 'Dry Cleaning', 'pant.webp', '45-600x600.jpg', 'mr_pant_2_f_5055_3_tk_2150_vat_6_.jpg', 80, '2023-08-21 19:47:31', 'true'),
(3, 'Porda (Dry Cleaning)', 'Dry Clean', 'Porda', 'porda.jpg', 'porda.jpg', 'porda.jpg', 300, '2023-08-21 00:15:01', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(0, 6, 600, 1398121650, 2, '2023-08-21 00:00:50', 'Complete'),
(0, 6, 300, 663473345, 2, '2023-08-21 00:07:43', 'Complete'),
(0, 6, 1350, 1019157916, 3, '2023-08-21 14:09:35', 'Complete'),
(0, 6, 1140, 1861633206, 2, '2023-08-21 14:28:14', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_mode`, `date`) VALUES
(0, 0, 1398121650, 600, 'Cash on delivery', '2023-08-21 00:00:50'),
(0, 0, 1398121650, 600, 'Cash on delivery', '2023-08-21 00:00:53'),
(0, 0, 1398121650, 600, 'Cash on delivery', '2023-08-21 00:07:43'),
(0, 0, 1398121650, 3500, 'Cash on delivery', '2023-08-21 14:09:35'),
(0, 0, 1398121650, 2000, 'Cash on delivery', '2023-08-21 14:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(6, 'shaan', 'shaansaud695@gmail.com', '$2y$10$RYXNycBrxGCWbSWUbhX6Aeob6weE0Ixo4rtX3K4qyu1L5FSslq8Yy', '277-2776144_chibi-killua-render-by-miahatake13-on-deviantart-hunter-x-hunter-killua-chibi.png', '::1', '124-B, Banani, Dhaka-1212', 1775780238);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `contact-data`
--
ALTER TABLE `contact-data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact-data`
--
ALTER TABLE `contact-data`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
