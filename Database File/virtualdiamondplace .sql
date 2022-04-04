-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2018 at 07:22 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtualdiamondplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_name`, `admin_email`, `password`, `image_path`, `timestamp`) VALUES
(1, 'Ihtisham Ahmad', 'ihtisham467@gmail.com', '$2y$10$sq27y/oEeUpfgKW.infSd.Bc/sQJDH9xtYdLA77sk2WNCslvfR.Ca', 'uploads/5bb89e6e4a56f1.36468051.jpg', '2018-10-06 12:05:28'),
(4, 'Talha Khan', 'talha@gmail.com', '$2y$10$uaTT7.q6SptiKcbWJgXdKuV.FFn6J1okNqQzr4qs73R6PGIWKcT/W', 'uploads/default-profile-picture.jpg', '2018-10-06 09:14:50'),
(5, 'Wajid Khan', 'wajidkhan@gmail.com', '$2y$10$eb9gpcGz17RvVL.uI4XBre/V4nvOKEkg3hdTDG9I66aiC26xxIyVm', 'uploads/default-profile-picture.jpg', '2018-10-10 05:14:04'),
(6, 'Admin', 'admin@gmail.com', '$2y$10$sq27y/oEeUpfgKW.infSd.Bc/sQJDH9xtYdLA77sk2WNCslvfR.Ca', 'uploads/default-profile-picture.jpg', '2018-10-10 05:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `color` text NOT NULL,
  `size` text NOT NULL,
  `user_confirmation` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `color`, `size`, `user_confirmation`, `order_id`) VALUES
(16, '1', 7, 1, 'golden', 'small', 1, 8),
(17, '1', 7, 1, 'golden', 'small', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_description` varchar(500) NOT NULL,
  `category_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `category_image`) VALUES
(1, 'Traditional Earrings', 'As you know girls, earrings are available in various types which are individually awesome to be paired with different types of ethnic wears..', 'uploads/5bba5959223ab6.58071634.png'),
(3, 'Tiara Or Maang Tika', 'Just same case as with hand harness, tiara also has an old traditional story to tell. A more refined version to that of crown, tiara was worn by the young princesses at that time. With a more compact and generally chain style design, tiara has a different version as well known as maang tika.', 'uploads/5bba63204c2944.43004747.jpg'),
(4, 'Hand Harness', 'Hand harness looks and sounds so modern but reality has something else to speak. It is one of the most traditionally ornament once widely used by Indian women or royal blood ladies. Generally it is comprised of bangle or bracelet attached with a chain to a ring but can be seen in various versions.', 'uploads/5bba63b5a66704.85852761.jpg'),
(5, 'Necklace', 'If you love dressing up, you know how crucial a statement necklace is to your outfit. After all, it can make or break your look! While you could really play up a plain black dress with a chunky pearl necklace, an oxidised silver necklace can accessorise your kurti without being too flashy.', 'uploads/5bbb037cf33355.49892800.jpg'),
(6, 'Bracelets', 'There are so many different kinds of jewelry that it can seem overwhelming, but knowing the specifics when it comes to jewelry makes it easier. Theme jewelry, unique pendants, classic earrings, celebrity-inspired jewelry, retro jewelry -- this is all just the tip of the iceberg when it comes to this fabulous world of accessories. There are many unique facets to any type of jewelry. ', 'uploads/5bbb04cc0f4009.23736696.jpg'),
(7, 'Men\'s Jewellery', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 'uploads/5bbd8718a4b346.69119263.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `admin_confirmation` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `address`, `admin_confirmation`, `timestamp`) VALUES
(8, 1, 18000, 'Mardan', 1, '2018-10-09 17:36:39'),
(9, 1, 18000, 'Mardan', 1, '2018-10-09 18:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_description` varchar(500) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `product_description`, `product_price`, `product_image`) VALUES
(2, ' CRYSTALLIZED HAND HARNESS', 4, 'Add this bold and beautiful piece to your jewellery assortment and wear it on in those special occasions. Featuring gold finish and studded crystals, this hand harness is just add on to the look. Goes well with any party outfit.', 50000, 'uploads/5bba6a0fc281f3.15531042.jpg'),
(3, ' CRYSTALLIZED Bracelet', 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 30000, 'uploads/5bbb07462e3129.11006666.jpg'),
(4, 'Bracelet', 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 20000, 'uploads/5bbb0771853109.99192394.jpg'),
(5, 'Earings', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 15000, 'uploads/5bbb079c93d907.51129662.jpg'),
(6, 'Necklace', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 25000, 'uploads/5bbb07c11b02d9.79376696.jpg'),
(7, 'Crystal Necklace', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 18000, 'uploads/5bbb07dfcda8d1.60048724.jpg'),
(8, 'Crystal Earings', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 16000, 'uploads/5bbb081943a130.10009805.png'),
(9, 'Men\'s Bracelet', 7, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 20000, 'uploads/5bbd874f838191.36681851.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `password`, `user_image`, `timestamp`) VALUES
(1, 'Ihtisham Ahmad', 'ihtisham467@gmail.com', 'Mardan', '$2y$10$AbHmqS7VcRFLvIJOP68Nhe49wh0050WpYbva0GTE1NesPfJhaC7sO', 'uploads/5bbbade6dc14f6.78054432.jpg', '2018-10-08 19:20:06'),
(2, 'Ijaz Khattak', 'ijaz@gmail.com', 'Karak', '$2y$10$C.dNu42STzTRDxnDalLmg.d6qLSrM0auRlI/8nokMGgtcB0wf4YYy', 'uploads/default-profile-picture.jpg', '2018-10-08 19:20:20'),
(4, 'Shan Khan', 'shankhan@gmail.com', 'Mardan', '$2y$10$jQRg0Ukdh99YarTMCvtBbOZgz4sYfQxroXbne.gShG4rl/8s4jvGi', 'uploads/default-profile-picture.jpg', '2018-10-10 05:19:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
