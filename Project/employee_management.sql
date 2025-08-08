-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 10:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance__tbl`
--

CREATE TABLE `attendance__tbl` (
  `id` int(20) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `attendance_days` varchar(255) NOT NULL,
  `attendance_status` enum('0','1') NOT NULL COMMENT '0=Absent\r\n1=Present',
  `arrival_time` varchar(255) NOT NULL,
  `leaving_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance__tbl`
--

INSERT INTO `attendance__tbl` (`id`, `emp_id`, `attendance_days`, `attendance_status`, `arrival_time`, `leaving_time`) VALUES
(10, 2, '2023-02-21', '1', '10:10', '12:10'),
(16, 8, '2023-02-23', '1', '10:00', '04:00'),
(18, 8, '2023-02-17', '1', '10:00', '12:00'),
(20, 8, '2023-02-17', '1', '07:00', '05:00'),
(22, 21, '2023-02-17', '1', '09:00', '21:00'),
(24, 21, '2010-10-10', '1', '10:00', '02:00'),
(25, 21, '2023-02-24', '0', '', ''),
(26, 26, '2023-02-28', '0', '', ''),
(27, 28, '2023-02-21', '0', '', ''),
(28, 0, '', '0', '', ''),
(29, 1, '2022-05-10', '1', '08:10', '17:00'),
(30, 1, '2023-03-04', '0', '10:10', '10:20'),
(31, 8, '2023-03-08', '1', '08:00', '12:00'),
(32, 8, '2023-03-09', '1', '10:00', '12:00'),
(33, 8, '2023-03-10', '1', '10:15', '12:00'),
(34, 33, '2023-03-01', '1', '07:00', '17:30'),
(35, 7, '2023-03-29', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `leave__tbl`
--

CREATE TABLE `leave__tbl` (
  `id` int(20) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `leave_reason` varchar(255) NOT NULL,
  `leave_start_date` varchar(255) NOT NULL,
  `leave_end_date` varchar(255) NOT NULL,
  `leave_days` int(11) DEFAULT NULL,
  `leave_status` enum('0','1','2') NOT NULL COMMENT '0 = Pending, \r\n1 = Approved \r\n2 = Reject,',
  `leave_approved _by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave__tbl`
--

INSERT INTO `leave__tbl` (`id`, `emp_id`, `leave_reason`, `leave_start_date`, `leave_end_date`, `leave_days`, `leave_status`, `leave_approved _by`) VALUES
(10, 8, 'test   ', '2023-02-21', '2023-02-14', 4, '2', ''),
(16, 3, 'sick ', '2023-05-02', '2023-05-12', 10, '1', ''),
(17, 3, 'trip ', '1010-10-10', '1010-10-11', 10, '1', ''),
(24, 21, 'sickness ', '2023-02-10', '2023-02-12', 2, '1', ''),
(25, 8, 'merrige ', '2023-03-10', '2023-03-12', 2, '1', ''),
(26, 8, 'medical problem  ', '2023-03-08', '2023-03-09', 1, '0', ''),
(27, 8, 'trip  ', '2023-03-13', '2023-03-17', 0, '2', ''),
(28, 3, 'engagement  ', '2023-03-28', '2023-03-29', 1, '1', ''),
(29, 7, 'medical problem ', '2023-03-17', '2023-03-18', 1, '0', ''),
(30, 7, 'abc ', '2023-03-16', '2023-03-26', 10, '2', ''),
(31, 3, 'abc ', '2023-03-20', '2023-03-21', 1, '2', ''),
(32, 34, 'merrige', '2023-03-20', '2023-03-25', 5, '0', ''),
(33, 34, 'medical problem', '2023-03-23', '2023-03-26', 3, '0', ''),
(34, 1, 'party', '2023-03-29', '2023-03-29', 1, '0', ''),
(36, 7, 'party', '2023-03-29', '2023-03-30', 2, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `salary__tbl`
--

CREATE TABLE `salary__tbl` (
  `id` int(20) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `salary_amount` bigint(80) NOT NULL,
  `salary_allowed_by` varchar(255) NOT NULL,
  `salary_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary__tbl`
--

INSERT INTO `salary__tbl` (`id`, `emp_id`, `salary_amount`, `salary_allowed_by`, `salary_date`) VALUES
(1, 1, 4500, 'keval', '2023-02-22'),
(2, 7, 2500, 'hr', '2023-01-31'),
(3, 21, 275000, 'hr', '2023-02-15'),
(4, 26, 12500, 'hr', '2023-03-09'),
(5, 25, 325000, 'owner', '2023-03-09'),
(6, 8, 12000, 'hr', '2023-03-10'),
(8, 30, 250250, 'hr', '2023-03-22'),
(11, 33, 13000, 'harsh', '2023-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `user__tbl`
--

CREATE TABLE `user__tbl` (
  `Id` int(20) NOT NULL,
  `user_fname` varchar(255) NOT NULL,
  `user_lname` varchar(255) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_contact` bigint(12) NOT NULL,
  `user_dob` date DEFAULT NULL,
  `user_role` enum('0','1','2') NOT NULL COMMENT '0 = Employee\r\n1 = HR\r\n2 = Owner',
  `user_address` varchar(255) DEFAULT NULL,
  `user_profile_pic` varchar(255) DEFAULT NULL,
  `User_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user__tbl`
