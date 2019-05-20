-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2019 at 03:52 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(14, 'Javascript'),
(15, 'Boostrap');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(5, 2, 's', 's', 's', 'Approved', '2018-08-16'),
(4, 2, 'a', 'a', 'a', 'Approved', '2018-08-16'),
(7, 2, 'b', 'b', 'b', 'Unapproved', '2018-08-17'),
(8, 2, 'k', 'k', 'k', 'Unapproved', '2018-08-17'),
(9, 2, 'h', 'h', 'h', 'Unapproved', '2018-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(2, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 3),
(9, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 1),
(10, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(11, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(12, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(13, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(14, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(15, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(16, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(17, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(18, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(19, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(20, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(21, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(22, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(23, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(24, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(25, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(26, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(27, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(28, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(29, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(30, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(31, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(32, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(33, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(34, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(35, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(36, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(37, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(38, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(39, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(40, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(41, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(42, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(43, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(44, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(45, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(46, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(47, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(48, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(49, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(50, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(51, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(52, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(53, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(54, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(55, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(56, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(57, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(58, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(59, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(60, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(61, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(62, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(63, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(64, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(65, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(66, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(67, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(68, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(69, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0),
(70, 14, 'how to javascript', 'Mushood', '2018-11-14', '1533858086WIN_20180806_08_55_53_Pro.jpg', 'abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu abu ', 'mushhod, javascript ', 2, 'published', 0),
(71, 14, 'how to bosstrap', 'Abu', '2018-11-15', '1542285695ban2.jpg', 'i love boostrap', 'bosstrap', 0, 'published', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `user_image` text,
  `user_role` varchar(255) NOT NULL,
  `randsalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `user_password`, `firstname`, `lastname`, `email`, `user_image`, `user_role`, `randsalt`) VALUES
(3, 'yusf', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'abubas', 'bakrkjg', 'a@a.c', '1542282614', 'admin', ''),
(6, 'bla', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', '', '', 'a@b.c', '1542288159', 'admin', '$2y$10$iusesomecrazystrings22'),
(7, 'zoo', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', NULL, NULL, 'zo@1.b', NULL, 'subscriber', '$2y$10$iusesomecrazystrings22'),
(8, 'abu', '$2y$10$iusesomecrazystrings2uwxqVj7J7zQRBheEH.fn4YwpBoRp5IC6', NULL, NULL, 'abu@admin.com', NULL, 'subscriber', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(2, 'i252gpku3nvqe2dc2acu4sfkm0', 1542410162),
(3, '8uvms2cdfpcdtnrgtmhih636d6', 1542404038),
(4, 'lopahfcubisa9rtqo6kcbjgp31', 1547561098),
(5, 'kq7bptrnedlb7bqhj1ck2gpd97', 1548249538),
(6, 'oh1bkqc10orv0eijq60rae51m6', 1548668322);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
