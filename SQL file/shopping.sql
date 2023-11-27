-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql212.infinityfree.com
-- Generation Time: Nov 27, 2023 at 06:49 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_32636783_bookly`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'edwin', '25f9e794323b453885f5181f1b624d0b', '2017-01-24 16:21:18', '28-07-2022 11:40:34 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'comics', 'Your design might be a more serious project, in which a text that is loquacious and somewhat old-fashioned would work better. Nietzsche’s work is famous for its density, which makes this a perfect alternative to Lorem Ipsum where a lengthy text is missing from the product.', '2017-01-24 19:17:37', '28-07-2022 11:45:03 AM'),
(4, 'articles', 'Your design might be a more serious project, in which a text that is loquacious and somewhat old-fashioned would work better. Nietzsche’s work is famous for its density, which makes this a perfect alternative to Lorem Ipsum where a lengthy text is missing from the product.', '2017-01-24 19:19:32', '28-07-2022 11:45:38 AM'),
(5, 'Finance', 'Your design might be a more serious project, in which a text that is loquacious and somewhat old-fashioned would work better. Nietzsche’s work is famous for its density, which makes this a perfect alternative to Lorem Ipsum where a lengthy text is missing from the product.', '2017-01-24 19:19:54', '28-07-2022 11:45:55 AM'),
(6, 'Memoir', 'Your design might be a more serious project, in which a text that is loquacious and somewhat old-fashioned would work better. Nietzsche’s work is famous for its density, which makes this a perfect alternative to Lorem Ipsum where a lengthy text is missing from the product.', '2017-02-20 19:18:52', '28-07-2022 11:46:45 AM'),
(7, 'Kids', 'Your design might be a more serious project, in which a text that is loquacious and somewhat old-fashioned would work better. Nietzsche’s work is famous for its density, which makes this a perfect alternative to Lorem Ipsum where a lengthy text is missing from the product.', '2022-07-28 06:17:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 5, '22', 1, '2022-07-30 11:27:45', 'mpesa', NULL),
(8, 5, '22', 1, '2022-07-30 11:27:57', 'mpesa', NULL),
(9, 5, '22', 1, '2022-07-30 11:32:11', 'mpesa', NULL),
(10, 5, '22', 1, '2022-07-30 11:32:16', 'mpesa', NULL),
(11, 5, '22', 1, '2022-07-30 11:33:34', 'mpesa', NULL),
(12, 5, '21', 1, '2022-08-01 15:27:17', 'mpesa', NULL),
(13, 5, '22', 1, '2022-08-01 15:27:17', 'mpesa', NULL),
(14, 5, '28', 1, '2022-08-01 15:27:17', 'mpesa', 'in Process'),
(15, 4, '39', 1, '2022-08-01 16:42:30', 'mpesa', NULL),
(16, 6, '29', 1, '2022-08-03 17:34:57', 'mpesa', NULL),
(20, 7, '23', 1, '2022-08-05 09:42:12', 'COD', 'Delivered'),
(21, 7, '33', 1, '2022-08-05 09:42:13', 'COD', NULL),
(22, 7, '23', 1, '2022-08-05 09:42:57', 'COD', NULL),
(23, 7, '33', 1, '2022-08-05 09:42:57', 'COD', NULL),
(24, 8, '21', 1, '2022-08-07 14:03:44', NULL, NULL),
(25, 8, '27', 1, '2022-08-07 14:03:44', NULL, NULL),
(26, 8, '34', 1, '2022-08-07 14:03:45', NULL, NULL),
(27, 4, '27', 1, '2022-08-09 17:03:24', 'Debit / Credit card', NULL),
(28, 8, '25', 1, '2022-08-10 04:20:42', NULL, NULL),
(29, 4, '30', 1, '2022-08-10 16:37:57', 'Debit / Credit card', NULL),
(30, 4, '34', 1, '2022-08-10 16:37:57', 'Debit / Credit card', NULL),
(31, 4, '39', 1, '2022-08-10 16:37:57', 'Debit / Credit card', NULL),
(32, 4, '43', 1, '2022-09-06 08:45:22', 'Debit / Credit card', NULL),
(33, 10, '23', 1, '2022-09-23 13:55:20', 'mpesa', NULL),
(34, 11, '21', 1, '2022-09-26 09:35:57', 'mpesa', 'in Process'),
(35, 12, '26', 1, '2022-09-26 10:02:37', 'mpesa', 'in Process'),
(36, 12, '47', 1, '2022-09-26 10:02:37', 'mpesa', NULL),
(37, 4, '23', 2, '2022-09-28 09:02:18', NULL, NULL),
(38, 4, '39', 1, '2022-09-28 09:02:18', NULL, NULL),
(39, 14, '24', 1, '2022-11-18 09:58:29', 'COD', NULL),
(40, 14, '21', 1, '2022-11-18 10:09:56', NULL, 'in Process'),
(41, 5, '24', 1, '2023-01-13 06:24:07', 'mpesa', NULL),
(42, 4, '21', 1, '2023-04-18 13:16:18', NULL, NULL),
(43, 4, '26', 1, '2023-04-18 13:16:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 14, 'in Process', 'your order is on the way bro', '2022-08-01 15:43:07'),
(6, 20, 'Delivered', 'This site can’t be reachedwww.google.com’s server IP address could Checking the connection Checking the proxy, firewall, and DNS configuration Running Windows Network Diagnostics', '2022-08-05 10:05:01'),
(7, 34, 'in Process', 'your order is is on the way', '2022-09-26 09:43:24'),
(8, 35, 'in Process', 'hello haro your order is on iyts way....edwin', '2022-09-26 10:03:50'),
(9, 40, 'in Process', 'your order is on its way', '2022-11-24 07:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(9, 22, 0, 0, 0, 'bigshow', 'my thoughts on the book', 'its an amaizing boook of art ', '2022-08-01 16:34:10'),
(10, 37, 0, 0, 0, 'mark', 'service puchase enquiry', 'This site can’t be reachedwww.google.com’s server IP address could Checking the connection Checking the proxy, firewall, and DNS configuration Running Windows Network Diagnostics', '2022-08-05 09:50:45'),
(11, 21, 5, 5, 5, 'edwin', 'an amazing book ', 'just a wonderfull book', '2022-08-07 14:01:10'),
(12, 27, 4, 4, 4, 'arjan', 'trial review', 'another trial review by arjan,,checking to se if review section works properly', '2022-08-14 16:50:44'),
(13, 23, 4, 4, 5, 'edwin', 'an amazing book ', 'just a rate', '2022-09-09 09:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 3, 14, 'Thea stilton', 'junior ltd', 567, 765, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 60, 'In Stock', '2022-07-29 12:56:35', NULL),
(22, 6, 12, 'M architecture', 'outbound PUBLISHERS', 300, 390, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'history_of_modern_architecture.jpg', 'history_of_modern_architecture.jpg', 'history_of_modern_architecture.jpg', 20, 'In Stock', '2022-07-29 12:59:43', NULL),
(23, 3, 17, 'Free Fall', 'IST PUBLISHERS', 400, 450, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'freefall.jpg', 'freefall.jpg', 'freefall.jpg', 30, 'In Stock', '2022-07-29 13:03:01', NULL),
(24, 7, 26, 'wimpy kid', 'BARAKA PUBLISHERS', 780, 680, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 60, 'Out of Stock', '2022-07-29 13:05:16', NULL),
(25, 4, 2, 'world of A Art', 'abstract publishe.inc', 180, 200, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'the_world.jpg', 'the_world.jpg', 'the_world.jpg', 20, 'In Stock', '2022-07-29 13:09:17', NULL),
(26, 4, 2, 'Happy Lemon', 'edwin publishers', 300, 345, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'the_happy_lemon.jpg', 'the_happy_lemon.jpg', 'the_happy_lemon.jpg', 29, 'In Stock', '2022-07-29 13:09:46', NULL),
(27, 7, 27, 'Bash &Lucy', 'bilgax books', 650, 500, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'bash_and_lucy-2.jpg', 'bash_and_lucy-2.jpg', 'bash_and_lucy-2.jpg', 30, 'In Stock', '2022-07-29 13:14:07', NULL),
(28, 7, 25, 'BE well BEE', 'bash books', 540, 600, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'be_well_bee.jpg', 'be_well_bee.jpg', 'be_well_bee.jpg', 50, 'Out of Stock', '2022-07-29 13:15:44', NULL),
(29, 3, 13, 'RED queen', 'amzon publishers', 1000, 950, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'red_queen.jpg', 'red_queen.jpg', 'red_queen.jpg', 33, 'In Stock', '2022-07-29 14:35:16', NULL),
(30, 4, 4, 'Radical Gardening', 'IST PUBLISHERS', 680, 800, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'radical_gardening.jpg', 'radical_gardening.jpg', 'radical_gardening.jpg', 54, 'In Stock', '2022-07-30 04:03:24', NULL),
(31, 4, 4, 'Shattered', 'BMW', 430, 500, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'shattered.jpg', 'shattered.jpg', 'shattered.jpg', 78, 'In Stock', '2022-07-30 04:05:07', NULL),
(32, 3, 16, 'lovely wife', 'nbs publications', 650, 700, 'another romantic comic book by bookly publishers', '03.jpg', '03.jpg', '03.jpg', 17, 'Out of Stock', '2022-07-31 05:41:26', NULL),
(33, 6, 12, 'when w believed', 'big publishers', 450, 600, 'This site can’t be reachedwww.google.com’s server IP address could \r\nChecking the connection\r\nChecking the proxy, firewall, and DNS configuration\r\nRunning Windows Network Diagnostics\r\n', '01.jpg', '01.jpg', '01.jpg', 76, 'In Stock', '2022-07-31 17:05:32', NULL),
(34, 6, 12, 'my life', 'skid publishers', 780, 900, 'This site can’t be reachedwww.google.com’s server IP address could \r\nChecking the connection\r\nChecking the proxy, firewall, and DNS configuration\r\nRunning Windows Network Diagnostics', '10.jpg', '10.jpg', '10.jpg', 77, 'Out of Stock', '2022-07-31 17:07:13', NULL),
(35, 4, 6, 'indian recipes', 'hindu publishers', 1000, 1350, 'This site can’t be reachedwww.google.com’s server IP address could \r\nChecking the connection\r\nChecking the proxy, firewall, and DNS configuration\r\nRunning Windows Network Diagnostics', '02.jpg', '02.jpg', '02.jpg', 43, 'In Stock', '2022-07-31 17:08:45', NULL),
(36, 3, 16, 'first ? Love', 'love publisher.inc', 760, 870, 'This site can’t be reachedwww.google.com’s server IP address could \r\nChecking the connection\r\nChecking the proxy, firewall, and DNS configuration\r\nRunning Windows Network Diagnostics', '09.jpg', '09.jpg', '09.jpg', 40, 'In Stock', '2022-07-31 17:12:20', NULL),
(37, 6, 12, 'British history ', 'BP BOOKS', 378, 560, 'This site can’t be reachedwww.google.com’s server IP address could \r\nChecking the connection\r\nChecking the proxy, firewall, and DNS configuration\r\nRunning Windows Network Diagnostics', '01.jpg', '01.jpg', '01.jpg', 62, 'Out of Stock', '2022-07-31 17:14:06', NULL),
(38, 5, 18, 'money power', 'edwin publishers', 980, 1309, 'This site can’t be reachedwww.google.com’s server IP address could \r\nChecking the connection\r\nChecking the proxy, firewall, and DNS configuration\r\nRunning Windows Network Diagnostics', '12.jpg', '12.jpg', '12.jpg', 88, 'In Stock', '2022-07-31 17:16:01', NULL),
(39, 5, 11, 'Annual Reports ', 'money publishers', 880, 890, 'This site can’t be reachedwww.google.com’s server IP address could \r\nChecking the connection\r\nChecking the proxy, firewall, and DNS configuration\r\nRunning Windows Network Diagnostics', '04.jpg', '04.jpg', '04.jpg', 10, 'Out of Stock', '2022-07-31 17:23:06', NULL),
(40, 3, 8, 'lord of rings', 'netflix publishers', 700, 800, 'lord of the rings trilogy quest an amaizing comic book ..enjoy broz and siz', '04.jpg', '04.jpg', '04.jpg', 54, 'In Stock', '2022-08-02 15:01:05', NULL),
(41, 4, 4, 'Find me', 'ian publishers', 300, 380, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', '06.jpg', '06.jpg', '06.jpg', 15, 'In Stock', '2022-08-03 19:08:58', NULL),
(42, 3, 16, 'anne Perry', 'PBS', 435, 600, '\r\nThis site can’t be reachedwww.google.com’s server IP address could Checking the connection Checking the proxy, firewall, and DNS configuration Running Windows Network Diagnostics...HAHAH BOOKLY', '01.jpg', '01.jpg', '01.jpg', 50, 'In Stock', '2022-08-05 16:21:13', NULL),
(43, 3, 16, 'nora barret', 'BIG books.P', 900, 1450, '\r\nThis site can’t be reachedwww.google.com’s server IP address could Checking the connection Checking the proxy, firewall, and DNS configuration Running Windows Network Diagnostics....JOKES BRO JUST A DUMMY TEXT', '04.jpg', '04.jpg', '04.jpg', 80, 'In Stock', '2022-08-05 17:43:25', NULL),
(44, 4, 2, 'ART CITY', 'city publishers', 600, 876, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'book-1.png', 'book-1.png', 'book-1.png', 0, 'In Stock', '2022-08-11 03:46:24', NULL),
(45, 7, 27, 'clever lands', 'IST PUBLISHERS', 120, 150, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'clever_lands.jpg', 'clever_lands.jpg', 'clever_lands.jpg', 10, 'Out of Stock', '2022-08-11 03:48:20', NULL),
(46, 7, 27, 'boring girls', 'HH books', 1200, 1300, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'boring_girls_a_novel.jpg', 'boring_girls_a_novel.jpg', 'boring_girls_a_novel.jpg', 90, 'In Stock', '2022-08-11 03:50:17', NULL),
(47, 7, 27, 'Light house', 'big publishers', 850, 900, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'book-7.png', 'book-7.png', 'book-7.png', 65, 'In Stock', '2022-08-11 03:52:07', NULL),
(48, 7, 26, 'Black history', 'kids publications', 876, 980, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', 'book-8.png', 'book-8.png', 'book-8.png', 23, 'In Stock', '2022-08-11 03:55:24', NULL),
(49, 7, 27, 'fallout', 'ARJAN', 500, 540, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', '06.jpg', '06.jpg', '06.jpg', 36, 'In Stock', '2022-08-11 04:10:44', NULL),
(50, 7, 27, 'Black & White', 'black books', 750, 870, 'had no time to come up with this product decription but just know that this book title is amaizing and ana amizing product from BOOKLY', '05.jpg', '05.jpg', '05.jpg', 15, 'In Stock', '2022-08-11 04:17:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'art', '2017-01-26 16:24:52', '28-07-2022 12:20:16 PM'),
(3, 4, 'music ', '2017-01-26 16:29:09', '28-07-2022 12:20:38 PM'),
(4, 4, 'education', '2017-01-30 16:55:48', '28-07-2022 12:21:00 PM'),
(5, 4, 'recipes ', '2017-02-04 04:12:40', '28-07-2022 12:21:20 PM'),
(6, 4, 'health ', '2017-02-04 04:13:00', '28-07-2022 12:23:03 PM'),
(7, 4, 'fitness', '2017-02-04 04:13:27', '28-07-2022 12:23:42 PM'),
(8, 3, 'crime', '2017-02-04 04:13:54', '28-07-2022 11:54:50 AM'),
(9, 5, 'economics', '2017-02-04 04:36:45', '28-07-2022 12:39:53 PM'),
(10, 5, 'accounting ', '2017-02-04 04:37:02', '28-07-2022 12:40:10 PM'),
(11, 5, 'business', '2017-02-04 04:37:51', '28-07-2022 12:40:32 PM'),
(12, 6, 'historical', '2017-03-10 20:12:59', '28-07-2022 06:08:58 PM'),
(13, 3, 'mystery ', '2022-07-28 06:25:06', NULL),
(14, 3, 'Fantacy', '2022-07-28 06:25:45', NULL),
(15, 3, 'horror', '2022-07-28 06:26:05', NULL),
(16, 3, 'romance ', '2022-07-28 06:26:20', NULL),
(17, 3, 'science fiction ', '2022-07-28 06:26:39', NULL),
(18, 5, 'investment', '2022-07-28 07:11:24', NULL),
(19, 5, 'marketing', '2022-07-28 12:36:48', NULL),
(20, 5, 'sales', '2022-07-28 12:37:00', NULL),
(21, 6, 'litracy', '2022-07-28 12:40:55', NULL),
(22, 6, 'political', '2022-07-28 12:41:09', NULL),
(23, 6, 'religion', '2022-07-28 12:41:26', NULL),
(24, 6, 'sports', '2022-07-28 12:41:37', NULL),
(25, 7, 'animals', '2022-07-28 12:43:19', NULL),
(26, 7, 'early childhood', '2022-07-28 12:43:37', NULL),
(27, 7, 'family', '2022-07-28 12:43:49', NULL),
(28, 7, 'school', '2022-07-28 12:44:46', NULL),
(29, 7, 'friends', '2022-07-28 12:44:56', NULL),
(30, 3, 'manga', '2022-08-05 17:44:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-28 17:26:21', NULL, 1),
(26, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-28 19:44:24', NULL, 0),
(27, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-28 19:44:34', NULL, 1),
(28, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-29 04:36:43', NULL, 0),
(29, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-29 04:36:56', NULL, 1),
(30, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-29 06:09:12', '30-07-2022 04:55:43 PM', 1),
(31, 'arjannky@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-30 11:26:53', NULL, 1),
(32, 'arjannky@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-30 15:53:11', '30-07-2022 09:23:19 PM', 1),
(33, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-31 05:38:11', NULL, 0),
(34, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-31 05:38:28', NULL, 0),
(35, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-31 05:38:40', NULL, 1),
(36, 'arjannky@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-01 15:26:37', NULL, 1),
(37, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-01 16:40:54', NULL, 0),
(38, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-01 16:41:02', '01-08-2022 10:32:22 PM', 1),
(39, 'arjannky@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-02 01:46:53', NULL, 0),
(40, 'arjannky@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-02 01:47:05', NULL, 1),
(41, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-03 09:42:30', NULL, 1),
(42, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-03 17:34:41', '04-08-2022 01:54:28 PM', 1),
(43, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-04 09:02:03', '04-08-2022 04:01:53 PM', 1),
(44, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-04 10:33:49', '04-08-2022 10:08:20 PM', 1),
(45, 'mark@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 09:37:39', NULL, 0),
(46, 'mark@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 09:37:54', '05-08-2022 03:24:16 PM', 1),
(47, 'mark@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 09:57:59', '05-08-2022 03:30:49 PM', 1),
(48, 'mark@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 10:01:05', NULL, 0),
(49, 'mark@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 10:01:18', NULL, 1),
(50, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 18:48:15', '06-08-2022 12:18:19 AM', 1),
(51, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 18:49:16', '06-08-2022 12:20:21 AM', 1),
(52, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 18:50:39', NULL, 0),
(53, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 18:51:34', NULL, 0),
(54, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 18:51:45', '06-08-2022 12:30:55 AM', 1),
(55, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 19:01:09', '06-08-2022 12:36:25 AM', 1),
(56, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 19:06:44', NULL, 0),
(57, 'lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 19:07:00', NULL, 0),
(58, 'lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 19:07:13', NULL, 1),
(59, 'lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-05 19:07:26', NULL, 1),
(60, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-07 06:40:27', '07-08-2022 12:10:41 PM', 1),
(61, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-07 06:42:22', NULL, 0),
(62, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-07 06:44:08', NULL, 0),
(63, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-07 06:44:18', '07-08-2022 12:14:54 PM', 1),
(64, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-07 14:03:34', '07-08-2022 07:36:11 PM', 1),
(65, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-07 16:59:03', NULL, 0),
(66, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-07 16:59:16', NULL, 0),
(67, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-07 16:59:26', '07-08-2022 10:31:36 PM', 1),
(68, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-09 15:46:54', NULL, 0),
(69, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-09 15:47:04', '09-08-2022 09:53:31 PM', 1),
(70, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-09 16:24:11', NULL, 0),
(71, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-09 16:24:18', NULL, 0),
(72, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-09 16:24:27', '09-08-2022 09:54:32 PM', 1),
(73, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-09 16:25:06', NULL, 0),
(74, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-09 16:25:14', NULL, 1),
(75, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 04:17:55', NULL, 0),
(76, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 04:18:07', NULL, 0),
(77, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 04:18:22', NULL, 0),
(78, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 04:18:42', NULL, 0),
(79, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 04:19:02', NULL, 0),
(80, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 04:19:15', NULL, 0),
(81, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 04:19:29', NULL, 0),
(82, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 04:20:37', '10-08-2022 10:01:45 AM', 1),
(83, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 04:33:14', '10-08-2022 10:03:20 AM', 1),
(84, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 09:54:05', NULL, 1),
(85, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 16:37:30', NULL, 0),
(86, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-10 16:37:37', '11-08-2022 05:45:47 PM', 1),
(87, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-11 10:20:06', NULL, 0),
(88, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-11 10:20:19', NULL, 0),
(89, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-11 10:20:28', NULL, 0),
(90, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-11 10:20:44', NULL, 0),
(91, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-11 10:20:55', NULL, 1),
(92, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-12 07:35:24', NULL, 0),
(93, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-12 07:35:41', '12-08-2022 01:51:26 PM', 1),
(94, 'arjannky@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-12 17:36:05', NULL, 1),
(95, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-17 10:04:15', NULL, 0),
(96, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-17 10:04:24', '17-08-2022 03:34:47 PM', 1),
(97, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-17 10:07:59', NULL, 0),
(98, 'Lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-17 10:08:11', NULL, 1),
(99, 'arjannky@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-06 06:02:10', '06-09-2022 11:32:19 AM', 1),
(100, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-06 06:02:37', NULL, 1),
(101, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-06 06:39:06', NULL, 1),
(102, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-06 08:45:14', NULL, 1),
(103, 'lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-07 05:02:59', NULL, 0),
(104, 'lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-07 05:03:13', NULL, 1),
(105, 'lauryn@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-07 05:03:57', '07-09-2022 10:38:20 AM', 0),
(106, 'ian@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-07 05:09:50', '07-09-2022 12:45:23 PM', 1),
(107, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-07 07:15:57', NULL, 1),
(108, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-09 09:37:52', NULL, 0),
(109, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-09 09:38:05', '09-09-2022 03:10:22 PM', 1),
(110, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-09 09:43:22', NULL, 1),
(111, 'nyongesaedwin018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-10 04:45:38', NULL, 1),
(112, 'arjannky@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-09-23 05:36:19', NULL, 1),
(113, 'mercy.nyaata@isteducation.com', 0x3139372e3233322e31392e3934000000, '2022-09-23 10:23:43', NULL, 1),
(114, 'mercy.nyaata@isteducation.com', 0x3139372e3233322e31392e3934000000, '2022-09-23 10:24:28', '23-09-2022 03:01:48 PM', 1),
(115, '1@1', 0x3139372e3233322e36312e3232360000, '2022-09-23 13:54:53', '23-09-2022 06:27:10 PM', 1),
(116, '', 0x3139372e3233322e31392e3934000000, '2022-09-23 15:20:38', NULL, 0),
(117, 'arjannky@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-09-26 04:57:40', NULL, 1),
(118, 'lauryn@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-09-26 09:22:16', NULL, 0),
(119, 'Lauryn@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-09-26 09:22:58', NULL, 0),
(120, 'Lauryn@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-09-26 09:23:05', NULL, 0),
(121, 'lauryn@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-09-26 09:23:19', NULL, 0),
(122, 'Lauryn@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-09-26 09:25:06', NULL, 1),
(123, 'brian@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-09-26 09:34:12', NULL, 1),
(124, 'drizydarolle@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-09-26 10:02:32', NULL, 1),
(125, 'nyongesaedwin018@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-09-28 09:01:50', NULL, 1),
(126, 'nyongesaedwin018@gmail.com', 0x3139372e3233322e31392e3934000000, '2022-10-04 11:26:17', '04-10-2022 03:55:11 PM', 1),
(127, 'khalwalesaviour@gmail.com', 0x3130352e3136302e34322e3135300000, '2022-10-20 22:05:26', NULL, 1),
(128, 'thigarette12@gmail.com', 0x3139362e3231362e36362e3934000000, '2022-11-18 09:58:08', NULL, 0),
(129, 'thigarette12@gmail.com', 0x3139362e3231362e36362e3934000000, '2022-11-18 09:58:22', '18-11-2022 02:50:29 PM', 1),
(130, 'nyongesaedwin018@gmail.com', 0x3139372e3233322e312e353000000000, '2023-01-13 06:23:42', NULL, 0),
(131, 'arjannky@gmail.com', 0x3139372e3233322e312e353000000000, '2023-01-13 06:23:58', NULL, 1),
(132, '', 0x3139372e3233322e312e353000000000, '2023-01-18 12:46:34', NULL, 0),
(133, 'admin@sfa.com', 0x3139372e3233322e312e353000000000, '2023-01-18 12:48:32', NULL, 0),
(134, 'arjannky@gmail.com', 0x3139372e3233322e312e353000000000, '2023-01-18 12:48:46', NULL, 0),
(135, 'arjannky@gmail.com', 0x3139372e3233322e312e353000000000, '2023-02-24 11:23:45', NULL, 1),
(136, 'nyongesaedwin018@gmail.com', 0x3139372e3233322e312e353000000000, '2023-04-18 13:15:55', NULL, 0),
(137, 'nyongesaedwin018@gmail.com', 0x3139372e3233322e312e353000000000, '2023-04-18 13:16:06', NULL, 1),
(138, 'nyongesaedwin018@gmail.com', 0x3139372e3233322e312e353000000000, '2023-10-23 12:11:20', NULL, 0),
(139, 'arjannk@gmail.com', 0x3139372e3233322e312e353000000000, '2023-10-23 12:11:31', NULL, 0),
(140, 'arjannk@gmail.com', 0x3139372e3233322e312e353000000000, '2023-10-23 12:11:38', NULL, 0),
(141, 'arjannk@gmail.com', 0x3139372e3233322e312e353000000000, '2023-10-23 12:12:37', NULL, 0),
(142, 'arjannk@gmail.com', 0x3139372e3233322e312e353000000000, '2023-10-23 12:12:44', NULL, 0),
(143, 'nyongesaedwin018@gmail.com', 0x3139372e3233322e312e353000000000, '2023-10-23 12:12:55', NULL, 0),
(144, 'nyongesaedwin018@gmail.com', 0x3139372e3233322e312e353000000000, '2023-10-23 12:13:31', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Edwin', 'nyongesaedwin018@gmail.com', 798325459, '25f9e794323b453885f5181f1b624d0b', 'Chege Wa Kariko Rd, Nairobi', 'Nairobi City', 'nairobi', 0, 'Chege Wa Kariko Rd, Nairobi\r\n43 mwimuto', 'Nairobi City', 'nairobi', 45500, '2022-07-28 17:26:03', '09-08-2022 09:55:39 PM'),
(5, 'ARJAN', 'arjannky@gmail.com', 798325459, '25f9e794323b453885f5181f1b624d0b', 'Chege Wa Kariko Rd, Nairobi\r\n43 mwimuto', 'Nairobi City', 'nairobi', 45500, '1200 nairobi', 'nairobi', 'westlands', 34556, '2022-07-30 11:26:45', NULL),
(6, 'Lauryn ', 'Lauryn@gmail.com', 1234567890, '25f9e794323b453885f5181f1b624d0b', 'Chege Wa Kariko Rd, Nairobi\r\n43 nairobi', 'Nairobi City', 'nairobi', 459087, 'nairobi eastlands 123', 'CBD', 'nairobi', 234765, '2022-08-03 09:41:16', '06-08-2022 12:38:10 AM'),
(7, 'MARK', 'mark@gmail.com', 790233950, '25f9e794323b453885f5181f1b624d0b', 'Chege Wa Kariko Rd, Nairobi', 'Nairobi City', 'nairobi', 0, 'Chege Wa Kariko Rd, Nairobi\r\n43 mwimuto', 'Nairobi City', 'nairobi', 45500, '2022-08-05 09:36:13', NULL),
(8, 'ian', 'ian@gmail.com', 712345678, '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-07 14:03:09', NULL),
(9, 'mercy', 'mercy.nyaata@isteducation.com', 110068171, 'e807f1fcf82d132f9bb018ca6738a19f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23 10:23:05', NULL),
(10, '1', '1@1', 1, 'c4ca4238a0b923820dcc509a6f75849b', 'Ngara, Starehe Nairobi Kenya\r\n05200 Bungoma, Kenya', 'Starehe', 'Nairobi', 200, NULL, NULL, NULL, NULL, '2022-09-23 13:54:37', NULL),
(11, 'Brian', 'brian@gmail.com', 723134515, '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:33:47', NULL),
(12, 'darol', 'drizydarolle@gmail.com', 757610727, '5340495fd116a56032b9f31a4690b958', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26 10:02:20', NULL),
(13, 'Saviour Khalwale ', 'khalwalesaviour@gmail.com', 790844918, '2463414192850ce8e030058b2872d41a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20 22:05:15', NULL),
(14, 'Thiga', 'thigarette12@gmail.com', 700000000, '6cbdb8d38c53d545c0e55e009289b639', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 09:57:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(3, 6, 29, '2022-08-03 18:14:30'),
(4, 7, 22, '2022-08-05 09:46:04'),
(6, 5, 27, '2022-08-14 16:48:13'),
(7, 10, 22, '2022-09-23 13:57:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