--

INSERT INTO `user__tbl` (`Id`, `user_fname`, `user_lname`, `user_email`, `user_contact`, `user_dob`, `user_role`, `user_address`, `user_profile_pic`, `User_pass`) VALUES
(1, 'harsh ', 'siddhapura', 'harshbhai479@gmail.com', 7487971624, '2003-08-25', '1', 'umrala', 'HS.png', '12345678'),
(2, 'harshad', 'chudasama', 'harshad@gmail.com', 0, NULL, '2', NULL, NULL, '12345678'),
(3, 'utsav', 'dave', 'utsav@gmail.com', 0, '2001-12-10', '0', '', '', '12345678'),
(7, 'jayesh', 'baraiya', 'jayesh@gmail.com', 0, NULL, '0', NULL, NULL, 'jayesh12'),
(8, 'mit', 'mori', 'mit@gmail.com', 2020202020, '2023-03-09', '0', 'umrala', 'profile.jpg', 'mit12345'),
(20, 'jatin', 'vadhva', 'jatin@gmail.com', 4545454545, '2023-02-03', '0', 'dhola', NULL, 'jatin123'),
(21, 'naman', 'makwana', 'naman@gmail.com', 9173835566, '1999-09-19', '0', 'bhavnagar', 'A87A0208.JPG', '12345678'),
(22, 'yash', 'vora', 'yash@gmail.com', 4512451220, '2002-11-17', '0', 'varasa', NULL, '12345678'),
(23, 'ruturaj  ', 'gohil', 'rutu@gmail.com', 1234561230, '2001-12-10', '1', 'umrala', NULL, 'rutu1234'),
(24, 'vimal', 'makwana', 'vimal@gmail.com', 12356894710, '2001-05-04', '0', 'bhavnagar', NULL, 'vimal123'),
(27, 'rahul', 'pinjani', 'rahul@gmail.com', 0, NULL, '0', NULL, NULL, '45612345'),
(30, 'jaimin', 'umraliya', 'jaimin@gmail.com', 0, NULL, '0', NULL, NULL, '12345678'),
(31, 'nikul', 'dabhi', 'nikul@123gmail.com', 9990923213, '2023-03-01', '0', 'bharatnagar', NULL, '12345678'),
(32, 'Siddhapura', 'jayesh', 'harsh@gmail.com', 0, NULL, '1', NULL, NULL, '12345678'),
(33, 'baraiya', 'prakash', 'prakash@gmail.com', 0, NULL, '0', NULL, NULL, '09876543'),
(34, 'chudasama', 'harshad', 'harshad@gmail.com', 0, NULL, '0', NULL, NULL, '09876543');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance__tbl`
--
ALTER TABLE `attendance__tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave__tbl`
--
ALTER TABLE `leave__tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary__tbl`
--
ALTER TABLE `salary__tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user__tbl`
--
ALTER TABLE `user__tbl`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance__tbl`
--
ALTER TABLE `attendance__tbl`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `leave__tbl`
--
ALTER TABLE `leave__tbl`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `salary__tbl`
--
ALTER TABLE `salary__tbl`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user__tbl`
--
ALTER TABLE `user__tbl`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
