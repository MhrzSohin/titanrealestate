-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2024 at 07:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestatephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`) VALUES
(10, 'About Us', '<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p class=\"text_all_p_tag_css\">Our BCA 6th semester project focuses on developing a comprehensive real estate website. The platform will serve as a hub for property listings, connecting buyers, sellers, and renters. Key features include property search, detailed property profiles, virtual tours, and secure communication channels. We’ll design an intuitive user interface, implement robust security measures, and create a seamless experience for users navigating the real estate market. 🏠🌐\r\n<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'about.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `auser` varchar(50) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `adob` date NOT NULL,
  `aphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `auser`, `aemail`, `apass`, `adob`, `aphone`) VALUES
(9, 'admin', 'admin@gmail.com', '6812f136d636e737248d365016f8cfd5139e387c', '1994-12-06', '1470002569');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cid` int(50) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `sid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cid`, `cname`, `sid`) VALUES
(9, 'Kathmandu', 3),
(10, 'Bhaktapur', 2),
(11, 'Lalitpur', 2),
(12, 'Pokhara', 7),
(13, 'Bhairahawa', 15),
(15, 'Bouddha', 3);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(7, 'Bigyan Sohesh', 'test.com', '8888885454', 'project.com', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `fdescription` varchar(300) NOT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `pid` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `pcontent` longtext NOT NULL,
  `type` varchar(100) NOT NULL,
  `bhk` varchar(50) NOT NULL,
  `stype` varchar(100) NOT NULL,
  `bedroom` int(50) NOT NULL,
  `bathroom` int(50) NOT NULL,
  `balcony` int(50) NOT NULL,
  `kitchen` int(50) NOT NULL,
  `hall` int(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `size` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `feature` longtext NOT NULL,
  `pimage` varchar(300) NOT NULL,
  `pimage1` varchar(300) NOT NULL,
  `pimage2` varchar(300) NOT NULL,
  `pimage3` varchar(300) NOT NULL,
  `pimage4` varchar(300) NOT NULL,
  `uid` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `mapimage` varchar(300) NOT NULL,
  `topmapimage` varchar(300) NOT NULL,
  `groundmapimage` varchar(300) NOT NULL,
  `totalfloor` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `isFeatured` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`pid`, `title`, `pcontent`, `type`, `bhk`, `stype`, `bedroom`, `bathroom`, `balcony`, `kitchen`, `hall`, `floor`, `size`, `price`, `location`, `city`, `state`, `feature`, `pimage`, `pimage1`, `pimage2`, `pimage3`, `pimage4`, `uid`, `status`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `date`, `isFeatured`) VALUES
(25, 'Kathmandu, Bouddha', '', 'house', '4 BHK', 'sale', 4, 2, 3, 1, 1, '2nd Floor', 1869, 21900000, 'Kathmandu', 'Bouddha', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'zillhms1.jpg', 'zillhms2.jpg', 'zillhms3.jpg', 'zillhms4.jpg', 'zillhms5.jpg', 30, 'available', 'floorplan_sample.jpg', 'zillhms7.jpg', 'zillhms6.jpg', '2 Floor', '2022-07-22 22:29:20', 0),
(30, 'Balkumari, Lalitpur', '', 'School', '7 BHK', 'sale', 5, 3, 4, 1, 2, '1st Floor', 34332, 10000000, 'Lalitpur', 'Balkumari', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : 8</span>&nbsp;Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Building</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : 6 </span>People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'k3.jpg', 'k3.jpg', 'k1.jpg', 'k2.jpg', 'k3.jpg', 36, 'available', '', '', 'images.jpeg', '3 Floor', '2024-08-01 09:36:36', 1),
(31, 'Balkumari, Lalitpur', '', 'School', '7 BHK', 'sale', 5, 3, 4, 1, 2, '1st Floor', 34332, 10000000, 'Lalitpur', 'Balkumari', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : 8</span>&nbsp;Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Building</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : 6 </span>People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'k3.jpg', 'k3.jpg', 'k1.jpg', 'k2.jpg', 'k3.jpg', 36, 'available', '', '', 'images.jpeg', '3 Floor', '2024-08-01 09:36:36', 1),
(32, 'Gwarko ', '<p>Nice Flat with natural Environment</p>', 'flat', '3 BHK', 'sale', 1, 1, 1, 1, 1, '4th Floor', 23, 2500000, 'Gwarko', 'Lalitpur', 'Mahalaxmi', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'images.jpg', 'images.jpg', 'Meridian-Homes-Single-Storey_Calder-375x315.jpg', 'house-design-single-floor-1.jpg', 'Meridian-Homes-Single-Storey_Calder-375x315.jpg', 5580, 'available', 'Apartment-house-plan-for-Young-Professional.jpg', '', '', '8 Floor', '2024-09-26 19:07:55', 0),
(33, 'Lubhu Guest House', '<p>Guest House</p>', 'house', '2 BHK', 'rent', 2, 2, 2, 1, 1, '1st Floor', 234, 25000000, 'Lubhu', 'Lalitpur', 'Mahalaxmi', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '1.webp', '2.webp', '3.jpg', '3.webp', '3.webp', 42, 'available', 'images (1).jpg', 'house-floor-plan.png', 'images (1).jpg', '1 Floor', '2024-09-26 20:01:50', 0),
(35, 'Jawlakhel', '', 'flat', '2 BHK', 'rent', 2, 2, 2, 1, 1, '2nd Floor', 232, 160000, 'Jawlakhel', 'Kathmandu', 'Mahalaxmi', 'Array', '1.webp', '2.webp', '3.jpg', '3.webp', 'images.jpg', 42, 'available', 'images (1).jpg', 'house-floor-plan.png', 'house-floor-plan.png', '5 Floor', '2024-09-26 21:27:39', 0),
(36, 'Sankhamul Bunglow', '<h4>Beautiful house for sale at Civil Homes, Sankhamul;</h4>', 'house', '3 BHK', 'sale', 6, 3, 3, 2, 1, '2nd Floor', 258, 240000000, 'Sankhamul', 'Lalitpur', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>House</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 's1.jpg', 's2.jpg', 's3.jpg', 's4.jpg', 's5.jpg', 40, 'available', 's6.jpg', 'house-floor-plan.png', 'house-floor-plan.png', '3 Floor', '2024-09-26 22:10:53', 0),
(38, 'Wagle Niwas', '<p>Wagle Niwas&nbsp;</p>', 'house', '2 BHK', 'rent', 2, 1, 1, 1, 1, '1st Floor', 235, 24000000, 'Imadol', 'Lalitpur', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'c1.jpg', 'c3.jpeg', 'c4.jpeg', 'c5.jpeg', 'c6.jpeg', 43, 'available', 'c7.jpeg', 'house-floor-plan.png', 'house-floor-plan.png', '2 Floor', '2024-09-26 22:25:39', 0),
(39, 'Wagle Niwas', '<p>Wagle Niwas&nbsp;</p>', 'house', '2 BHK', 'rent', 2, 1, 1, 1, 1, '1st Floor', 235, 24000000, 'Imadol', 'Lalitpur', 'Bagmati', 'Array', 'c1.jpg', 'c3.jpeg', 'c4.jpeg', 'c5.jpeg', 'c6.jpeg', 43, 'available', 'c7.jpeg', 'house-floor-plan.png', 'house-floor-plan.png', '2 Floor', '2024-09-26 22:25:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `sid` int(50) NOT NULL,
  `sname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`sid`, `sname`) VALUES
