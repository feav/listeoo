-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2018 at 05:01 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30
 
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
 
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
 
--
-- Database: `myweedbates`
--
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_affnetworks`
--
 
CREATE TABLE `cashbackengine_affnetworks` (
  `network_id` int(11) UNSIGNED NOT NULL,
  `network_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subid` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `csv_format` text COLLATE utf8_unicode_ci NOT NULL,
  `confirmeds` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pendings` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `declineds` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_csv_upload` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_cashback_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
--
-- Dumping data for table `cashbackengine_affnetworks`
--
 
INSERT INTO `cashbackengine_affnetworks` (`network_id`, `network_name`, `website`, `image`, `subid`, `csv_format`, `confirmeds`, `pendings`, `declineds`, `status`, `added`, `last_csv_upload`, `last_cashback_update`) VALUES
(1, 'Commission Junction', 'http://www.cj.com/', 'cj.gif', 'sid', '\"4-January-2015 10:01 PDT\",\"4-January-2015 08:08 PDT\",\"Registration\",\"{TRANSACTIONID}\",\"sim_sale\",\"{STATUS}\",\"No\",\"{AMOUNT}\",\"{COMMISSION}\",\"0.00\",\"3201921\",\"Free Bets Extra\",\"{PROGRAMID}\",\"2815954\",\"EurosportBET\",\"{USERID}\",\"345007\",\"4-January-2015 08:07 PDT\",\"332394\",\"2815954\"', 'closed', 'extended|new|locked', '', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'TradeDoubler', 'http://www.tradedoubler.com/', 'tradedoubler.gif', 'epi', '', 'A', 'P', 'D', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Affiliate Window', 'http://www.affiliatewindow.com/', 'affiliatewindow.gif', 'clickref', '', 'confirmed', 'pending', 'declined', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AffiliateFuture', 'http://www.affiliatefuture.com/', 'affiliatefuture.gif', 'tracking', '', 'confirmed', 'pending', 'declined', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Buy.at', 'http://buy.at/', 'buyat.gif', 'LID', '', 'Approved', 'Pending', 'Held', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Webgains', 'http://www.webgains.com/', 'webgains.gif', 'clickref', '', 'confirmed', 'delayed', 'cancelled', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Zanox', 'http://www.zanox.com/', 'zanox.gif', 'zpar0', '', 'Approved|Confirmed', 'Open', 'Rejected', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Pepperjam Network', 'http://www.pepperjamnetwork.com/', 'pepperjam.gif', 'sid', '', 'paid', 'pending', 'locked|delayed', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'ShareASale', 'http://www.shareasale.com', 'shareasale.gif', 'afftrack', '', 'confirmed', 'pending', 'declined', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Linkshare', 'http://www.linkshare.com/', 'linkshare.gif', 'u1', '', '', '', '', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Daisycon', 'http://daisycon.com', 'daisycon.gif', 'ws', '', '', '', '', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Tradetracker', 'http://tradetracker.com', 'tradetracker.gif', 'reference', '', '', '', '', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Admitad', 'http://www.admitad.com/', 'admitad.gif', 'subid', '', '', '', '', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Affilinet', 'http://www.affili.net/', 'affilinet.gif', 'subid', '', '', '', '', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_categories`
--
 
