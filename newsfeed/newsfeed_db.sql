-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2020 at 12:25 PM
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
-- Database: `newsfeed_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `mysqltime`) VALUES
(1, 'admin1@gmail.com', 'admin', '2020-04-18 14:16:57'),
(2, 'admin2@gmail.com', 'admin', '2020-04-18 14:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blogs_id` int(11) NOT NULL,
  `discraiption` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blogs_id`, `discraiption`, `image`, `mysqltime`) VALUES
(1, 'Death for Reshi karoop ji and second dimond is left of industry                              \r\n                              ', '10906518_607165809438678_1916063907115390305_n.jpg', '2020-04-30 12:18:29'),
(2, 'test                              \r\n                              ', '11554_611229515698974_775130033734637423_n.jpg', '2020-04-30 12:21:18'),
(3, 'test 2                              \r\n                              ', 'JaiGanesh.jpg', '2020-04-30 12:27:48'),
(4, ' test 3                             \r\n                              ', '11042668_1265900640093108_1374193130771394036_n.jpg', '2020-04-30 12:28:22'),
(5, 'test 4                           \r\n                              ', 'prd_007402.jpg', '2020-04-30 12:28:45'),
(6, 'test 5                              \r\n                              ', 'owl-eye-02-640-x-400.jpg', '2020-04-30 12:29:03'),
(7, 'test 2                              \r\n                              ', 'JaiGanesh.jpg', '2020-04-30 12:29:21'),
(8, 'test 2                              \r\n                              ', 'JaiGanesh.jpg', '2020-04-30 12:29:26'),
(9, 'test8                              \r\n                              ', '11021100_660375564117702_5052024418237276875_n.jpg', '2020-04-30 16:33:26'),
(10, 'test blogger                              \r\n                              ', 'mitm indore 2.jpg', '2020-05-04 09:24:35'),
(11, 'blogger is very perfact                              \r\n                              ', 'mitm indore 3.jpg', '2020-05-04 09:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `message`, `mysqltime`) VALUES
(1, 'Salil Bhatnagar', 'salilbhatnagar1@gmail.com', 'test msg', '2020-05-02 16:37:43'),
(2, 'gopal tomar', 'gopal@gmail.com', 'Your side is very good and all world information...', '2020-05-02 16:39:53'),
(3, 'Salil Bhatnagar', 'salilbhatnagar1@gmail.com', 'test msg', '2020-05-03 10:07:33'),
(4, 'Salil Bhatnagar', 'salilbhatnagar1@gmail.com', 'newsfeed bloger is very good side and good news of any other world...', '2020-05-03 10:08:47'),
(5, 'sneha bhatnagar', 'snehabhatnagar@gmail.com', 'is a very good bloger side', '2020-05-04 07:56:51'),
(6, 'gopal tomar', 'gopal@gmail.com', 'please sharemarket all information in send thank you', '2020-05-04 08:41:18'),
(7, 'Salil Bhatnagar', 'salilbhatnagar1@gmail.com', 'post is very nice and all information in your side thank you', '2020-05-04 10:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `fashion`
--

CREATE TABLE `fashion` (
  `fashion_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `discraiption` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fashion`
--

INSERT INTO `fashion` (`fashion_id`, `title`, `discraiption`, `date`, `image`, `mysqltime`) VALUES
(1, 'test fashion', 'test fashion                              \r\n                              ', '2020-05-04 00:00:00', 'mitm indore 2.jpg', '2020-05-04 08:47:41'),
(2, 'test fashion', 'test fashion                              \r\n                              ', '2020-05-04 00:00:00', 'mitm indore 2.jpg', '2020-05-04 09:19:06'),
(3, 'test 2', 'test2                              \r\n                              ', '2020-05-04 00:00:00', 'madicap.jpg', '2020-05-04 09:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `latest_news`
--

CREATE TABLE `latest_news` (
  `latestnews_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `discraiption` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `latest_news`
--

