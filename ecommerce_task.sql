-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 01:40 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `bd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `bd`) VALUES
(1, 'mohamed amr ', 'mohamed@gmail.com', '213213213', '2020-08-22'),
(2, 'Ahmed Ghaly', 'ahmed@gmail.com', '**********', '2020-08-13');

-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_1_address`
-- (See below for the actual view)
--
CREATE TABLE `admin_1_address` (
`name` varchar(200)
,`address` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_1_phone`
-- (See below for the actual view)
--
CREATE TABLE `admin_1_phone` (
`name` varchar(200)
,`phone` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `admin_address`
--

CREATE TABLE `admin_address` (
  `id` int(11) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_address`
--

INSERT INTO `admin_address` (`id`, `address`) VALUES
(1, 'cairo'),
(1, 'geza'),
(2, 'KFS'),
(2, 'sidi salem');

-- --------------------------------------------------------

--
-- Table structure for table `admin_phone`
--

CREATE TABLE `admin_phone` (
  `admin_id` int(11) NOT NULL,
  `phone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_phone`
--

INSERT INTO `admin_phone` (`admin_id`, `phone`) VALUES
(1, '576453423'),
(1, '987668'),
(2, '011111134567'),
(2, '33443');

-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_product`
-- (See below for the actual view)
--
CREATE TABLE `admin_product` (
`name` varchar(200)
,`title` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `admin_id`) VALUES
(1, 'electronic', 1),
(2, 'mobile', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `bd` date NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `bd`, `admin_id`) VALUES
(1, 'ahmed', 'ahmed@s.com', '2020-08-13', 1),
(2, 'mahmoud', 'dsrftd@f.com', '2020-08-04', 2),
(3, 'khaled', 'kjjk@f.com', '2020-08-04', 2),
(4, 'hamed', 'hamed@j,.com', '2020-08-09', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_1_address`
-- (See below for the actual view)
--
CREATE TABLE `customer_1_address` (
`name` varchar(200)
,`address` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_1_phone`
-- (See below for the actual view)
--
CREATE TABLE `customer_1_phone` (
`name` varchar(200)
,`phone` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `customer_id` int(11) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`customer_id`, `address`) VALUES
(1, 'alex'),
(2, 'monf'),
(3, 'kfs'),
(4, 'usa'),
(4, 'egypt');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_admin`
-- (See below for the actual view)
--
CREATE TABLE `customer_admin` (
`admin_name` varchar(200)
,`customer_name` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer_phone`
--

CREATE TABLE `customer_phone` (
  `customer_id` int(11) NOT NULL,
  `phone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_phone`
--

INSERT INTO `customer_phone` (`customer_id`, `phone`) VALUES
(1, '875643542'),
(1, '8756434'),
(4, '-0090909'),
(3, '65645454'),
(3, '0124353'),
(2, '6434223232');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `qn` int(11) NOT NULL,
  `price` float NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `qn`, `price`, `admin_id`) VALUES
(1, 'pc', 22, 20, 1),
(2, 'kjjj', 22, 20, 1),
(3, 'samsoung', 22, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `p_c`
-- (See below for the actual view)
--
CREATE TABLE `p_c` (
`title` varchar(30)
,`name` varchar(200)
);

-- --------------------------------------------------------

--
-- Structure for view `admin_1_address`
--
DROP TABLE IF EXISTS `admin_1_address`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_1_address`  AS  select `admin`.`name` AS `name`,`admin_address`.`address` AS `address` from (`admin` join `admin_address` on(`admin`.`id` = `admin_address`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `admin_1_phone`
--
DROP TABLE IF EXISTS `admin_1_phone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_1_phone`  AS  select `admin`.`name` AS `name`,`admin_phone`.`phone` AS `phone` from (`admin` join `admin_phone` on(`admin`.`id` = `admin_phone`.`admin_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `admin_product`
--
DROP TABLE IF EXISTS `admin_product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_product`  AS  select `admin`.`name` AS `name`,`product`.`title` AS `title` from (`admin` join `product` on(`admin`.`id` = `product`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `customer_1_address`
--
DROP TABLE IF EXISTS `customer_1_address`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_1_address`  AS  select `customer`.`name` AS `name`,`customer_address`.`address` AS `address` from (`customer` join `customer_address` on(`customer`.`id` = `customer_address`.`customer_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `customer_1_phone`
--
DROP TABLE IF EXISTS `customer_1_phone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_1_phone`  AS  select `customer`.`name` AS `name`,`customer_phone`.`phone` AS `phone` from (`customer` join `customer_phone` on(`customer`.`id` = `customer_phone`.`customer_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `customer_admin`
--
DROP TABLE IF EXISTS `customer_admin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_admin`  AS  select `admin`.`name` AS `admin_name`,`customer`.`name` AS `customer_name` from (`admin` join `customer` on(`admin`.`id` = `customer`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `p_c`
--
DROP TABLE IF EXISTS `p_c`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `p_c`  AS  select `product`.`title` AS `title`,`category`.`name` AS `name` from (`category` join `product` on(`product`.`id` = `category`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_address`
--
ALTER TABLE `admin_address`
  ADD KEY `id` (`id`);

--
-- Indexes for table `admin_phone`
--
ALTER TABLE `admin_phone`
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer_phone`
--
ALTER TABLE `customer_phone`
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_address`
--
ALTER TABLE `admin_address`
  ADD CONSTRAINT `admin_address_ibfk_1` FOREIGN KEY (`id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `admin_phone`
--
ALTER TABLE `admin_phone`
  ADD CONSTRAINT `admin_phone_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `customer_phone`
--
ALTER TABLE `customer_phone`
  ADD CONSTRAINT `customer_phone_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
