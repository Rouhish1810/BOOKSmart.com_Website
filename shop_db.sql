-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: sql212.epizy.com
-- Generation Time: Jun 22, 2022 at 05:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_32018605_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'Rouhish Ray', 'ray.rouhish26@gmail.com', '8282801422', 'Testing Message!!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 1, 'Rouhish Ray', '8282801422', 'ray.rouhish26@gmail.com', 'cash on delivery', 'Goalapara Monirampore, Barrackpore, 24pgs(n)\r\nkol-700120', 'The Inner Eye (1), Gitanjali (2)', 1050, '2nd march, 2022', 'completed'),
(3, 1, 'Rup Ray', '9123372335', 'srijitashil3@gmail.com', 'google pay', 'flat no. 431, Monirampore Goalapara, Barrackpore, Barrackpore, India - 700120', ', The Inner Eye (1) , The Happy Lemon (1) ', 1100, '20-Jun-2022', 'completed'),
(4, 3, 'user01', '1234567890', 'user.bkp01@gmail.com', 'phonepe', 'flat no. 123, Dum Dum, Kolkata, India - 700032', ', Romeo And Juliet (2) , Half Girlfriend (3) ', 3000, '21-Jun-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'The Inner Eye', 650, 'The_Inner_Eye.jpg'),
(2, 'Gitanjali', 200, 'Gitanjali.jpg'),
(3, 'The Adventures of Sherlock Holmes and Other Stories', 3000, 'The_Adventures_of_Sherlock Holmes_and_other_stories.jpg'),
(4, 'The New Approach to Reasoning verbal, non-verbal & analitycal', 600, 'The_new_approach_to_reasoning_verbal_non-verbal_&_analitycal.jpg'),
(5, 'Bash and Lucy 2', 300, 'bash_and_lucy-2.jpg'),
(6, 'The Happy Lemon', 450, 'the_happy_lemon.jpg'),
(7, 'Radical Gardening', 525, 'radical_gardening.jpg'),
(8, 'The Girl of Ink and Stars', 625, 'the_girl_of_ink_and_stars.jpg'),
(9, 'Holy Ghosts', 700, 'holy_ghosts.jpg'),
(10, 'Red Queen', 823, 'red_queen.jpg'),
(11, 'The Tales of Two Cities', 478, 'The_tale_of_two_cities.jpg'),
(12, 'Half Girlfriend', 500, 'Half_Girlfriend.jpg'),
(13, 'The Era of Darkness', 628, 'The_Era_of_Darkness.jpg'),
(14, 'Romeo And Juliet', 750, 'romeo_and_juliet.jpg'),
(15, 'Goosebumps', 2250, 'Goosebumps.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Rouhish Ray', 'ray.rouhish26@gmail.com', '0df7525e5f957b0aba60e22243f72f28', 'user'),
(2, 'Admin01', 'rouhish.bkp15@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(3, 'user01', 'user.bkp01@gmail.com', '6531401f9a6807306651b87e44c05751', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
