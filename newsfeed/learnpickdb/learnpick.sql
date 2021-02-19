-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2020 at 04:51 PM
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
-- Database: `learnpick`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `categoryicon` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categoryname`, `categoryicon`, `mysqltime`) VALUES
(1, 'English', '1907331_577729489048977_6786886303898983375_n.jpg', '2020-04-19 13:44:25'),
(2, 'English', '2015.jpg', '2020-04-19 10:55:39'),
(3, 'English', '2015.jpg', '2020-04-19 11:03:02'),
(4, 'test', '2015.jpg', '2020-04-19 13:37:01'),
(5, 'Hindi', '1900070_10152033350313580_742751734_n.jpg', '2020-04-19 13:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `stateid` int(10) UNSIGNED NOT NULL,
  `citiesid` int(10) UNSIGNED NOT NULL,
  `citiesname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`stateid`, `citiesid`, `citiesname`) VALUES
(1, 1, 'Visakhapatnam'),
(1, 2, 'Vijayawada'),
(1, 3, 'Guntur'),
(1, 4, 'Nellore'),
(1, 5, 'Tirupati'),
(2, 6, 'Tawang'),
(2, 7, 'Bhismaknagar'),
(2, 8, 'Pasighat'),
(2, 9, 'Ziro'),
(2, 10, 'Bomdila'),
(3, 11, 'Guwahati'),
(3, 12, 'Tezpur'),
(3, 13, 'Dibrugarh'),
(3, 14, 'Silchar'),
(3, 15, 'North Lakhimpur'),
(4, 16, 'Gaya'),
(4, 17, 'Biharsharif'),
(4, 18, 'Darbhanga'),
(4, 19, 'Bhagalpur'),
(5, 20, 'Bilaspur'),
(5, 21, 'Korba'),
(5, 22, 'Durg-Bhilainagar'),
(5, 23, 'Raigarh'),
(5, 24, 'Rajnandgaon'),
(6, 25, 'Vasco-da-Gama'),
(6, 26, 'Ponda'),
(6, 27, 'Margao'),
(6, 28, 'Mapusa'),
(6, 29, 'Goa Velha'),
(7, 30, 'Ahmedabad'),
(7, 31, 'Surat'),
(7, 32, 'Rajkot'),
(7, 33, 'Junagadh'),
(7, 34, 'Vadodara'),
(8, 35, 'Faridabad'),
(8, 36, 'Gurgaon'),
(8, 37, 'Sonipat'),
(8, 38, 'Panipat'),
(8, 39, 'Ambala'),
(9, 40, 'Dharamshala'),
(9, 41, 'Mandi'),
(9, 42, 'Solan'),
(9, 43, 'Bilaspur'),
(9, 44, 'Chamba'),
(10, 45, 'Bokaro'),
(10, 46, 'Jamshedpur'),
(10, 47, 'Deoghar'),
(10, 48, 'Hazaribagh'),
(10, 49, 'Dhanbad'),
(11, 50, 'Mysore'),
(11, 51, 'Davangere'),
(11, 52, 'Mangalore'),
(11, 53, 'Hubli-Dharwad'),
(11, 54, 'Belgaum'),
(12, 55, 'Kochi'),
(12, 56, 'Kozhikode'),
(12, 57, 'Thrissur'),
(12, 58, 'Malappuram'),
(13, 59, 'Indore'),
(13, 60, 'Gwalior'),
(13, 61, 'Jabalpur'),
(13, 62, 'Ujjain'),
(13, 63, 'Sagar'),
(14, 64, 'Pune'),
(14, 65, 'Nagpur'),
(14, 66, 'Nashik'),
(14, 67, 'Aurangabad'),
(14, 68, 'Solapur'),
(15, 69, 'Solapur'),
(15, 70, 'Ukhrul'),
(15, 71, 'Tamenglong'),
(15, 72, 'Chandel'),
(15, 73, 'Senapati'),
(16, 74, 'Cherrapunji'),
(16, 75, 'Tura'),
(16, 76, 'Jowai'),
(16, 77, 'Baghmara'),
(16, 78, 'Nongpoh'),
(17, 79, 'Lunglei'),
(17, 80, 'Serchhip'),
(17, 81, 'Champhai'),
(17, 82, 'Tuipang'),
(17, 83, 'Mamit'),
(18, 84, 'Tuensang'),
(18, 85, 'Zunheboto'),
(18, 86, 'Mokokchung'),
(18, 87, 'Kiphire Sadar'),
(18, 88, 'Kiphire Sadar'),
(18, 89, 'Phek'),
(19, 90, 'Rourkela'),
(19, 91, 'Cuttack'),
(19, 92, 'Brahmapur'),
(19, 93, 'Puri'),
(19, 94, 'Sambalpur'),
(20, 95, 'Amritsar'),
(20, 96, 'Jalandhar'),
(20, 97, 'Ludhiana'),
(20, 98, 'Patiala'),
(20, 99, 'Kapurthala'),
(21, 100, 'Bikaner'),
(21, 101, 'Jaisalmer'),
(21, 102, 'Jodhpur'),
(21, 103, 'Udaipur'),
(21, 104, 'Ajmer'),
(22, 105, 'Namchi'),
(22, 106, 'Gyalshing'),
(22, 107, 'Mangan'),
(22, 108, 'Rabdentse'),
(23, 109, 'Tiruchirappalli'),
(23, 110, 'Madurai'),
(23, 111, 'Erode'),
(23, 112, 'Vellore'),
(23, 113, 'Coimbatore'),
(24, 114, 'Warangal'),
(24, 115, 'Nizamabad'),
(24, 116, 'Karimnagar'),
(24, 117, 'Adilabad'),
(24, 118, 'Khammam'),
(25, 119, 'Amarpur'),
(25, 120, 'Kumarghat'),
(25, 121, 'Udaipur'),
(25, 122, 'Gakulnagar'),
(25, 123, 'Kunjaban'),
(26, 124, 'Noida'),
(26, 125, 'Varanasi'),
(26, 126, 'Allahabad'),
(26, 127, 'Agra'),
(26, 128, 'Kanpur'),
(27, 129, 'Haridwar'),
(27, 130, 'Roorkee'),
(27, 131, 'Rishikesh'),
(27, 132, 'Kashipur'),
(27, 133, 'Haldwani'),
(28, 134, 'Darjeeling'),
(28, 135, 'Siliguri'),
(28, 136, 'Asansol'),
(28, 137, 'Howrah'),
(28, 138, 'Durgapur');