(2, 'Koshi'),
(3, 'Bagmati\r\n'),
(4, 'Gandaki'),
(7, 'Mahadesh\r\n'),
(9, 'Lumbini'),
(10, 'Karnali\r\n'),
(15, 'Sudurpachim\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `uphone` varchar(20) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `uimage` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `uphone`, `upass`, `utype`, `uimage`) VALUES
(30, 'Bigyan', 'bigyan@mail.com', '7896665555', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'broker1.jpeg'),
(38, 'Dale2', 'dale2@gmail.com', '1234567899', '507b8e922776d2be750da774d429c07764997e2a', 'agent', 'avatarm7-min.jpg'),
(39, 'dale1', 'dale123@gmail.cpm', '1234567899', 'b952ce51c9a2c5eb06660a4c083b191259cfba80', 'user', 'dale1.jpg'),
(40, 'sohesh', 'sohesh@gmail.com', '1234567899', '3efd49c80326960d59bd4e783e37047be7dc8032', 'user', 'avatarm2-min.jpg'),
(41, 'ramBroker', 'ram@gmail.com', '9803365032', '77c7960e890deddebb7ff2e55e340d2ed1708368', 'agent', 'user-default-3-min.png'),
(42, 'kiran yadav', 'kiran@gmail.com', '9845756321', '974e9e2006ec43d25f7e8b16de63505f31e18473', 'user', 'user-profile-min.png'),
(43, 'Chandika', 'chandika@gmail.com', '9876543210', 'ad417c434c16f10f322ff7509e8139f385f60d28', 'user', 'avatarm2-min.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_interactions`
--

CREATE TABLE `user_interactions` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `interaction_type` enum('view','like','save','purchase','rent') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_interactions`
--

INSERT INTO `user_interactions` (`id`, `uid`, `pid`, `interaction_type`, `created_at`) VALUES
(1, 42, 33, 'view', '2024-09-26 15:56:01'),
(2, 42, 33, 'view', '2024-09-26 15:56:27'),
(3, 42, 33, 'view', '2024-09-26 15:57:26'),
(4, 42, 35, 'view', '2024-09-26 15:57:58'),
(5, 42, 25, 'view', '2024-09-26 15:59:29'),
(6, 42, 25, 'view', '2024-09-26 16:02:17'),
(7, 42, 25, 'view', '2024-09-26 16:03:03'),
(8, 42, 25, 'view', '2024-09-26 16:03:04'),
(9, 42, 25, 'view', '2024-09-26 16:03:15'),
(10, 42, 25, 'view', '2024-09-26 16:04:55'),
(11, 42, 25, 'view', '2024-09-26 16:05:59'),
(12, 42, 25, 'view', '2024-09-26 16:07:10'),
(13, 42, 25, 'view', '2024-09-26 16:07:14'),
(14, NULL, 25, 'view', '2024-09-26 16:07:28'),
(15, NULL, 25, 'view', '2024-09-26 16:07:29'),
(16, NULL, 25, 'view', '2024-09-26 16:09:47'),
(17, NULL, 25, 'view', '2024-09-26 16:09:47'),
(18, NULL, 25, 'view', '2024-09-26 16:09:48'),
(19, NULL, 25, 'view', '2024-09-26 16:09:48'),
(20, NULL, 25, 'view', '2024-09-26 16:09:48'),
(21, NULL, 25, 'view', '2024-09-26 16:09:48'),
(22, 42, 33, 'view', '2024-09-26 16:10:56'),
(23, 42, 33, 'view', '2024-09-26 16:10:56'),
(24, 42, 33, 'view', '2024-09-26 16:11:02'),
(25, 42, 33, 'view', '2024-09-26 16:11:02'),
(26, 42, 25, 'view', '2024-09-26 16:11:17'),
(27, 42, 33, 'view', '2024-09-26 16:12:18'),
(28, 42, 33, 'view', '2024-09-26 16:12:18'),
(29, 42, 25, 'view', '2024-09-26 16:12:46'),
(30, 42, 25, 'view', '2024-09-26 16:12:46'),
(31, 42, 25, 'view', '2024-09-26 16:13:58'),
(32, 42, 25, 'view', '2024-09-26 16:13:58'),
(33, 42, 25, 'view', '2024-09-26 16:14:02'),
(34, 42, 25, 'view', '2024-09-26 16:14:02'),
(35, 42, 25, 'view', '2024-09-26 16:14:35'),
(36, 42, 25, 'view', '2024-09-26 16:14:35'),
(37, 42, 25, 'view', '2024-09-26 16:14:36'),
(38, 42, 25, 'view', '2024-09-26 16:14:36'),
(39, 42, 35, 'view', '2024-09-26 16:14:55'),
(40, 42, 35, 'view', '2024-09-26 16:14:55'),
(41, 42, 25, 'view', '2024-09-26 16:15:12'),
(42, 42, 25, 'view', '2024-09-26 16:16:46'),
(43, 42, 35, 'view', '2024-09-26 16:17:28'),
(44, 42, 35, 'view', '2024-09-26 16:17:28'),
(45, 40, 36, 'view', '2024-09-26 16:27:07'),
(46, 40, 36, 'view', '2024-09-26 16:27:07'),
(47, 40, 25, 'view', '2024-09-26 16:27:23'),
(48, 40, 25, 'view', '2024-09-26 16:27:23'),
(49, 40, 36, 'view', '2024-09-26 16:28:41'),
(50, 40, 36, 'view', '2024-09-26 16:28:41'),
(51, 40, 25, 'view', '2024-09-26 16:31:07'),
(52, 40, 25, 'view', '2024-09-26 16:31:08'),
(53, 42, 33, 'view', '2024-09-26 16:31:35'),
(54, 43, 30, 'view', '2024-09-26 16:40:17'),
(55, 43, 31, 'view', '2024-09-26 16:40:26'),
(56, 43, 36, 'view', '2024-09-26 16:40:29'),
(57, 43, 38, 'view', '2024-09-26 16:43:30'),
(58, 43, 33, 'view', '2024-09-26 16:43:48'),
(59, 43, 33, 'view', '2024-09-26 16:44:42'),
(60, 43, 25, 'view', '2024-09-26 16:46:07'),
(61, 43, 25, 'view', '2024-09-26 16:51:03'),
(62, 43, 25, 'view', '2024-09-26 16:51:17'),
(63, 43, 25, 'view', '2024-09-26 16:51:37'),
(64, 43, 25, 'view', '2024-09-26 16:52:44'),
(65, 43, 36, 'view', '2024-09-26 16:59:44'),
(66, 43, 36, 'view', '2024-09-26 17:18:09'),
(67, 43, 33, 'view', '2024-09-26 17:18:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_interactions`
--
ALTER TABLE `user_interactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `pid` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_interactions`
--
ALTER TABLE `user_interactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_interactions`
--
ALTER TABLE `user_interactions`
  ADD CONSTRAINT `user_interactions_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  ADD CONSTRAINT `user_interactions_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `property` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
