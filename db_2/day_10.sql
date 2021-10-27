-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2021 at 03:36 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `day_10`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `checkin_id` int(11) NOT NULL,
  `checkin_phone` int(10) NOT NULL,
  `checkin_location` int(11) NOT NULL,
  `checkin_date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkin`
--

INSERT INTO `checkin` (`checkin_id`, `checkin_phone`, `checkin_location`, `checkin_date_created`) VALUES
(4, 1111111111, 1, '2021-10-24 08:34:46'),
(5, 1111111111, 2, '2021-10-24 08:46:45'),
(6, 1111111111, 2, '2021-10-24 08:47:05'),
(7, 1111111111, 6, '2021-10-24 08:47:17'),
(8, 222222222, 1, '2021-10-24 12:36:08'),
(9, 222222222, 1, '2021-10-24 12:36:20'),
(10, 1234567890, 3, '2021-10-25 01:06:49'),
(11, 1234567890, 3, '2021-10-25 01:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_branch` varchar(256) NOT NULL,
  `company_name` varchar(256) NOT NULL,
  `company_date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_branch`, `company_name`, `company_date_created`) VALUES
(1, 'No 1, Jalan Tasik Utama 5, Sungai Besi, 57000 Kuala Lumpur, Federal Territory of Kuala Lumpur', 'company 1', '2021-10-24 06:43:02'),
(2, 'No 2, Jalan Tasik Utama 5, Sungai Besi, 57000 Kuala Lumpur, Federal Territory of Kuala Lumpur', 'company 2', '2021-10-24 06:43:02'),
(3, 'No 3, Jalan Tasik Utama 5, Sungai Besi, 57000 Kuala Lumpur, Federal Territory of Kuala Lumpur', 'company 3', '2021-10-24 06:43:30'),
(4, 'No 4, Jalan Tasik Utama 5, Sungai Besi, 57000 Kuala Lumpur, Federal Territory of Kuala Lumpur', 'company 4', '2021-10-24 07:22:28'),
(5, 'No 5, Jalan Tasik Utama 5, Sungai Besi, 57000 Kuala Lumpur, Federal Territory of Kuala Lumpur', 'company 5', '2021-10-24 06:44:04'),
(6, 'No 6, Jalan Tasik Utama 5, Sungai Besi, 57000 Kuala Lumpur, Federal Territory of Kuala Lumpur', 'company 6', '2021-10-24 06:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_email` varchar(50) NOT NULL,
  `customers_password` varchar(256) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_status` int(1) NOT NULL,
  `customer_date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_email`, `customers_password`, `customer_name`, `customer_status`, `customer_date_created`) VALUES
(32, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 07:51:23'),
(40, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 07:59:58'),
(41, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 08:00:35'),
(42, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 08:00:44'),
(43, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 08:04:03'),
(44, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 08:05:17'),
(45, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 08:06:20'),
(46, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 08:07:26'),
(47, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 08:19:53'),
(48, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 08:19:56'),
(49, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 08:46:42'),
(50, '', '', 'Ahmad Fikri bin Anwar Fadzil', 1, '2021-10-24 08:47:12'),
(51, '', '', 'Azizi', 1, '2021-10-24 12:35:35'),
(52, '', '', 'Amir', 1, '2021-10-25 00:51:49'),
(53, '', '', 'Azizi Invoke', 1, '2021-10-25 01:06:40'),
(54, '', '', 'Azizi Invoke', 1, '2021-10-25 01:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `tac`
--

CREATE TABLE `tac` (
  `tac_id` int(11) NOT NULL,
  `tac_phone` int(10) NOT NULL,
  `tac_value` int(6) NOT NULL,
  `tac_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customers_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tac`
--

INSERT INTO `tac` (`tac_id`, `tac_phone`, `tac_value`, `tac_created_at`, `customers_id`) VALUES
(1, 1111111111, 261737, '2021-10-24 08:07:26', 32),
(6, 222222222, 788476, '2021-10-24 12:35:35', 51),
(7, 0, 603449, '2021-10-25 00:51:49', 52),
(8, 1234567890, 908292, '2021-10-25 01:06:40', 53);

-- --------------------------------------------------------

--
-- Table structure for table `user_admins`
--

CREATE TABLE `user_admins` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(256) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_contact` int(10) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`checkin_id`),
  ADD KEY `checkin_company` (`checkin_location`),
  ADD KEY `checkin_tac` (`checkin_phone`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `tac`
--
ALTER TABLE `tac`
  ADD PRIMARY KEY (`tac_id`),
  ADD UNIQUE KEY `tac_phone` (`tac_phone`),
  ADD KEY `tac_customer` (`customers_id`);

--
-- Indexes for table `user_admins`
--
ALTER TABLE `user_admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `checkin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tac`
--
ALTER TABLE `tac`
  MODIFY `tac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_admins`
--
ALTER TABLE `user_admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checkin`
--
ALTER TABLE `checkin`
  ADD CONSTRAINT `checkin_company` FOREIGN KEY (`checkin_location`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `checkin_tac` FOREIGN KEY (`checkin_phone`) REFERENCES `tac` (`tac_phone`);

--
-- Constraints for table `tac`
--
ALTER TABLE `tac`
  ADD CONSTRAINT `tac_customer` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`customers_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
