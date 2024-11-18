-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 04:54 PM
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
  `aemail` varchar(255) DEFAULT NULL,
  `apass` varchar(255) DEFAULT NULL,
  `adob` date NOT NULL,
  `aphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `auser`, `aemail`, `apass`, `adob`, `aphone`) VALUES
(9, 'admin', 'admin@gmail.com', '6812f136d636e737248d365016f8cfd5139e387c', '1994-12-06', '1470002569'),
(0, 'sohesh maharjan', 'sohesh@gmail.com', 'sohesh', '2024-10-09', '9863441142'),
(0, 'Hary Maharjan', 'hary@gmail.com', '$2y$10$oJJcJlnKSti2DaEWny5XbenHqGPa5xDXQ9uNjJ5uR1js84kRmjYhK', '2024-11-06', '9803265019'),
(0, 'Chandika Wagle', 'chandika@gmail.com', '$2y$10$FVqs6jHAEMWhNn1K58uNkOEAoOF70yoHxC3pMLhTta5NPOOjakMjm', '2024-11-13', '9863441142'),
(0, 'Shiva Maharjan', 'shiva@gmail.com', '$2y$10$upX4I9cEjGA3gKiPg4rEAuVmgwTrhlqdg1VuOJa/SBn6u1i6vOBJK', '1991-06-21', '9803365019');

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

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `uid`, `fdescription`, `status`, `date`) VALUES
(9, 40, 'Titan Real Estate made finding our dream home a seamless process. The team was professional, attentive, and guided us through every step. Their property recommendations perfectly matched our needs and budget. Highly recommend their services!', 1, '2024-09-30 11:24:11'),
(10, 44, 'I was able to sell my property quickly and efficiently through Titan Real Estate. The platform connected me with interested buyers, and the process was smooth, without any unnecessary fees. Titan helped me avoid real estate brokers and saved a lot of time and money.', 1, '2024-10-02 16:32:41');

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
(32, 'Gwarko ', '<p>Nice Flat with natural Environment</p>', 'flat', '3 BHK', 'sale', 1, 1, 1, 1, 1, '4th Floor', 23, 2500000, 'Gwarko', 'Lalitpur', 'Mahalaxmi', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'images.jpg', 'images.jpg', 'Meridian-Homes-Single-Storey_Calder-375x315.jpg', 'house-design-single-floor-1.jpg', 'Meridian-Homes-Single-Storey_Calder-375x315.jpg', 5580, 'available', 'Apartment-house-plan-for-Young-Professional.jpg', '', '', '8 Floor', '2024-09-26 19:07:55', 0),
(33, 'Lubhu Guest House', '<p>Guest House</p>', 'house', '2 BHK', 'rent', 2, 2, 2, 1, 1, '1st Floor', 234, 25000000, 'Lubhu', 'Lalitpur', 'Mahalaxmi', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '1.webp', '2.webp', '3.jpg', '3.webp', '3.webp', 42, 'available', 'images (1).jpg', 'house-floor-plan.png', 'images (1).jpg', '1 Floor', '2024-09-26 20:01:50', 0),
(36, 'Sankhamul Bunglow', '<h4>Beautiful house for sale at Civil Homes, Sankhamul;</h4>', 'house', '3 BHK', 'sale', 6, 3, 3, 2, 1, '2nd Floor', 258, 240000000, 'Sankhamul', 'Lalitpur', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>House</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 's1.jpg', 's2.jpg', 's3.jpg', 's4.jpg', 's5.jpg', 40, 'available', 's6.jpg', 'house-floor-plan.png', 'house-floor-plan.png', '3 Floor', '2024-09-26 22:10:53', 0),
(38, 'Wagle Niwas', '<p>Wagle Niwas&nbsp;</p>', 'house', '2 BHK', 'rent', 2, 1, 1, 1, 1, '1st Floor', 235, 24000000, 'Imadol', 'Lalitpur', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'c1.jpg', 'c3.jpeg', 'c4.jpeg', 'c5.jpeg', 'c6.jpeg', 43, 'available', 'c7.jpeg', 'house-floor-plan.png', 'house-floor-plan.png', '2 Floor', '2024-09-26 22:25:39', 0),
(40, 'Reso Villa', '<p>Resu Villa is using design, artifacts and skills that are inherently Nepali. Please excuse our staff if their command over English is poor. We are trying to hire locals, encourage them to work irrespective of their educational background. Also we want to use and display crafts and cultural knowledge that are indigenous to Nepal. We are in whatever little way supporting and promoting local industries, and trying to place Nepal on the map as a luxury tourist destination</p>', 'villa', '2,3 BHK', 'rent', 4, 2, 2, 2, 2, 'Whole House', 80000, 17000, 'Lake Side', 'Pokhara', 'Koshi', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : No</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'v1.jpg', 'v2.jpg', 'v3.jpg', 'v5.jpg', 'v6.jpg', 44, 'available', 'v7.jpg', 'v8.png', 'v8.png', '3 Floor', '2024-09-30 11:31:52', 1),
(41, 'Hotel Country Villa ', '', 'villa', '4 BHK', 'sale', 4, 4, 3, 1, 2, 'Whole House', 8200, 24600000, 'White House ', 'Pokhara', 'Gandaki', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : No</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'villa.jpg', 'v6.jpg', 'v5.jpg', '2.webp', '3.jpg', 44, 'available', 'v7.jpg', 'v8.png', 'v8.png', '5 Floor', '2024-10-02 16:31:32', 1),
(43, 'JUJU colony', '', 'apartment', '2 BHK', 'rent', 2, 2, 1, 1, 1, '3rd Floor', 235, 24600000, 'Changunarayan', 'Bhaktapur', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : No</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'h3.jpeg', 'h1.jpeg', 'h5.jpeg', 'h3.jpeg', 'h.jpeg', 44, 'available', 'v8.png', 'v8.png', 'v8.png', '8 Floor', '2024-10-02 21:41:56', 0),
(69, 'Sweet Homes', '', 'house', '3 BHK', 'sale', 3, 2, 2, 1, 1, 'Whole House', 235, 36500000, 'Changunarayan', 'Bhaktapur', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : No</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'c1.jpg', '2.webp', 'c3.jpeg', 'c4.jpeg', 'c5.jpeg', 40, 'available', 'v7.jpg', '', '', '3 Floor', '2024-10-03 13:10:55', 1),
(77, 'Luxurious Full Furnished House', '<p>Land 5aana 1poisa ma baneko ghar ho south face 3ta 4wheeler Park garna milxa 13ft road 2.5km from ringroad fullfurnished luxurious house ho 100% manparxa</p>', 'house', '3 BHK', 'sale', 3, 2, 2, 2, 2, 'Whole House', 428, 54500000, 'Imadol', 'Lalitpur', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>1 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : House</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '1n.jpg', '2n.jpg', '3n.jpg', '4n.jpg', '5n.jpg', 40, 'available', '6n.jpg', '6n.jpg', '4n.jpg', '3 Floor', '2024-11-10 21:30:58', 1),
(78, 'Nepal Land', '', 'apartment', '3 BHK', 'sale', 3, 2, 2, 1, 1, '3rd Floor', 267, 24000000, 'Balkot', 'Bhaktapur', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '1n.jpg', '2n.jpg', '3n.jpg', '4n.jpg', '5n.jpg', 49, 'sold out', '6n.jpg', '1n.jpg', '6n.jpg', '5 Floor', '2024-11-10 22:18:50', 0),
(79, 'Hamro Ghar', '', 'apartment', '2 BHK', 'rent', 2, 1, 1, 1, 1, '4th Floor', 237, 36500000, 'Changunarayan', 'Bhaktapur', 'Bagmati', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 's5.jpg', 's3.jpg', 's4.jpg', 's5.jpg', 's4.jpg', 50, 'available', 's6.jpg', '', '', '6 Floor', '2024-11-11 22:26:39', 1),
(80, 'homes', '<p>hello</p>', 'flat', '2 BHK', 'sale', 2, 1, 1, 1, 1, '2nd Floor', 237, 36500000, 'Godawari', 'Lalitpur', 'Bagmati', '', 's1.jpg', 's2.jpg', 's3.jpg', 's4.jpg', 's5.jpg', 40, 'available', 's6.jpg', '', '', '9 Floor', '2024-11-18 18:45:05', 1),
(81, 'homes', '<p>hello</p>', 'flat', '2 BHK', 'sale', 2, 1, 1, 1, 1, '2nd Floor', 237, 36500000, 'Godawari', 'Lalitpur', 'Bagmati', '', 's1.jpg', 's2.jpg', 's3.jpg', 's4.jpg', 's5.jpg', 40, 'available', 's6.jpg', '', '', '9 Floor', '2024-11-18 18:45:39', 1);

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
(40, 'sohesh', 'sohesh@gmail.com', '1234567899', '3efd49c80326960d59bd4e783e37047be7dc8032', 'user', 'avatarm2-min.jpg'),
(41, 'ramBroker', 'ram@gmail.com', '9803365032', '77c7960e890deddebb7ff2e55e340d2ed1708368', 'agent', 'user-default-3-min.png'),
(42, 'kiran yadav', 'kiran@gmail.com', '9845756321', '974e9e2006ec43d25f7e8b16de63505f31e18473', 'user', 'user-profile-min.png'),
(43, 'Chandika', 'chandika@gmail.com', '9876543210', 'ad417c434c16f10f322ff7509e8139f385f60d28', 'user', 'avatarm2-min.jpg'),
(44, 'Hary Maharjan', 'hary@gmail.com', '9803265019', '9472fb63ad1e8fa871c6cacc02ea68baeee3b6e2', 'agent', 'user-a-min.png'),
(45, 'Alex Shahi', 'alex@gmail.com', '9805678125', '60c6d277a8bd81de7fdde19201bf9c58a3df08f4', 'agent', 'broker1.jpeg'),
(46, 'Shiva Maharjan', 'shiva@gmail.com', '9803365019', '848b186485107266a3807096d328690f86a22c05', 'agent', 'man2.jpg'),
(47, 'Seergio', 'sergio@gmail.com', '9803545019', '6ed32edf4e92ab3c0a4dc6f90242953c344051ad', 'agent', 'man.jpg'),
(48, 'rex', 'rex@gmail.com', '9803365019', '6e6c26f0ffbf2a2da2c45d548bcec0b96ddd4d38', 'user', 'usersys-min.png'),
(49, 'Honey', 'honey@gmail.com', '9876541232', '404e764467f4580d7359ba016b382cebae35e8b0', 'user', 'user-profile-min.png'),
(50, 'ranny', 'ranny@gmail.com', '9874561212', 'd4ba8a95b8f400f10626bd32402e4a7f38b1fbb2', 'user', 'usersys-min.png'),
(51, 'Ronny', 'ronny@gmail.com', '9863441142', '29551f4731c23b5c20e178b468ff54aebe11d415', 'user', 'man2.jpg');

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
(22, 42, 33, 'view', '2024-09-26 16:10:56'),
(23, 42, 33, 'view', '2024-09-26 16:10:56'),
(24, 42, 33, 'view', '2024-09-26 16:11:02'),
(25, 42, 33, 'view', '2024-09-26 16:11:02'),
(27, 42, 33, 'view', '2024-09-26 16:12:18'),
(28, 42, 33, 'view', '2024-09-26 16:12:18'),
(45, 40, 36, 'view', '2024-09-26 16:27:07'),
(46, 40, 36, 'view', '2024-09-26 16:27:07'),
(49, 40, 36, 'view', '2024-09-26 16:28:41'),
(50, 40, 36, 'view', '2024-09-26 16:28:41'),
(53, 42, 33, 'view', '2024-09-26 16:31:35'),
(56, 43, 36, 'view', '2024-09-26 16:40:29'),
(57, 43, 38, 'view', '2024-09-26 16:43:30'),
(58, 43, 33, 'view', '2024-09-26 16:43:48'),
(59, 43, 33, 'view', '2024-09-26 16:44:42'),
(65, 43, 36, 'view', '2024-09-26 16:59:44'),
(66, 43, 36, 'view', '2024-09-26 17:18:09'),
(67, 43, 33, 'view', '2024-09-26 17:18:24'),
(68, 44, 40, 'view', '2024-09-30 05:47:14'),
(69, 44, 33, 'view', '2024-09-30 05:47:23'),
(70, 44, 40, 'view', '2024-09-30 05:47:30'),
(73, 44, 40, 'view', '2024-10-02 10:41:27'),
(74, 44, 38, 'view', '2024-10-02 10:41:30'),
(76, 44, 33, 'view', '2024-10-02 10:41:39'),
(78, 45, 41, 'view', '2024-10-02 15:48:54'),
(79, 45, 40, 'view', '2024-10-02 15:49:01'),
(80, 45, 41, 'view', '2024-10-02 15:49:17'),
(81, 45, 41, 'view', '2024-10-02 15:49:22'),
(84, 45, 38, 'view', '2024-10-02 15:49:36'),
(85, 45, 41, 'view', '2024-10-02 15:49:40'),
(86, 44, 43, 'view', '2024-10-02 16:00:44'),
(88, 44, 41, 'view', '2024-10-02 16:03:10'),
(89, 44, 41, 'view', '2024-10-02 16:03:22'),
(90, 44, 36, 'view', '2024-10-02 16:07:17'),
(91, 44, 43, 'view', '2024-10-02 16:20:49'),
(92, 40, 41, 'view', '2024-10-02 16:37:50'),
(93, 40, 33, 'view', '2024-10-02 16:38:04'),
(94, 47, 33, 'view', '2024-10-02 16:59:33'),
(98, 40, 40, 'view', '2024-10-02 17:04:27'),
(99, 40, 40, 'view', '2024-10-02 17:05:06'),
(100, 40, 43, 'view', '2024-10-02 17:05:13'),
(102, 40, 38, 'view', '2024-10-02 17:05:24'),
(104, 40, 41, 'view', '2024-10-02 17:05:46'),
(105, 40, 38, 'view', '2024-10-02 17:05:50'),
(106, 40, 41, 'view', '2024-10-02 17:08:29'),
(107, 40, 36, 'view', '2024-10-02 17:08:32'),
(108, 40, 40, 'view', '2024-10-02 17:08:40'),
(109, 40, 40, 'view', '2024-10-02 17:12:18'),
(112, 46, 40, 'view', '2024-10-02 17:15:36'),
(113, 46, 40, 'view', '2024-10-02 17:20:38'),
(121, 46, 38, 'view', '2024-10-02 17:26:25'),
(122, 46, 43, 'view', '2024-10-02 17:26:30'),
(139, 40, 69, 'view', '2024-10-03 07:26:01'),
(147, 40, 69, 'view', '2024-10-03 07:43:04'),
(151, 40, 69, 'view', '2024-10-03 08:12:34'),
(152, 40, 41, 'view', '2024-10-03 08:34:36'),
(153, 40, 41, 'view', '2024-10-03 08:35:57'),
(154, 40, 40, 'view', '2024-10-03 08:36:57'),
(155, 40, 69, 'view', '2024-10-03 08:50:39'),
(156, 40, 69, 'view', '2024-10-03 08:50:47'),
(159, 44, 41, 'view', '2024-10-28 16:31:34'),
(160, 44, 36, 'view', '2024-10-28 16:32:06'),
(161, 40, 36, 'view', '2024-11-10 06:34:43'),
(174, 40, 36, 'view', '2024-11-10 06:53:29'),
(175, 40, 36, 'view', '2024-11-10 06:54:44'),
(176, 40, 36, 'view', '2024-11-10 06:55:00'),
(177, 40, 36, 'view', '2024-11-10 06:55:06'),
(178, 40, 36, 'view', '2024-11-10 06:56:01'),
(179, 40, 36, 'view', '2024-11-10 06:56:19'),
(180, 40, 36, 'view', '2024-11-10 06:56:48'),
(181, 40, 38, 'view', '2024-11-10 06:57:05'),
(182, 40, 38, 'view', '2024-11-10 07:10:20'),
(183, 40, 38, 'view', '2024-11-10 07:11:35'),
(184, 40, 38, 'view', '2024-11-10 07:11:53'),
(185, 40, 38, 'view', '2024-11-10 07:12:01'),
(186, 40, 38, 'view', '2024-11-10 07:13:05'),
(187, 40, 38, 'view', '2024-11-10 07:13:07'),
(188, 40, 38, 'view', '2024-11-10 07:13:19'),
(189, 40, 38, 'view', '2024-11-10 07:13:31'),
(190, 40, 38, 'view', '2024-11-10 07:14:15'),
(252, 44, 38, 'view', '2024-11-10 16:07:48'),
(253, 44, 77, 'view', '2024-11-10 16:08:19'),
(254, 44, 77, 'view', '2024-11-10 16:09:30'),
(255, 44, 77, 'view', '2024-11-10 16:09:38'),
(256, 44, 77, 'view', '2024-11-10 16:09:53'),
(257, 44, 77, 'view', '2024-11-10 16:10:02'),
(258, 44, 77, 'view', '2024-11-10 16:10:03'),
(259, 44, 77, 'view', '2024-11-10 16:10:19'),
(260, 44, 77, 'view', '2024-11-10 16:10:31'),
(261, 44, 77, 'view', '2024-11-10 16:10:47'),
(262, 44, 41, 'view', '2024-11-10 16:15:44'),
(263, 49, 78, 'view', '2024-11-10 16:34:10'),
(264, 49, 78, 'view', '2024-11-10 16:36:35'),
(265, 40, 78, 'view', '2024-11-10 16:39:00'),
(266, 40, 77, 'view', '2024-11-11 16:36:22'),
(267, 50, 77, 'view', '2024-11-11 16:39:48'),
(268, 50, 79, 'view', '2024-11-11 16:41:57'),
(269, 50, 69, 'view', '2024-11-11 16:42:08'),
(270, 40, 78, 'view', '2024-11-18 12:48:33'),
(271, 40, 33, 'view', '2024-11-18 13:00:59'),
(272, 40, 33, 'view', '2024-11-18 13:01:30');

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
  ADD KEY `idx_auser` (`auser`),
  ADD KEY `idx_aemail` (`aemail`);

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
  MODIFY `fid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user_interactions`
--
ALTER TABLE `user_interactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

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
