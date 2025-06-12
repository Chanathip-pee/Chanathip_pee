-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2023 at 10:57 PM
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
-- Database: `node_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `products_ids` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float(8,2) NOT NULL,
  `sale_price` float(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `image` text NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `sale_price`, `quantity`, `image`, `category`, `type`) VALUES
(1, 'CPU INTEL CORE I5-12600K 3.7 GHz (SOCKET LGA 1700) ', '(ระบบระบายความร้อนไม่รวมอยู่ในสินค้า)', 10900.00, 8900.00, 5, 'item-1.jpg', NULL, NULL),
(2, 'MONITOR SAMSUNG ODYSSEY G3 LS24AG320NEXXT - 24\" VA FHD 165Hz FREESYNC PREMIUM', '', 5500.00, 4900.00, 3, 'item-2.jpg', NULL, NULL),
(3, 'VGA GIGABYTE GEFORCE RTX 4070 TI WINDFORCE OC 12G - 12GB ', '', 31200.00, NULL, 5, 'item-3.jpg', NULL, NULL),
(4, 'POWER SUPPLY AEROCOOL AE-650W - 650W 80 PLUS (BLACK) (ATX)', '', 1790.00, NULL, 5, 'item-4.jpg', NULL, NULL),
(5, 'GAMING CHAIR  ANDA SEAT KAISER SERIES (AD12XL-02-AB-PV/C) (MAROON-BLACK)', '', 15900.00, 14900.00, 2, 'item-5.jpg', NULL, NULL),
(6, 'MOUSE  RAZER DEATHADDER ESSENTIAL (BLACK)', '', 790.00, NULL, 5, 'item-6.jpg', NULL, NULL),
(7, '2 TB SSD CORSAIR MP600 PRO LPX - PCIe 4x4/NVMe M.2 2280 (BLACK) ', '', 5590.00, NULL, 3, 'item-7.jpg', NULL, NULL),
(8, 'WEBCAM  FANTECH LUMINOUS C30 - 4MP 2K', '', 1290.00, NULL, 5, 'item-8.jpg', NULL, NULL),
(9, 'CONTROLLER LOGITECH EXCELER GP-660 [PC/SWITCH/ANDROID]', '', 590.00, 490.00, 5, 'item-9.jpg', NULL, NULL),
(10, 'MONITOR GIGABYTE G27FC A - 27\" VA FHD 165Hz CURVED G-SYNC', '', 6900.00, 5950.00, 5, 'item-10.jpg', NULL, NULL),
(11, 'CPU AMD RYZEN 7 5800X 3.8 GHz (SOCKET AM4)', '', 8990.00, 8390.00, 5, 'item-11.jpg', NULL, NULL),
(12, '16GB (16GBx1) DDR5 6400MHz RAM KINGSTON FURY RENEGADE DDR5 RGB (BLACK-SILVER)', '', 3200.00, NULL, 5, 'item-12.jpg', NULL, NULL),
(13, 'NOTEBOOK (โน้ตบุ๊ค) ASUS TUF GAMING F15 FX507ZC4-HN002W (MECHA GRAY)', '', 34990.00, 32990.00, 5, 'item-13.jpg', NULL, NULL),
(14, 'MOUSE PAD (เมาส์แพด) STEELSERIES QCK EDGE [SIZE L]', '', 840.00, 640.00, 5, 'item-14.jpg', NULL, NULL),
(15, 'GAMING CHAIR  ANDA SEAT KAISER 3 SERIES SIZE L (AD12YDC-L-01-W-PV/C) CLOUDY WHITE', '', 16900.00, 15900.00, 5, 'item-15.jpg', NULL, NULL),
(16, 'MONITOR  MSI MPG ARTYMIS 343CQR - 34\" VA 2K 165Hz CURVED USB-C FREESYNC PREMIUM', '', 22900.00, 20900.00, 5, 'item-16.jpg', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