-- --------------------------------------------------------

--
-- Table structure for table `coching_information`
--

CREATE TABLE `coching_information` (
  `coching_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `coching_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `mysqlitime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coching_information`
--

INSERT INTO `coching_information` (`coching_id`, `name`, `coching_name`, `address`, `state`, `city`, `zip`, `email`, `mobile_number`, `course`, `mysqlitime`) VALUES
(1, 'Salil Bhatnagar', 'Bhatnagar Coching', 'Gola ka Mandir Bhing Road Neare Unipatchi', '13', '13', '474005', 'salilbhatnagar@gmail.com', '8899445625', 'Computer Cource', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `subcategories_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `subcategoryicon` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subcategories_id`, `categories_id`, `description`, `subcategoryicon`, `mysqltime`) VALUES
(1, 5, 'Spacial Hindi', '10173780_10152534309684436_4132695676102613269_n.jpg', '2020-04-19 13:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `tutorial_information`
--

CREATE TABLE `tutorial_information` (
  `tutorial_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `equalification` varchar(255) NOT NULL,
  `exprience` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `mysqlitime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutorial_information`
--

INSERT INTO `tutorial_information` (`tutorial_id`, `firstname`, `lastname`, `gender`, `address`, `mobile_number`, `state`, `city`, `zip`, `equalification`, `exprience`, `dob`, `email`, `password`, `photo`, `mysqlitime`) VALUES
(1, 'Salil Shan', 'Bhatnagar', 'male', 'Balram nagar gola ka mandire bhind road near unipetch factory house number 10', '9893214874', '13', '60', '474005', 'Mca', '2 Year Exp.', '1986-07-09', 'Salilbhatnagar1@gmail.com', '123456', 'owl-eye-02-640-x-400.jpg', '2020-04-19 14:44:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`citiesid`);

--
-- Indexes for table `coching_information`
--
ALTER TABLE `coching_information`
  ADD PRIMARY KEY (`mysqlitime`,`name`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`stateid`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcategories_id`);

--
-- Indexes for table `tutorial_information`
--
ALTER TABLE `tutorial_information`
  ADD PRIMARY KEY (`tutorial_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `citiesid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `coching_information`
--
ALTER TABLE `coching_information`
  MODIFY `mysqlitime` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `stateid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcategories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tutorial_information`
--
ALTER TABLE `tutorial_information`
  MODIFY `tutorial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
