-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2017 at 06:40 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` text NOT NULL,
  `cat_slug` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_slug`) VALUES
(1, 'watch', 'watch'),
(2, 'mobile', ''),
(3, 'T-shirt', 'T-shirt');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `chk_id` int(11) NOT NULL,
  `chk_item` int(11) NOT NULL,
  `chk_ref` text NOT NULL,
  `chk_timing` datetime NOT NULL,
  `chk_qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`chk_id`, `chk_item`, `chk_ref`, `chk_timing`, `chk_qty`) VALUES
(27, 3, '2017-07-10 12:28:37 1404242359', '2017-07-10 01:35:31', 1),
(113, 2, '2017-07-11 07:53:19 534267615', '2017-07-11 12:09:27', 2),
(154, 7, '2017-07-13 02:49:56 1571600159', '2017-07-13 02:49:56', 5),
(130, 3, '2017-07-11 07:53:19 534267615', '2017-07-11 03:33:56', 5),
(158, 3, '2017-08-15 02:07:50 2029114381', '2017-08-15 02:07:50', 3),
(157, 7, '2017-07-15 08:01:16 468988934', '2017-07-15 08:01:25', 1),
(155, 8, '2017-07-13 02:49:56 1571600159', '2017-07-13 02:55:01', 1),
(156, 9, '2017-07-15 08:01:16 468988934', '2017-07-15 08:01:16', 2),
(153, 7, '2017-07-13 06:44:42 1738993358', '2017-07-13 02:07:25', 1),
(159, 8, '2017-08-15 02:07:50 2029114381', '2017-08-15 02:08:19', 1),
(160, 3, '2017-09-28 04:21:22 908228865', '2017-09-28 04:21:22', 2),
(161, 7, '2017-09-28 04:21:22 908228865', '2017-09-28 04:21:39', 2),
(162, 3, '2017-09-30 06:17:22 423592047', '2017-09-30 06:17:22', 2),
(163, 7, '2017-09-30 06:17:22 423592047', '2017-09-30 06:17:38', 2);

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping`
--

CREATE TABLE `online_shopping` (
  `item_id` int(11) NOT NULL,
  `item_img` text NOT NULL,
  `item_title` text NOT NULL,
  `item_description` text NOT NULL,
  `item_cat` text NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_cost` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_discount` int(11) NOT NULL,
  `item_delivery` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_shopping`
--

INSERT INTO `online_shopping` (`item_id`, `item_img`, `item_title`, `item_description`, `item_cat`, `item_qty`, `item_cost`, `item_price`, `item_discount`, `item_delivery`) VALUES
(3, 'img/nokia_mobile.jpg', 'Samsung Mobile', '', 'select the category', 2, 20000, 22000, 3000, 30),


(9, 'img/watch.jpg', 'watch', 'yjhtgfd', 'Watch', 1, 500, 600, 100, 20),

(7, 'img/tshirt.jpg', 'Tshirt', 'this were beautifull shirt', 'T-shirt', 1, 500, 600, 100, 10);


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_name` text NOT NULL,
  `order_email` text NOT NULL,
  `order_contact` text NOT NULL,
  `order_state` text NOT NULL,
  `order_delivery_address` text NOT NULL,
  `order_checkout_ref` text NOT NULL,
  `order_total` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `order_return_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_name`, `order_email`, `order_contact`, `order_state`, `order_delivery_address`, `order_checkout_ref`, `order_total`, `order_status`, `order_return_status`) VALUES
(1, 'sudhakar', 'chintareddy.sudhakarreddy@gmail.com', '9526438178', 'SR nager', '4-22/2 near Andhra bank', '2017-07-11 07:53:19 534267615', 27640, 1, 1),
(4, 'ch.srikanth reddy', 'ch.srikanthreddy@gmail.com', '9640600423', 'Hightech city', '4-22/2', '2017-07-13 02:49:56 1571600159', 2510, 0, 0),
(3, 'anil', 'anil@gmail.com', '9526438178', 'LB nager', '4-22/1 near icci bank', '2017-07-13 06:44:42 1738993358', 40540, 0, 1),
(5, 'nagi', 'nagi@gmail.com', '959423105', 'SR nager', '4-22/2 near Andhra bank', '2017-07-15 08:01:16 468988934', 1530, 0, 1),
(6, 'loka', 'lokaanvesh2@gmail.com', '9555526698', 'jaladhar', 'jaladhar', '2017-08-15 02:07:50 2029114381', 70060, 1, 1),
(7, 'sudhakar', 'chintareddy.sudhakarreddy@gmail.com', '9592038184', 'Hightech city', '4-22/2 near Andhra bank', '2017-09-28 04:21:22 908228865', 39040, 0, 0),
(8, 'raju', 'raju@gmail.com', '9592036545', 'Hightech city', '4-22/1 near icci bank', '2017-09-30 06:17:22 423592047', 39040, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`chk_id`);

--
-- Indexes for table `online_shopping`
--
ALTER TABLE `online_shopping`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `chk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `online_shopping`
--
ALTER TABLE `online_shopping`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
