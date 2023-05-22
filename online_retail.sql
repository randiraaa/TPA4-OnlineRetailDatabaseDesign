-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 06:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_retail`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Baju'),
(2, 'Celana'),
(3, 'Kerudung'),
(4, 'Sepatu'),
(5, 'Pakaian Dalam'),
(6, 'Jaket'),
(7, 'Parfum'),
(8, 'Topi'),
(9, 'Kecantikan'),
(10, 'Sendal');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `email`, `phone`) VALUES
(1, 'Randi', 'randira24@gmail.com', '085603553044'),
(2, 'Anggia', 'anggia@gmail.com', '085603553098'),
(3, 'Yusuf', 'yusuf@gmail.com', '085603553066'),
(4, 'Asep', 'asep@gmail.com', '085603553064'),
(5, 'Putri', 'putri@gmail.com', '085603553064'),
(6, 'Rizal', 'rizal@gmail.com', '085603553067'),
(7, 'Agus', 'agus@gmail.com', '085603553064'),
(8, 'Cintia', 'cintia@gmail.com', '085603553078'),
(9, 'Diny', 'diny@gmail.com', '085603553054'),
(10, 'Alex', 'alex@gmail.com', '085603553089');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`, `category_id`) VALUES
(1, 'Baju Tidur Wanita', '100000.00', 1),
(2, 'Baju Lengan Panjang', '50000.00', 1),
(3, 'Baju Lengan Pendek', '40000.00', 1),
(4, 'Baju Renang', '70000.00', 1),
(5, 'Celana Jeans', '150000.00', 2),
(6, 'Celana Chino', '140000.00', 2),
(7, 'Celana Cargo', '170000.00', 2),
(8, 'Pashmina', '20000.00', 3),
(9, 'Khimar Panjang', '15000.00', 3),
(10, 'Hijab Scarf', '30000.00', 3),
(11, 'Sepatu Adidas', '170000.00', 4),
(12, 'Sepatu Boots', '120000.00', 4),
(13, 'Sepatu Safety Boots', '230000.00', 4),
(14, 'Blazer', '15000.00', 5),
(15, 'Bikini', '15000.00', 5),
(16, 'Belt', '15000.00', 5),
(17, 'Jaket Bomber', '150000.00', 6),
(18, 'Jaket Trucker', '150000.00', 6),
(19, 'Jaket Varsity', '150000.00', 6),
(20, 'Burberry London', '70000.00', 7),
(21, 'Belagio', '70000.00', 7),
(22, 'Butterfly', '80000.00', 7),
(23, 'Topi Beani', '30000.00', 8),
(24, 'Topi Fedora', '30000.00', 8),
(25, 'Topi Hat', '40000.00', 8),
(26, 'Face Primer', '45000.00', 9),
(27, 'Foundation', '50000.00', 9),
(28, 'Conclear', '35000.00', 9),
(29, 'Sandal Tali', '50000.00', 10),
(30, 'Sandal Santai', '50000.00', 10),
(31, 'Sandal Flat', '50000.00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `customer_id`, `transaction_date`, `product_id`, `product_name`, `price`) VALUES
(1, 1, '2023-05-20', 2, 'Baju Lengan Panjang', '50000.00'),
(2, 1, '2023-05-20', 2, 'Baju Lengan Panjang', '50000.00'),
(3, 1, '2023-05-20', 3, 'Baju Lengan Pendek', '40000.00'),
(4, 1, '2023-05-20', 4, 'Baju Renang', '70000.00'),
(5, 2, '2023-05-20', 27, 'Foundation', '50000.00'),
(6, 2, '2023-05-21', 28, 'Conclear', '35000.00'),
(7, 2, '2023-05-21', 28, 'Conclear', '35000.00'),
(8, 2, '2023-05-21', 28, 'Conclear', '35000.00'),
(9, 9, '2023-05-21', 29, 'Sendal Tali', '50000.00'),
(10, 9, '2023-05-21', 30, 'Sendal Santai', '50000.00'),
(11, 3, '2023-05-22', 24, 'Topi Fedora', '30000.00'),
(12, 3, '2023-05-22', 24, 'Topi Fedora', '30000.00'),
(13, 3, '2023-05-22', 24, 'Topi Fedora', '30000.00'),
(14, 3, '2023-05-22', 2, 'Baju Lengan Panjang', '50000.00');

-- --------------------------------------------------------

--
-- Table structure for table `trans_items`
--

CREATE TABLE `trans_items` (
  `trans_items_id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans_items`
--

INSERT INTO `trans_items` (`trans_items_id`, `transaction_id`, `product_id`, `quantity`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 1),
(3, 3, 3, 1),
(4, 4, 4, 1),
(5, 5, 27, 1),
(6, 6, 28, 1),
(7, 7, 28, 1),
(8, 8, 28, 1),
(9, 9, 29, 1),
(10, 10, 30, 1),
(11, 11, 24, 1),
(12, 12, 24, 1),
(13, 13, 24, 1),
(14, 14, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `trans_items`
--
ALTER TABLE `trans_items`
  ADD PRIMARY KEY (`trans_items_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `trans_items`
--
ALTER TABLE `trans_items`
  MODIFY `trans_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `trans_items`
--
ALTER TABLE `trans_items`
  ADD CONSTRAINT `trans_items_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`),
  ADD CONSTRAINT `trans_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
