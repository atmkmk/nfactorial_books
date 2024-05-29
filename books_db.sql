-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2024 at 08:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books_dt`
--

CREATE TABLE `books_dt` (
  `book_id` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `author` text NOT NULL,
  `genre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books_dt`
--

INSERT INTO `books_dt` (`book_id`, `name`, `author`, `genre`) VALUES
(1, 'foundation', 'isaac asimov', 'scifi'),
(2, 'I, robot', 'isaac asimov', 'scifi'),
(3, 'hitchhikers guide to the galaxy', 'douglas adams', 'scifi');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_dt`
--

CREATE TABLE `reviews_dt` (
  `login` text NOT NULL,
  `book_id` int(11) NOT NULL,
  `star` text NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews_dt`
--

INSERT INTO `reviews_dt` (`login`, `book_id`, `star`, `review`) VALUES
('aizhan', 1, '5', 'luv it!'),
('amir', 2, '2', 'meh'),
('amir', 1, '3', 'too complex for my little brain'),
('medina', 2, '5', 'based book'),
('aizhan', 2, '5', 'nice');

-- --------------------------------------------------------

--
-- Table structure for table `users_dt`
--

CREATE TABLE `users_dt` (
  `login` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_dt`
--

INSERT INTO `users_dt` (`login`, `password`) VALUES
('aizhan', 'test'),
('barnie', 'cat'),
('amir', 'test'),
('medina', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books_dt`
--
ALTER TABLE `books_dt`
  ADD UNIQUE KEY `Emp_id` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