INSERT INTO `latest_news` (`latestnews_id`, `title`, `discraiption`, `date`, `image`, `mysqltime`) VALUES
(1, 'In Pics', 'India Lights Candles, Diyas To Beat Coronavirus Darkness', '2020-04-22 00:00:00', 'ln6.jpeg', '2020-04-22 09:45:03'),
(2, ' Live', 'Delhi CM wishes journalists safety and good health', '2020-04-22 00:00:00', 'in7.jpg', '2020-04-22 09:57:07'),
(3, 'Aditya Thackeray will be Shiv Sena\'s Rahul Gandhi\'; Aaj Tak journalist Anjana Kashyap apologises for off-camera remark; Congress, Sena say \'focus on journalism', 'Aaj Tak journalist Anjana Om Kashyap issued a clarification on her comment comparing Yuva Sena chief Aditya Thackeray to former Congress president Rahul Gandhi which got aired seemingly by mistake during a live broadcast.\r\n', '2020-04-22 00:00:00', 'ln8.jpg', '2020-04-22 10:01:14'),
(4, 'Aroon Purie hands over reins of India Today to daughter Kallie; appoints her as group vice-chairperson', 'Aroon Purie, chairman of Living Media group, has stepped down from active duties at the conglomerate, appointing his daughter Kallie Purie to handle operations.\r\nIn a letter to his staffers, the screenshot of which got leaked on social media, Aroon said h', '2020-04-22 00:00:00', 'ln9.jpg', '2020-04-22 12:14:17'),
(5, 'Don’t stretch it’: Rajyavardhan Rathore clarifies statements on Dawood Ibrahim and covert ops', 'Union Minister Rajyavardhan Singh Rathore has denied making certain statements regarding India\'s ability to neutralise enemies, Dawood Ibrahim and covert operations in a TV interview.\r\nHe clarified his stance on Twitter in a series of tweets saying that I', '2020-04-22 00:00:00', 'ln10.jpg', '2020-04-22 12:17:27'),
(6, 'test latest new 1', 'test latest news', '2020-05-04 00:00:00', 'mitm indore 2.jpg', '2020-05-04 08:45:39'),
(7, 'test 2lasts news', 'test 2', '2020-05-04 00:00:00', 'madicap.jpg', '2020-05-04 09:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `latest_post`
--

CREATE TABLE `latest_post` (
  `latestpost_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `discraiption` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `latest_post`
--

INSERT INTO `latest_post` (`latestpost_id`, `title`, `discraiption`, `date`, `image`, `mysqltime`) VALUES
(1, 'test latast post', 'test latest post                              \r\n                              ', '2020-05-04 00:00:00', 'mitm indore 2.jpg', '2020-05-04 09:11:40'),
(2, 'test2', 'test     2                         \r\n                              ', '2020-05-04 00:00:00', 'madicap.jpg', '2020-05-04 09:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `politices`
--

CREATE TABLE `politices` (
  `politices_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `discraiption` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `politices`
--

INSERT INTO `politices` (`politices_id`, `title`, `discraiption`, `date`, `image`, `mysqltime`) VALUES
(1, 'Politics News  Rajya Sabha Election', ' NCP Supremo Sharad Pawar, BJP\'s newest recruit Jyotiraditya Scindia in fray for 26 March polls                              \r\n                              ', '2020-04-22 00:00:00', 'p6.jpeg', '2020-04-22 12:26:59'),
(2, 'test politices', 'test politics                               \r\n                              ', '2020-05-04 00:00:00', 'mitm indore 2.jpg', '2020-05-04 08:47:10'),
(3, 'test2', 'test2                              \r\n                              ', '2020-05-04 00:00:00', 'madicap.jpg', '2020-05-04 09:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `popural_post`
--

CREATE TABLE `popural_post` (
  `popuralpost_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `discraiption` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `popural_post`
--

INSERT INTO `popural_post` (`popuralpost_id`, `title`, `discraiption`, `date`, `image`, `mysqltime`) VALUES
(1, 'test papular post', 'test popular post                              \r\n                              ', '2020-05-04 00:00:00', 'mitm indore 2.jpg', '2020-05-04 09:16:37'),
(2, 'test2', 'test2                              \r\n                              ', '2020-05-04 00:00:00', 'madicap.jpg', '2020-05-04 09:57:05'),
(3, 'test2', 'test2                              \r\n                              ', '2020-05-04 00:00:00', 'madicap.jpg', '2020-05-04 09:57:31'),
(4, 'test2', 'test2                              \r\n                              ', '2020-05-04 00:00:00', 'madicap.jpg', '2020-05-04 10:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sports_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `discraiption` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sports_id`, `title`, `discraiption`, `date`, `image`, `mysqltime`) VALUES
(1, 'test sports', 'test spots                              \r\n                              ', '2020-04-30 00:00:00', '2015.jpg', '2020-04-30 06:51:18'),
(2, 'test sports', '           test                   \r\n                              ', '2020-04-30 00:00:00', '2015.jpg', '2020-04-30 06:52:11'),
(3, 'sports ', 'test sport2                              \r\n                              ', '2020-04-30 00:00:00', '10891514_611229429032316_6839155615993527841_n.jpg', '2020-04-30 12:22:13'),
(4, 'test sports post', 'test sport                               \r\n                              ', '2020-05-04 00:00:00', 'mitm indore 2.jpg', '2020-05-04 09:17:39'),
(5, 'test2', 'test2                              \r\n                              ', '2020-05-04 00:00:00', 'madicap.jpg', '2020-05-04 10:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `technology`
--

CREATE TABLE `technology` (
  `technology_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `discraiption` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technology`
--

INSERT INTO `technology` (`technology_id`, `title`, `discraiption`, `date`, `image`, `mysqltime`) VALUES
(1, 'test technology post', ' test technology                               \r\n                              ', '2020-05-04 00:00:00', 'mitm indore 2.jpg', '2020-05-04 09:22:30'),
(2, 'test2', 'test2                              \r\n                              ', '2020-05-04 00:00:00', 'madicap.jpg', '2020-05-04 09:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `mysqltime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`user_id`, `first_name`, `last_name`, `gender`, `address`, `contact`, `zip_code`, `place`, `email`, `password`, `picture`, `mysqltime`) VALUES
(1, 'salil ', 'bhatnagar', 'male', 'Balram nagar gola ka mandire bhind road near unipetch factory house number 10', '9893214874', '474005', 'City', 'salilbhatnagar1@gmail.com', '123456', 'owl-eye-02-640-x-400.jpg', '2020-05-04 09:30:17'),
(2, 'ram shing', 'sharma', 'male', 'pa', '9874568520', '474002', 'City', 'ramsharma@gmail.com', '123456', 'Ganesh-l.jpg', '2020-05-04 10:20:07'),
(3, 'gopal', 'tomar', 'male', 'gwalior hazira', '99874568521', '474005', 'City', 'gopal@gmail.com', 'gopal', 'IMG-20170117-WA0004.jpg', '2020-05-01 16:21:49'),
(4, 'sneha', 'bhatnagar', 'female', 'air forces colony pune ', '9987456852', '4540123', 'City', 'snehabhatnagar@gmail.com', '123456', '11041656_10153826632878868_3918247348829757375_n.jpg', '2020-05-04 07:55:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blogs_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `fashion`
--
ALTER TABLE `fashion`
  ADD PRIMARY KEY (`fashion_id`);

--
-- Indexes for table `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`latestnews_id`);

--
-- Indexes for table `latest_post`
--
ALTER TABLE `latest_post`
  ADD PRIMARY KEY (`latestpost_id`);

--
-- Indexes for table `politices`
--
ALTER TABLE `politices`
  ADD PRIMARY KEY (`politices_id`);

--
-- Indexes for table `popural_post`
--
ALTER TABLE `popural_post`
  ADD PRIMARY KEY (`popuralpost_id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sports_id`);

--
-- Indexes for table `technology`
--
ALTER TABLE `technology`
  ADD PRIMARY KEY (`technology_id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blogs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fashion`
--
ALTER TABLE `fashion`
  MODIFY `fashion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `latestnews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `latest_post`
--
ALTER TABLE `latest_post`
  MODIFY `latestpost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `politices`
--
ALTER TABLE `politices`
  MODIFY `politices_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `popural_post`
--
ALTER TABLE `popural_post`
  MODIFY `popuralpost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sports_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `technology`
--
ALTER TABLE `technology`
  MODIFY `technology_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
