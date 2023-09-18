-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 06:51 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'Admin', 'admin'),
(2, 'Jack', 'jack', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `firstname`, `middlename`, `lastname`, `address`, `contactno`) VALUES
(1, '??????', '-', '?????', '32', '088888809'),
(2, '??????', '-', '?????', '32', '07787887'),
(3, '??????', '-', '?????', '32', '07787887'),
(4, '??????', '-', '?????', '32', '07787887'),
(5, '??????', 'j', '?????', '32', '07787887'),
(6, '??????', '-', '?????', '32', '07787887'),
(7, '??????', '-', '?????', '32', '07787887'),
(8, 'punyapon', '-', 'meekeaw', '32', '07787887'),
(9, 'punyapon', '-', 'meekeaw', '32', '07787887'),
(10, 'panupong', '-', 'palm', 'denchai', '084884454'),
(11, 'panupong', '-', 'palm', 'denchai', '07787887'),
(12, 'punyapon', '-', 'meekeaw', 'denchai', '089545841'),
(13, 'witchapon', '-', 'vite', 'soi 30', '089056582'),
(14, 'Akarit', '-', 'Ty', 'Bangkok', '089068858'),
(15, 'Achisak', '-', 'Nomgs', 'Theparak', '08955959'),
(16, 'Mark', '-', 'UU', 'Us', '068845815'),
(17, 'Formost', '-', 'Gg', 'Kenchinton', '084486494'),
(18, 'palm', '-', 'julak', 'Usa', '078979894'),
(19, 'mu', '-', 'ja', 'Bangkok', '077148725'),
(20, 'Nall', '-', 'meaw', 'Bangkok', '088979777');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `price` varchar(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type`, `price`, `photo`) VALUES
(1, 'Standard', '899', 'img1.jpg'),
(2, 'Superior', '1099', 'img2.jpg'),
(3, 'Superior X', '1599', 'img3.jpg'),
(4, 'Duluxe', '2099', 'img4.jpg'),
(5, 'Mini Suit', '2599', 'img5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_no` int(5) NOT NULL,
  `extra_bed` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `days` int(2) NOT NULL,
  `checkin` date NOT NULL,
  `checkin_time` time NOT NULL,
  `checkout` date NOT NULL,
  `checkout_time` time NOT NULL,
  `bill` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `guest_id`, `room_id`, `room_no`, `extra_bed`, `status`, `days`, `checkin`, `checkin_time`, `checkout`, `checkout_time`, `bill`) VALUES
(1, 8, 2, 1, 2, 'Check Out', 8, '2021-10-15', '19:10:56', '2021-10-15', '19:11:04', '10392'),
(3, 10, 5, 1, 1, 'Check Out', 1, '2021-10-08', '02:12:24', '2021-10-08', '02:12:56', '3399'),
(4, 11, 6, 0, 0, 'Pending', 0, '2021-10-08', '00:00:00', '0000-00-00', '00:00:00', ''),
(5, 12, 3, 0, 0, 'Pending', 0, '2021-10-14', '00:00:00', '0000-00-00', '00:00:00', ''),
(6, 13, 2, 0, 0, 'Pending', 0, '2021-10-21', '00:00:00', '0000-00-00', '00:00:00', ''),
(7, 14, 4, 1, 0, 'Check In', 1, '2021-10-15', '02:18:53', '2021-10-08', '00:00:00', '2099'),
(9, 16, 3, 0, 0, 'Pending', 0, '2021-10-22', '00:00:00', '0000-00-00', '00:00:00', ''),
(10, 17, 3, 0, 0, 'Pending', 0, '2021-10-20', '00:00:00', '0000-00-00', '00:00:00', ''),
(11, 18, 3, 0, 0, 'Pending', 0, '2021-10-09', '00:00:00', '0000-00-00', '00:00:00', ''),
(12, 19, 2, 0, 0, 'Pending', 0, '2021-10-30', '00:00:00', '0000-00-00', '00:00:00', ''),
(13, 20, 4, 0, 0, 'Pending', 0, '2021-10-08', '00:00:00', '0000-00-00', '00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
