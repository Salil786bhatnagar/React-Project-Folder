-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 12:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `adminname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `password`, `picture`) VALUES
('admin1@gmail.com', 'admin1', '12345', 'admin1.jpg'),
('admin2@gmail.com', 'admin2', '12345', 'admin2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `brandname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `ad` varchar(255) NOT NULL,
  `topbrand` enum('yes','no') NOT NULL,
  `newbrand` enum('yes','no','','') NOT NULL,
  `adstatus` enum('yes','no') NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandid`, `categoryid`, `brandname`, `description`, `picture`, `ad`, `topbrand`, `newbrand`, `adstatus`, `mysqltime`) VALUES
(1, 1, 'Samsung mobile', 'Latest Smart Phone', '719knfTwPvL._AC_SX425_.jpg', 'bad1.jpg', 'yes', 'yes', 'yes', '2020-11-07 19:13:28'),
(3, 3, 'Man t-shart', 'Latest Top Brand', 'mant-shart2.jpg', 'bad2.jpg', 'yes', 'yes', 'yes', '2020-11-07 19:13:42'),
(4, 4, 'Women t-shart', 'Latest Top Brand', 'woment-shart1.jpg', 'bad3.jpg', 'yes', 'yes', 'yes', '2020-11-07 19:14:03'),
(5, 4, 'Woman Track Shoot', 'Latest Track Shoot', 'Running-font-b-Sport-b-font-font-b-Women-b-font-Sets-Tracksuit-Fitness-Hoodies-Pants.jpg', 'bad4.jpg', 'yes', 'yes', 'yes', '2020-11-07 19:14:12'),
(6, 9, 'Reebock', 'Latest Brand', 'puma2.jpg', 'bad5.jpg', 'yes', 'yes', 'yes', '2020-11-07 19:14:28'),
(7, 1, 'Panasonice', 'Latest Brand', '133071-v5-nokia-3.2-mobile-phone-large-1.jpg', 'bad6.jpg', 'yes', 'yes', 'yes', '2020-11-07 19:14:41'),
(8, 2, 'iron', 'New Top Brand', '31eP5tfUP9L.jpg', 'bad7.jpg', 'yes', 'yes', 'no', '2020-11-07 19:16:55'),
(9, 10, 'fashwash', 'New brand', 'woment-shart2.jpg', 'bad8.jpg', 'yes', 'yes', 'no', '2020-11-07 19:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `ad` varchar(255) NOT NULL,
  `adstatus` enum('yes','no') NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `categoryname`, `description`, `icon`, `ad`, `adstatus`, `mysqltime`) VALUES
(1, 'Mobiles,Computers', 'Best Item\'s', '719knfTwPvL._AC_SX425_.jpg', '1.jpg', 'yes', '2020-11-02 13:55:02'),
(2, 'TV, Electronics', 'Best Item\'s', '31eP5tfUP9L.jpg', '2.jpg', 'yes', '2020-11-02 13:55:14'),
(3, 'Man Fashion', 'Best Itme\'s', '2e84d0c82eb395efebc1418bd9f3fd16--style-men-my-style.jpg', '3.jpg', 'yes', '2020-11-02 13:55:25'),
(4, 'Women Fashion', 'Best Item\'s', 'Running-font-b-Sport-b-font-font-b-Women-b-font-Sets-Tracksuit-Fitness-Hoodies-Pants.jpg', '4.jpg', 'yes', '2020-11-02 13:55:34'),
(5, 'Home, Kithen', 'Best Item\'s', '10999257_660375547451037_1539168083594210794_n.jpg', '5.jpg', 'yes', '2020-11-02 13:55:44'),
(6, 'Sports', 'Best Item\'s', 'download (2).jpg', 'sport-tracksuit-500x500.jpg', 'no', '2020-10-28 14:28:03'),
(7, 'Kids\' Fashion', 'Best Itme\'s', '1781983_577728725715720_3218084295677473265_n.jpg', '10885022_607165849438674_4585369229655844502_n.jpg', 'no', '2020-11-02 13:56:55'),
(8, 'Toys', 'Best Item\'s', 'prd_007402.jpg', 'prd_007402.jpg', 'no', '2020-10-28 14:28:22'),
(9, 'Shoes', 'Best Item\'s', '2015.jpg', '2015.jpg', 'no', '2020-10-28 14:27:53'),
(10, 'Beauty, Health', 'All New Brand', 'supplier.jpg', '64-64.jpg', 'no', '2020-10-28 14:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `citiesid` int(10) UNSIGNED NOT NULL,
  `stateid` int(10) UNSIGNED NOT NULL,
  `citiesname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`citiesid`, `stateid`, `citiesname`) VALUES