CREATE TABLE `cashbackengine_categories` (
  `category_id` int(9) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `category_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sort_order` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_clickhistory`
--
 
CREATE TABLE `cashbackengine_clickhistory` (
  `click_id` int(11) UNSIGNED NOT NULL,
  `click_ref` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `retailer_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `retailer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `click_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_content`
--
 
CREATE TABLE `cashbackengine_content` (
  `content_id` int(11) UNSIGNED NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `page_location` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
--
-- Dumping data for table `cashbackengine_content`
--
 
INSERT INTO `cashbackengine_content` (`content_id`, `language`, `name`, `link_title`, `title`, `description`, `page_location`, `page_url`, `meta_description`, `meta_keywords`, `status`, `modified`) VALUES
(1, 'english', 'home', '', 'Home page', '<h1 style=\'border:none;text-align:center;\'>Welcome to our cashback website!</h1>\r\n<p style=\'text-align: justify;\'>Open your own free account now and start to earn cashback. Our site helps you to earn on cash back rewards, simply sign up for free and you will start earning immediately on your purchases. Earn cashback by shopping with your favorite stores. Start earning cash back on your online purchases!</p>\r\n<br/><p align=\'center\'><a class=\'start_link\' href=\'http://myweedbates.com/signup.php\'>Start Earning Now!</a></p>', '', '', '', '', 'active', '2018-06-14 17:12:38'),
(2, 'english', 'aboutus', '', 'About Us', '<p>Some information about site.</p>', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(3, 'english', 'howitworks', '', 'How it works', '<p>Earn cashback on your online shopping with our site, here is how:</p>\r\n<ul>\r\n  <li>Sign Up</li>\r\n  <li>Find your favorite shops</li>\r\n  <li>Make shopping as usually</li>\r\n  <li>Earn great cashback!</li>\r\n</ul>\r\n<p>Shop from hundreds of your favorite stores and earn cash back. Find new stores daily. Join now and start earning cashback!</p>', '', '', '', '', 'active', '2018-06-14 17:12:38'),
(4, 'english', 'help', '', 'Help', '<p><b>Here is how to start earning cashback:</b></p>\r\n<ul>\r\n  <li>Create a free account</li>\r\n  <li>Find the shop you need</li>\r\n  <li>Click the link to visit the store</li>\r\n  <li>Shop as you would normally</li>\r\n  <li>Get cash back!</li>\r\n</ul>', '', '', '', '', 'active', '2018-06-14 17:12:38'),
(5, 'english', 'terms', '', 'Terms and Conditions', '<p>website terms and conditions</p>', '', '', '', '', 'active', '2018-06-14 17:12:38'),
(6, 'english', 'privacy', '', 'Privacy Policy', '<p>privacy policy information goes here</p>', '', '', '', '', 'active', '2018-06-14 17:12:38'),
(7, 'english', 'contact', '', 'Contact Us', '<p>If you have any questions, please contact us.</p>\r\n<p>Phone: 7777-777-777</p>\r\n<p>Email: support@yourdomain.com</p>', '', '', '', '', 'active', '2018-06-14 17:12:38');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_countries`
--
 
CREATE TABLE `cashbackengine_countries` (
  `country_id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `signup` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
--
-- Dumping data for table `cashbackengine_countries`
--
 
INSERT INTO `cashbackengine_countries` (`country_id`, `code`, `name`, `currency`, `signup`, `sort_order`, `status`) VALUES
(1, 'AF', 'Afghanistan', '', 1, 0, 'active'),
(2, 'AX', 'Aland Islands', '', 1, 0, 'active'),
(3, 'AL', 'Albania', '', 1, 0, 'active'),
(4, 'DZ', 'Algeria', '', 1, 0, 'active'),
(5, 'AS', 'American Samoa', '', 1, 0, 'active'),
(6, 'AD', 'Andorra', '', 1, 0, 'active'),
(7, 'AO', 'Angola', '', 1, 0, 'active'),
(8, 'AI', 'Anguilla', '', 1, 0, 'active'),
(9, 'AG', 'Antigua and Barbuda', '', 1, 0, 'active'),
(10, 'AR', 'Argentina', '', 1, 0, 'active'),
(11, 'AM', 'Armenia', '', 1, 0, 'active'),
(12, 'AW', 'Aruba', '', 1, 0, 'active'),
(13, 'AU', 'Australia', '', 1, 0, 'active'),
(14, 'AT', 'Austria', '', 1, 0, 'active'),
(15, 'AZ', 'Azerbaijan', '', 1, 0, 'active'),
(16, 'BS', 'Bahamas', '', 1, 0, 'active'),
(17, 'BH', 'Bahrain', '', 1, 0, 'active'),
(18, 'BD', 'Bangladesh', '', 1, 0, 'active'),
(19, 'BB', 'Barbados', '', 1, 0, 'active'),
(20, 'BY', 'Belarus', '', 1, 0, 'active'),
(21, 'BE', 'Belgium', '', 1, 0, 'active'),
(22, 'BZ', 'Belize', '', 1, 0, 'active'),
(23, 'BJ', 'Benin', '', 1, 0, 'active'),
(24, 'BM', 'Bermuda', '', 1, 0, 'active'),
(25, 'BT', 'Bhutan', '', 1, 0, 'active'),
(26, 'BO', 'Bolivia', '', 1, 0, 'active'),
(27, 'BA', 'Bosnia and Herzegovina', '', 1, 0, 'active'),
(28, 'BW', 'Botswana', '', 1, 0, 'active'),
(29, 'BV', 'Bouvet Island', '', 1, 0, 'active'),
(30, 'BR', 'Brazil', '', 1, 0, 'active'),
(31, 'IO', 'British Indian Ocean Territory', '', 1, 0, 'active'),
(32, 'BN', 'Brunei Darussalam', '', 1, 0, 'active'),
(33, 'BG', 'Bulgaria', '', 1, 0, 'active'),
(34, 'BF', 'Burkina Faso', '', 1, 0, 'active'),
(35, 'BI', 'Burundi', '', 1, 0, 'active'),
(36, 'KH', 'Cambodia', '', 1, 0, 'active'),
(37, 'CM', 'Cameroon', '', 1, 0, 'active'),
(38, 'CA', 'Canada', '', 1, 0, 'active'),
(39, 'CV', 'Cape Verde', '', 1, 0, 'active'),
(40, 'KY', 'Cayman Islands', '', 1, 0, 'active'),
(41, 'CF', 'Central African Republic', '', 1, 0, 'active'),
(42, 'TD', 'Chad', '', 1, 0, 'active'),
(43, 'CL', 'Chile', '', 1, 0, 'active'),
(44, 'CN', 'China', '', 1, 0, 'active'),
(45, 'CX', 'Christmas Island', '', 1, 0, 'active'),
(46, 'CC', 'Cocos (Keeling) Islands', '', 1, 0, 'active'),
(47, 'CO', 'Colombia', '', 1, 0, 'active'),
(48, 'KM', 'Comoros', '', 1, 0, 'active'),
(49, 'CG', 'Congo', '', 1, 0, 'active'),
(50, 'CD', 'Congo, The Democratic Republic of the', '', 1, 0, 'active'),
(51, 'CK', 'Cook Islands', '', 1, 0, 'active'),
(52, 'CR', 'Costa Rica', '', 1, 0, 'active'),
(53, 'CI', 'Cote D\'Ivoire', '', 1, 0, 'active'),
(54, 'HR', 'Croatia', '', 1, 0, 'active'),
(55, 'CU', 'Cuba', '', 1, 0, 'active'),
(56, 'CY', 'Cyprus', '', 1, 0, 'active'),
(57, 'CZ', 'Czech Republic', '', 1, 0, 'active'),
(58, 'DK', 'Denmark', '', 1, 0, 'active'),
(59, 'DJ', 'Djibouti', '', 1, 0, 'active'),
(60, 'DM', 'Dominica', '', 1, 0, 'active'),
(61, 'DO', 'Dominican Republic', '', 1, 0, 'active'),
(62, 'EC', 'Ecuador', '', 1, 0, 'active'),
(63, 'EG', 'Egypt', '', 1, 0, 'active'),
(64, 'SV', 'El Salvador', '', 1, 0, 'active'),
(65, 'GQ', 'Equatorial Guinea', '', 1, 0, 'active'),
(66, 'ER', 'Eritrea', '', 1, 0, 'active'),
(67, 'EE', 'Estonia', '', 1, 0, 'active'),
(68, 'ET', 'Ethiopia', '', 1, 0, 'active'),
(69, 'FK', 'Falkland Islands (Malvinas)', '', 1, 0, 'active'),
(70, 'FO', 'Faroe Islands', '', 1, 0, 'active'),
(71, 'FJ', 'Fiji', '', 1, 0, 'active'),
(72, 'FI', 'Finland', '', 1, 0, 'active'),
(73, 'FR', 'France', '', 1, 0, 'active'),
(74, 'GF', 'French Guiana', '', 1, 0, 'active'),
(75, 'PF', 'French Polynesia', '', 1, 0, 'active'),
(76, 'TF', 'French Southern Territories', '', 1, 0, 'active'),
(77, 'GA', 'Gabon', '', 1, 0, 'active'),
(78, 'GM', 'Gambia', '', 1, 0, 'active'),
(79, 'GE', 'Georgia', '', 1, 0, 'active'),
(80, 'DE', 'Germany', '', 1, 0, 'active'),
(81, 'GH', 'Ghana', '', 1, 0, 'active'),
(82, 'GI', 'Gibraltar', '', 1, 0, 'active'),
(83, 'GR', 'Greece', '', 1, 0, 'active'),
(84, 'GL', 'Greenland', '', 1, 0, 'active'),
(85, 'GD', 'Grenada', '', 1, 0, 'active'),
(86, 'GP', 'Guadeloupe', '', 1, 0, 'active'),
(87, 'GU', 'Guam', '', 1, 0, 'active'),
(88, 'GT', 'Guatemala', '', 1, 0, 'active'),
(89, 'GN', 'Guinea', '', 1, 0, 'active'),
(90, 'GW', 'Guinea-Bissau', '', 1, 0, 'active'),
(91, 'GY', 'Guyana', '', 1, 0, 'active'),
(92, 'HT', 'Haiti', '', 1, 0, 'active'),
(93, 'HM', 'Heard Island and McDonald Islands', '', 1, 0, 'active'),
(94, 'VA', 'Holy See (Vatican City State)', '', 1, 0, 'active'),
(95, 'HN', 'Honduras', '', 1, 0, 'active'),
(96, 'HK', 'Hong Kong', '', 1, 0, 'active'),
(97, 'HU', 'Hungary', '', 1, 0, 'active'),
(98, 'IS', 'Iceland', '', 1, 0, 'active'),
(99, 'IN', 'India', '', 1, 0, 'active'),
(100, 'ID', 'Indonesia', '', 1, 0, 'active'),
(101, 'IR', 'Iran, Islamic Republic of', '', 1, 0, 'active'),
(102, 'IQ', 'Iraq', '', 1, 0, 'active'),
(103, 'IE', 'Ireland', '', 1, 0, 'active'),
(104, 'IL', 'Israel', '', 1, 0, 'active'),
(105, 'IT', 'Italy', '', 1, 0, 'active'),
(106, 'JM', 'Jamaica', '', 1, 0, 'active'),
(107, 'JP', 'Japan', '', 1, 0, 'active'),
(108, 'JO', 'Jordan', '', 1, 0, 'active'),
(109, 'KZ', 'Kazakhstan', '', 1, 0, 'active'),
(110, 'KE', 'Kenya', '', 1, 0, 'active'),
(111, 'KI', 'Kiribati', '', 1, 0, 'active'),
(112, 'KP', 'Korea, Democratic People\'s Republic of', '', 1, 0, 'active'),
(113, 'KR', 'Korea, Republic of', '', 1, 0, 'active'),
(114, 'KW', 'Kuwait', '', 1, 0, 'active'),
(115, 'KG', 'Kyrgyzstan', '', 1, 0, 'active'),
(116, 'LA', 'Lao People\'s Democratic Republic', '', 1, 0, 'active'),
(117, 'LV', 'Latvia', '', 1, 0, 'active'),
(118, 'LB', 'Lebanon', '', 1, 0, 'active'),
(119, 'LS', 'Lesotho', '', 1, 0, 'active'),
(120, 'LR', 'Liberia', '', 1, 0, 'active'),
(121, 'LY', 'Libyan Arab Jamahiriya', '', 1, 0, 'active'),
(122, 'LI', 'Liechtenstein', '', 1, 0, 'active'),
(123, 'LT', 'Lithuania', '', 1, 0, 'active'),
(124, 'LU', 'Luxembourg', '', 1, 0, 'active'),
(125, 'MO', 'Macao', '', 1, 0, 'active'),
(126, 'MK', 'Macedonia', '', 1, 0, 'active'),
(127, 'MG', 'Madagascar', '', 1, 0, 'active'),
(128, 'MW', 'Malawi', '', 1, 0, 'active'),
(129, 'MY', 'Malaysia', '', 1, 0, 'active'),
(130, 'MV', 'Maldives', '', 1, 0, 'active'),
(131, 'ML', 'Mali', '', 1, 0, 'active'),
(132, 'MT', 'Malta', '', 1, 0, 'active'),
(133, 'MH', 'Marshall Islands', '', 1, 0, 'active'),
(134, 'MQ', 'Martinique', '', 1, 0, 'active'),
(135, 'MR', 'Mauritania', '', 1, 0, 'active'),
(136, 'MU', 'Mauritius', '', 1, 0, 'active'),
(137, 'YT', 'Mayotte', '', 1, 0, 'active'),
(138, 'MX', 'Mexico', '', 1, 0, 'active'),
(139, 'FM', 'Micronesia, Federated States of', '', 1, 0, 'active'),
(140, 'MD', 'Moldova, Republic of', '', 1, 0, 'active'),
(141, 'MC', 'Monaco', '', 1, 0, 'active'),
(142, 'MN', 'Mongolia', '', 1, 0, 'active'),
(143, 'ME', 'Montenegro', '', 1, 0, 'active'),
(144, 'MS', 'Montserrat', '', 1, 0, 'active'),
(145, 'MA', 'Morocco', '', 1, 0, 'active'),
(146, 'MZ', 'Mozambique', '', 1, 0, 'active'),
(147, 'MM', 'Myanmar', '', 1, 0, 'active'),
(148, 'NA', 'Namibia', '', 1, 0, 'active'),
(149, 'NR', 'Nauru', '', 1, 0, 'active'),
(150, 'NP', 'Nepal', '', 1, 0, 'active'),
(151, 'NL', 'Netherlands', '', 1, 0, 'active'),
(152, 'AN', 'Netherlands Antilles', '', 1, 0, 'active'),
(153, 'NC', 'New Caledonia', '', 1, 0, 'active'),
(154, 'NZ', 'New Zealand', '', 1, 0, 'active'),
(155, 'NI', 'Nicaragua', '', 1, 0, 'active'),
(156, 'NE', 'Niger', '', 1, 0, 'active'),
(157, 'NG', 'Nigeria', '', 1, 0, 'active'),
(158, 'NU', 'Niue', '', 1, 0, 'active'),
(159, 'NF', 'Norfolk Island', '', 1, 0, 'active'),
(160, 'MP', 'Northern Mariana Islands', '', 1, 0, 'active'),
(161, 'NO', 'Norway', '', 1, 0, 'active'),
(162, 'OM', 'Oman', '', 1, 0, 'active'),
(163, 'PK', 'Pakistan', '', 1, 0, 'active'),
(164, 'PW', 'Palau', '', 1, 0, 'active'),
(165, 'PS', 'Palestinian Territory, Occupied', '', 1, 0, 'active'),
(166, 'PA', 'Panama', '', 1, 0, 'active'),
(167, 'PG', 'Papua New Guinea', '', 1, 0, 'active'),
(168, 'PY', 'Paraguay', '', 1, 0, 'active'),
(169, 'PE', 'Peru', '', 1, 0, 'active'),
(170, 'PH', 'Philippines', '', 1, 0, 'active'),
(171, 'PN', 'Pitcairn', '', 1, 0, 'active'),
(172, 'PL', 'Poland', '', 1, 0, 'active'),
(173, 'PT', 'Portugal', '', 1, 0, 'active'),
(174, 'PR', 'Puerto Rico', '', 1, 0, 'active'),
(175, 'QA', 'Qatar', '', 1, 0, 'active'),
(176, 'RE', 'Reunion', '', 1, 0, 'active'),
(177, 'RO', 'Romania', '', 1, 0, 'active'),
(178, 'RU', 'Russian Federation', '', 1, 0, 'active'),
(179, 'RW', 'Rwanda', '', 1, 0, 'active'),
(180, 'SH', 'Saint Helena', '', 1, 0, 'active'),
(181, 'KN', 'Saint Kitts and Nevis', '', 1, 0, 'active'),
(182, 'LC', 'Saint Lucia', '', 1, 0, 'active'),
(183, 'PM', 'Saint Pierre and Miquelon', '', 1, 0, 'active'),
(184, 'VC', 'Saint Vincent and the Grenadines', '', 1, 0, 'active'),
(185, 'WS', 'Samoa', '', 1, 0, 'active'),
(186, 'SM', 'San Marino', '', 1, 0, 'active'),
(187, 'ST', 'Sao Tome and Principe', '', 1, 0, 'active'),
(188, 'SA', 'Saudi Arabia', '', 1, 0, 'active'),
(189, 'SN', 'Senegal', '', 1, 0, 'active'),
(190, 'RS', 'Serbia', '', 1, 0, 'active'),
(191, 'SC', 'Seychelles', '', 1, 0, 'active'),
(192, 'SL', 'Sierra Leone', '', 1, 0, 'active'),
(193, 'SG', 'Singapore', '', 1, 0, 'active'),
(194, 'SK', 'Slovakia', '', 1, 0, 'active'),
(195, 'SI', 'Slovenia', '', 1, 0, 'active'),
(196, 'SB', 'Solomon Islands', '', 1, 0, 'active'),
(197, 'SO', 'Somalia', '', 1, 0, 'active'),
(198, 'ZA', 'South Africa', '', 1, 0, 'active'),
(199, 'GS', 'South Georgia', '', 1, 0, 'active'),
(200, 'ES', 'Spain', '', 1, 0, 'active'),
(201, 'LK', 'Sri Lanka', '', 1, 0, 'active'),
(202, 'SD', 'Sudan', '', 1, 0, 'active'),
(203, 'SR', 'Suriname', '', 1, 0, 'active'),
(204, 'SJ', 'Svalbard and Jan Mayen', '', 1, 0, 'active'),
(205, 'SZ', 'Swaziland', '', 1, 0, 'active'),
(206, 'SE', 'Sweden', '', 1, 0, 'active'),
(207, 'CH', 'Switzerland', '', 1, 0, 'active'),
(208, 'SY', 'Syrian Arab Republic', '', 1, 0, 'active'),
(209, 'TW', 'Taiwan, Province Of China', '', 1, 0, 'active'),
(210, 'TJ', 'Tajikistan', '', 1, 0, 'active'),
(211, 'TZ', 'Tanzania, United Republic of', '', 1, 0, 'active'),
(212, 'TH', 'Thailand', '', 1, 0, 'active'),
(213, 'TL', 'Timor-Leste', '', 1, 0, 'active'),
(214, 'TG', 'Togo', '', 1, 0, 'active'),
(215, 'TK', 'Tokelau', '', 1, 0, 'active'),
(216, 'TO', 'Tonga', '', 1, 0, 'active'),
(217, 'TT', 'Trinidad and Tobago', '', 1, 0, 'active'),
(218, 'TN', 'Tunisia', '', 1, 0, 'active'),
(219, 'TR', 'Turkey', '', 1, 0, 'active'),
(220, 'TM', 'Turkmenistan', '', 1, 0, 'active'),
(221, 'TC', 'Turks and Caicos Islands', '', 1, 0, 'active'),
(222, 'TV', 'Tuvalu', '', 1, 0, 'active'),
(223, 'UG', 'Uganda', '', 1, 0, 'active'),
(224, 'UA', 'Ukraine', '', 1, 0, 'active'),
(225, 'AE', 'United Arab Emirates', '', 1, 0, 'active'),
(226, 'GB', 'United Kingdom', '', 1, 0, 'active'),
(227, 'US', 'United States', '', 1, 0, 'active'),
(228, 'UM', 'United States Minor Outlying Islands', '', 1, 0, 'active'),
(229, 'UY', 'Uruguay', '', 1, 0, 'active'),
(230, 'UZ', 'Uzbekistan', '', 1, 0, 'active'),
(231, 'VU', 'Vanuatu', '', 1, 0, 'active'),
(232, 'VE', 'Venezuela', '', 1, 0, 'active'),
(233, 'VN', 'Viet Nam', '', 1, 0, 'active'),
(234, 'VG', 'Virgin Islands, British', '', 1, 0, 'active'),
(235, 'VI', 'Virgin Islands, U.S.', '', 1, 0, 'active'),
(236, 'WF', 'Wallis And Futuna', '', 1, 0, 'active'),
(237, 'EH', 'Western Sahara', '', 1, 0, 'active'),
(238, 'YE', 'Yemen', '', 1, 0, 'active'),
(239, 'ZM', 'Zambia', '', 1, 0, 'active'),
(240, 'ZW', 'Zimbabwe', '', 1, 0, 'active');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_coupons`
--
 
CREATE TABLE `cashbackengine_coupons` (
  `coupon_id` int(11) UNSIGNED NOT NULL,
  `retailer_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `coupon_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci,
  `exclusive` tinyint(1) NOT NULL DEFAULT '0',
  `likes` int(11) NOT NULL DEFAULT '0',
  `visits_today` int(11) NOT NULL DEFAULT '0',
  `visits` int(11) NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` tinyint(1) NOT NULL DEFAULT '1',
  `status` enum('active','inactive','expired') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_visit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_email_templates`
--
 
CREATE TABLE `cashbackengine_email_templates` (
  `template_id` int(11) UNSIGNED NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_message` text COLLATE utf8_unicode_ci,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
--
-- Dumping data for table `cashbackengine_email_templates`
--
 
INSERT INTO `cashbackengine_email_templates` (`template_id`, `language`, `email_name`, `email_subject`, `email_message`, `modified`) VALUES
(1, 'english', 'signup', 'Welcome to cashback site!', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:11px\'>\r\nDear {first_name},<br /><br />\r\nThank you for registering!<br /><br />\r\nStart earning cash back on your online purchases right away!<br /><br />\r\nHere is your login information:<br /><br />\r\nLogin: <b>{username}</b><br />\r\nPassword: <b>{password}</b><br /><br />\r\nPlease click at <a href=\'{login_url}\'>click here</a> to login in to your account.<br /><br />Thank you.\r\n</p>', '2018-06-14 17:12:38'),
(2, 'english', 'activate', 'Registration confirmation email', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:11px\'>\r\nHi {first_name},<br /><br />\r\nThank you for registering!<br /><br />\r\nHere is your login information:<br /><br />\r\nUsername: <b>{username}</b><br />\r\nPassword: <b>{password}</b><br /><br />\r\n\r\nPlease click the following link to activate your account: <a href=\'{activate_link}\'>{activate_link}</a><br /><br />Thank you.\r\n</p>', '2018-06-14 17:12:38'),
(3, 'english', 'activate2', 'Account activation email', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:11px\'>\r\nHi {first_name},<br /><br />\r\nPlease click the following link to activate your account: <a href=\'{activate_link}\'>{activate_link}</a><br /><br />Thank you.\r\n</p>', '2018-06-14 17:12:38'),
(4, 'english', 'forgot_password', 'Forgot password email', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:11px\'>\r\nDear {first_name},<br /><br />\r\nAs you requested, here is new password for your account:<br /><br />\r\nLogin: <b>{username}</b><br />Password: <b>{password}</b> <br /><br />\r\nPlease <a href=\'{login_url}\'>click here</a> to log in.\r\n<br /><br />\r\nThank you.\r\n</p>', '2018-06-14 17:12:38'),
(5, 'english', 'invite_friend', 'Invitation from your friend', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:11px\'>\r\nHello {friend_name}, <br /><br />\r\nYour friend <b>{first_name}</b> wants to invite you to register on our cashback site.<br /><br />\r\nPlease <a href=\'{referral_link}\'>click here</a> to accept his invitation.\r\n<br /><br />\r\nBest Regards.\r\n</p>', '2018-06-14 17:12:38'),
(6, 'english', 'cashout_paid', 'Your cash out request was paid', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:11px\'>\r\nHello {first_name}, <br /><br />\r\nYour cash out request was paid.<br />Transaction ID: {transaction_id}<br />Amount: <b>{amount}</b><br /><br />\r\nThank you for choosing us.<br /><br />\r\nBest Regards.\r\n</p>', '2018-06-14 17:12:38'),
(7, 'english', 'cashout_declined', 'Your cash out request was declined', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:11px\'>\r\nHello {first_name}, <br /><br />\r\nYour cash out request #<b>{transaction_id}</b> for {amount} was declined.<br />Reason: {reason}<br /><br />\r\n</p>', '2018-06-14 17:12:38'),
(8, 'english', 'manual_credit', 'Your account balance was updated', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:11px\'>\r\nHello {first_name}, <br /><br />\r\nYou received new payment.<br /><br /> Transaction ID: <b>{transaction_id}</b><br/>Payment name: <b>{payment_type}</b><br />Amount: <b>{amount}</b><br /><br />\r\n</p>', '2018-06-14 17:12:38');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_favorites`
--
 
CREATE TABLE `cashbackengine_favorites` (
  `favorite_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `retailer_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_invitations`
--
 
CREATE TABLE `cashbackengine_invitations` (
  `invitation_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `recipients` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  `sent_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_languages`
--
 
CREATE TABLE `cashbackengine_languages` (
  `language_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sort_order` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
--
-- Dumping data for table `cashbackengine_languages`
--
 
INSERT INTO `cashbackengine_languages` (`language_id`, `language_code`, `language`, `currency`, `sort_order`, `status`) VALUES
(1, 'us', 'english', '', 0, 'active'),
(2, 'de', 'german', '', 0, 'inactive'),
(3, 'cz', 'czech', '', 0, 'inactive'),
(4, 'nl', 'dutch', '', 0, 'inactive'),
(5, 'fr', 'french', '', 0, 'inactive'),
(6, 'ru', 'russian', '', 0, 'inactive'),
(7, 'tr', 'turkish', '', 0, 'inactive'),
(8, 'it', 'italian', '', 0, 'inactive'),
(9, 'pt', 'portuguese', '', 0, 'inactive'),
(10, 'es', 'spanish', '', 0, 'inactive');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_messages`
--
 
CREATE TABLE `cashbackengine_messages` (
  `message_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci,
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('new','replied','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_messages_answers`
--
 
CREATE TABLE `cashbackengine_messages_answers` (
  `answer_id` int(11) UNSIGNED NOT NULL,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text COLLATE utf8_unicode_ci,
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `answer_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_news`
--
 
CREATE TABLE `cashbackengine_news` (
  `news_id` int(11) UNSIGNED NOT NULL,
  `news_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_description` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_pmethods`
--
 
CREATE TABLE `cashbackengine_pmethods` (
  `pmethod_id` int(11) UNSIGNED NOT NULL,
  `pmethod_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `min_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `commission` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pmethod_details` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
--
-- Dumping data for table `cashbackengine_pmethods`
--
 
INSERT INTO `cashbackengine_pmethods` (`pmethod_id`, `pmethod_title`, `min_amount`, `commission`, `pmethod_details`, `status`) VALUES
(1, 'PayPal', '0.0000', '', 'Please enter your paypal account', 'active'),
(2, 'Bank Check', '0.0000', '', 'Please enter following information: <br />\r\n - Your Full Name <br />\r\n - Bank Name <br />\r\n - Bank Address <br />\r\n - Account #', 'inactive'),
(3, 'Wire Transfer', '0.0000', '', 'Please enter following information: <br />\r\n - Your Full Name <br />\r\n - Bank Name <br />\r\n - Bank Address <br />\r\n - Account #', 'active'),
(4, 'Skrill', '0.0000', '', 'Please enter your skrill account', 'inactive');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_reports`
--
 
CREATE TABLE `cashbackengine_reports` (
  `report_id` int(11) UNSIGNED NOT NULL,
  `reporter_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `retailer_id` int(11) NOT NULL DEFAULT '0',
  `report` text COLLATE utf8_unicode_ci,
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('active','pending','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_retailers`
--
 
CREATE TABLE `cashbackengine_retailers` (
  `retailer_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `network_id` int(11) NOT NULL DEFAULT '0',
  `program_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `old_cashback` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cashback` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `conditions` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `retailer_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `deal_of_week` tinyint(1) NOT NULL DEFAULT '0',
  `visits` int(11) NOT NULL DEFAULT '0',
  `status` enum('active','inactive','expired') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_retailer_to_category`
--
 
CREATE TABLE `cashbackengine_retailer_to_category` (
  `retailer_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_retailer_to_country`
--
 
CREATE TABLE `cashbackengine_retailer_to_country` (
  `retailer_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `country_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_reviews`
--
 
CREATE TABLE `cashbackengine_reviews` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `retailer_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `review_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `review` text COLLATE utf8_unicode_ci,
  `status` enum('active','pending','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_settings`
--
 
CREATE TABLE `cashbackengine_settings` (
  `setting_id` int(11) NOT NULL,
  `setting_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `setting_value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
--
-- Dumping data for table `cashbackengine_settings`
--
 
INSERT INTO `cashbackengine_settings` (`setting_id`, `setting_key`, `setting_value`) VALUES
(1000, 'website_title', 'CashBack Site'),
(1001, 'website_url', 'http://myweedbates.com/'),
(1002, 'website_mode', 'live'),
(1003, 'website_home_title', 'Save money when you shop online'),
(1004, 'email_from_name', 'Cashback Site Support'),
(1005, 'website_email', 'admin@domain.com'),
(1006, 'noreply_email', 'noreply@domain.com'),
(1007, 'alerts_email', 'alerts@domain.com'),
(1008, 'website_language', 'english'),
(1009, 'multilingual', '0'),
(1010, 'website_timezone', '0'),
(1011, 'website_date_format', '%d %b %Y'),
(1012, 'website_currency', '$'),
(1013, 'website_currency_format', '1'),
(1014, 'account_activation', '0'),
(1015, 'signup_captcha', '1'),
(1016, 'login_attempts_limit', '0'),
(1017, 'signup_credit', '5'),
(1018, 'refer_credit', '5'),
(1019, 'cashback_commission', '50'),
(1020, 'referral_commission', '10'),
(1021, 'min_payout', '100'),
(1022, 'min_transaction', '50'),
(1023, 'cancel_withdrawal', '1'),
(1024, 'stores_list_style', '1'),
(1025, 'share_icons_style', '1'),
(1026, 'stores_description_limit', '300'),
(1027, 'one_review', '1'),
(1028, 'homepage_reviews_limit', '5'),
(1029, 'todays_coupons_limit', '12'),
(1030, 'featured_stores_limit', '12'),
(1031, 'popular_stores_limit', '5'),
(1032, 'new_stores_limit', '5'),
(1033, 'results_per_page', '12'),
(1034, 'coupons_description_limit', '300'),
(1035, 'coupons_per_page', '20'),
(1036, 'submit_coupons', '1'),
(1037, 'members_submit_coupons', '0'),
(1038, 'hide_coupons', '0'),
(1039, 'reviews_per_page', '10'),
(1040, 'news_per_page', '20'),
(1041, 'image_width', '120'),
(1042, 'image_height', '60'),
(1043, 'show_cashback_calculator', '1'),
(1044, 'show_statistics', '1'),
(1045, 'show_site_statistics', '0'),
(1046, 'show_landing_page', '1'),
(1047, 'reviews_approve', '1'),
(1048, 'max_review_length', '500'),
(1049, 'email_new_coupon', '0'),
(1050, 'email_new_review', '0'),
(1051, 'email_new_ticket', '0'),
(1052, 'email_new_ticket_reply', '0'),
(1053, 'email_new_report', '0'),
(1054, 'smtp_mail', '0'),
(1055, 'smtp_port', '25'),
(1056, 'smtp_host', ''),
(1057, 'smtp_username', ''),
(1058, 'smtp_password', ''),
(1059, 'smtp_ssl', ''),
(1060, 'reg_sources', 'Search Engine,Facebook,Twitter,Other'),
(1061, 'addthis_id', 'YOUR-ACCOUNT-ID'),
(1062, 'facebook_page', ''),
(1063, 'show_fb_likebox', '0'),
(1064, 'twitter_page', ''),
(1065, 'facebook_connect', '0'),
(1066, 'facebook_appid', ''),
(1067, 'facebook_secret', ''),
(1068, 'google_analytics', ''),
(1069, 'license', '7173-6227-1750-1434-7723'),
(1070, 'last_admin_login', '2018-06-17 07:26:20'),
(1071, 'word', '067a16ab5813dd8936a466f8ab021ce9'),
(1072, 'iword', 'whiTESquirrel102');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_transactions`
--
 
CREATE TABLE `cashbackengine_transactions` (
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `reference_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `network_id` int(10) NOT NULL DEFAULT '0',
  `retailer_id` int(11) NOT NULL DEFAULT '0',
  `retailer` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `program_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ref_id` int(11) NOT NULL DEFAULT '0',
  `payment_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_method` int(10) NOT NULL DEFAULT '0',
  `payment_details` text COLLATE utf8_unicode_ci,
  `transaction_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `transaction_commision` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reason` text COLLATE utf8_unicode_ci,
  `notification_sent` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `process_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
--
-- Dumping data for table `cashbackengine_transactions`
--
 
INSERT INTO `cashbackengine_transactions` (`transaction_id`, `reference_id`, `network_id`, `retailer_id`, `retailer`, `program_id`, `user_id`, `ref_id`, `payment_type`, `payment_method`, `payment_details`, `transaction_amount`, `transaction_commision`, `amount`, `status`, `reason`, `notification_sent`, `created`, `updated`, `process_date`) VALUES
(1, '371482774', 0, 0, '', '', 1, 0, 'signup_bonus', 0, NULL, '0.0000', '0.0000', '5.0000', 'confirmed', NULL, 0, '2018-06-14 20:16:22', '0000-00-00 00:00:00', '2018-06-14 20:16:22'),
(2, '492430349', 0, 0, '', '', 2, 0, 'signup_bonus', 0, NULL, '0.0000', '0.0000', '5.0000', 'confirmed', NULL, 0, '2018-06-16 13:31:34', '0000-00-00 00:00:00', '2018-06-16 13:31:34');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cashbackengine_users`
--
 
CREATE TABLE `cashbackengine_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `username` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lname` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_method` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reg_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_clicks` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ref_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ref_bonus` tinyint(1) NOT NULL DEFAULT '0',
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `auth_provider` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `auth_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `activation_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `unsubscribe_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `login_session` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_count` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `block_reason` tinytext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
--
-- Dumping data for table `cashbackengine_users`
--
 
INSERT INTO `cashbackengine_users` (`user_id`, `username`, `password`, `email`, `fname`, `lname`, `gender`, `address`, `address2`, `city`, `state`, `zip`, `country`, `phone`, `payment_method`, `reg_source`, `ref_clicks`, `ref_id`, `ref_bonus`, `newsletter`, `ip`, `status`, `auth_provider`, `auth_uid`, `activation_key`, `unsubscribe_key`, `login_session`, `last_login`, `login_count`, `last_ip`, `created`, `block_reason`) VALUES
(1, 'dj0759@gmail.com', '371c5926994bf72e78dd66006fecff5c', 'dj0759@gmail.com', 'Dylan', 'Jackson', '', '', '', '', '', '', 227, '(936) 870-7752', '', 'Other', 0, 0, 0, 1, '98.161.237.7', 'active', '', '', '', 'a00dd8f5edd98340109d6b9fd576a970', '', '2018-06-14 20:16:22', 1, '98.161.237.7', '2018-06-14 20:16:22', NULL),
(2, 'myweedbates@gmail.com', '96c5bf61d129a801cf2583a1acfe048a', 'myweedbates@gmail.com', 'Test', 'Cust', '', '', '', '', '', '', 227, '7134941344', '', 'Other', 0, 0, 0, 1, '99.71.203.139', 'active', '', '', '', '3c12646a02d4aa8f44000b520b38613b', 'fc57e92a371635668b07ebdb927c3b16', '2018-06-16 18:35:55', 2, '99.71.203.139', '2018-06-16 13:31:34', NULL);
 
--
-- Indexes for dumped tables
--
 
--
-- Indexes for table `cashbackengine_affnetworks`
--
ALTER TABLE `cashbackengine_affnetworks`
  ADD PRIMARY KEY (`network_id`);
 
--
-- Indexes for table `cashbackengine_categories`
--
ALTER TABLE `cashbackengine_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `name` (`name`);
 
--
-- Indexes for table `cashbackengine_clickhistory`
--
ALTER TABLE `cashbackengine_clickhistory`
  ADD PRIMARY KEY (`click_id`);
 
--
-- Indexes for table `cashbackengine_content`
--
ALTER TABLE `cashbackengine_content`
  ADD PRIMARY KEY (`content_id`);
 
--
-- Indexes for table `cashbackengine_countries`
--
ALTER TABLE `cashbackengine_countries`
  ADD PRIMARY KEY (`country_id`);
 
--
-- Indexes for table `cashbackengine_coupons`
--
ALTER TABLE `cashbackengine_coupons`
  ADD PRIMARY KEY (`coupon_id`);
 
--
-- Indexes for table `cashbackengine_email_templates`
--
ALTER TABLE `cashbackengine_email_templates`
  ADD PRIMARY KEY (`template_id`);
 
--
-- Indexes for table `cashbackengine_favorites`
--
ALTER TABLE `cashbackengine_favorites`
  ADD PRIMARY KEY (`favorite_id`);
 
--
-- Indexes for table `cashbackengine_invitations`
--
ALTER TABLE `cashbackengine_invitations`
  ADD PRIMARY KEY (`invitation_id`);
 
--
-- Indexes for table `cashbackengine_languages`
--
ALTER TABLE `cashbackengine_languages`
  ADD PRIMARY KEY (`language_id`);
 
--
-- Indexes for table `cashbackengine_messages`
--
ALTER TABLE `cashbackengine_messages`
  ADD PRIMARY KEY (`message_id`);
 
--
-- Indexes for table `cashbackengine_messages_answers`
--
ALTER TABLE `cashbackengine_messages_answers`
  ADD PRIMARY KEY (`answer_id`);
 
--
-- Indexes for table `cashbackengine_news`
--
ALTER TABLE `cashbackengine_news`
  ADD PRIMARY KEY (`news_id`);
 
--
-- Indexes for table `cashbackengine_pmethods`
--
ALTER TABLE `cashbackengine_pmethods`
  ADD PRIMARY KEY (`pmethod_id`);
 
--
-- Indexes for table `cashbackengine_reports`
--
ALTER TABLE `cashbackengine_reports`
  ADD PRIMARY KEY (`report_id`);
 
--
-- Indexes for table `cashbackengine_retailers`
--
ALTER TABLE `cashbackengine_retailers`
  ADD PRIMARY KEY (`retailer_id`);
 
--
-- Indexes for table `cashbackengine_retailer_to_category`
--
ALTER TABLE `cashbackengine_retailer_to_category`
  ADD PRIMARY KEY (`retailer_id`,`category_id`);
 
--
-- Indexes for table `cashbackengine_retailer_to_country`
--
ALTER TABLE `cashbackengine_retailer_to_country`
  ADD PRIMARY KEY (`retailer_id`,`country_id`);
 
--
-- Indexes for table `cashbackengine_reviews`
--
ALTER TABLE `cashbackengine_reviews`
  ADD PRIMARY KEY (`review_id`);
 
--
-- Indexes for table `cashbackengine_settings`
--
ALTER TABLE `cashbackengine_settings`
  ADD PRIMARY KEY (`setting_id`);
 
--
-- Indexes for table `cashbackengine_transactions`
--
ALTER TABLE `cashbackengine_transactions`
  ADD PRIMARY KEY (`transaction_id`);
 
--
-- Indexes for table `cashbackengine_users`
--
ALTER TABLE `cashbackengine_users`
  ADD PRIMARY KEY (`user_id`);
 
--
-- AUTO_INCREMENT for dumped tables
--
 
--
-- AUTO_INCREMENT for table `cashbackengine_affnetworks`
--
ALTER TABLE `cashbackengine_affnetworks`
  MODIFY `network_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
 
--
-- AUTO_INCREMENT for table `cashbackengine_categories`
--
ALTER TABLE `cashbackengine_categories`
  MODIFY `category_id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `cashbackengine_clickhistory`
--
ALTER TABLE `cashbackengine_clickhistory`
  MODIFY `click_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;
 
--
-- AUTO_INCREMENT for table `cashbackengine_content`
--
ALTER TABLE `cashbackengine_content`
  MODIFY `content_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
 
--
-- AUTO_INCREMENT for table `cashbackengine_countries`
--
ALTER TABLE `cashbackengine_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
 
--
-- AUTO_INCREMENT for table `cashbackengine_coupons`
--
ALTER TABLE `cashbackengine_coupons`
  MODIFY `coupon_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `cashbackengine_email_templates`
--
ALTER TABLE `cashbackengine_email_templates`
  MODIFY `template_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
 
--
-- AUTO_INCREMENT for table `cashbackengine_favorites`
--
ALTER TABLE `cashbackengine_favorites`
  MODIFY `favorite_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `cashbackengine_invitations`
--
ALTER TABLE `cashbackengine_invitations`
  MODIFY `invitation_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `cashbackengine_languages`
--
ALTER TABLE `cashbackengine_languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
 
--
-- AUTO_INCREMENT for table `cashbackengine_messages`
--
ALTER TABLE `cashbackengine_messages`
  MODIFY `message_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `cashbackengine_messages_answers`
--
ALTER TABLE `cashbackengine_messages_answers`
  MODIFY `answer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `cashbackengine_news`
--
ALTER TABLE `cashbackengine_news`
  MODIFY `news_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `cashbackengine_pmethods`
--
ALTER TABLE `cashbackengine_pmethods`
  MODIFY `pmethod_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
 
--
-- AUTO_INCREMENT for table `cashbackengine_reports`
--
ALTER TABLE `cashbackengine_reports`
  MODIFY `report_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `cashbackengine_retailers`
--
ALTER TABLE `cashbackengine_retailers`
  MODIFY `retailer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `cashbackengine_reviews`
--
ALTER TABLE `cashbackengine_reviews`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
 
--
-- AUTO_INCREMENT for table `cashbackengine_settings`
--
ALTER TABLE `cashbackengine_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1073;
 
--
-- AUTO_INCREMENT for table `cashbackengine_transactions`
--
ALTER TABLE `cashbackengine_transactions`
  MODIFY `transaction_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
 
--
-- AUTO_INCREMENT for table `cashbackengine_users`
--
ALTER TABLE `cashbackengine_users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
