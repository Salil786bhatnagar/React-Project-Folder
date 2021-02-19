-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2020 at 05:44 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`citiesid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `citiesid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