(1, 1, 'Visakhapatnam'),
(2, 1, 'Vijayawada'),
(3, 1, 'Guntur'),
(4, 1, 'Nellore'),
(5, 1, 'Tirupati'),
(6, 2, 'Tawang'),
(7, 2, 'Bhismaknagar'),
(8, 2, 'Pasighat'),
(9, 2, 'Ziro'),
(10, 2, 'Bomdila'),
(11, 3, 'Guwahati'),
(12, 3, 'Tezpur'),
(13, 3, 'Dibrugarh'),
(14, 3, 'Silchar'),
(15, 3, 'North Lakhimpur'),
(16, 4, 'Gaya'),
(17, 4, 'Biharsharif'),
(18, 4, 'Darbhanga'),
(19, 4, 'Bhagalpur'),
(20, 5, 'Bilaspur'),
(21, 5, 'Korba'),
(22, 5, 'Durg-Bhilainagar'),
(23, 5, 'Raigarh'),
(24, 5, 'Rajnandgaon'),
(25, 6, 'Vasco-da-Gama'),
(26, 6, 'Ponda'),
(27, 6, 'Margao'),
(28, 6, 'Mapusa'),
(29, 6, 'Goa Velha'),
(30, 7, 'Ahmedabad'),
(31, 7, 'Surat'),
(32, 7, 'Rajkot'),
(33, 7, 'Junagadh'),
(34, 7, 'Vadodara'),
(35, 8, 'Faridabad'),
(36, 8, 'Gurgaon'),
(37, 8, 'Sonipat'),
(38, 8, 'Panipat'),
(39, 8, 'Ambala'),
(40, 9, 'Dharamshala'),
(41, 9, 'Mandi'),
(42, 9, 'Solan'),
(43, 9, 'Bilaspur'),
(44, 9, 'Chamba'),
(45, 10, 'Bokaro'),
(46, 10, 'Jamshedpur'),
(47, 10, 'Deoghar'),
(48, 10, 'Hazaribagh'),
(49, 10, 'Dhanbad'),
(50, 11, 'Mysore'),
(51, 11, 'Davangere'),
(52, 11, 'Mangalore'),
(53, 11, 'Hubli-Dharwad'),
(54, 11, 'Belgaum'),
(55, 12, 'Kochi'),
(56, 12, 'Kozhikode'),
(57, 12, 'Thrissur'),
(58, 12, 'Malappuram'),
(59, 13, 'Indore'),
(60, 13, 'Gwalior'),
(61, 13, 'Jabalpur'),
(62, 13, 'Ujjain'),
(63, 13, 'Sagar'),
(64, 14, 'Pune'),
(65, 14, 'Nagpur'),
(66, 14, 'Nashik'),
(67, 14, 'Aurangabad'),
(68, 14, 'Solapur'),
(69, 15, 'Solapur'),
(70, 15, 'Ukhrul'),
(71, 15, 'Tamenglong'),
(72, 15, 'Chandel'),
(73, 15, 'Senapati'),
(74, 16, 'Cherrapunji'),
(75, 16, 'Tura'),
(76, 16, 'Jowai'),
(77, 16, 'Baghmara'),
(78, 16, 'Nongpoh'),
(79, 17, 'Lunglei'),
(80, 17, 'Serchhip'),
(81, 17, 'Champhai'),
(82, 17, 'Tuipang'),
(83, 17, 'Mamit'),
(84, 18, 'Tuensang'),
(85, 18, 'Zunheboto'),
(86, 18, 'Mokokchung'),
(87, 18, 'Kiphire Sadar'),
(88, 18, 'Kiphire Sadar'),
(89, 18, 'Phek'),
(90, 19, 'Rourkela'),
(91, 19, 'Cuttack'),
(92, 19, 'Brahmapur'),
(93, 19, 'Puri'),
(94, 19, 'Sambalpur'),
(95, 20, 'Amritsar'),
(96, 20, 'Jalandhar'),
(97, 20, 'Ludhiana'),
(98, 20, 'Patiala'),
(99, 20, 'Kapurthala'),
(100, 21, 'Bikaner'),
(101, 21, 'Jaisalmer'),
(102, 21, 'Jodhpur'),
(103, 21, 'Udaipur'),
(104, 21, 'Ajmer'),
(105, 22, 'Namchi'),
(106, 22, 'Gyalshing'),
(107, 22, 'Mangan'),
(108, 22, 'Rabdentse'),
(109, 23, 'Tiruchirappalli'),
(110, 23, 'Madurai'),
(111, 23, 'Erode'),
(112, 23, 'Vellore'),
(113, 23, 'Coimbatore'),
(114, 24, 'Warangal'),
(115, 24, 'Nizamabad'),
(116, 24, 'Karimnagar'),
(117, 24, 'Adilabad'),
(118, 24, 'Khammam'),
(119, 25, 'Amarpur'),
(120, 25, 'Kumarghat'),
(121, 25, 'Udaipur'),
(122, 25, 'Gakulnagar'),
(123, 25, 'Kunjaban'),
(124, 26, 'Noida'),
(125, 26, 'Varanasi'),
(126, 26, 'Allahabad'),
(127, 26, 'Agra'),
(128, 26, 'Kanpur'),
(129, 27, 'Haridwar'),
(130, 27, 'Roorkee'),
(131, 27, 'Rishikesh'),
(132, 27, 'Kashipur'),
(133, 27, 'Haldwani'),
(134, 28, 'Darjeeling'),
(135, 28, 'Siliguri'),
(136, 28, 'Asansol'),
(137, 28, 'Howrah'),
(138, 28, 'Durgapur');

