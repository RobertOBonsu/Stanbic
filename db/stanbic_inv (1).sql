-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 05:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stanbic_inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `nic` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `account_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `type`, `nic`, `phone_no`, `password`, `account_status`) VALUES
(2, 'super', 'super', '324832974972', '4439473984', '1234', 'active'),
(1, 'admin', 'admin', '389274980237', '2329872498', '1234', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `nic` varchar(50) NOT NULL,
  `phone_no` int(50) NOT NULL,
  `salary` int(20) NOT NULL,
  `assign_it` varchar(50) DEFAULT NULL,
  `account_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `username`, `password`, `position`, `nic`, `phone_no`, `salary`, `assign_it`, `account_status`) VALUES
(1, 'employee1', '1234', 'Cashier', '127983268930', 372983698, 120000, 'DellXPS13', 'Active'),
(2, 'Robert1', '1234', 'Stock Manager', '728937984329', 439846398, 112000, 'AppleiMac', 'Active'),
(3, 'aMeSPriE', '1234', 'Cashier', '323798273923', 219827987, 144000, 'Alexa', 'Active'),
(4, 'anTESHIB', '1234', 'Cashier', '211321321321', 1280198209, 145000, 'AppleiMacPro', 'Active'),
(5, 'dawavERE', '1234', 'Clerk', '809668757647', 729369823, 198000, 'AppleiMacPro', 'Active'),
(6, 'terthEaR', '1234', 'Stock Keeper', '128969869832', 479847398, 187700, NULL, 'Active'),
(7, 'emp001', '1234', 'Cashier', '403470374037', 2147483647, 120000, NULL, 'Dective'),
(8, 'Robert', '1234', 'Project Manager', '436985402945', 205890424, 1000, 'GooglePixel4a', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance`
--

CREATE TABLE `employee_attendance` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `logout_time` time DEFAULT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_attendance`
--

INSERT INTO `employee_attendance` (`id`, `username`, `month`, `year`, `date`, `time`, `logout_time`, `date/time`) VALUES
(1, 'LEBOuNDi', 'August', '2023', '2023-08-10', '17:22:38', NULL, '2023-08-10 21:22:38'),
(2, 'OtENtoNO', 'August', '2023', '2023-08-10', '20:23:55', NULL, '2023-08-11 00:23:55'),
(3, 'aMeSPriE', 'August', '2023', '2023-08-10', '20:24:05', NULL, '2023-08-11 00:24:05'),
(4, 'anTESHIB', 'August', '2023', '2023-08-10', '20:24:16', NULL, '2023-08-11 00:24:16'),
(5, 'dawavERE', 'August', '2023', '2023-08-10', '20:24:33', NULL, '2023-08-11 00:24:33'),
(6, 'terthEaR', 'August', '2023', '2023-08-10', '20:24:46', NULL, '2023-08-11 00:24:46'),
(7, 'emp001', 'August', '2023', '2023-08-10', '20:36:04', NULL, '2023-08-11 00:36:04'),
(7, 'emp001', 'August', '2023', '2023-08-11', '15:15:12', NULL, '2023-08-11 19:15:12'),
(1, 'LEBOuNDi', 'September', '2023', '2023-09-09', '08:55:51', NULL, '2023-09-09 12:55:51'),
(1, 'LEBOuNDi', 'September', '2023', '2023-09-11', '12:22:08', NULL, '2023-09-11 16:22:08'),
(1, 'LEBOuNDi', 'September', '2023', '2023-09-24', '09:10:35', NULL, '2023-09-24 13:10:35'),
(1, 'LEBOuNDi', 'September', '2023', '2023-09-29', '19:46:56', NULL, '2023-09-29 23:46:56'),
(1, 'LEBOuNDi', 'September', '2023', '2023-09-30', '09:05:06', NULL, '2023-09-30 13:05:06'),
(1, 'LEBOuNDi', 'October', '2023', '2023-10-01', '12:17:21', NULL, '2023-10-01 16:17:21'),
(2, 'OtENtoNO', 'November', '2023', '2023-11-01', '16:35:34', NULL, '2023-11-01 20:35:34'),
(1, 'Robert', 'November', '2023', '2023-11-02', '11:20:00', NULL, '2023-11-02 15:20:00'),
(1, 'Robert', 'November', '2023', '2023-11-03', '07:59:54', NULL, '2023-11-03 11:59:54'),
(1, 'Robert', 'November', '2023', '2023-11-08', '15:00:09', NULL, '2023-11-08 20:00:09'),
(1, 'Jonathan', 'November', '2023', '2023-11-11', '13:19:04', NULL, '2023-11-11 18:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `gin`
--

CREATE TABLE `gin` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `purchase_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `new_item_price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `new_total` int(11) NOT NULL,
  `savings` int(11) NOT NULL,
  `employee` varchar(50) NOT NULL,
  `profit` int(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gin`
--

INSERT INTO `gin` (`id`, `invoice_id`, `item_id`, `item_code`, `item_name`, `purchase_price`, `selling_price`, `discount`, `new_item_price`, `amount`, `total`, `new_total`, `savings`, `employee`, `profit`, `date`, `month`, `year`, `date/time`) VALUES
(1, 1, 1, 'imac', 'AppleiMac', 2000, 2200, 5, 2090, 2, 4400, 4180, 220, 'LEBOuNDi', 180, '2023-08-10', 'August', '2023', '2023-11-03 13:28:35'),
(2, 2, 1, 'imac', 'AppleiMac', 2000, 2200, 0, 2200, 900, 1980000, 1980000, 0, 'emp001', 180000, '2023-08-10', 'August', '2023', '2023-11-03 13:28:30'),
(3, 3, 3, 'pixel4a', 'GooglePixel4a', 400, 500, 0, 500, 2, 1000, 1000, 0, 'emp001', 200, '2023-08-11', 'August', '2023', '2023-11-03 13:28:24'),
(4, 4, 3, 'pixel4a', 'GooglePixel4a', 400, 500, 5, 475, 5, 2500, 2375, 125, 'emp001', 375, '2023-08-11', 'August', '2023', '2023-11-03 13:28:18'),
(5, 5, 2, 'xps13', 'DellXPS13', 800, 1000, 0, 1000, 2, 2000, 2000, 0, 'LEBOuNDi', 400, '2023-09-11', 'September', '2023', '2023-11-03 13:28:12'),
(6, 6, 2, 'xps13', 'DellXPS13', 800, 1000, 5, 950, 8, 8000, 7600, 400, 'LEBOuNDi', 1200, '2023-09-24', 'September', '2023', '2023-11-03 13:28:07'),
(7, 7, 5, 'nokia3310', 'Nokia3310', 100, 150, 10, 135, 10, 1500, 1350, 150, 'LEBOuNDi', 350, '2023-09-30', 'September', '2023', '2023-11-02 13:50:06'),
(8, 8, 2, 'xps13', 'DellXPS13', 800, 1000, 5, 950, 10, 10000, 9500, 500, 'LEBOuNDi', 1500, '2023-10-01', 'October', '2023', '2023-11-03 13:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `grn`
--

CREATE TABLE `grn` (
  `id` int(11) NOT NULL,
  `grn_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `lead_time` date NOT NULL,
  `grn_status` varchar(50) NOT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grn`
--

INSERT INTO `grn` (`id`, `grn_id`, `item_name`, `item_code`, `quantity`, `item_price`, `supplier`, `total`, `lead_time`, `grn_status`, `date/time`) VALUES
(1, 1, 'AppleiMac', 'imac', 1000, 2000, 'AppleSupplier', 2000000, '2023-08-17', 'Checked', '2023-08-10 21:24:32'),
(2, 2, 'DellXPS13', 'xps13', 1200, 800, 'DellSupplier', 960000, '2023-08-17', 'Checked', '2023-08-11 00:41:25'),
(3, 2, 'GooglePixel4a', 'pixel4a', 1500, 400, 'GoogleSupplier', 600000, '2023-08-17', 'Checked', '2023-08-11 00:43:46'),
(4, 3, 'MicrosoftSurfacePro4', 'surfpro4', 400, 600, 'MicrosoftSupplier', 240000, '2023-08-17', 'Checked', '2023-08-11 00:47:51'),
(5, 4, 'Nokia3310', 'nokia3310', 2000, 100, 'NokiaSupplier', 200000, '2023-10-07', 'Checked', '2023-09-30 15:18:45'),
(6, 5, 'Alexa', 'alx', 2000, 100, 'AmazonSupplier', 200000, '2023-10-15', 'Bad Order', '2023-10-01 16:11:55'),
(7, 6, 'AppleiMacPro', 'imacpro', 1000, 100, 'AppleSupplier', 100000, '2023-10-08', 'Checked', '2023-10-01 16:13:28'),
(8, 7, 'AppleiMacPro', 'imacpro', 200, 100, 'AppleSupplier', 20000, '2023-10-08', 'Checked', '2023-10-01 16:14:57'),
(9, 8, 'AppleiMac', 'imac', 1000, 2000, 'AppleSupplier', 2000000, '2023-10-08', 'Unchecked', '2023-10-01 16:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `inv_type` varchar(50) NOT NULL,
  `inv_net_total` double NOT NULL,
  `inv_nbt` double NOT NULL,
  `inv_vat` double NOT NULL,
  `inv_grand_total` double NOT NULL,
  `gin_employee` varchar(50) NOT NULL,
  `gin_date` date NOT NULL,
  `gin_month` varchar(50) NOT NULL,
  `gin_year` varchar(50) NOT NULL,
  `inv_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_category` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `item_status` tinyint(4) NOT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `item_name`, `item_code`, `item_category`, `supplier`, `supplier_id`, `item_status`, `date/time`) VALUES
(1, 'AppleiMac', 'imac', 'Computers', 'AppleSupplier', 1, 0, '2023-11-01 18:38:48'),
(2, 'AppleiMacPro', 'imacpro', 'Computers', 'AppleSupplier', 1, 0, '2023-11-01 18:38:48'),
(3, 'DellXPS13', 'xps13', 'Computers', 'DellSupplier', 2, 0, '2023-11-01 18:38:48'),
(4, 'GooglePixel4a', 'pixel4a', 'Phones', 'GoogleSupplier', 3, 0, '2023-11-01 18:38:48'),
(5, 'MicrosoftSurfacePro4', 'surfpro4', 'Computers', 'MicrosoftSupplier', 4, 0, '2023-11-01 18:38:48'),
(6, 'Nokia3310', 'nokia3310', 'Phones', 'NokiaSupplier', 7, 0, '2023-11-01 18:38:48'),
(7, 'Alexa', 'alx', 'Home', 'AmazonSupplier', 8, 0, '2023-11-01 18:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `activity` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `user`, `username`, `activity`, `description`, `state`, `date/time`) VALUES
(1, 'Admin', 'Admin', 'Admin Login', 'Admin logged in', 'SUCCESS', '2023-09-25 21:32:18'),
(1, 'Admin', 'Admin', 'Admin Logout', 'Admin logged out', 'SUCCESS', '2023-09-25 21:32:54'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-09-29 12:42:17'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-09-29 12:43:21'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-09-29 15:53:55'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-09-29 15:55:41'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-09-29 23:44:45'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-09-29 23:46:28'),
(1, 'Employee', 'LEBOuNDi', 'Employee Login', 'LEBOuNDi logged in', 'SUCCESS', '2023-09-29 23:46:56'),
(1, 'Employee', 'LEBOuNDi', 'Employee System Exit', 'LEBOuNDi system exited', 'SUCCESS', '2023-09-30 01:18:22'),
(0, 'Super User', 'Robert', 'Super User Login', 'Robert logged in', 'SUCCESS', '2023-09-30 13:01:28'),
(0, 'Super User', 'Robert', 'Super User Logout', 'Robert logged out', 'SUCCESS', '2023-09-30 13:04:41'),
(1, 'Employee', 'LEBOuNDi', 'Employee Login', 'LEBOuNDi logged in', 'SUCCESS', '2023-09-30 13:05:06'),
(1, 'Employee', 'LEBOuNDi', 'Employee System Exit', 'LEBOuNDi system exited', 'SUCCESS', '2023-09-30 13:13:49'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-09-30 15:06:18'),
(1, 'Admin', 'admin', 'Add New Supplier', 'Admin added new supplier NokiaSupplier', 'SUCCESS', '2023-09-30 15:10:11'),
(1, 'Admin', 'admin', 'Update Supplier', 'Admin updated supplier NokiaSupplier', 'SUCCESS', '2023-09-30 15:10:48'),
(1, 'Admin', 'admin', 'Update Supplier', 'Admin updated supplier NokiaSupplier', 'SUCCESS', '2023-09-30 15:11:06'),
(1, 'Admin', 'admin', 'Add Item to Supplier Item Collection', 'Admin added new Item Nokia3310', 'SUCCESS', '2023-09-30 15:13:05'),
(1, 'Admin', 'admin', 'Purchase Order', 'Admin Ordered PO Bill No. 4', 'SUCCESS', '2023-09-30 15:17:41'),
(1, 'Admin', 'admin', 'Add New Stock Item', 'Admin added new Stock Item Nokia3310', 'SUCCESS', '2023-09-30 15:18:45'),
(1, 'Admin', 'admin', 'GRN Checked', 'Admin checked GRN item Nokia3310', 'SUCCESS', '2023-09-30 15:18:45'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-09-30 15:21:17'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-09-30 15:21:41'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-09-30 15:21:49'),
(1, 'Employee', 'LEBOuNDi', 'Employee Login', 'LEBOuNDi logged in', 'SUCCESS', '2023-09-30 15:22:10'),
(1, 'Employee', 'LEBOuNDi', 'Add New Sale Item', 'Employee added new sale item Nokia3310', 'SUCCESS', '2023-09-30 15:23:19'),
(1, 'Employee', 'LEBOuNDi', 'Issue Invoice/Items', 'Employee Issued Invoice No. 7', 'SUCCESS', '2023-09-30 15:23:53'),
(1, 'Employee', 'LEBOuNDi', 'Employee Logout', 'LEBOuNDi logged out', 'SUCCESS', '2023-09-30 15:24:59'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-09-30 15:25:06'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-09-30 15:25:18'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-10-01 13:25:25'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-10-01 13:25:36'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-10-01 13:29:21'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-10-01 13:30:09'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-10-01 16:02:41'),
(1, 'Admin', 'admin', 'Add New Supplier', 'Admin added new supplier AmazonSupplier', 'SUCCESS', '2023-10-01 16:05:58'),
(1, 'Admin', 'admin', 'Update Supplier', 'Admin updated supplier SonySupplier', 'SUCCESS', '2023-10-01 16:07:10'),
(1, 'Admin', 'admin', 'Delete Supplier', 'Admin deleted supplier SonySupplier', 'SUCCESS', '2023-10-01 16:07:33'),
(1, 'Admin', 'admin', 'Add Item to Supplier Item Collection', 'Admin added new Item Alexa', 'SUCCESS', '2023-10-01 16:08:16'),
(1, 'Admin', 'admin', 'Purchase Order', 'Admin Ordered PO Bill No. 5', 'SUCCESS', '2023-10-01 16:10:53'),
(1, 'Admin', 'admin', 'Bad Order', 'Admin marked bad order item on GRN Bill No. 5', 'SUCCESS', '2023-10-01 16:11:55'),
(1, 'Admin', 'admin', 'Purchase Order', 'Admin Ordered PO Bill No. 6', 'SUCCESS', '2023-10-01 16:12:55'),
(1, 'Admin', 'admin', 'Add New Stock Item', 'Admin added new Stock Item AppleiMacPro', 'SUCCESS', '2023-10-01 16:13:28'),
(1, 'Admin', 'admin', 'GRN Checked', 'Admin checked GRN item AppleiMacPro', 'SUCCESS', '2023-10-01 16:13:28'),
(1, 'Admin', 'admin', 'Purchase Order', 'Admin Ordered PO Bill No. 7', 'SUCCESS', '2023-10-01 16:14:42'),
(1, 'Admin', 'admin', 'Re-Order Stock Item', 'Admin Re-Ordered Item AppleiMacPro', 'SUCCESS', '2023-10-01 16:14:56'),
(1, 'Admin', 'admin', 'GRN Checked', 'Admin checked GRN item AppleiMacPro', 'SUCCESS', '2023-10-01 16:14:56'),
(1, 'Admin', 'admin', 'Purchase Order', 'Admin Ordered PO Bill No. 8', 'SUCCESS', '2023-10-01 16:15:55'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-10-01 16:16:13'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-10-01 16:16:24'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-10-01 16:17:07'),
(1, 'Employee', 'LEBOuNDi', 'Employee Login', 'LEBOuNDi logged in', 'SUCCESS', '2023-10-01 16:17:21'),
(1, 'Employee', 'LEBOuNDi', 'Add New Sale Item', 'Employee added new sale item DellXPS13', 'SUCCESS', '2023-10-01 16:18:52'),
(1, 'Employee', 'LEBOuNDi', 'Employee Logout', 'LEBOuNDi logged out', 'SUCCESS', '2023-10-01 16:23:47'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-10-01 16:23:55'),
(1, 'Admin', 'admin', 'Employee Payroll', 'Admin paid employee LEBOuNDi', 'SUCCESS', '2023-10-01 16:25:57'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-10-01 16:29:42'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-10-01 16:30:16'),
(2, 'Super User', 'super', 'Super User Logout', 'super logged out', 'SUCCESS', '2023-10-01 16:30:39'),
(1, 'Employee', 'LEBOuNDi', 'Employee Login', 'LEBOuNDi logged in', 'SUCCESS', '2023-10-01 16:30:44'),
(1, 'Employee', 'LEBOuNDi', 'Employee System Exit', 'LEBOuNDi system exited', 'SUCCESS', '2023-10-01 16:31:02'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-10-01 16:31:16'),
(2, 'Super User', 'super', 'Return Stock Item', 'Super user returned stock item DellXPS13', 'SUCCESS', '2023-10-01 16:32:47'),
(2, 'Super User', 'super', 'Force Access Employee Login', 'super force accessed Employee Login', 'SUCCESS', '2023-10-01 16:34:02'),
(NULL, 'Employee', 'super', 'Employee Logout', 'super logged out', 'SUCCESS', '2023-10-01 16:34:20'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-10-01 16:34:31'),
(1, 'Admin', 'admin', 'Create Backup', 'Admin created new backup on file location : ', 'SUCCESS', '2023-10-01 16:35:53'),
(1, 'Admin', 'admin', 'Delete Employee', 'Admin deleted employee emp001', 'SUCCESS', '2023-10-01 16:36:53'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-10-01 16:37:54'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-10-01 16:39:16'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-10-01 16:39:41'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-10-01 16:42:28'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-10-01 16:44:16'),
(1, 'Employee', 'LEBOuNDi', 'Employee Login', 'LEBOuNDi logged in', 'SUCCESS', '2023-10-01 16:44:47'),
(1, 'Employee', 'LEBOuNDi', 'Employee Logout', 'LEBOuNDi logged out', 'SUCCESS', '2023-10-01 16:46:20'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-10-01 16:46:28'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-10-01 17:03:31'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-10-01 17:30:19'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-10-01 17:30:45'),
(1, 'Admin', 'Admin', 'Admin System Exit', 'Admin system exited', 'SUCCESS', '2023-10-03 23:47:53'),
(1, 'Admin', 'Admin', 'Admin System Exit', 'Admin system exited', 'SUCCESS', '2023-10-03 23:48:40'),
(1, 'Admin', 'Admin', 'Admin System Exit', 'Admin system exited', 'SUCCESS', '2023-10-19 19:55:24'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-19 21:32:59'),
(1, 'Admin', 'admin', 'Update Supplier Item', 'Admin updated supplier item Alexa', 'SUCCESS', '2023-11-19 21:33:34'),
(1, 'Admin', 'admin', 'Update Supplier Item', 'Admin updated supplier item Alexa', 'SUCCESS', '2023-11-19 21:33:46'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-19 21:33:50'),
(NULL, 'Employee', 'admin', 'Employee Login', 'admin login failed', 'FAILED', '2023-12-09 19:46:20'),
(NULL, 'Employee', 'admin', 'Employee Login', 'admin login failed', 'FAILED', '2023-12-09 19:46:28'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-12-09 19:47:11'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-12-09 19:50:29'),
(NULL, 'Super User', 'Super User', 'Super User System Exit', 'Super User system exited', 'SUCCESS', '2023-12-26 16:32:47'),
(1, 'Admin', 'admin', 'Admin Login', 'admin login failed', 'FAILED', '2023-11-01 20:24:20'),
(1, 'Admin', 'admin', 'Admin Login', 'admin login failed', 'FAILED', '2023-11-01 20:26:03'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-01 20:27:10'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-11-01 20:30:58'),
(2, 'Employee', 'OtENtoNO', 'Employee Login', 'OtENtoNO logged in', 'SUCCESS', '2023-11-01 20:35:34'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-02 13:34:31'),
(2, 'Super User', 'super', 'Super User System Exit', 'super system exited', 'SUCCESS', '2023-11-02 13:35:54'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-02 13:45:03'),
(2, 'Super User', 'super', 'Super User System Exit', 'super system exited', 'SUCCESS', '2023-11-02 13:46:13'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-02 14:36:35'),
(2, 'Super User', 'super', 'Super User System Exit', 'super system exited', 'SUCCESS', '2023-11-02 14:37:24'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 15:20:00'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 15:21:31'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 15:25:17'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 15:25:54'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 15:27:17'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 15:27:48'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 15:29:54'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 15:30:38'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 15:48:48'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 15:51:35'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 16:12:04'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 16:28:30'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 16:29:28'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 17:11:09'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 17:11:54'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 17:39:05'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 17:39:29'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 17:41:27'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 17:42:12'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 17:47:49'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 17:48:15'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 17:49:46'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 17:50:50'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 18:06:54'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 18:07:55'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-02 19:02:12'),
(2, 'Super User', 'super', 'Super User System Exit', 'super system exited', 'SUCCESS', '2023-11-02 19:03:59'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-02 19:34:44'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-02 19:41:25'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 19:56:34'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 19:57:18'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 21:16:56'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 21:17:22'),
(1, 'Employee', 'Robert', 'Employee Login', 'Robert logged in', 'SUCCESS', '2023-11-02 21:18:59'),
(1, 'Employee', 'Robert', 'Employee System Exit', 'Robert system exited', 'SUCCESS', '2023-11-02 21:19:13'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-03 00:13:19'),
(2, 'Super User', 'super', 'Super User System Exit', 'super system exited', 'SUCCESS', '2023-11-03 00:27:48'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-03 00:28:46'),
(2, 'Super User', 'super', 'Super User System Exit', 'super system exited', 'SUCCESS', '2023-11-03 00:29:22'),
(NULL, 'Employee', 'Jonathanloy', 'Intruder Login', 'Jonathanloy has been detected as an Intruder', 'FAILED', '2023-11-03 11:59:30'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-03 11:59:54'),
(1, 'Employee', 'Jonathan', 'Employee System Exit', 'Jonathan system exited', 'SUCCESS', '2023-11-03 12:04:28'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-03 12:13:00'),
(1, 'Employee', 'Jonathan', 'Employee Logout', 'Jonathan logged out', 'SUCCESS', '2023-11-03 12:13:46'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-03 12:13:58'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-11-03 12:15:00'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-03 12:15:13'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-03 12:52:59'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-03 12:53:06'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-03 17:17:49'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-03 17:18:26'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-03 18:49:10'),
(1, 'Employee', 'Jonathan', 'Employee Logout', 'Jonathan logged out', 'SUCCESS', '2023-11-03 18:50:19'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-08 20:00:09'),
(1, 'Employee', 'Jonathan', 'Employee System Exit', 'Jonathan system exited', 'SUCCESS', '2023-11-08 20:10:05'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-08 20:12:29'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-08 20:16:58'),
(1, 'Employee', 'Jonathan', 'Employee System Exit', 'Jonathan system exited', 'SUCCESS', '2023-11-08 20:40:16'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-08 20:40:34'),
(1, 'Employee', 'Jonathan', 'Employee Logout', 'Jonathan logged out', 'SUCCESS', '2023-11-08 20:40:56'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-08 20:41:07'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-11-08 20:41:50'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-08 20:42:00'),
(2, 'Super User', 'super', 'Super User System Exit', 'super system exited', 'SUCCESS', '2023-11-08 20:42:15'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-08 20:47:31'),
(1, 'Employee', 'Jonathan', 'Employee Logout', 'Jonathan logged out', 'SUCCESS', '2023-11-08 20:47:41'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-08 20:47:51'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-11-08 20:48:11'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-08 20:48:22'),
(2, 'Super User', 'super', 'Super User System Exit', 'super system exited', 'SUCCESS', '2023-11-08 20:48:31'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-08 20:56:35'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-08 20:57:03'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-08 20:58:21'),
(1, 'Employee', 'Jonathan', 'Employee System Exit', 'Jonathan system exited', 'SUCCESS', '2023-11-08 20:58:32'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-11 18:19:04'),
(1, 'Employee', 'Jonathan', 'Employee Logout', 'Jonathan logged out', 'SUCCESS', '2023-11-11 18:23:33'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 18:23:55'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-11 18:59:18'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 19:17:21'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 19:23:25'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-11 19:23:58'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 20:28:19'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-11-11 21:26:17'),
(1, 'Employee', 'Jonathan', 'Employee Login', 'Jonathan logged in', 'SUCCESS', '2023-11-11 21:26:28'),
(1, 'Employee', 'Jonathan', 'Employee Logout', 'Jonathan logged out', 'SUCCESS', '2023-11-11 21:26:40'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 21:27:42'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-11 21:59:45'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 22:00:26'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-11 22:01:07'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 22:07:27'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-11 22:08:22'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 22:09:01'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-11 22:10:37'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 22:11:15'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-11 22:40:29'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 22:41:52'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-11 22:49:31'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-11 22:50:01'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 00:23:30'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 00:24:12'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 00:24:20'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 00:26:02'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 00:26:33'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 01:02:08'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 01:05:29'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 01:06:00'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 01:09:43'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 01:10:28'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 01:38:20'),
(1, 'Admin', 'admin', 'Update Employee', 'Admin updated employee Jonathan', 'SUCCESS', '2023-11-12 01:39:22'),
(1, 'Admin', 'admin', 'Update Employee', 'Admin updated employee OtENtoNO', 'SUCCESS', '2023-11-12 01:39:44'),
(1, 'Admin', 'admin', 'Employee Payroll', 'Admin paid employee OtENtoNO', 'SUCCESS', '2023-11-12 01:40:45'),
(1, 'Admin', 'admin', 'Update Employee', 'Admin updated employee dawavERE', 'SUCCESS', '2023-11-12 01:41:28'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 01:42:34'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 01:43:18'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 01:43:56'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 01:45:09'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 01:46:46'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 02:03:06'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 02:04:16'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 02:06:55'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 02:07:24'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 02:10:09'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 02:10:37'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 02:11:06'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 02:12:01'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 02:13:25'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 02:13:55'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 02:19:14'),
(1, 'Admin', 'admin', 'Update Employee', 'Admin updated employee aMeSPriE', 'SUCCESS', '2023-11-12 02:20:47'),
(1, 'Admin', 'admin', 'Add New Employee', 'Admin added new employee Robert', 'SUCCESS', '2023-11-12 02:22:38'),
(1, 'Admin', 'admin', 'Update Employee', 'Admin updated employee Robert', 'SUCCESS', '2023-11-12 02:22:54'),
(1, 'Admin', 'admin', 'Update Employee', 'Admin updated employee anTESHIB', 'SUCCESS', '2023-11-12 02:43:21'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 02:50:01'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 03:25:41'),
(1, 'Admin', 'admin', 'Admin System Exit', 'admin system exited', 'SUCCESS', '2023-11-12 03:26:40'),
(1, 'Admin', 'admin', 'Admin Login', 'admin logged in', 'SUCCESS', '2023-11-12 03:39:05'),
(1, 'Admin', 'admin', 'Admin Logout', 'admin logged out', 'SUCCESS', '2023-11-12 03:39:37'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-12 03:39:49'),
(2, 'Super User', 'super', 'Super User System Exit', 'super system exited', 'SUCCESS', '2023-11-12 03:41:28'),
(2, 'Super User', 'super', 'Super User Login', 'super logged in', 'SUCCESS', '2023-11-12 03:45:34'),
(2, 'Super User', 'super', 'Super User System Exit', 'super system exited', 'SUCCESS', '2023-11-12 03:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `attendance` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `username`, `month`, `year`, `date`, `attendance`, `payment`, `status`, `date/time`) VALUES
(1, 'LEBOuNDi', 'August', '2023', '2023-10-01', 1, 10000, 'PAID', '2023-11-12 01:39:22'),
(2, 'OtENtoNO', 'August', '2023', '2023-11-11', 1, 10000, 'PAID', '2023-11-12 01:40:45'),
(3, 'aMeSPriE', 'August', '2023', '2023-08-10', 1, 10000, 'PAID', '2023-11-12 02:20:47'),
(4, 'anTESHIB', 'August', '2023', '2023-08-10', 1, 10000, 'PAID', '2023-11-12 02:43:21'),
(5, 'dawavERE', 'August', '2023', '2023-08-10', 1, 10000, 'PAID', '2023-11-12 01:41:28'),
(6, 'terthEaR', 'August', '2023', '2023-08-10', 1, 187700, 'PAID', '2023-08-11 00:24:46'),
(7, 'emp001', 'August', '2023', '2023-08-10', 2, 120000, 'PAID', '2023-08-11 19:15:12'),
(1, 'LEBOuNDi', 'September', '2023', '2023-10-01', 5, 10000, 'PAID', '2023-11-12 01:39:22'),
(1, 'LEBOuNDi', 'October', '2023', '2023-10-01', 1, 10000, 'PAID', '2023-11-12 01:39:22'),
(2, 'OtENtoNO', 'November', '2023', '2023-11-11', 1, 10000, 'PAID', '2023-11-12 01:40:45'),
(1, 'Jonathan', 'November', '2023', '2023-11-02', 4, 10000, 'UNPAID', '2023-11-12 01:39:22'),
(8, 'Robert', 'November', '2023', '2023-11-11', 0, 10000, 'UNPAID', '2023-11-12 02:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `lead_time` date NOT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `po_id`, `item_name`, `item_code`, `quantity`, `item_price`, `supplier`, `total`, `lead_time`, `date/time`) VALUES
(1, 1, 'AppleiMac', 'imac', 1000, 2000, 'AppleSupplier', 2000000, '2023-08-17', '2023-08-10 21:20:59'),
(2, 2, 'DellXPS13', 'xps13', 1200, 800, 'DellSupplier', 960000, '2023-08-17', '2023-08-11 00:41:01'),
(3, 2, 'GooglePixel4a', 'pixel4a', 1500, 400, 'GoogleSupplier', 600000, '2023-08-17', '2023-08-11 00:43:27'),
(4, 3, 'MicrosoftSurfacePro4', 'surfpro4', 400, 600, 'MicrosoftSupplier', 240000, '2023-08-17', '2023-08-11 00:47:38'),
(5, 4, 'Nokia3310', 'nokia3310', 2000, 100, 'NokiaSupplier', 200000, '2023-10-07', '2023-09-30 15:17:06'),
(6, 5, 'Alexa', 'alx', 2000, 100, 'AmazonSupplier', 200000, '2023-10-15', '2023-10-01 16:10:03'),
(7, 6, 'AppleiMacPro', 'imacpro', 1000, 100, 'AppleSupplier', 100000, '2023-10-08', '2023-10-01 16:12:44'),
(8, 7, 'AppleiMacPro', 'imacpro', 200, 100, 'AppleSupplier', 20000, '2023-10-08', '2023-10-01 16:14:36'),
(9, 8, 'AppleiMac', 'imac', 1000, 2000, 'AppleSupplier', 2000000, '2023-10-08', '2023-10-01 16:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `purchase_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `new_item_price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `new_total` int(11) NOT NULL,
  `savings` int(11) NOT NULL,
  `employee` varchar(50) NOT NULL,
  `profit` int(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `invoice_id`, `item_id`, `item_code`, `item_name`, `purchase_price`, `selling_price`, `discount`, `new_item_price`, `amount`, `total`, `new_total`, `savings`, `employee`, `profit`, `date`, `month`, `year`, `date/time`) VALUES
(1, 1, 1, 'imac', 'AppleiMac', 2000, 2200, 5, 2090, 2, 4400, 4180, 220, 'LEBOuNDi', 180, '2023-08-10', 'August', '2023', '2023-08-10 21:27:00'),
(2, 2, 1, 'imac', 'AppleiMac', 2000, 2200, 0, 2200, 900, 1980000, 1980000, 0, 'emp001', 180000, '2023-08-10', 'August', '2023', '2023-08-11 00:49:30'),
(3, 3, 3, 'pixel4a', 'GooglePixel4a', 400, 500, 0, 500, 2, 1000, 1000, 0, 'emp001', 200, '2023-08-11', 'August', '2023', '2023-08-11 19:15:24'),
(4, 4, 3, 'pixel4a', 'GooglePixel4a', 400, 500, 5, 475, 5, 2500, 2375, 125, 'emp001', 375, '2023-08-11', 'August', '2023', '2023-08-11 19:33:24'),
(5, 5, 2, 'xps13', 'DellXPS13', 800, 1000, 0, 1000, 2, 2000, 2000, 0, 'LEBOuNDi', 400, '2023-09-11', 'September', '2023', '2023-09-11 16:22:57'),
(6, 6, 2, 'xps13', 'DellXPS13', 800, 1000, 5, 950, 8, 8000, 7600, 400, 'LEBOuNDi', 1200, '2023-09-24', 'September', '2023', '2023-09-24 13:11:56'),
(7, 7, 5, 'nokia3310', 'Nokia3310', 100, 150, 10, 135, 10, 1500, 1350, 150, 'LEBOuNDi', 350, '2023-09-30', 'September', '2023', '2023-09-30 15:23:19'),
(8, 8, 2, 'xps13', 'DellXPS13', 800, 1000, 5, 950, 10, 10000, 9500, 500, 'LEBOuNDi', 1500, '2023-10-01', 'October', '2023', '2023-10-01 16:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_price` int(11) NOT NULL,
  `assign_to` varchar(50) DEFAULT NULL,
  `profit` int(11) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `stock_count` int(11) NOT NULL,
  `low_stock` int(11) NOT NULL,
  `stock_status` varchar(50) NOT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `item_code`, `item_name`, `item_price`, `assign_to`, `profit`, `supplier`, `stock_count`, `low_stock`, `stock_status`, `date/time`) VALUES
(1, 'imac', 'AppleiMac', 2000, 'Robert', 200, 'AppleSupplier', 98, 100, 'Available', '2023-11-11 20:12:17'),
(2, 'xps13', 'DellXPS13', 800, 'Johnathan ', 200, 'DellSupplier', 1100, 50, 'Available', '2023-11-11 20:12:40'),
(3, 'pixel4a', 'GooglePixel4a', 400, '500', 100, 'GoogleSupplier', 1481, 10, 'Available', '2023-08-11 19:33:25'),
(4, 'surfpro4', 'MicrosoftSurfacePro4', 600, '800', 200, 'MicrosoftSupplier', 400, 20, 'Available', '2023-08-11 00:47:51'),
(5, 'nokia3310', 'Nokia3310', 100, '150', 50, 'NokiaSupplier', 1990, 10, 'Available', '2023-09-30 15:23:21'),
(6, 'imacpro', 'AppleiMacPro', 100, '150', 50, 'AppleSupplier', 1200, 10, 'Available', '2023-10-01 16:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `stock_return`
--

CREATE TABLE `stock_return` (
  `id` int(11) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `return_count` int(11) NOT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_return`
--

INSERT INTO `stock_return` (`id`, `sku_id`, `item_code`, `item_name`, `supplier`, `return_count`, `date/time`) VALUES
(1, 3, 'pixel4a', 'GooglePixel4a', 'GoogleSupplier', 12, '2023-08-11 18:59:02'),
(2, 2, 'xps13', 'DellXPS13', 'DellSupplier', 80, '2023-10-01 16:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `account_status` tinyint(4) NOT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `username`, `address`, `email`, `phone_no`, `company`, `account_status`, `date/time`) VALUES
(1, 'AppleSupplier', 'apple address', 'contact@apple.com', '0938209380', 'Apple', 0, '2023-11-01 18:38:48'),
(2, 'DellSupplier', 'dell address', 'contact@dell.com', '3802830928', 'Dell', 0, '2023-11-01 18:38:48'),
(3, 'GoogleSupplier', 'google address', 'contact@google.com', '1230982109', 'Google', 0, '2023-11-01 18:38:48'),
(4, 'MicrosoftSupplier', 'microsoft address', 'contact@microsoft.com', '7398279382', 'Microsoft', 0, '2023-11-01 18:38:48'),
(5, 'SamsungSupplier', 'samsung address', 'contact@samsung.com', '3209483209', 'Samsung', 0, '2023-11-01 18:38:48'),
(6, 'SonySupplier', 'bla blah', 'contact@sony.com', '2109839042', 'Sony', 0, '2023-11-01 18:38:48'),
(7, 'NokiaSupplier', 'nokia address', 'contact@nokia.com', '3242342378', 'Nokia', 0, '2023-11-01 18:38:48'),
(8, 'AmazonSupplier', 'AmazonAddress', 'amazon@jeiow.com', '3782947983', 'Amazon', 0, '2023-11-01 18:38:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `usr_username` (`username`);

--
-- Indexes for table `gin`
--
ALTER TABLE `gin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grn`
--
ALTER TABLE `grn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `itm_name` (`item_name`),
  ADD UNIQUE KEY `itm_code` (`item_code`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `itm_code` (`item_code`),
  ADD UNIQUE KEY `itm_name` (`item_name`);

--
-- Indexes for table `stock_return`
--
ALTER TABLE `stock_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sup_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gin`
--
ALTER TABLE `gin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `grn`
--
ALTER TABLE `grn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_return`
--
ALTER TABLE `stock_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
