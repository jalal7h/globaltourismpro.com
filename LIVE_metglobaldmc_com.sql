-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2016 at 05:52 PM
-- Server version: 5.6.27
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LIVE_metglobaldmc.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_invoice`
--

CREATE TABLE `billing_invoice` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `user_id` int(11) NOT NULL COMMENT 'شناسه کاربر',
  `order_table` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'جدول سفارش',
  `order_id` int(11) NOT NULL COMMENT 'شناسه سفارش',
  `cost` int(11) NOT NULL COMMENT 'مبلغ',
  `method` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'روش پرداخت',
  `transaction` varchar(1024) COLLATE utf8_persian_ci NOT NULL COMMENT 'تراکنش',
  `date` int(11) NOT NULL COMMENT 'تاریخ پرداخت',
  `date_created` int(11) NOT NULL COMMENT 'تاریخ ثبت',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing_method`
--

CREATE TABLE `billing_method` (
  `id` int(11) NOT NULL,
  `method` text COLLATE utf8_persian_ci NOT NULL,
  `unit` text COLLATE utf8_persian_ci NOT NULL,
  `terminal_id` text COLLATE utf8_persian_ci NOT NULL,
  `terminal_user` text COLLATE utf8_persian_ci NOT NULL,
  `terminal_pass` text COLLATE utf8_persian_ci NOT NULL,
  `c1` text COLLATE utf8_persian_ci NOT NULL,
  `c2` text COLLATE utf8_persian_ci NOT NULL,
  `c3` text COLLATE utf8_persian_ci NOT NULL,
  `c4` text COLLATE utf8_persian_ci NOT NULL,
  `c5` text COLLATE utf8_persian_ci NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `billing_method`
--

INSERT INTO `billing_method` (`id`, `method`, `unit`, `terminal_id`, `terminal_user`, `terminal_pass`, `c1`, `c2`, `c3`, `c4`, `c5`, `hide`) VALUES
(4, 'manual1', '', '', '', '', 'بانک ملت', '1234567890', '6104666655554444', '', 'offline', 0),
(5, 'manual2', '', '', '', '', 'بانک صادرات', '8123212345', '6037691044443333', '', 'offline', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'عنوان',
  `desc` text COLLATE utf8_persian_ci NOT NULL COMMENT 'توضیحات',
  `kw` text COLLATE utf8_persian_ci NOT NULL COMMENT 'کلمات کلیدی',
  `parent` int(11) NOT NULL,
  `cat` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `prio` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'آیکن',
  `family_tree` varchar(1024) COLLATE utf8_persian_ci NOT NULL,
  `flag` int(1) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `desc`, `kw`, `parent`, `cat`, `prio`, `logo`, `family_tree`, `flag`, `hide`) VALUES
(12, 'زیر دیپلم', '', '', 0, 'academic_degree', 0, '', '', 0, 0),
(13, 'دیپلم', '', '', 0, 'academic_degree', 0, '', '', 0, 0),
(14, 'فوق دیپلم', '', '', 0, 'academic_degree', 0, '', '', 0, 0),
(15, 'لیسانس', '', '', 0, 'academic_degree', 0, '', '', 0, 0),
(16, 'فوق لیسانس', '', '', 0, 'academic_degree', 0, '', '', 0, 0),
(17, 'دکترا', '', '', 0, 'academic_degree', 0, '', '', 0, 0),
(18, 'مایل به جواب دادن نیستم', '', '', 0, 'academic_degree', 0, '', '', 0, 0),
(19, 'شاغل', '', '', 0, 'emplyment_status', 0, '', '', 0, 0),
(20, 'بدون شغل', '', '', 0, 'emplyment_status', 0, '', '', 0, 0),
(21, 'در جستجوی کار', '', '', 0, 'emplyment_status', 0, '', '', 0, 0),
(22, 'دانش آموز', '', '', 0, 'emplyment_status', 0, '', '', 0, 0),
(23, 'دانشجو', '', '', 0, 'emplyment_status', 0, '', '', 0, 0),
(24, 'بازنشسته', '', '', 0, 'emplyment_status', 0, '', '', 0, 0),
(25, 'خانه دار', '', '', 0, 'emplyment_status', 0, '', '', 0, 0),
(26, 'مایل به جواب دادن نیستم', '', '', 0, 'emplyment_status', 0, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catcustomfield`
--

CREATE TABLE `catcustomfield` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `cat_id` int(11) NOT NULL COMMENT 'دسته',
  `name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'نوع',
  `prio` int(11) NOT NULL COMMENT 'اولویت',
  `flag` int(1) NOT NULL COMMENT 'وضعیت',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catcustomfield_option`
--

CREATE TABLE `catcustomfield_option` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `catcustomfield_id` int(11) NOT NULL COMMENT 'ویژگی',
  `option` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'گزینه',
  `flag` int(1) NOT NULL COMMENT 'وضعیت',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catcustomfield_value`
--

CREATE TABLE `catcustomfield_value` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `item_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'جدول محتوا',
  `item_id` int(11) NOT NULL COMMENT 'شناسه محتوا',
  `option_id` int(11) NOT NULL COMMENT 'گزینه'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catcustomfield_value_text`
--

CREATE TABLE `catcustomfield_value_text` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `catcustomfield_value_id` int(11) NOT NULL COMMENT 'شناسه محتوا',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'محتوا'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'نام و نام خانوادگی',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'آدرس ایمیل',
  `cell` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'تلفن همراه',
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'مقصد',
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان پیام',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن پیام',
  `date` int(11) NOT NULL COMMENT 'زمان',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cronjob`
--

CREATE TABLE `cronjob` (
  `id` int(11) NOT NULL,
  `func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'function name without ()',
  `vars` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` bigint(10) NOT NULL COMMENT 'only U format',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ezticket_reply`
--

CREATE TABLE `ezticket_reply` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `text` text COLLATE utf8_persian_ci NOT NULL COMMENT 'متن درخواست',
  `date` int(11) NOT NULL COMMENT 'تاریخ'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ezticket_ticket`
--

CREATE TABLE `ezticket_ticket` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `dept` int(11) NOT NULL COMMENT 'دپارتمان',
  `name` varchar(512) COLLATE utf8_persian_ci NOT NULL COMMENT 'عنوان درخواست',
  `date` int(11) NOT NULL COMMENT 'تاریخ',
  `archived` int(1) NOT NULL,
  `view_by_admin` int(1) NOT NULL,
  `view_by_user` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facebookcomment`
--

CREATE TABLE `facebookcomment` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `text` text COLLATE utf8_persian_ci NOT NULL COMMENT 'نظر',
  `user_id` int(11) NOT NULL COMMENT 'شناسه کاربر',
  `page_id` int(11) NOT NULL COMMENT 'صفحه',
  `table_name` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'نام جدول',
  `table_id` int(11) NOT NULL COMMENT 'شناسه جدول',
  `comment_id` int(11) NOT NULL COMMENT 'شناسه نظر معرف',
  `date` int(10) NOT NULL COMMENT 'زمان',
  `flag` int(1) NOT NULL COMMENT 'وضعیت'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='نظر/نظرات';

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL COMMENT 'عنوان مسئله',
  `text` text COLLATE utf8_persian_ci NOT NULL COMMENT 'پاسخ مسئله'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `name`, `text`) VALUES
(1, '1. How much will it cost to travel to Australia, New Zealand or Fiji?', 'Prices for our travel packages from the USA typically start at US$3500 per person for 2 weeks including all accommodation,  flights (domestic and international), transfers, tours, some meals and Visa issuance for entry into Australia. \r\n\r\nPricing is dependent on the “class” of accommodation (3-5 Star) and the “number” of travelers in your group, the more people to share costs the less it will cost per person. Pricing is also significantly affected by the “Dates” you chose to travel ranging from Basic Season (cheap) to Peak (expensive).'),
(2, '3. What is the Date Format?', 'Common date format in Australia, New Zealand & Fiji is: DD/MM/YY (not MM/DD/YY).\r\n\r\nEXAMPLE: May 3rd, 2017\r\n\r\nUS Date – 05/03/17\r\n\r\nAustralia/New Zealand Date – 03/05/17'),
(4, '4. Are self-drive packages available for Australia, New Zealand &/or Fiji?', 'Yes, self-drive travel packages that include rental vehicles are available and can be tailored to suit your needs.\r\n\r\nAll drivers, including visitors from other countries, must carry their license or permit at all times when driving. You must have either a current driver’s license from your home country or an International Driving Permit (IDP). You will only be able to drive the same types of vehicles you are licensed to drive in your home country. Make sure your driver’s license is current and in English. If your license is not in English, you must bring an English translation with you or obtain an IDP. Contact your local automobile club for further details about obtaining a translation or an IDP.\r\n\r\nPlease remember that in Australia, New Zealand & Fiji we drive on the left-hand side of the road. Drivers give way (or yield) to all traffic crossing or approaching from the right. Signposting follows standard international symbols and all distances are in kilometres (km). Both drivers & passengers must wear a safety belt in both the front and back seats.\r\n\r\nHere are some general tips and hints to help you drive safely:\r\n\r\nAlways drive on the left-hand side of the road and give way to your right\r\nAll road distances are measured in kilometres\r\nWhen turning left, give way (yield) to traffic crossing or approaching from your right\r\nWhen the traffic light is red, you must stop. There is no left turn rule as in North America.\r\nThe amber traffic light means stop unless you are so close to the intersection you can’t stop safely.\r\nRandom police stops for breath testing can occur at anytime \r\nCameras are also common place along highways and stoplight intersections.  Fines are sent by post for speed or stopping violations.'),
(3, '2. How long does it take to get to Australia, New Zealand or Fiji?', 'An average non-stop flight from the USA (West Coast) to:\r\n\r\nAustralia is approximately 14 hours.\r\nNew Zealand is approximately 13 hours.\r\nFiji is approximately 11 hours.\r\n\r\nOn the way back, the flight time is less due to the prevailing Easterly winds across the Pacific. Flight times may vary depending on routing.'),
(5, '5. What is twinshare accommodation?', 'Twin Share means “Double Occupancy.”  This term refers to two people traveling together who occupy the same room.'),
(6, '6. What do I dial in an Emergency?', 'In case of an Emergency whilst in Australia Dial “000″ (not 911).\r\nIn case of an Emergency whilst in New Zealand Dial “111″.\r\nIn case of an Emergency whilst in Fiji Dial “917″ for Police, or “911″ for Fire or Ambulance.'),
(7, '7. What are the Flight Baggage Restrictions?', 'Qantas Airlines restrict checked baggage to 2 pieces (50 pounds per piece) per person plus 1 carry-on bag (15 pounds). This allowance is applicable to all your Qantas flights in your booking (including both International and Domestic sectors). However some flights in Australia (e.g. to Heron Island) are restricted to 1 piece per person plus a carry-on. Please check with the Airlines for baggage restrictions associated with your flights before you depart the USA. Penalties may be issued by the Airlines as a result of excess baggage. Excess baggage penalties are your responsibility. If you wish to travel with more than the checked baggage allowance you can pre-purchase an Additional Baggage Allowance before you go, at lower rates than Airport Excess Baggage charges.');

-- --------------------------------------------------------

--
-- Table structure for table `linkify`
--

CREATE TABLE `linkify` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'عنوان پیوند',
  `url` text COLLATE utf8_persian_ci NOT NULL COMMENT 'آدرس پیوند',
  `pic` text COLLATE utf8_persian_ci NOT NULL COMMENT 'عکس',
  `flag` int(11) NOT NULL COMMENT 'وضعیت',
  `prio` int(11) NOT NULL COMMENT 'موقعیت',
  `parent` int(11) NOT NULL COMMENT 'معرف',
  `cat` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'موقعیت'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='پیوند/پیوندها';

--
-- Dumping data for table `linkify`
--

INSERT INTO `linkify` (`id`, `name`, `url`, `pic`, `flag`, `prio`, `parent`, `cat`) VALUES
(1, 'About Karizma', 'http://127.0.0.1/live.git/mjsafar.com/page-3.html', '', 1, 0, 0, '1'),
(2, 'FAQ', 'http://127.0.0.1/live.git/mjsafar.com/page-20.html', '', 1, 0, 0, '3'),
(3, 'News RSS', './rss/news.xml', '', 1, 0, 0, '3'),
(4, 'Product RSS', './rss/item.xml', '', 1, 0, 0, '3'),
(5, 'Agency Request', './404', '', 1, 0, 0, '2');

-- --------------------------------------------------------

--
-- Table structure for table `linkify_config`
--

CREATE TABLE `linkify_config` (
  `id` int(11) NOT NULL,
  `name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان جعبه پیوند',
  `haveSub` int(1) NOT NULL COMMENT 'زیرپیوند',
  `haveIcon` int(1) NOT NULL COMMENT 'آیکون',
  `pinned` int(1) NOT NULL COMMENT 'غیرقابل حذف',
  `flag` int(1) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='جعبه پیوند/جعبه‌های پیوند';

--
-- Dumping data for table `linkify_config`
--

INSERT INTO `linkify_config` (`id`, `name`, `haveSub`, `haveIcon`, `pinned`, `flag`, `hide`) VALUES
(1, 'Karisma', 0, 0, 0, 1, 0),
(2, 'Connect to us', 0, 0, 0, 1, 0),
(3, 'More', 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `meta_title` text COLLATE utf8_persian_ci NOT NULL COMMENT 'عنوان صفحه',
  `meta_kw` text COLLATE utf8_persian_ci NOT NULL COMMENT 'کلمات کلیدی',
  `meta_desc` text COLLATE utf8_persian_ci NOT NULL COMMENT 'توضیحات'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `name`, `meta_title`, `meta_kw`, `meta_desc`) VALUES
(2, 'Contact', '', '', ''),
(20, 'FAQ', '', '', ''),
(1, 'Home', '', '', ''),
(3, 'About', '', '', ''),
(4, 'Help', '', '', ''),
(5, 'Learning', '', '', ''),
(6, 'Terms', '', '', ''),
(7, 'Privacy', '', '', ''),
(14, 'Clientarea', '', '', ''),
(19, 'Client Profile', '', '', ''),
(58, 'Register', '', '', ''),
(59, 'Register Confirm', '', '', ''),
(60, 'Login', '', '', ''),
(63, 'Forgot Password', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `page_layer`
--

CREATE TABLE `page_layer` (
  `id` int(11) NOT NULL,
  `page_id` int(6) NOT NULL DEFAULT '0',
  `prio` int(6) NOT NULL DEFAULT '0',
  `func` varchar(250) COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `type` varchar(25) COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `name` varchar(250) COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8_persian_ci NOT NULL,
  `framed` int(6) NOT NULL DEFAULT '0',
  `pos` varchar(10) COLLATE utf8_persian_ci NOT NULL COMMENT 'top center left right bottom',
  `flag` int(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `page_layer`
--

INSERT INTO `page_layer` (`id`, `page_id`, `prio`, `func`, `type`, `name`, `data`, `framed`, `pos`, `flag`) VALUES
(2, 2, 1, 'contact_vw_form', '', 'Contact', '', 1, '', 1),
(20, 20, 1, 'faq_display', '', 'FAQ', '', 1, '', 1),
(1, 1, 2, 'layout_post', 'PHP5', 'Home', '<p><span style="font-family: DefaultFont;">Under Contstruction ...</span></p>', 1, '', 1),
(3, 3, 1, 'layout_post', 'HTML', 'About', '<p><span style="font-family: DefaultFont;">Under Contstruction ...</span></p>', 1, '', 1),
(4, 4, 1, 'layout_post', 'HTML', 'Help', '<p><span style="font-family: DefaultFont;">Under Contstruction ...</span></p>', 1, '', 1),
(5, 5, 1, 'layout_post', 'HTML', 'Learn', '<p><span style="font-family: DefaultFont;">Under Contstruction ...</span></p>', 1, '', 1),
(6, 6, 1, 'layout_post', 'HTML', 'Terms', '<p><span style="font-family: DefaultFont;">Under Contstruction ...</span></p>', 1, '', 1),
(7, 7, 1, 'layout_post', 'HTML', 'Privacy Policy', '<p><span style="font-family: DefaultFont;">Under Construction ...</span></p>', 1, '', 1),
(14, 14, 2, 'userpanel_desk', '', 'Client Desk', '', 1, '', 1),
(15, 14, 1, 'userpanel_menu', '', 'Client Menu', '', 1, 'right', 1),
(19, 19, 1, 'userprofile_vw', 'PHP5', 'Profile', '', 1, '', 1),
(58, 58, 1, 'users_register_form', 'PHP5', 'Register', '', 1, '', 1),
(59, 59, 1, 'layout_post', 'PHP5', 'Register Confirm', '<?php users_register_do(); ?>', 1, '', 1),
(60, 60, 1, 'users_login_form', 'PHP5', 'Login', '', 1, '', 1),
(63, 63, 1, 'users_forgot_form', 'PHP5', 'Forgot password', '', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='موقعیت/موقعیت‌ها';

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `name`, `parent`, `type`) VALUES
(1, 'India', 0, 'country'),
(2, 'Iran', 0, 'country'),
(3, 'Turkey', 0, 'country'),
(4, 'Russia', 0, 'country'),
(5, 'France', 0, 'country'),
(6, 'Germany', 0, 'country'),
(7, 'Canada', 0, 'country'),
(8, 'Isfahan', 2, 'city'),
(9, 'Shiraz', 2, 'city'),
(10, 'Tehran', 2, 'city'),
(11, 'Kashan', 2, 'city'),
(12, 'Mashhad', 2, 'city'),
(13, 'Kerman', 2, 'city'),
(14, 'Moskow', 4, 'city'),
(15, 'Istanbul', 3, 'city'),
(16, 'Ankara', 3, 'city'),
(17, 'Izmir', 3, 'city'),
(18, 'Berlin', 6, 'city'),
(19, 'Munich', 6, 'city'),
(20, 'Paris', 5, 'city'),
(21, 'Toronto', 7, 'city');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`slug`, `name`, `text`, `component`) VALUES
('contact_tell', 'شماره تلفن', '+90 212 3151400', ''),
('contact_fax', 'شماره فکس', '+90 212 2254245', ''),
('contact_address', 'آدرس دفتر', 'Technopark D2, 2nd Floor Esenler/ Istanbul - Turkey', ''),
('contact_email_address_0', '', 'support@karisma.co.tr', ''),
('contact_email_address_1', '', 'info@karisma.co.tr', ''),
('tiny_title', 'نام سایت', 'Karisma Travel', ''),
('main_title', 'عنوان سایت', 'Karisma Travel, Tourism and Transfer Solutions.', ''),
('money_unit', 'واحد پولی', '$%% USD', ''),
('template', 'قالب سایت', 'Default', ''),
('websitedescription', 'فعالیت سایت', 'TPD is a Travel Portal Development and Design Services Facilitates Trip Planning & Online Travel Portal Development guide Tool for Flight, Hotel and Travel Portal software , A leading global Travel Software development company having years of experience providing technical assistance to SME’s & Large scale Travel & Leisure companies', ''),
('keywords', 'کلمات کلیدی', 'Karisma, Traveling, Tourism, Transfer, Airline, Hottel', ''),
('webstatus_main', 'وضعیت سایت', '1', ''),
('webstatus_main_content', 'متن وضعیت غیرفعال', 'We are working hard to fix problems.\r\nSo please wait a little more ...', ''),
('html_extra_tags', 'تگ های اضافی', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `stat_counter`
--

CREATE TABLE `stat_counter` (
  `id` int(11) NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `date` varchar(19) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `refer` varchar(1000) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `uri` varchar(1000) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `agent` varchar(500) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `new_ip` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tallfooter`
--

CREATE TABLE `tallfooter` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'نوع',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'محتوا',
  `grid` int(11) NOT NULL COMMENT 'فضا',
  `prio` int(11) NOT NULL COMMENT 'اولویت',
  `flag` int(1) NOT NULL COMMENT 'وضعیت',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tallfooter`
--

INSERT INTO `tallfooter` (`id`, `name`, `type`, `content`, `grid`, `prio`, `flag`, `hide`) VALUES
(1, 'Karisma', 'linkify', '1', 3, 1, 1, 0),
(2, 'Contact to us', 'linkify', '2', 3, 2, 1, 0),
(4, 'ارتباط بیشتر', 'linkify', '3', 3, 4, 0, 0),
(5, 'More', 'linkify', '3', 3, 3, 1, 0),
(6, '-  -  -  -  -  -  -', 'hr', '', 12, 6, 1, 0),
(9, 'Social networks', 'social', 'https://www.facebook.com/Karisma\r\nhttps://plus.google.com/Karisma	\r\nhttps://twitter.com/Karisma\r\nhttp://instagram.com/Karisma\r\nhttp://karisma.co.tr/sitemap.xml', 6, 8, 1, 0),
(10, 'Copyright', 'html', '<p><span style="font-family: DefaultFont;">Copyright Karisma &nbsp;&copy; 2016 </span></p>\r\n<p><span style="font-family: DefaultFont;">All right reserved.</span></p>', 6, 7, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `texty`
--

CREATE TABLE `texty` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'نام',
  `prompt` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن پیام',
  `user_email_subject` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان ایمیل کاربر',
  `user_email_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن ایمیل کاربر',
  `admin_email_subject` int(11) NOT NULL COMMENT 'عنوان ایمیل مدیر',
  `admin_email_content` int(11) NOT NULL COMMENT 'متن ایمیل مدیر',
  `user_sms` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن پیامک کاربر',
  `admin_sms` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن پیامک مدیر',
  `flag` int(1) NOT NULL COMMENT 'وضعیت'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `texty`
--

INSERT INTO `texty` (`id`, `slug`, `name`, `prompt`, `user_email_subject`, `user_email_content`, `admin_email_subject`, `admin_email_content`, `user_sms`, `admin_sms`, `flag`) VALUES
(1, 'billing_settleInvoice', 'تایید پرداخت فاکتور', 'پرداخت با موفقیت انجام شد.\r\nمبلغ : {cost}\r\nشماره فاکتور : {id}\r\nکد تراکنش : {transaction}', 'فاکتور شما به شماره {id} پرداخت شد', 'سلام\r\nکاربر گرامی\r\nفاکتور شما به مبلغ {cost} به شناسه {id} پرداخت شد.\r\nبا تشکر از خرید شما', 0, 0, '', '', 1),
(2, 'billing_invoiceMake_congratulate', 'ایجاد فاکتور جدید', '', 'ثبت فاکتور {invoice_id}', 'کاربر گرامی\r\n{user_name}\r\n\r\nفاکتور جدید به شناسه {invoice_id} به مبلغ {cost} ایجاد شد\r\nبرای پرداخت فاکتور از لینک زیر اقدام نمایید.\r\n\r\nبا تشکر', 0, 0, '', '', 1),
(3, 'billing_orderSettle', 'تایید پرداخت سفارش', 'سفارش به شماره {id} ثبت شد', 'ثبت سفارش شماره {id}', 'سلام\r\nسفارش شما به شماره {id} ثبت و پس از بررسی فعال خواهد شد\r\nموفق باشید', 0, 0, '', '', 1),
(4, 'contact_vw_send', 'فرم تماس', 'پیام شما ثبت شد', 'پیام شما دریافت شد', 'کاربر گرامی، {name} پبام شما دریافت شد و در اولین فرصت پاسخ داده خواهد شد', 0, 0, '', '', 1),
(5, 'users_register_do', 'تایید ثبت نام', 'ثبت نام با موفقیت انجام شد!\r\nاطلاعات ورود به پنل کاربری به آدرس ایمیل شما ارسال شده است.', 'ثبت نام در {main_title}', 'سلام\r\n\r\nکاربر گرامی، {user_name} عزیز، \r\nحساب کاربری شما با موفقیت ایجاد شد\r\nاطلاعات حساب شما به شرح زیر است : \r\nنام کاربری:‌ {username}\r\nگذرواژه: {password}\r\n\r\nورود به سایت :‌\r\n{_URL}/login\r\n\r\nبا تشکر', 0, 0, 'کاربر گرامی خوش آمدید ثبت نام با موفقیت انجام شد نام کاربری: {username} کلمه عبور: {password}', '', 1),
(6, 'users_forgot_save', 'انجام بازیابی گذرواژه', 'بازیابی گذرواژه با موفقیت انجام شد', 'بازیابی گذرواژه انجام شد', 'با سلام\r\nکاربر گرامی\r\nباز یابی گذرواژه حساب شما با موفقیت انجام شد.\r\nبا تشکر', 0, 0, '', '', 1),
(7, 'users_forgot_send', 'ارسال لینک بازیابی گذرواژه', 'با سلام\r\nلینک بازیابی گذرواژه به آدرس ایمیل {username} ارسال شد.\r\nلطفا با باز کردن لینک فرم مربوطه را تکمیل نمایید.', 'درخواست گذرواژه جدید', 'سلام،\r\n\r\nبا توجه به درخواست شما برای ثبت کلمه عبور جدید ، ما یک پیوند برای تنظیم مجدد کلمه عبور به آدرس ایمیل شما ارسال نمودیم.\r\nلینک : \r\n{link}\r\n\r\nبا تشکر', 0, 0, '', '', 1),
(8, 'userprofile_save', 'ویرایش پروفایل', 'اطلاعات شما با موفقیت بروز شد.', '', '', 0, 0, '', '', 1),
(9, 'users_changepassword_save', 'تغییر کلمه عبور', 'کلمه عبور جدید شما با موفقیت ثبت شد.', '', '', 0, 0, '', '', 1),
(10, 'billing_management_offline_list_flag', 'تایید پرداخت آفلاین', 'پرداخت به مبلغ {cost} تایید و برای {user_name} منظور گردید ', 'پرداخت شما به مبلغ {cost} تایید شد', 'با سلام\r\nکاربر گرامی، {user_name}\r\nپرداخت شما به مبلغ {cost} از {bank_name} مورد تایید مدیریت قرار گرفته و در حساب کاربری شما منظور گردید\r\nبا تشکر', 0, 0, '', '', 1),
(11, 'billing_userpanel_payment_offline_save_n_congragulate', '', 'پرداخت شما به مبلغ {cost} ثبت شد.\r\nبه زودی مورد بررسی قرار خواهد گرفت.', 'پرداخت آفلاین به مبلغ {cost}', 'با سلام\r\nپرداخت شما به مبلغ {cost} ثبت گردید و بزودی به تایید مدیریت خواهد رسید\r\nبا تشکر', 0, 0, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upvote`
--

CREATE TABLE `upvote` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `table_name` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'جدول',
  `table_id` int(11) NOT NULL COMMENT 'شناسه جدول',
  `page_url` varchar(1024) COLLATE utf8_persian_ci NOT NULL COMMENT 'صفحه',
  `user_id` int(11) NOT NULL COMMENT 'شناسه کاربر',
  `date` int(11) NOT NULL COMMENT 'زمان'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `useraccess`
--

CREATE TABLE `useraccess` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `users_id` int(11) NOT NULL COMMENT 'شناسه کاربر',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'بخش'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL COMMENT 'شناسه کاربر',
  `date` int(11) NOT NULL COMMENT 'زمان',
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'آی پی',
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'نوع فعالیت'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'آدرس ایمیل',
  `password` varchar(255) COLLATE utf8_persian_ci NOT NULL DEFAULT '' COMMENT 'کلمه عبور',
  `permission` int(12) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'نام و نام خانوادگی',
  `cell` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'تلفن همراه',
  `wallet_credit` int(11) NOT NULL COMMENT 'وضعیت مدیریت',
  `uio_date` int(10) NOT NULL,
  `flag_admin` int(1) NOT NULL COMMENT 'وضعیت مدیریت',
  `flag_user` int(1) NOT NULL COMMENT 'وضعیت کاربری',
  `management_title` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'سمت مدیریت',
  `register_ip` varchar(15) COLLATE utf8_persian_ci NOT NULL COMMENT 'آی پی ثبت نام',
  `register_date` int(11) NOT NULL COMMENT 'زمان ثبت نام',
  `login_ip` varchar(15) COLLATE utf8_persian_ci NOT NULL COMMENT 'آی پی آخرین ورود',
  `login_date` int(11) NOT NULL COMMENT '	زمان آخرین ورود',
  `tell` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'تلفن ثابت',
  `address` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'آدرس',
  `profile_pic` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'عکس',
  `im_a` varchar(1024) COLLATE utf8_persian_ci NOT NULL COMMENT 'حرفه/شغل',
  `work_at` varchar(1024) COLLATE utf8_persian_ci NOT NULL COMMENT 'محل کار',
  `gender` varchar(1) COLLATE utf8_persian_ci NOT NULL COMMENT 'جنسیت'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `permission`, `name`, `cell`, `wallet_credit`, `uio_date`, `flag_admin`, `flag_user`, `management_title`, `register_ip`, `register_date`, `login_ip`, `login_date`, `tell`, `address`, `profile_pic`, `im_a`, `work_at`, `gender`) VALUES
(1, 'ogun@karisma.co.tr', 'ogun@karisma.co.tr', 2, 'Ogün Özbir', '+902123820942', 0, 1479176402, 0, 0, '', '', 0, '', 0, '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_invoice`
--
ALTER TABLE `billing_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_method`
--
ALTER TABLE `billing_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `cat` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `catcustomfield`
--
ALTER TABLE `catcustomfield`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catcustomfield_option`
--
ALTER TABLE `catcustomfield_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catcustomfield_value`
--
ALTER TABLE `catcustomfield_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catcustomfield_value_text`
--
ALTER TABLE `catcustomfield_value_text`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catcustomfield_value_id` (`catcustomfield_value_id`);
ALTER TABLE `catcustomfield_value_text` ADD FULLTEXT KEY `text` (`text`);

--
-- Indexes for table `cronjob`
--
ALTER TABLE `cronjob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezticket_reply`
--
ALTER TABLE `ezticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezticket_ticket`
--
ALTER TABLE `ezticket_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebookcomment`
--
ALTER TABLE `facebookcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linkify`
--
ALTER TABLE `linkify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linkify_config`
--
ALTER TABLE `linkify_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_layer`
--
ALTER TABLE `page_layer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`slug`);

--
-- Indexes for table `stat_counter`
--
ALTER TABLE `stat_counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tallfooter`
--
ALTER TABLE `tallfooter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texty`
--
ALTER TABLE `texty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `upvote`
--
ALTER TABLE `upvote`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_name` (`table_name`,`table_id`,`user_id`);

--
-- Indexes for table `useraccess`
--
ALTER TABLE `useraccess`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_invoice`
--
ALTER TABLE `billing_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';
--
-- AUTO_INCREMENT for table `billing_method`
--
ALTER TABLE `billing_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `catcustomfield`
--
ALTER TABLE `catcustomfield`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';
--
-- AUTO_INCREMENT for table `catcustomfield_option`
--
ALTER TABLE `catcustomfield_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';
--
-- AUTO_INCREMENT for table `catcustomfield_value`
--
ALTER TABLE `catcustomfield_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';
--
-- AUTO_INCREMENT for table `catcustomfield_value_text`
--
ALTER TABLE `catcustomfield_value_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';
--
-- AUTO_INCREMENT for table `cronjob`
--
ALTER TABLE `cronjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ezticket_reply`
--
ALTER TABLE `ezticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ezticket_ticket`
--
ALTER TABLE `ezticket_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `facebookcomment`
--
ALTER TABLE `facebookcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `linkify`
--
ALTER TABLE `linkify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `linkify_config`
--
ALTER TABLE `linkify_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `page_layer`
--
ALTER TABLE `page_layer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `stat_counter`
--
ALTER TABLE `stat_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tallfooter`
--
ALTER TABLE `tallfooter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `texty`
--
ALTER TABLE `texty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `upvote`
--
ALTER TABLE `upvote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';
--
-- AUTO_INCREMENT for table `useraccess`
--
ALTER TABLE `useraccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