-- --------------------------------------------------------

--
-- Table structure for table `modle`
--

CREATE TABLE `modle` (
  `modleid` int(11) NOT NULL,
  `brandid` int(11) NOT NULL,
  `modlename` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modle`
--

INSERT INTO `modle` (`modleid`, `brandid`, `modlename`, `description`, `mysqltime`) VALUES
(1, 2, 'Puma star gold', 'Latest Puna Shoes', '2020-09-03 14:07:14'),
(2, 5, 'Adidas Start', 'Latest item\'s', '2020-09-03 14:29:13'),
(3, 3, 'Polo sport\'s', 'Latest Brand', '2020-09-03 14:33:10'),
(4, 2, 'Puma start-q', 'Lates Brand', '2020-09-03 14:37:10'),
(5, 1, 'samsung a10s', 'Latest  brand', '2020-09-03 14:40:04'),
(6, 6, 'Reebock xxx2', 'Lates Brand', '2020-09-03 14:49:31'),
(7, 3, 'Binghuman ', 'Latest Brand', '2020-09-03 14:56:08'),
(8, 7, 'Panasonice L1', 'Lates Brand', '2020-09-03 16:03:20'),
(9, 2, 'Puma lx1', 'Latest Puma shoes', '2020-09-04 18:55:39'),
(11, 3, 'Polo T-shart sumo', 'Latest Brand', '2020-09-04 19:01:49'),
(12, 5, 'Reebock Track shoot woman', 'Latest Brand', '2020-09-04 19:03:23'),
(14, 7, 'Pansonice pl5', 'Latest Brand', '2020-09-26 14:19:54'),
(15, 8, 'Usha Iron star', 'New Brand', '2020-10-19 08:02:44'),
(16, 7, 'pf7', 'New Brand', '2020-11-03 06:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `outletid` int(11) NOT NULL,
  `firmname` varchar(255) NOT NULL,
  `ownername` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `registrationno` varchar(255) NOT NULL,
  `gstno` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `photograph` varchar(255) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `averageprice` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `status` enum('active','deactive') NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outlets`
--

INSERT INTO `outlets` (`outletid`, `firmname`, `ownername`, `mobile`, `phone`, `registrationno`, `gstno`, `address`, `state`, `city`, `location`, `photograph`, `emailid`, `password`, `description`, `averageprice`, `rating`, `lat`, `lng`, `status`, `mysqltime`) VALUES
(1, 'Ram ', 'Ram Sharma', '987456520', '075120054', 'g-0147', 'g-0258', 'gwalior', 'mp', 'gwalior', 'gwalior', 'user.png', 'ramsharma@gmail.com', '0147', 'im good saller', '2580', '0', '100', '200', '', '2020-08-18 17:55:20'),
(2, 'salil ', 'salil bhatnagar', '9893214874', '0751214454', 'gwa-015700', 'g-0147', 'satabdipuram p-block', 'mp', 'gwalior', 'gola ka mandire', 'user.png', 'salilbhatnagar1@gmail.com', 'salil0147', 'gwalior saller ', '1200', '0', '100', '20', '', '2020-08-18 18:00:50'),
(3, 'pankaj', 'pankaj sing', '987852963', '015842201', 'g-014785', 'g-0258a', 'murena', 'mp', 'murena', 'murena', 'icon.jpg', 'pankaj@gmail.com', '0147', 'saller in murena', '4500', '0', '100', '20', 'active', '2020-08-18 18:04:49'),
(4, 'piyush', 'piyush bhatnagar', '9987410231', '015746520', '123456', '147852', 'gwalior', 'mp', 'gwalior', 'gwalior', 'user.png', 'piyush@gmail.com', '0123', 'saller in gwalior', '1200', '0', '10', '200', 'active', '2020-08-18 18:39:02'),
(5, 'rahul', 'rahul sharma', '9874568520', '075142215', 'rg-0258', 'gs-0147', 'gwalior', 'mp', 'gwalior', 'gwalior', 'user.png', 'rahul@gmail.com', 'rahul0147', 'im saller in gwalior', '250', '0', '100', '20', 'active', '2020-08-18 19:05:30'),
(6, 'shree', 'ram shree', '9874561100', '01554112011', '01258254874', '500014', 'gwalior', 'mp', 'gwalior', 'gwaliior', '5_b.jpg', 'shree@gmail.com', '0147', 'good ', '450', '200', '10', '200', 'active', '2020-08-21 11:59:11'),
(7, 'Refrigerator ', 'salil bhatnagar', '09893214874', '0751200452', '0125474441', '012544', 'Balram nagar gola ka mandire bhind road near unipetch factory house number 10', 'MP', 'Gwalior', 'gwalior', '5_b.jpg', 'salilbhatnagar1@gmail.com', 'salil0147', 'dealer of gwalior', '590', '0', '100', '20', 'active', '2020-08-25 16:12:44'),
(8, 'Sai Opticals', 'Salil Bhatnagar', '09893214874', '07512254856', '0147025836', 'g-258369', 'Balram nagar gola ka mandire bhind road near unipetch factory house number 10', '13', '60', 'Gola ka Mandire', 'Caucasianboss.png', 'salilbhatnagar1@gmail.com', 'salil0147', 'im saller', '5290', '0', '250', '255', 'active', '2020-08-28 20:05:33'),
(9, 'ACB Group', 'Amit sharma', '8877945620', '0751205542', '014725896300', 'g-0117852', 'Punjab lal bhag', '20', '98', 'punjab', 'huge-hipster-vector-pack.jpg', 'amit123@gmail.com', 'amit@123', 'im retraller', '2000', '0', '258', '2015', 'active', '2020-08-29 07:40:08'),
(10, 'MRF', 'Swami Sadan', '8855220123', '0751200123', '7894563210', 'g-258369741', 'white kanch', '7', '34', 'white side temple ', '3-fresh-UI-designs-2015.jpg', 'swami011@gmail.com', 'swami123', 'im retraller', '1500', '0', '5862', '2158', 'active', '2020-08-29 07:50:50'),
(11, 'sadsad', 'sfsfdsf', '09893214874', '54512135153132132', '1223132123123', '231231231', 'Balram nagar gola ka mandire bhind road near unipetch factory house number 10', '4', '18', 'Bihar', '5_b.jpg', 'salilbhatnagar1@gmail.com', '121213', 'DFDFDF', '1000', '0', '21212', '45454', 'active', '2020-08-29 07:52:44'),
(12, 'fdsfds', 'sfdsfs', '56464546465', '5456456464654', '646546465464', '4654655454', 'asdasdasd', '1', '1', 'sdsdsa', '3-fresh-UI-designs-2015.jpg', 'ssd@gmail.com', '0147258', 'fjldjlk', '56454', '000', '212121', '1212', 'active', '2020-08-29 08:00:25'),
(13, 'asdasdsa', 'dasdasd', '21225545545', '54545455454', '554545455454', '545454', 'dfdsf', '7', '31', 'dfdfd', '1sl70112-scullers-40-original-imaemw7uh8arygfz.jpeg', 'ss@gmail.com', 'dsdfsdfsdf', 'fsdsdf', '212', '0', '31345', '212', 'active', '2020-08-29 08:02:46'),
(14, 'dsdsdsa', 'sadsad', '09893214874', '4565465464654', '45646644645', '6464646546', 'Balram nagar gola ka mandire bhind road near unipetch factory house number 10', '5', '21', 'dff', '5_b.jpg', 'salilbhatnagar1@gmail.com', '1231321321', 'zcsd', '4545', '00', '2121', '1212', 'active', '2020-08-29 08:04:10'),
(15, 'sdsdsdsad', 'sdfdsfsf', '09893214874', '2121212122', '2121245454', '2121', 'Balram nagar gola ka mandire bhind road near unipetch factory house number 10', '9', '40', 'sdfsdf', '1_b.jpg', 'salilbhatnagar1@gmail.com', 'sdsdsa', 'sdasd', '2111', '0', '1212', '212', 'active', '2020-08-29 08:06:11'),
(16, 'Mrf', 'Salil Bhatnagar', '09893214874', '075122035', '0147258963201', '25Sdgbddr251258', 'Balram nagar gola ka mandire bhind road near unipetch factory house number 10', '13', '60', 'gwalior', 'login21.jpg', 'salilbhatnagar1@gmail.com', 'salil@123', 'im bisnisman', '520', '0', '22.7252', '75.8943', 'active', '2020-09-02 13:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_item`
--

CREATE TABLE `product_item` (
  `productid` int(11) NOT NULL,
  `bander_id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `brandid` int(11) NOT NULL,
  `modleid` int(11) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `offerprice` varchar(255) NOT NULL,
  `delivery` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `offertype` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `ad` varchar(255) NOT NULL,
  `ad_status` enum('yes','no') NOT NULL,
  `vender_status` enum('Not_verify','verify') NOT NULL,
  `mysqlTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_item`
--

INSERT INTO `product_item` (`productid`, `bander_id`, `categoryid`, `brandid`, `modleid`, `productname`, `description`, `price`, `offerprice`, `delivery`, `rating`, `color`, `offertype`, `stock`, `picture`, `ad`, `ad_status`, `vender_status`, `mysqlTime`) VALUES
(1, 100, 2, 8, 15, 'test', '', '', '', '', '', '', '', '', '31eP5tfUP9L.jpg', '31mZ5b+LnbL.jpg', 'yes', '', '2020-11-07 12:39:21'),
(2, 101, 9, 6, 6, 'Reebock xxx2', 'New Reebock Brand', '12000', '10', '50', '0', 'white', 'Discount ', '10', 'puma2.jpg', 'puma1.jpg', 'yes', '', '2020-10-20 11:29:13'),
(3, 102, 1, 7, 14, 'Pansonice pl5', 'New Brand', '18000', '1000', '50', '0', 'Black', 'Cashback', '50', '15659-19-1.jpg', '719knfTwPvL._AC_SX425_.jpg', 'yes', '', '2020-10-20 11:40:02'),
(4, 103, 4, 5, 2, 'Adidas Start', 'New Brand ', '2000', '800', '20', '0', 'black and white', '10', '50', 'woment-shart2.jpg', 'Running-font-b-Sport-b-font-font-b-Women-b-font-Sets-Tracksuit-Fitness-Hoodies-Pants.jpg', 'yes', '', '2020-10-20 11:44:09'),
(5, 105, 3, 3, 7, 'Binghuman', 'New Brand', '2500', '200', '10', '0', 'white', '', '15', 'mant-shart1.jpg', 'mant-shart2.jpg', 'yes', '', '2020-10-20 13:17:16'),
(6, 108, 2, 8, 15, 'Usha Iron ', 'New Brand', '5000', '199', '20', '0', 'black and red', '', '50', '31mZ5b+LnbL.jpg', '31eP5tfUP9L.jpg', 'yes', '', '2020-10-20 13:30:53'),
(7, 104, 1, 1, 5, 'dfdsf', 'dfdsf', 'ffgdfg', 'fdf', 'fsdf', 'dfgfdg', 'dsfdf', 'Discounted', 'dsfdsf', '31eP5tfUP9L.jpg', '3dd3ed11ecb04de520aa7e83c15c3db0--fashion-tips-mens-fashion-styles.jpg', 'yes', '', '2020-10-20 13:48:33'),
(8, 120, 2, 8, 15, 'sdfs', 'dfdsf', 'dfdsf', 'sdfdsf', 'sdfdsf', 'dfdsfds', 'dsfdsf', 'No offer', 'sdfdsf', '3dd3ed11ecb04de520aa7e83c15c3db0--fashion-tips-mens-fashion-styles.jpg', '719knfTwPvL._AC_SX425_.jpg', 'no', '', '2020-11-07 12:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `stateid` int(10) UNSIGNED NOT NULL,
  `statename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`stateid`, `statename`) VALUES
(1, 'Andhra Pradesh	'),
(2, 'Arunachal Pradesh'),
(3, 'Assam'),
(4, 'Bihar'),
(5, 'Chhattisgarh'),
(6, 'Goa	'),
(7, 'Gujarat'),
(8, 'Haryana'),
(9, 'Himachal Pradesh	'),
(10, 'Jharkhand'),
(11, 'Karnataka'),
(12, 'Kerala'),
(13, 'Madhya Pradesh'),
(14, 'Maharashtra'),
(15, 'Manipur'),
(16, 'Meghalaya'),
(17, 'Mizoram'),
(18, 'Nagaland'),
(19, 'Odisha'),
(20, 'Punjab'),
(21, 'Rajasthan'),
(22, 'Sikkim'),
(23, 'Tamil Nadu	'),
(24, 'Telangana'),
(25, 'Tripura'),
(26, 'Uttar Pradesh'),
(27, 'Uttarakhand'),
(28, 'West Bengal	');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`citiesid`);

--
-- Indexes for table `modle`
--
ALTER TABLE `modle`
  ADD PRIMARY KEY (`modleid`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`outletid`);

--
-- Indexes for table `product_item`
--
ALTER TABLE `product_item`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`stateid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `citiesid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `modle`
--
ALTER TABLE `modle`
  MODIFY `modleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `outletid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_item`
--
ALTER TABLE `product_item`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `stateid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
