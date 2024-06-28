-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 10:03 AM
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
-- Database: `gtrdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_des` varchar(50) NOT NULL,
  `levelID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_des`, `levelID`) VALUES
('Admin', 1),
('Customer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(4) NOT NULL,
  `user_id` int(4) DEFAULT NULL,
  `orders_date` int(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `PickupMethod` varchar(50) NOT NULL,
  `pickupTime` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `user_id`, `orders_date`, `status`, `PickupMethod`, `pickupTime`) VALUES
(1, 2, 2023, 'COMPLETE', 'SELF PICKUP', 0),
(4576, 22, 2023, 'COMPLETE', 'Self pickup', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_product`
--

CREATE TABLE `orders_product` (
  `orders_id` int(4) DEFAULT NULL,
  `productID` int(4) DEFAULT NULL,
  `qty` int(4) NOT NULL,
  `detail_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_product`
--

INSERT INTO `orders_product` (`orders_id`, `productID`, `qty`, `detail_id`) VALUES
(1, 12, 1, 1),
(NULL, 8, 1, 14),
(NULL, 8, 1, 15),
(NULL, 8, 1, 16),
(NULL, 8, 1, 17),
(NULL, 8, 1, 18),
(NULL, 8, 1, 19),
(NULL, 8, 1, 20),
(NULL, 8, 1, 21),
(NULL, 8, 1, 22),
(NULL, 17, 1, 23),
(NULL, 2, 1, 24),
(NULL, 5, 1, 25),
(NULL, 20, 1, 26),
(NULL, 14, 1, 27),
(NULL, 11, 1, 28),
(NULL, 9, 1, 29),
(NULL, 20, 1, 30),
(NULL, 14, 1, 31),
(NULL, 11, 1, 32),
(NULL, 9, 1, 33),
(NULL, 20, 1, 34),
(NULL, 14, 1, 35),
(NULL, 11, 1, 36),
(NULL, 9, 1, 37),
(NULL, 20, 1, 38),
(NULL, 14, 1, 39),
(NULL, 11, 1, 40),
(NULL, 9, 1, 41),
(NULL, 20, 1, 42),
(NULL, 14, 1, 43),
(NULL, 11, 1, 44),
(NULL, 9, 1, 45),
(NULL, 20, 1, 46),
(NULL, 14, 1, 47),
(NULL, 11, 1, 48),
(NULL, 9, 1, 49),
(NULL, 20, 1, 50),
(NULL, 14, 1, 51),
(NULL, 11, 1, 52),
(NULL, 9, 1, 53),
(NULL, 20, 1, 54),
(NULL, 14, 1, 55),
(NULL, 11, 1, 56),
(NULL, 9, 1, 57),
(NULL, 20, 1, 58),
(NULL, 14, 1, 59),
(NULL, 11, 1, 60),
(NULL, 9, 1, 61),
(NULL, 20, 1, 62),
(NULL, 14, 1, 63),
(NULL, 11, 1, 64),
(NULL, 9, 1, 65),
(NULL, 20, 1, 66),
(NULL, 14, 1, 67),
(NULL, 11, 1, 68),
(NULL, 9, 1, 69),
(NULL, 20, 1, 70),
(NULL, 14, 1, 71),
(NULL, 11, 1, 72),
(NULL, 9, 1, 73),
(NULL, 20, 1, 74),
(NULL, 14, 1, 75),
(NULL, 11, 1, 76),
(NULL, 9, 1, 77),
(NULL, 20, 1, 78),
(NULL, 14, 1, 79),
(NULL, 11, 1, 80),
(NULL, 9, 1, 81),
(NULL, 20, 1, 82),
(NULL, 14, 1, 83),
(NULL, 11, 1, 84),
(NULL, 9, 1, 85),
(NULL, 3, 1, 86),
(NULL, 6, 1, 87),
(NULL, 17, 1, 88),
(NULL, 10, 1, 89),
(NULL, 14, 1, 90),
(NULL, 10, 1, 91),
(NULL, 20, 1, 92),
(NULL, 14, 1, 93),
(NULL, 13, 2, 94),
(NULL, 20, 3, 95),
(NULL, 14, 3, 96),
(NULL, 7, 2, 97),
(NULL, 14, 4, 98),
(NULL, 10, 1, 99),
(NULL, 14, 1, 100),
(NULL, 11, 1, 101),
(NULL, 8, 1, 102),
(NULL, 8, 1, 103),
(NULL, 13, 4, 104),
(NULL, 8, 2, 105),
(NULL, 12, 3, 106),
(NULL, 18, 1, 107),
(NULL, 16, 1, 108),
(NULL, 18, 1, 109),
(NULL, 12, 1, 110),
(NULL, 18, 1, 111),
(NULL, 12, 3, 112);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(50) NOT NULL,
  `paymentDate` date DEFAULT NULL,
  `paymentAmount` decimal(25,0) DEFAULT NULL,
  `paymentType` varchar(50) DEFAULT NULL,
  `picture` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `paymentDate`, `paymentAmount`, `paymentType`, `picture`) VALUES
(50, '2023-07-06', 39, 'CASH', NULL),
(51, '2023-07-06', 90, 'CASH', NULL),
(52, '2023-07-06', 40, 'ONLINE', '1.jpg'),
(53, '2023-07-06', 25, 'CASH', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(4) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productDescription` varchar(500) NOT NULL,
  `productStatus` varchar(20) NOT NULL,
  `productType` varchar(50) NOT NULL,
  `product_size` varchar(10) NOT NULL,
  `productPrice` decimal(10,2) NOT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `productDescription`, `productStatus`, `productType`, `product_size`, `productPrice`, `picture`) VALUES
(1, 'Smokey Chicken Burger 120g', ' Delicious and flavorful variation of a classic chicken burger. It typically consists of a grilled or pan-fried chicken patty seasoned with smoky spices and flavors', '1', '1', '1', 10.00, 'Smokey Chicken Burger 120g.PNG'),
(2, 'Smokey Meat Burger 120g', 'Delicious and flavorful variation of a classic Meat burger. It typically consists of a grilled or pan-fried meat patty seasoned with smoky spices and flavors', '1', '1', '1', 10.00, 'Smokey Meat Burger 120g.PNG'),
(3, 'Smokey Lamb Burger 120g', 'Delicious and flavorful variation of a classic lamb burger. It typically consists of a grilled or pan-fried lamb patty seasoned with smoky spices and flavors', '1', '1', '1', 13.00, 'smokey lamb burger 120g.PNG'),
(4, 'Smokey Chicken Burger 90g', 'Delicious and flavorful variation of a classic chicken burger. It typically consists of a grilled or pan-fried chicken patty seasoned with smoky spices and flavors', '1', '1', '2', 8.00, 'Smokey Chicken Burger 90g.PNG'),
(5, 'Smokey Meat Burger 90g', 'Delicious and flavorful variation of a classic Meat burger. It typically consists of a grilled or pan-fried meat patty seasoned with smoky spices and flavors', '1', '1', '2', 8.00, 'smokey meat burger 90g.PNG'),
(6, 'Smokey Lamb Burger 90g', 'Delicious and flavorful variation of a classic lamb burger. It typically consists of a grilled or pan-fried lamb patty seasoned with smoky spices and flavors', '1', '1', '2', 11.00, 'smokey lamb burger 90g.PNG'),
(7, 'Wagyu A5 Burger', 'Made with the finest and highly sought-after Japanese Wagyu beef, this burger is a culinary masterpiece', '1', '1', '1', 55.00, 'Wagyu A5 Burger.PNG'),
(8, 'Wagyu Aussies', ' This burger brings together the exceptional quality of Australian Wagyu and the vibrant tastes of Australian cuisine', '1', '1', '1', 30.00, 'Wagyu Aussies.PNG'),
(9, 'Premium Grass Fed', 'A wholesome and flavorful choice for those seeking a premium burger made from high-quality, grass-fed beef.', '1', '1', '1', 15.00, 'Premium Grass Fed.PNG'),
(10, 'Deer Meat Burger ', 'Introducing our savory Deer Burger, a unique and flavorful alternative for those looking to explore game meats. Made from tender and lean deer meat, this burger offers a rich and distinctive taste', '1', '1', '2', 7.00, 'deer meat burger.PNG'),
(11, 'Ostrich Meat Burger', 'Introducing our Ostrich Burger, a lean and flavorful choice for those seeking a unique and healthier alternative to traditional beef burgers. Made from tender ostrich meat, this burger offers a deliciously distinctive taste', '1', '1', '2', 7.00, 'Ostrich Meat Burger.PNG'),
(12, 'Beef Warp', 'Introducing our Beef Wrap, a tantalizing handheld delight that combines tender beef with a medley of fresh ingredients, wrapped in a soft and flavorful tortilla', '1', '2', '2', 7.00, 'beef warp.PNG'),
(13, 'Chicken Warp', 'Introducing our Chicken Wrap, a tantalizing handheld delight that combines juicy chicken  with a medley of fresh ingredients, wrapped in a soft and flavorful tortilla', '1', '2', '2', 7.00, 'Chicken Warp.PNG'),
(14, 'Lamb Warp', 'Introducing our Lamb Beef Wrap, a tantalizing handheld delight that combines tender lamb beef with a medley of fresh ingredients, wrapped in a soft and flavorful tortilla', '1', '2', '2', 9.00, 'lamb warp.PNG'),
(15, 'Smokey Beef Warp', 'Introducing our Smokey Beef Wrap, a tantalizing handheld delight that combines tender smoky beef with a medley of fresh ingredients, wrapped in a soft and flavorful tortilla', '1', '2', '2', 10.00, 'Smokey Beef Warp.PNG'),
(16, 'Smokey Chicken Warp', 'Introducing our Smokey Chicken Wrap, a tantalizing handheld delight that combines juicy smoky chicken with a medley of fresh ingredients, wrapped in a soft and flavorful tortilla', '1', '2', '2', 10.00, 'Smokey Chicken Warp.PNG'),
(17, 'Smokey Lamb Warp', 'Introducing our Lamb  Wrap, a tantalizing handheld delight that combines tender and smoky lamb meat with a medley of fresh ingredients, wrapped in a soft and flavorful tortilla', '1', '2', '2', 12.00, 'Smokey Lamb Warp.PNG'),
(18, 'Beef Oblong', 'Introducing our Beef Oblong, a delectable and hearty creation that combines succulent beef with a medley of flavorful ingredients, wrapped in a uniquely shaped bread roll', '1', '3', '2', 6.00, 'beef oblong.PNG'),
(19, 'Chicken Oblong ', 'Introducing our Chicken Oblong, a delectable and hearty creation that combines juicy chicken with a medley of flavorful ingredients, wrapped in a uniquely shaped bread roll', '1', '3', '2', 6.00, 'chicken oblong.PNG'),
(20, 'Lamb Oblong', 'Introducing our Lamb Oblong, a delectable and hearty creation that combines tender lamb meat with a medley of flavorful ingredients, wrapped in a uniquely shaped bread roll', '1', '3', '2', 8.00, 'lamb oblong.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` int(2) NOT NULL,
  `address` varchar(100) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `gender`, `address`, `telephone`, `email`, `level_id`) VALUES
(1, 'admin', 'a', 'diana', 2, 'Taman Suria', '010-456677', 'Diana@gmail.com', 1),
(2, 'zarep', '124', 'Zarep', 1, 'Taman Megah holding', '019-679995', 'zarep@gmail.com', 2),
(3, 'eypa', '125', 'nazifah', 2, 'Taman bintang ', '010-567435', 'eypa@gmail.com', 1),
(4, 'akmal', '126', 'akmallo', 1, 'Taman Laksamana ', '017-908554', 'akmal@gmail.com', 2),
(18, 'yani', '666', 'ilyani', 2, 'Taman Mawar Mekar', '013-567834', 'ilyani1@gmail.com', 2),
(22, 'atul', '888', 'Izzatul Huda', 2, 'Taman Seri Mata', '018-456778', 'izhuda@gmail.com', 2),
(23, 'jana', '111', 'nurjannah', 2, 'tamanjaya', '012-432167', 'jannah@gmail.com', 2),
(24, 'mansor', '1234', 'Abu Mansor', 1, 'Pendang', '0192346547', 'abumansor@gmail.com', 2),
(25, '', '2', '', 0, '', '', '', 2),
(26, 'jh', 'jh', 'NURJANNAH BINTI MOHD NIZAM', 2, 'NO17, KAMPUNG CHEPOH, LORONG SERI UJUNG', '0104521598', 'njannahniz@gmail.com', 2),
(27, 'kim', 'kim', 'kim', 1, 'taman knk', '00111', 'k@gmail.com', 2),
(28, '77', '2', 'NURJANNAH BINTI MOHD NIZAM', 0, 'jj', 'NO17, KAMP', '0104521598', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `orders_product`
--
ALTER TABLE `orders_product`
  ADD PRIMARY KEY (`detail_id`),
  ADD UNIQUE KEY `orders_id` (`orders_id`,`productID`),
  ADD UNIQUE KEY `orders_id_2` (`orders_id`,`productID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4590;

--
-- AUTO_INCREMENT for table `orders_product`
--
ALTER TABLE `orders_product`
  MODIFY `detail_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders_product`
--
ALTER TABLE `orders_product`
  ADD CONSTRAINT `orders_product_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_product_ibfk_2` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`orders_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
