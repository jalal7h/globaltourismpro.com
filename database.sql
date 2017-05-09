-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2017 at 08:23 PM
-- Server version: 5.6.27
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LIVE_globaltourismpro.com`
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
  `cost` float NOT NULL COMMENT 'مبلغ',
  `method` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'روش پرداخت',
  `transaction` varchar(1024) COLLATE utf8_persian_ci NOT NULL COMMENT 'تراکنش',
  `date` int(11) NOT NULL COMMENT 'تاریخ پرداخت',
  `date_created` int(11) NOT NULL COMMENT 'تاریخ ثبت',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `billing_invoice`
--

INSERT INTO `billing_invoice` (`id`, `user_id`, `order_table`, `order_id`, `cost`, `method`, `transaction`, `date`, `date_created`, `hide`) VALUES
(2, 2, 'mg_dailytour_order', 19, 234, '', '', 0, 1486496687, 0),
(3, 2, 'mg_dailytour_order', 20, 234, '', '', 0, 1486547628, 0),
(4, 2, 'mg_dailytour_order', 21, 234, '', '', 0, 1486547773, 0),
(5, 2, 'mg_dailytour_order', 22, 234, '', '', 0, 1486547803, 0),
(6, 2, 'mg_dailytour_order', 23, 234, '', '', 0, 1486547819, 0),
(7, 2, 'mg_dailytour_order', 24, 234, '', '', 0, 1486547881, 0),
(8, 2, 'mg_dailytour_order', 25, 234, '', '', 0, 1486547965, 0),
(9, 2, 'mg_dailytour_order', 26, 234, '', '', 0, 1486548022, 0),
(10, 2, 'mg_dailytour_order', 27, 234.3, '', '', 0, 1486548056, 0),
(11, 2, 'mg_dailytour_order', 28, 234.3, '', '', 0, 1486552379, 0),
(12, 2, 'mg_dailytour_order', 29, 234.3, '', '', 0, 1486552453, 0),
(13, 2, 'mg_dailytour_order', 30, 234.3, 'paypal', '0348u9erouihre9u0', 1486552471, 1492370916, 0),
(14, 2, 'mg_dailytour_order', 31, 234.3, '', '', 0, 1486557057, 0),
(15, 2, 'mg_dailytour_order', 32, 234.3, '', '', 0, 1486571615, 0),
(16, 2, 'mg_dailytour_order', 33, 234.3, '', '', 0, 1486571704, 0),
(17, 2, 'mg_dailytour_order', 34, 234.3, '', '', 0, 1486571771, 0),
(18, 2, 'mg_dailytour_order', 35, 234.3, '', '', 0, 1486571931, 0),
(19, 2, 'mg_dailytour_order', 36, 234.3, '', '', 0, 1486572233, 0),
(20, 2, 'mg_dailytour_order', 37, 234.3, '', '', 0, 1486572282, 0),
(21, 2, 'mg_dailytour_order', 38, 234.3, '', '', 0, 1486572460, 0),
(22, 2, 'mg_dailytour_order', 39, 234.3, '', '', 0, 1486572894, 0),
(23, 2, 'mg_dailytour_order', 40, 234.3, '', '', 0, 1486572945, 0),
(24, 2, 'mg_dailytour_order', 41, 234.3, '', '', 0, 1486573040, 0),
(25, 2, 'mg_dailytour_order', 42, 234.3, '', '', 0, 1486573069, 0),
(26, 2, 'mg_transfer_order', 2, 108.59, '', '', 0, 1486586795, 0),
(27, 2, 'mg_transfer_order', 3, 217.18, '', '', 0, 1486586904, 0),
(28, 2, 'mg_dailytour_order', 43, 537.6, '', '', 0, 1488211466, 0),
(29, 2, 'mg_dailytour_order', 44, 1351.15, '', '', 0, 1491245634, 0),
(35, 2, 'mg_transfer_order', 4, 108.59, '', '', 0, 1492377367, 0),
(32, 2, 'mg_dailytour_order', 47, 1102.3, '', '', 0, 1492171076, 0),
(33, 2, 'mg_dailytour_order', 48, 1102.3, 'paypal', '530453467212N', 1492316471, 1492172155, 0),
(34, 2, 'mg_dailytour_order', 49, 1102.3, 'paypal', '230874739828N', 1492326471, 1492172387, 0),
(36, 2, 'mg_transfer_order', 5, 108.59, 'paypal', '230874739880N', 1492326471, 1492377895, 0),
(37, 2, 'mg_dailytour_order', 50, 46.7, '', '', 0, 1493558780, 0),
(38, 2, 'mg_dailytour_order', 51, 675.57, '', '', 0, 1493820129, 0),
(39, 2, 'mg_dailytour_order', 52, 641.8, '', '', 0, 1493820276, 0),
(40, 2, 'mg_dailytour_order', 53, 738.15, '', '', 0, 1494144091, 0),
(41, 2, 'mg_transfer_order', 6, 380, '', '', 0, 1494329942, 0),
(42, 2, 'mg_dailytour_order', 54, 769.5, '', '', 0, 1494333748, 0);

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
(6, 'paypal', '1', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookmarky`
--

CREATE TABLE `bookmarky` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `table_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

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
  `color` varchar(50) COLLATE utf8_persian_ci NOT NULL COMMENT 'رنگ',
  `slug` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'نامک',
  `flag` int(1) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `desc`, `kw`, `parent`, `cat`, `prio`, `logo`, `family_tree`, `color`, `slug`, `flag`, `hide`) VALUES
(46, 'German', '', '', 0, 'guidingLanguages', 2, '', '', '', '', 1, 0),
(45, 'French', '', '', 0, 'guidingLanguages', 3, '', '', '', '', 1, 0),
(44, 'English', '', '', 0, 'guidingLanguages', 1, '', '', '', '', 1, 0),
(43, 'Shared', '', '', 0, 'transferBasis', 0, '', '', '', '', 1, 0),
(41, 'Every Sundays', '', '', 0, 'departs', 2, '', '', '', '', 1, 0),
(40, 'Every Day', '', '', 0, 'departs', 1, '', '', '', '', 1, 0),
(38, 'Shared', '', '', 0, 'serviceBasis', 2, '', '', '', '', 1, 0),
(37, 'Private', '', '', 0, 'serviceBasis', 1, '', '', '', '', 1, 0),
(36, 'Ifant ( 0 - 2 )', '', '', 0, 'priceper', 4, '', '', '', '', 1, 0),
(35, 'Child ( 7 - 12 )', '', '', 0, 'priceper', 2, '', '', '', '', 1, 0),
(34, 'Child ( 3 - 6 )', '', '', 0, 'priceper', 3, '', '', '', '', 1, 0),
(33, 'Adult', '', '', 0, 'priceper', 1, '', '', '', '', 1, 0),
(28, 'Politic', '', '', 0, 'news', 0, '', '', '', '', 1, 0),
(29, 'sport', '', '', 0, 'news', 0, '', '', '', '', 1, 0),
(30, 'Complaint', '', '', 0, 'ticketbox', 0, '', '', '', '', 1, 0),
(31, 'Amendment', '', '', 0, 'ticketbox', 0, '', '', '', '', 1, 0),
(32, 'Cancellation', '', '', 0, 'ticketbox', 0, '', '', '', '', 1, 0),
(47, 'Italian', '', '', 0, 'guidingLanguages', 4, '', '', '', '', 1, 0),
(48, 'Specific Day', '', '', 0, 'departs', 3, '', '', '', '', 1, 0),
(49, 'Private', '', '', 0, 'transferBasis', 0, '', '', '', '', 1, 0),
(12, 'زیر دیپلم', '', '', 0, 'academic_degree', 0, '', '', '', '', 0, 0),
(13, 'دیپلم', '', '', 0, 'academic_degree', 0, '', '', '', '', 0, 0),
(14, 'فوق دیپلم', '', '', 0, 'academic_degree', 0, '', '', '', '', 0, 0),
(15, 'لیسانس', '', '', 0, 'academic_degree', 0, '', '', '', '', 0, 0),
(16, 'فوق لیسانس', '', '', 0, 'academic_degree', 0, '', '', '', '', 0, 0),
(17, 'دکترا', '', '', 0, 'academic_degree', 0, '', '', '', '', 0, 0),
(18, 'مایل به جواب دادن نیستم', '', '', 0, 'academic_degree', 0, '', '', '', '', 0, 0),
(19, 'شاغل', '', '', 0, 'emplyment_status', 0, '', '', '', '', 0, 0),
(20, 'بدون شغل', '', '', 0, 'emplyment_status', 0, '', '', '', '', 0, 0),
(21, 'در جستجوی کار', '', '', 0, 'emplyment_status', 0, '', '', '', '', 0, 0),
(22, 'دانش آموز', '', '', 0, 'emplyment_status', 0, '', '', '', '', 0, 0),
(23, 'دانشجو', '', '', 0, 'emplyment_status', 0, '', '', '', '', 0, 0),
(24, 'بازنشسته', '', '', 0, 'emplyment_status', 0, '', '', '', '', 0, 0),
(25, 'خانه دار', '', '', 0, 'emplyment_status', 0, '', '', '', '', 0, 0),
(26, 'مایل به جواب دادن نیستم', '', '', 0, 'emplyment_status', 0, '', '', '', '', 0, 0),
(50, 'Special Requests', '', '', 0, 'ticketbox', 0, '', '', '', '', 1, 0),
(51, 'Itinerary', '', '', 0, 'ticketbox', 0, '', '', '', '', 1, 0),
(52, 'Reservation Details', '', '', 0, 'ticketbox', 0, '', '', '', '', 1, 0),
(53, 'Pick Up', '', '', 0, 'ticketbox', 0, '', '', '', '', 1, 0),
(54, 'Drop Off', '', '', 0, 'ticketbox', 0, '', '', '', '', 1, 0),
(55, 'Fast Facts', '', '', 0, 'post', 0, '', '', '', 'fast-facts', 1, 0),
(56, 'Dress Code', '', '', 0, 'post', 0, '', '', '', 'dress-code', 1, 0),
(57, 'Useful Information', '', '', 0, 'post', 0, '', '', '', 'useful-information', 1, 0),
(58, 'Persian Cuisine', '', '', 0, 'post', 0, '', '', '', 'persian-cuisine', 1, 0),
(79, 'Bus (1-38)', '', '', 0, 'transfer_vehicle', 4, '', '', '', '', 1, 0),
(60, 'Cultural Tours', '', '', 0, 'post', 0, '', '', '', 'cultural-tours', 1, 0),
(61, 'Eco Tours', '', '', 0, 'post', 0, '', '', '', 'eco-tours', 1, 0),
(78, 'Minibus (1-12)', '', '', 0, 'transfer_vehicle', 3, '', '', '', '', 1, 0),
(77, 'Van (1-6)', '', '', 0, 'transfer_vehicle', 2, '', '', '', '', 1, 0),
(76, 'Sedan (1-3)', '', '', 0, 'transfer_vehicle', 1, '', '', '', '', 1, 0),
(75, 'Customer Support', '', '', 0, 'post', 0, '', '', '', 'customer-support', 1, 0),
(74, 'Etc', '', '', 0, 'photogallery', 0, '', '', '', 'etc', 1, 1),
(73, 'Isfahan', '', '', 0, 'photogallery', 0, '', '', '', 'isfahan', 1, 0),
(72, 'Shiraz', '', '', 0, 'photogallery', 0, '', '', '', 'shiraz', 1, 0),
(71, 'Yechi dge', '', '', 0, 'post', 0, '', '', '', 'yechi-dge', 1, 1);

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

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `cell`, `to`, `subject`, `content`, `date`, `hide`) VALUES
(14, 'John Due', 'john@due.com', '+188231431778', 'support@globaltourismpro.com', '', 'Hi,\\r\\n\\r\\nA wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.\\r\\n\\r\\nI should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.\\r\\nWhen, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.\\r\\n\\r\\nRegards\\r\\nJohn Due', 1492371296, 0);

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
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL COMMENT 'عنوان مسئله',
  `text` text COLLATE utf8_persian_ci NOT NULL COMMENT 'پاسخ مسئله',
  `prio` int(11) NOT NULL,
  `flag` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `name`, `text`, `prio`, `flag`) VALUES
(1, '1. How much will it cost to travel to Australia, New Zealand or Fiji?', 'Prices for our travel packages from the USA typically start at US$3500 per person for 2 weeks including all accommodation,  flights (domestic and international), transfers, tours, some meals and Visa issuance for entry into Australia. \\r\\n\\r\\nPricing is dependent on the “class” of accommodation (3-5 Star) and the “number” of travelers in your group, the more people to share costs the less it will cost per person. Pricing is also significantly affected by the “Dates” you chose to travel ranging from Basic Season (cheap) to Peak (expensive).', 1, 1),
(2, '3. What is the Date Format?', 'Common date format in Australia, New Zealand & Fiji is: DD/MM/YY (not MM/DD/YY).\\r\\n\\r\\nEXAMPLE: May 3rd, 2017\\r\\n\\r\\nUS Date – 05/03/17\\r\\n\\r\\nAustralia/New Zealand Date – 03/05/17', 3, 1),
(4, '4. Are self-drive packages available for Australia, New Zealand &/or Fiji?', 'Yes, self-drive travel packages that include rental vehicles are available and can be tailored to suit your needs.\\r\\n\\r\\nAll drivers, including visitors from other countries, must carry their license or permit at all times when driving. You must have either a current driver’s license from your home country or an International Driving Permit (IDP). You will only be able to drive the same types of vehicles you are licensed to drive in your home country. Make sure your driver’s license is current and in English. If your license is not in English, you must bring an English translation with you or obtain an IDP. Contact your local automobile club for further details about obtaining a translation or an IDP.\\r\\n\\r\\nPlease remember that in Australia, New Zealand & Fiji we drive on the left-hand side of the road. Drivers give way (or yield) to all traffic crossing or approaching from the right. Signposting follows standard international symbols and all distances are in kilometres (km). Both drivers & passengers must wear a safety belt in both the front and back seats.\\r\\n\\r\\nHere are some general tips and hints to help you drive safely:\\r\\n\\r\\nAlways drive on the left-hand side of the road and give way to your right\\r\\nAll road distances are measured in kilometres\\r\\nWhen turning left, give way (yield) to traffic crossing or approaching from your right\\r\\nWhen the traffic light is red, you must stop. There is no left turn rule as in North America.\\r\\nThe amber traffic light means stop unless you are so close to the intersection you can’t stop safely.\\r\\nRandom police stops for breath testing can occur at anytime \\r\\nCameras are also common place along highways and stoplight intersections.  Fines are sent by post for speed or stopping violations.', 4, 1),
(3, '2. How long does it take to get to Australia, New Zealand or Fiji?', 'An average non-stop flight from the USA (West Coast) to:\\r\\n\\r\\nAustralia is approximately 14 hours.\\r\\nNew Zealand is approximately 13 hours.\\r\\nFiji is approximately 11 hours.\\r\\n\\r\\nOn the way back, the flight time is less due to the prevailing Easterly winds across the Pacific. Flight times may vary depending on routing.', 2, 1),
(5, '5. What is twinshare accommodation?', 'Twin Share means “Double Occupancy.”  This term refers to two people traveling together who occupy the same room.', 5, 1),
(6, '6. What do I dial in an Emergency?', 'In case of an Emergency whilst in Australia Dial “000″ (not 911).\\r\\nIn case of an Emergency whilst in New Zealand Dial “111″.\\r\\nIn case of an Emergency whilst in Fiji Dial “917″ for Police, or “911″ for Fire or Ambulance.', 6, 1),
(7, '7. What are the Flight Baggage Restrictions?', 'Qantas Airlines restrict checked baggage to 2 pieces (50 pounds per piece) per person plus 1 carry-on bag (15 pounds). This allowance is applicable to all your Qantas flights in your booking (including both International and Domestic sectors). However some flights in Australia (e.g. to Heron Island) are restricted to 1 piece per person plus a carry-on. Please check with the Airlines for baggage restrictions associated with your flights before you depart the USA. Penalties may be issued by the Airlines as a result of excess baggage. Excess baggage penalties are your responsibility. If you wish to travel with more than the checked baggage allowance you can pre-purchase an Additional Baggage Allowance before you go, at lower rates than Airport Excess Baggage charges.', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fbcomment`
--

CREATE TABLE `fbcomment` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `text` text COLLATE utf8_persian_ci NOT NULL COMMENT 'نظر',
  `user_id` int(11) NOT NULL COMMENT 'شناسه کاربر',
  `page_id` int(11) NOT NULL COMMENT 'صفحه',
  `table_name` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'نام جدول',
  `table_id` int(11) NOT NULL COMMENT 'شناسه جدول',
  `comment_id` int(11) NOT NULL COMMENT 'شناسه نظر معرف',
  `flag` int(1) NOT NULL COMMENT 'وضعیت',
  `date_created` int(11) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='نظر/نظرات' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `fbcomment`
--

INSERT INTO `fbcomment` (`id`, `text`, `user_id`, `page_id`, `table_name`, `table_id`, `comment_id`, `flag`, `date_created`, `hide`) VALUES
(3, 'Hi, this is good.', 2, 52, 'news', 14, 0, 1, 0, 0),
(4, 'I need some new information about this tour. So please update me about this tour.', 2, 8, 'post', 5, 0, 0, 1493558084, 0),
(5, 'Wonderfull.', 2, 8, 'post', 5, 4, 0, 1493558177, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kword`
--

CREATE TABLE `kword` (
  `id` int(11) NOT NULL,
  `kword` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'کلمه',
  `usage_count` int(11) NOT NULL COMMENT 'تعداد استفاده'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kwordusage`
--

CREATE TABLE `kwordusage` (
  `id` int(11) NOT NULL,
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` int(11) NOT NULL,
  `kword_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `cat` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'موقعیت',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='پیوند/پیوندها';

--
-- Dumping data for table `linkify`
--

INSERT INTO `linkify` (`id`, `name`, `url`, `pic`, `flag`, `prio`, `parent`, `cat`, `hide`) VALUES
(1, 'Fast Facts', '{_URL}/post/fast-facts', '', 1, 0, 0, '1', 0),
(2, 'FAQ', '{_URL}/faq', '', 1, 1, 0, '3', 0),
(3, 'News RSS', '{_URL}/rss/news.xml', '', 1, 2, 0, '3', 1),
(4, 'Product RSS', '{_URL}/rss/item.xml', '', 1, 4, 0, '3', 1),
(5, 'Global Tourism Pro', '{_URL}/about', '', 1, 0, 0, '2', 0),
(6, 'Home', '{_URL}/', '', 1, 1, 0, '4', 0),
(7, 'Contact', '{_URL}/contact', '', 1, 8, 0, '4', 0),
(10, 'FAQ', '{_URL}/faq', '', 1, 0, 8, '4', 0),
(24, 'Useful Information', '{_URL}/post/useful-information', '', 1, 0, 0, '1', 0),
(11, 'About', '{_URL}/about', '', 1, 9, 0, '4', 0),
(12, 'News', '{_URL}/news', '', 1, 3, 0, '4', 0),
(13, 'FAQ', '{_URL}/faq', '', 1, 4, 0, '4', 0),
(23, 'Dress Code', '{_URL}/post/dress-code', '', 1, 0, 0, '1', 0),
(16, 'Tours', '#', '', 1, 2, 0, '4', 0),
(17, 'Fast Facts', '{_URL}/post/fast-facts', '', 1, 0, 16, '4', 0),
(18, 'Dress Code', '{_URL}/post/dress-code', '', 1, 0, 16, '4', 0),
(19, 'Useful Information', '{_URL}/post/useful-information', '', 1, 0, 16, '4', 0),
(20, 'Persian Cuisine', '{_URL}/post/persian-cuisine', '', 1, 0, 16, '4', 0),
(21, 'Cultural Tours', '{_URL}/post/cultural-tours', '', 1, 0, 16, '4', 0),
(22, 'Eco Tours', '{_URL}/post/eco-tours', '', 1, 0, 16, '4', 0),
(25, 'Persian Cuisine', '{_URL}/post/persian-cuisine', '', 1, 0, 0, '1', 0),
(26, 'Cultural Tours', '{_URL}/post/cultural-tours', '', 1, 0, 0, '1', 0),
(27, 'Eco Tours', '{_URL}/post/eco-tours', '', 1, 0, 0, '1', 0),
(28, 'Help', '{_URL}/help', '', 1, 0, 0, '2', 0),
(29, 'Learning', '{_URL}/learn', '', 1, 0, 0, '2', 0),
(30, 'Terms', '{_URL}/terms', '', 1, 0, 0, '2', 0),
(31, 'Privacy', '{_URL}/privacy', '', 1, 0, 0, '2', 0),
(32, 'Contact', '{_URL}/contact', '', 1, 0, 0, '2', 0),
(33, 'News', '{_URL}/news', '', 1, 3, 0, '3', 0),
(34, 'What is Daily Tour', '{_URL}/What-is-DailyTour', '', 1, 1, 0, '5', 0),
(35, 'Details about the Transfer service', '{_URL}/Details-about-the-Transfer-service', '', 1, 2, 0, '5', 0),
(36, 'All about the Visa', '{_URL}/All-about-the-Visa', '', 1, 3, 0, '5', 0),
(37, 'Customer Support', '#', '', 1, 5, 0, '4', 0),
(38, 'HOW I LEAVE FEEDBACK?', '{_URL}/post/customer-support/how-i-leave-feedback', '', 1, 0, 37, '4', 0),
(39, 'TRAVEL DOCUMENTS', '{_URL}/post/customer-support/travel-documents', '', 1, 1, 37, '4', 0),
(40, 'CHANGES AND CANCELLATION', '{_URL}/post/customer-support/changes-and-cancellation', '', 1, 2, 37, '4', 0),
(41, 'INSURANCE', '{_URL}/post/customer-support/insurance', '', 1, 3, 37, '4', 0),
(42, 'MONEY & EXCHANGE ADVICE', '{_URL}/post/customer-support/money-exchange-advice', '', 1, 4, 37, '4', 0),
(43, 'HEALTH ADVICE BEFORE YOU TRAVEL', '{_URL}/post/customer-support/health-advice-before-you-travel', '', 1, 5, 37, '4', 0),
(45, 'Gallery', '{_URL}/gallery', '', 1, 7, 0, '4', 0),
(46, 'IRAN VISA', '{_URL}/iran-visa', '', 1, 6, 0, '4', 0),
(52, 'Gallery', '{_URL}/gallery', '', 1, 4, 0, '3', 0),
(48, '', '', '', 0, 3, 0, '', 0),
(51, 'IRAN VISA', '{_URL}/iran-visa', '', 1, 4, 0, '5', 0),
(50, '', '', '', 0, 4, 0, '', 0);

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
(1, 'Tours', 0, 0, 0, 1, 0),
(2, 'About', 0, 0, 0, 1, 0),
(3, 'More', 0, 0, 0, 1, 0),
(4, 'Header', 1, 0, 0, 1, 0),
(5, 'Our Services', 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `litesponsor`
--

CREATE TABLE `litesponsor` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL COMMENT 'عنوان',
  `url` text COLLATE utf8_persian_ci NOT NULL COMMENT 'پیوند',
  `image` text COLLATE utf8_persian_ci NOT NULL COMMENT 'تصویر',
  `flag` int(1) NOT NULL COMMENT 'وضعیت',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='اسپانسر/اسپانسرها';

--
-- Dumping data for table `litesponsor`
--

INSERT INTO `litesponsor` (`id`, `name`, `url`, `image`, `flag`, `hide`) VALUES
(1, 'GrayLine', '', 'data/litesponsor_image/1/0-1483814887-p1_b.gif', 1, 0),
(2, 'Broadway', '', 'data/litesponsor_image/2/0-1483814902-p2_b.gif', 1, 0),
(3, 'Disneyland', '', 'data/litesponsor_image/3/0-1483814917-p3_b.gif', 1, 0),
(4, 'BLACKLANE', '', 'data/litesponsor_image/4/0-1483814933-p4_b.gif', 1, 0),
(5, 'adventures', '', 'data/litesponsor_image/5/0-1483814948-p5_b.gif', 1, 0),
(6, 'LIBERTY', '', 'data/litesponsor_image/6/0-1483814963-p6_b.gif', 1, 0),
(7, 'GRUPO JULIA', '', 'data/litesponsor_image/7/0-1483814981-p7_b.gif', 1, 0),
(8, 'URBAN', '', 'data/litesponsor_image/8/0-1483814994-p8_b.gif', 1, 0),
(9, 'CIty Sigh', '', 'data/litesponsor_image/9/0-1483815022-p10_b.gif', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mg_dailytour`
--

CREATE TABLE `mg_dailytour` (
  `id` int(11) NOT NULL,
  `name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Title',
  `position_id` int(11) NOT NULL COMMENT 'Position',
  `serviceBasis_id` int(11) NOT NULL COMMENT 'Service Basis',
  `departs_id` int(11) NOT NULL COMMENT 'Departs ID',
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Duration',
  `highlights` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Highlights',
  `itinerary` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Itinerary',
  `inclusions` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Inclusions',
  `conditions` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Conditions',
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Notes',
  `date_from` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'From',
  `date_to` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'To',
  `departure_central_flag` int(1) NOT NULL,
  `departure_central_point` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Departure Point',
  `departure_central_time` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Departure Time',
  `deathline` int(11) NOT NULL COMMENT 'Payment deadline',
  `reservation` int(11) NOT NULL COMMENT 'Least Reservation Time',
  `top_flag` int(1) NOT NULL,
  `flag` int(1) NOT NULL COMMENT 'Status',
  `date_created` int(11) NOT NULL,
  `date_updated` int(11) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Daily Tour/Daily Tours';

--
-- Dumping data for table `mg_dailytour`
--

INSERT INTO `mg_dailytour` (`id`, `name`, `position_id`, `serviceBasis_id`, `departs_id`, `duration`, `highlights`, `itinerary`, `inclusions`, `conditions`, `notes`, `date_from`, `date_to`, `departure_central_flag`, `departure_central_point`, `departure_central_time`, `deathline`, `reservation`, `top_flag`, `flag`, `date_created`, `date_updated`, `hide`) VALUES
(1, '1-DAY LONDON HOP ON HOP OFF TOUR Sp/Sm', 29, 38, 40, '1 Day', '', '<p><span class=\"metin\"><strong>Available Guiding Language(s):</strong> <br />&bull; Audio Guide<br />&bull; Chinese, English, French, German, Italian, Japanese, Portuguese, Russian, Spanish <br /><br /><strong>Included Services:</strong><br />&bull; This ticket will be valid 48 hours between 4th October until 29th February 2016!<br />&bull; 1 day valid ticket<br />&bull; Complimentary access for second day during the period of April 1 - June 30<br />&bull; All sightseeing mentioned in the itinerary &nbsp;<br />&bull; Licensed live tour guide on Yellow Route&nbsp; <br /><br /><strong>Excluded Services:</strong><br />&bull; Pick up/drop off service from/to hotel<br />&bull; Tips to the guide and driver (optional)<br />&bull; Meals / beverage</span></p>', '<p><span class=\"metin\">HIGHLIGHTS: LONDON AQUARIUM, LONDON EYE, ST JAMES&rsquo;S PARK, ROYAL BUCKINGHAM PALACE, NATURAL HISTORY MUSEUM</span></p>\\n<hr size=\"1\" />\\n<p><span class=\"metin\">Visit London, the capital city of England - with CitySightseeing:<br />Visit London and see the sights of the bustling capital city and the largest metropolitan area in the United Kingdom from the top deck of an open top red bus with City Sightseeing and The Original Tour. London is packed with plenty of things to do so let us guide you through the city to visit the prime locations and top attractions including historical museums, striking parks, and modern galleries. We invite you to experience all the magical sights and sounds of London in a comfortable and secure environment.<br /><br />City Sightseeing and the Original Tours hop on hop off bus tours are THE essential way to visit this vivacious city, which is bursting with breathtaking sights and attractions. The beauty of the London sightseeing bus tour is that you can use your ticket on three premium routes allowing you to interchange between them to hop off at over 60 points of interest in the city.<br /><br />Let our bus tour guide you through the things to do in London:<br />Our bus tours offer you the chance to hop off the colourful bus at any one of the marked stops and visit numerous attractions all in one day. Why not use the red route and take the children to visit the Sea Life London Aquarium to learn about Europe&rsquo;s largest global marine life collection, interact with the animals and discover over 5,000 species of sea creatures. A short stroll away, you will encounter an extraordinary piece of engineering design and architecture &ndash; The London Eye. For those who enjoy overlooking the a city from a great height The London Eye will take you on a flight above and beyond for exhilarating views as far as Windsor Castle! You will also observe many of the grand sights and things to do where your tour bus will transport you.<br /><br />Why not change routes and use the Yellow line to visit St James&rsquo;s Park, the royal Buckingham Palace or St Paul&rsquo;s Cathedral? You can even pay a visit to many of the charming museums and renowned shops &ndash; just use an interchange point and take the Blue line to stopover at the Natural History Museum, Science Museum or Wellington Museum amongst other remarkable landmarks.<br /><br />London bus tours include amazing free offers The Original Tour is delighted to offer all customers a FREE cruise pass on the River Thames through London. Simply collect your free pass from a member of The Original Tour staff. On arriving at the pier of your choice go directly to the boat and present the pass to City Cruises staff, then hop-on and hop-off the cruise as you please. Passes are collected by the City Cruises staff on the outward journey, so for subsequent journeys you will need to show a valid Original Tour bus ticket. Cruises depart from Westminster Pier (Big Ben) and the Tower (of London) Pier. The hop-on, hop-off passes are valid within the same 24 hours as your bus ticket.<br /><br />You may hop off at any of the mentioned HO-HO points and hop on to another bus, on the same day of the tour, with the same ticket.<br /><br /><strong>Red Route:</strong><br /><u>Stop 1:</u> Victoria - <u>Stop 2:</u> Hyde Park Corner - <u>Stop 3:</u> Marble Arch - <u>Stop 4:</u> George Street - <u>Stop 5:</u>Madame Tussauds - <u>Stop 6:</u> Whitehouse Hotel - <u>Stop 7:</u> Oxford Circus - <u>Stop 8:</u> Piccadilly Circus - <u>Stop 9:</u>Trafalgar Square (Pall Mall) - <u>Stop 10:</u> Trafalgar Square (Whitehall) - <u>Stop 11:</u> Cenotaph - <u>Stop 12:</u>Westminster Bridge - <u>Stop 13:</u> London Eye - <u>Stop 14:</u> Covent Garden - <u>Stop 15:</u> St. Pauls Cathedral - <u>Stop 16:</u> The Monument - <u>Stop 17:</u> City Hall - <u>Stop 18:</u> Tower of London - <u>Stop 19:</u> Shakespeares Globe - <u>Stop 20:</u> Tate Modern - <u>Stop 21:</u> Embankment Pier - <u>Stop 22:</u> Westminster Pier - <u>Stop 23:</u> Lambeth Palace -<u>Stop 24:</u> Lambeth Bridge - <u>Stop 25:</u> Buckingham Palace - <u>Stop 26:</u> Victoria - <u>Stop 27:</u> Green Line Coach Stn.<br /><br /><strong>Yellow Route:</strong><br /><u>Stop 1:</u> Piccadilly Circus - <u>Stop 2:</u> Trafalgar Square - <u>Stop 3:</u> St James Palace - <u>Stop 4:</u> Piccadilly - <u>Stop 5:</u>Hyde Park Corner - <u>Stop 6:</u> Park Lane - <u>Stop 7:</u> Victoria - <u>Stop 8:</u>&nbsp;Big Ben and the House of Parliament -<u>Stop 9:</u>&nbsp;Lambeth Palace - <u>Stop 10:</u>&nbsp;Westminster Bridge - <u>Stop 11:</u>&nbsp;Parliament Street - <u>Stop 12:</u>&nbsp;Horse Guards Parade - <u>Stop 13:</u>&nbsp;Charing Cross - <u>Stop 14:</u>&nbsp;Stanley Gibbons - <u>Stop 15:</u>&nbsp;Covent Garden - <u>Stop 16:</u>&nbsp;St. Pauls Cathedral - <u>Stop 17:</u>&nbsp;Queen Victoria Street - <u>Stop 18:</u>&nbsp;The Monument - <u>Stop 19:</u>&nbsp;City Hall -<u>Stop 20:</u>&nbsp;Tower of London - <u>Stop 21:</u>&nbsp;Shakespeares Globe - <u>Stop 22:</u>&nbsp;Tate Modern - <u>Stop 23:</u>&nbsp;Embankment Pier - <u>Stop 24:</u>&nbsp;Trafalgar Square - <u>Stop 25:</u>&nbsp;St james<br /><br /><strong>Blue Route:</strong><br /><u>Stop 1:</u>&nbsp;Kensington Palace - <u>Stop 2:</u>&nbsp;Baden-Powell House - <u>Stop 3:</u>&nbsp;Natural History Museum - <u>Stop 4:</u>&nbsp;Science Museum - <u>Stop 5:</u>&nbsp;Victoria and Albert Museum - <u>Stop 6:</u>&nbsp;Brompton Oratory - <u>Stop 7:</u>&nbsp;Harrods, Knightsbridge - <u>Stop 8:</u>&nbsp;Harvey Nichols - <u>Stop 9:</u>&nbsp;Hyde Park - <u>Stop 10:</u>&nbsp;Ritz Hotel - <u>Stop 11:</u>&nbsp;Piccadilly Circus - <u>Stop 12:</u>&nbsp;Russel Square - <u>Stop 13:</u>&nbsp;British Museum - <u>Stop 14:</u>&nbsp;Wellington Museum - <u>Stop 15:</u>&nbsp;Royal Albert Hall - <u>Stop 16:</u>&nbsp;Albert Memorial - <u>Stop 17:</u>&nbsp;Kensington High Street</span></p>', '<p><span class=\"metin\">&bull; In the rare event of lack of availability due to special events, an alternative day or service may be advised.<br />&bull; No refund will be given in the event of late arrivals to the tour departure point or in the event of No-Show.<br />&bull; Amendments are upon availability and may require supplement fee.</span></p>', '<p><span class=\"metin\"><strong>Departure Times:</strong><br />Red Route: 8:30 am ~ 5:20 pm&nbsp;<br />Yellow Route: 8:30 am ~ 8:00 pm<br />Blue Route: 8:45 am ~ 5:10 pm<br /><br /><strong>Departure Points:</strong><br />Red Route Stop 1 - Victoria&nbsp;<br />Yellow Route Stop 1 - Piccadilly Circus&nbsp;&nbsp;<br />Blue Route Stop 1 - Russell Square<br /><br /><strong>Frequency:</strong><br />Every 10 - 30 mins<br /><br /><strong>Duration:</strong><br />135 mins (Red and Yellow route)&nbsp;<br /><br /><strong>Season:</strong><br />All year round (excluding 25th December)</span></p>', '2017/01/01', '2017/06/10', 1, '17 Gloddaeth Street, BINHAM, NR21 6RS', '11:55', 0, 3, 0, 1, 0, 0, 0),
(3, '24 HOUR RIVER CRUISE IN LONDON TICKET', 29, 38, 40, '1 Day', '', '<p><span class=\"metin\"><strong>Available Guiding Language(s):</strong> <br />&bull; Unescorted <br /><br /><strong>Included Services:</strong><br />&bull;&nbsp;1 day valid Cruise ticket<br />&bull; All sightseeing mentioned in the itinerary <br /><br /><strong>Excluded Services:</strong><br />&bull; Pick up / drop off service from/to hotel<br />&bull; Tips to the guide and driver (optional)<br />&bull; Meals / beverage<br />&bull; Personal expenses</span></p>', '<p><span class=\"metin\">HIGHLIGHTS: BIG BEN, THE LONDON EYE, TOWER BRIDGE</span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>What`s Unique:</strong><br />&bull; The best way to explore London!<br />&bull; See&nbsp;Big Ben, The London Eye, Tower Bridge and more!<br /><br /><strong>Description &amp; Program:</strong><br />The River Red Rover is all-day hop on, hop off Thames river pass offering unlimited access to the river for 24 hours. You can hop on and hop off at any one of four piers, with open passage on any cruises sightseeing boats for a full day spent exploring the sights of the Thames.&nbsp;<br />With comfortable seats, hot and cold refreshments, guided commentary, friendly staff and (most importantly) uncompromised views from all-weather sightseeing boats, this is the best way to see the heart of London. &nbsp;</span></p>', '<p><span class=\"metin\">&bull; In the rare event of lack of availability due to special events an alternative day or service may be advised.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show.<br />&bull;&nbsp;Actual&nbsp;times may vary depending upon the state of the tide and other river traffic. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>Cancellation Policy:</strong> Once booked, this product cannot be cancelled. </span></p>', '<p><span class=\"metin\"><strong>Operating Hours:</strong><br />10:00 am - 7:00 pm&nbsp;<br /><br />Greenwich Pier&nbsp;10:40 am - 6:40 pm<br /><br /><strong>Departure Point:</strong><br />Westminster Pier, or London Eye Pier or Tower and Greenwich Pier<br /><br /><strong>Frequency:</strong><br />30 &nbsp;Minutes<br /><br /><strong>Additional Info:</strong><br />&bull; Clients must be ready at the departure point 15 minutes before the exact departure time.</span></p>', '2017/01/01', '2017/12/10', 0, '', '', 0, 0, 0, 1, 0, 0, 0),
(7, '72 HOURS RIVER RED ROVER CRUISE TOUR TICKET', 29, 38, 40, '3 Days', '', '<p><span class=\"metin\"><strong>Available Guiding Language(s):</strong> <br />&bull; Unescorted <br /><br /><strong>Included Services:</strong><br />&bull;&nbsp;3 day valid Cruise ticket<br />&bull; All sightseeing mentioned in the itinerary <br /><br /><strong>Excluded Services:</strong><br />&bull; Pick up / drop off service from/to hotel<br />&bull; Tips to the guide and driver (optional)<br />&bull; Meals / beverage<br />&bull; Personal expenses</span></p>', '<p><span class=\"metin\">HIGHLIGHTS: BIG BEN, THE LONDON EYE, TOWER BRIDGE</span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>What`s Unique:</strong><br />&bull; The best way to explore London!<br />&bull; See&nbsp;Big Ben, The London Eye, Tower Bridge and more!<br /><br /><strong>Description &amp; Program:</strong><br />The River Red Rover is all-day hop on, hop off Thames river pass offering unlimited access to the river for 72 hours. You can hop on and hop off at any one of four piers, with open passage on any cruises sightseeing boats for a full day spent exploring the sights of the Thames.&nbsp;<br />With comfortable seats, hot and cold refreshments, guided commentary, friendly staff and (most importantly) uncompromised views from all-weather sightseeing boats, this is the best way to see the heart of London.</span></p>', '<p><span class=\"metin\">&bull; In the rare event of lack of availability due to special events an alternative day or service may be advised.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show.<br />&bull;&nbsp;Actual&nbsp;times may vary depending upon the state of the tide and other river traffic.&nbsp; </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>Cancellation Policy:</strong> Once booked, this product cannot be cancelled. </span></p>', '<p><span class=\"metin\"><strong>Operating Hours:</strong><br />10:00 am - 7:00 pm<br /><br />Greenwich Pier: 10:40 am - 6:40 pm<br /><br /><strong>Departure Point:</strong><br />Westminster Pier, or London Eye Pier or Tower and Greenwich Pier<br /><br /><strong>Frequency:</strong><br />30 &nbsp;Minutes<br /><br /><strong>Additional Info:</strong><br />&bull; Clients must be ready at the departure point 30 minutes before the exact departure time.</span></p>', '2017/01/01', '2017/12/10', 0, '', '', 0, 0, 0, 1, 0, 0, 0),
(8, 'DAY TRIP TO EDINBURGH WITH EDINBURGH CASTLE AND BUS TOUR', 29, 38, 48, '15:00 Hours', '', '<p><span class=\"metin\"><strong>Available Guiding Language(s):</strong> <br />&bull; Unescorted <br /><br /><strong>Included Services:</strong><br />&bull;&nbsp;Reserved train seats<br />&bull;&nbsp;Open Top Bus Tour<br />&bull;&nbsp;Admissions to Edinburgh Castle <br /><br /><strong>Excluded Services:</strong><br />&bull;&nbsp;Guiding services<br />​&bull; Visa for Ireland (if necessary)<br />&bull; Pick up/drop off service from/to hotel&nbsp;(available upon request)<br />&bull; Gratuities (optional)<br />&bull; Meals / beverage&nbsp;&nbsp;</span></p>', '<p><span class=\"metin\">HIGHLIGHTS: LONDON TO EDINBURGH, EDINBURGH CASTLE, OPEN TOP BUS TOUR, TRAIN</span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>What`s Unique:</strong><br />&bull;&nbsp;Return Train Tickets to Edinburgh with Reserved Seats<br />&bull;&nbsp;Entry to Edinburgh Castle<br />&bull;&nbsp;Open Top Bus Tour<br />&bull;&nbsp;Designated Time for Shopping<br />&nbsp;<br /><br /><strong>Description &amp; Program:</strong><br /><strong>Departure from King&rsquo;s Cross Station</strong><br />Our Golden Tours representative will meet and greet you at the ticket office in King&rsquo;s Cross Station at 6.30 am. You&rsquo;ll be given a welcome pack full of exciting details about your day in Scotland, before being escorted to your train with reserved seats. The journey will swoop along Britain&rsquo;s scenic east coast, before arriving in Edinburgh at 11.32 am! You&rsquo;ll also get a handy Edinburgh map to make navigating the city a little easier.<br /><br /><strong>Open Top Bus Tour in Edinburgh</strong><br />See the Scottish capital from a hop on hop off open top bus tour and take in all the major sights! From the Queen&rsquo;s official residence when she visits Scotland, Palace of Holyroodhouse, to towering Edinburgh Castle that dominates the Edinburgh skyline, you&rsquo;ll soon get acquainted with the charming city during this tour. You&rsquo;ll cruise down Royal Mile, one of the busiest streets in Edinburgh&rsquo;s historic old town, and past the famed Greyfriars Bobby monument.<br /><br /><strong>Edinburgh Castle</strong><br />You&rsquo;ll enjoy a free admission to Edinburgh Castle &ndash; this much-loved fortress has been involved in many historical conflicts since the 12th century and stands guard over the city from atop the Castle Rock. See the dazzling Scottish Crown Jewels and pose for photos with unbeatable panoramic views of the city skyline in the background.<br /><br /><strong>Return Journey</strong><br />Bid goodbye to Scotland as your train departs Edinburgh at 5.30 pm, arriving back in London at 10.18 pm.</span></p>', '<p><span class=\"metin\">&bull;&nbsp;This tour operates with minimum number booking on provider`s side and if doesn`t operate an alternative day or service may be advised.<br />&bull; In the rare event of lack of availability due to special events an alternative day or service may be advised.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show.<br />&bull; Once booked, this tour cannot be cancelled. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>Cancellation Policy:</strong> Once booked, this product cannot be cancelled. </span></p>', '<p><span class=\"metin\"><strong>Departure Schedule: London - Edinburgh</strong><br /><u>Check-in time</u>: 6:30 am<br /><u>Departure from Kings Cross Station</u>: 7:01 am<br /><u>Arrival at Edinburgh Waverly Station</u>: 11:33 am<br /><br /><strong>Departure Schedule: Edinburgh - London</strong><br /><u>Check-in time</u>: 5:00 pm<br /><u>Departure from Edinburgh Waverly Station</u>: 5:30 pm<br /><u>Arrival at Kings Cross Station</u>: 10:18 pm<br /><br /><strong>Duration:</strong><br />15 Hours (approx.)<br /><br /><strong>Schedule:</strong><br />All Year: Monday to Thursday<br /><br /><strong>Ending Point:</strong><br />Returns to the original departure point<br /><br /><strong>Additional Info:</strong><br />&bull; Clients must be ready at the departure point 15 minutes before the exact departure time.</span></p>', '2017/01/05', '2017/12/10', 1, 'Some DEparture Point Ede', '12:00', 2, 0, 0, 1, 1482872580, 1492167920, 0),
(9, 'DAY TRIP TO LIVERPOOL BY VIRGIN TRAINS INCLUDING TICKET FOR STANDARD SEAT AND VISIT TO THE BEATLES STORY MUSEUM', 29, 38, 48, '14:00 Hours', 'Bruges, Venice of the north, Grand palace square, Market hall', '<p><span class=\"metin\"><strong>Available Guiding Language(s):</strong> <br />&bull; Unescorted <br /><br /><strong>Included Services:</strong><br />&bull;&nbsp;Reserved seats on Virgin Trains<br />&bull;&nbsp;Beatles Magical Mystery Tour<br />&bull;&nbsp;Admissions to Beatles Story <br /><br /><strong>Excluded Services:</strong><br />&bull; Guiding services<br />&bull; Pick up/drop off service from/to hotel&nbsp;(available upon request)<br />&bull; Gratuities (optional)<br />&bull; Meals / beverage&nbsp;&nbsp;&nbsp;</span></p>', '<p><span class=\"metin\">HIGHLIGHTS: LONDON TO LIVERPOOL, BEATLES STORY, MAGICAL MYSTERY BUS TOUR, TRAIN</span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>What`s Unique:</strong><br />&bull; Reserved Seats on Virgin Trains<br />&bull; Beatles Magical Mystery Tour<br />&bull; Entry to the Beatles Story<br />&bull; Designated Time for Shopping and Sightseeing<br />&nbsp;<br /><strong>Description &amp; Program:</strong><br /><strong>Departure from Euston Station</strong><br />Make your way to Euston Station and meet your Golden Tours representative at 6.30am by the ticket office. Your train departs at 7.07am and arrives at Liverpool Lime Street Station at 9.47am &ndash; the representative will take you to your comfortable reserved seats, so all you have to do is relax and listen to your favourite Beatles songs!<br /><br /><strong>Liverpool</strong><br />Once disembarking in Liverpool, we highly recommend heading to Matthew Street and visiting the Beatles Shop and Matthew Street Gallery. Stuffed full of Beatles memorabilia, the Beatles Shop is the place to pick up a whole host of souvenirs relating to the Fab Four. The Cavern Pub (opposite the Cavern Club) is a great place to have a drink from 11am &ndash; it displays a number of unique and authentic Beatles items.<br /><br /><strong>Beatles Story&nbsp;</strong><br />After leaving Matthew Street, make your way to Albert Dock and to the Beatles Story exhibition. See how four young men from this city achieved worldwide fame and charmed the public with their catchy hits. The exhibition reveals the lives of John, Paul, George and Ringo from their early days through to their solo careers.<br /><br /><strong>Beatles Magical Mystery Bus Tour</strong><br />Your Liverpool afternoon is spent onboard a Beatles Magical Mystery tour, which will be conveniently booked for you. Departing from the Beatles Story Exhibition and finishing two hours later at the Cavern Club, the tour is given on a vintage 1960&rsquo;s coach, identical to the vehicle used in the 1967 film Magical Mystery Tour! (Vehicle subject to change.)<br /><br />The bus will visit over 30 classic sites, including the Fab Four&rsquo;s former homes, schools and birthplaces. You&rsquo;ll see iconic Penny Lane and Strawberry Fields, names of Liverpool locations that inspired classic Beatles tunes!<br /><br /><strong>Return Journey</strong><br />As your Beatles-filled day comes to an end, head back to Liverpool Lime Street station, where your train will depart at 6.48pm, arriving back in London at 9.06pm.</span></p>', '<p><span class=\"metin\">&bull;&nbsp;This tour operates with minimum number booking on provider`s side and if doesn`t operate an alternative day or service may be advised.<br />&bull; In the rare event of lack of availability due to special events an alternative day or service may be advised.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show.<br />&bull; Once booked, this tour cannot be cancelled.&nbsp; </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>Cancellation Policy:</strong> Once booked, this product cannot be cancelled. </span></p>', '<p><span class=\"metin\"><u><strong>Departure Schedule: London - Liverpool</strong></u><br /><strong>Check-in time</strong>: 6:30 am<br /><strong>Departure from Euston Station</strong>: 7:07 am<br /><strong>Arrival at Liverpool Station</strong>: 9:23 am<br /><br /><u><strong>Departure Schedule: Liverpool - London</strong></u><br /><strong>Check-in time</strong>: 6:15 pm<br /><strong>Departure from Liverpool Station</strong>: 6:47 pm<br /><strong>Arrival at Euston Station</strong>: 9:04 pm<br /><br /><strong>Duration:</strong><br />15 Hours (approx.)<br /><br /><strong>Schedule:</strong><br />Monday to Saturday<br /><br /><strong>Ending Point:</strong><br />Returns to the original departure point<br /><br /><strong>Additional Info:</strong><br />&bull; Clients must be ready at the departure point 15 minutes before the exact departure time.</span></p>', '2017/01/12', '2017/12/31', 1, 'Paris, N9842', '08:00', 2, 0, 0, 1, 1482872832, 1494252034, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mg_dailytour_image`
--

CREATE TABLE `mg_dailytour_image` (
  `id` int(11) NOT NULL,
  `mg_dailytour_id` int(11) NOT NULL COMMENT 'Daily Tour ID',
  `image` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Image',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mg_dailytour_image`
--

INSERT INTO `mg_dailytour_image` (`id`, `mg_dailytour_id`, `image`, `hide`) VALUES
(1, 1, 'data/mg_dailytour_image/1/0-1482855989-20150403182011.jpg', 0),
(2, 1, 'data/mg_dailytour_image/1/1-1482855989-20150403322011.jpg', 0),
(3, 3, 'data/mg_dailytour_image/3/0-1482871831-20160514563510.jpg', 0),
(4, 7, 'data/mg_dailytour_image/7/0-1482872318-20160513010110.jpg', 0),
(5, 8, 'data/mg_dailytour_image/8/0-1482872580-2583429218.jpg', 0),
(6, 8, 'data/mg_dailytour_image/8/1-1482872580-4481012225.jpg', 0),
(7, 8, 'data/mg_dailytour_image/8/2-1482872580-4633752704.jpg', 0),
(8, 8, 'data/mg_dailytour_image/8/3-1482872580-8372003436.jpg', 0),
(9, 8, 'data/mg_dailytour_image/8/4-1482872580-9607202410.jpg', 0),
(10, 9, 'data/mg_dailytour_image/9/0-1482872832-9306146502.jpg', 0),
(11, 9, 'data/mg_dailytour_image/9/1-1482872832-8833886981.jpg', 0),
(12, 9, 'data/mg_dailytour_image/9/2-1482872832-8039209246.jpg', 0),
(13, 9, 'data/mg_dailytour_image/9/3-1482872832-6367761493.jpg', 0),
(14, 9, 'data/mg_dailytour_image/9/4-1482872832-951501728.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mg_dailytour_language`
--

CREATE TABLE `mg_dailytour_language` (
  `id` int(11) NOT NULL,
  `mg_dailytour_id` int(11) NOT NULL,
  `language` int(11) NOT NULL COMMENT 'Guiding Language'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mg_dailytour_language`
--

INSERT INTO `mg_dailytour_language` (`id`, `mg_dailytour_id`, `language`) VALUES
(1, 9, 45),
(2, 3, 44),
(5, 8, 44),
(6, 8, 47);

-- --------------------------------------------------------

--
-- Table structure for table `mg_dailytour_order`
--

CREATE TABLE `mg_dailytour_order` (
  `id` int(11) NOT NULL,
  `dailytour_id` int(11) NOT NULL COMMENT 'Daily Tour',
  `user_id` int(11) NOT NULL COMMENT 'User',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Code',
  `date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Service Date',
  `leader_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tour Leader''s Name',
  `departure_time` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_point` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Departure Point of the Service',
  `guiding_language` int(11) NOT NULL COMMENT 'Guiding Language',
  `additional_requests` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Additional Requests',
  `passenger_cell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Passenger''s Cell Number',
  `state_finz` int(1) NOT NULL,
  `state_penalty` int(1) NOT NULL,
  `state_cancel` int(1) NOT NULL,
  `state` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Book State',
  `date_created` int(11) NOT NULL COMMENT 'Book Date',
  `hide` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Daily Tour Order/Daily Tour Orders';

--
-- Dumping data for table `mg_dailytour_order`
--

INSERT INTO `mg_dailytour_order` (`id`, `dailytour_id`, `user_id`, `code`, `date`, `leader_name`, `departure_time`, `departure_point`, `guiding_language`, `additional_requests`, `passenger_cell`, `state_finz`, `state_penalty`, `state_cancel`, `state`, `date_created`, `hide`) VALUES
(29, 8, 2, 'D17041426667', '2017/02/27', 'George McDonnald', '', '', 44, '', '+908283748272', 0, 0, 0, 'WAITING', 1486552453, 0),
(44, 8, 2, 'D17041426432', '2017/04/18', 'John Due', '', '', 44, 'Some Cigarette', '+493344210982', 0, 0, 0, 'WAITING', 1491245634, 0),
(48, 9, 2, 'D17041434852', '2017/04/26', 'Loreena McKennitt', '', '', 45, '', '+90221184821', 1, 0, 0, 'FINZ', 1492172155, 0),
(49, 9, 2, 'D17041419477', '2017/04/26', 'loreena mckennitt', '', '', 45, 'A glass of tea.', '+90221184821', 0, 0, 0, 'CONFIRM', 1492172387, 0),
(50, 3, 2, 'D17043020260', '2017/05/15', 'John McDonnald', '', '', 44, '', '+80332918382', 0, 0, 0, 'WAITING', 1493558780, 0),
(53, 9, 2, 'D17050742325', '2017/05/31', 'John Due', '', '', 45, 'A glass of tea.', '+4488272737819', 0, 0, 0, 'WAITING', 1494144091, 0),
(54, 9, 2, 'D17050911588', '2017/05/24', 'Vladimir Putin', '', '', 45, 'Some food.', '+2039843283989', 0, 0, 0, 'WAITING', 1494333748, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mg_dailytour_order_item`
--

CREATE TABLE `mg_dailytour_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL COMMENT 'Order ID',
  `priceper_id` int(11) NOT NULL,
  `count` int(11) NOT NULL COMMENT 'Count',
  `unitcost` float NOT NULL COMMENT 'Unit Cost',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mg_dailytour_order_item`
--

INSERT INTO `mg_dailytour_order_item` (`id`, `order_id`, `priceper_id`, `count`, `unitcost`, `hide`) VALUES
(12, 29, 33, 1, 234, 0),
(28, 44, 35, 1, 221, 0),
(29, 44, 34, 3, 221, 0),
(30, 44, 33, 2, 234, 0),
(46, 50, 33, 2, 23.35, 0),
(40, 48, 34, 1, 179.2, 0),
(41, 48, 35, 3, 179.2, 0),
(42, 48, 33, 2, 192.75, 0),
(43, 49, 34, 1, 179.2, 0),
(44, 49, 35, 3, 179.2, 0),
(45, 49, 33, 2, 192.75, 0),
(53, 53, 33, 1, 142.5, 0),
(54, 53, 35, 2, 171, 0),
(55, 53, 34, 3, 84.55, 0),
(56, 54, 33, 2, 142.5, 0),
(57, 54, 35, 3, 161.5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mg_price`
--

CREATE TABLE `mg_price` (
  `id` int(11) NOT NULL,
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` int(11) NOT NULL,
  `priceper_id` int(11) NOT NULL,
  `more_than` int(11) NOT NULL,
  `price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mg_price`
--

INSERT INTO `mg_price` (`id`, `table_name`, `table_id`, `priceper_id`, `more_than`, `price`, `hide`) VALUES
(9, 'mg_dailytour', 1, 34, 0, '21.28', 0),
(8, 'mg_dailytour', 1, 33, 0, '42.56', 0),
(7, 'mg_dailytour', 1, 35, 0, '21.28', 0),
(10, 'mg_dailytour', 3, 33, 0, '23.35', 0),
(11, 'mg_dailytour', 3, 35, 0, '14.01', 0),
(12, 'mg_dailytour', 3, 34, 0, '14.01', 0),
(13, 'mg_dailytour', 7, 33, 0, '29.19', 0),
(14, 'mg_dailytour', 7, 35, 0, '14.01', 0),
(15, 'mg_dailytour', 7, 34, 0, '14.01', 0),
(16, 'mg_dailytour', 8, 33, 0, '234.3', 0),
(17, 'mg_dailytour', 8, 35, 0, '220.63', 0),
(18, 'mg_dailytour', 8, 34, 0, '220.64', 0),
(53, 'mg_transfer', 5, 78, 0, '200.00', 0),
(54, 'mg_transfer', 1, 77, 0, '162.00', 0),
(55, 'mg_transfer', 5, 77, 0, '420.00', 0),
(52, 'mg_transfer', 1, 78, 0, '192.00', 0),
(50, 'mg_transfer', 2, 78, 0, '310.00', 0),
(51, 'mg_transfer', 3, 78, 0, '472.00', 0),
(46, 'mg_dailytour', 9, 35, 2, '170.00', 0),
(39, 'mg_dailytour', 9, 35, 0, '199.00', 0),
(48, 'mg_transfer', 4, 78, 0, '210.00', 0),
(42, 'mg_dailytour', 9, 33, 0, '150.00', 0),
(44, 'mg_dailytour', 9, 34, 0, '89.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mg_transfer`
--

CREATE TABLE `mg_transfer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `position_id` int(11) NOT NULL COMMENT 'Position',
  `transferBasis_id` int(11) NOT NULL COMMENT 'Basis',
  `tariff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tariff',
  `itinerary` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Itinerary',
  `conditions` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Conditions',
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Notes',
  `vehicle_n_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `drivernumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Driver Number',
  `date_from` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'From',
  `date_to` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'To',
  `deathline` int(11) NOT NULL COMMENT 'Cancellation Deathline',
  `reservation` int(11) NOT NULL COMMENT 'Least Reservation Time',
  `flag` int(1) NOT NULL COMMENT 'Status',
  `date_created` int(11) NOT NULL,
  `date_updated` int(11) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Transfer/Transfers';

--
-- Dumping data for table `mg_transfer`
--

INSERT INTO `mg_transfer` (`id`, `name`, `position_id`, `transferBasis_id`, `tariff`, `itinerary`, `conditions`, `notes`, `vehicle_n_price`, `drivernumber`, `date_from`, `date_to`, `deathline`, `reservation`, `flag`, `date_created`, `date_updated`, `hide`) VALUES
(1, 'GATWICK AIRPORT (LGW)', 29, 49, '24 Hours  00:00 - 23:59', '<p><span class=\"metin\"><strong>Private Transfer:</strong><br />Private Transfer will be for your own personal use and will not be shared with other travelers. We recommend this transfer if you are looking to arrive and depart hassle free.<br /><br /><strong>Arrival Instructions:</strong><br />Please proceed to the Arrivals Hall after the baggage &amp; customs where our driver will be holding a clipboard with your name written on it. Please identify yourself by showing your confirmation voucher and in turn they will transfer you immediately.<br /><br /><strong>Departure Instructions:</strong><br />Wait at the lobby of your accommodation where our transfer assistance will meet you. Please present your service voucher and in turn they will transfer you immediately.</span></p>', '<p><span class=\"metin\">&bull; Please make sure that you entered travel information correctly at time of booking. Supplements might occur due to mis-information on arrival/departure details.<br />&bull; For this <strong>Private Transfer </strong>we advise you to call the Local Tour Operator from the numbers on the voucher&nbsp;<u>if you could not meet with the transfer assistance at remote airports or busy hours</u>&nbsp;maximum 20 minutes after your exact pick up time before leaving the Airport/Port/Residence. Otherwise your transfer may be counted as No Show of yours and refund may not apply.<br />&bull; Transfers to/from outside of city center is upon availability and may require supplement fee.<br />&bull; Delayed flight arrivals are monitored no extra charge for flight delays.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Cancellation Policy: This service can be cancelled without any penalties&nbsp;<strong>4</strong>&nbsp;day(s) prior to first service date.</span></p>', '<p><span class=\"metin\"><strong>Maximum Waiting Time At Arrival Point:</strong><br />1 Hour<br />In the event of a problem with your luggage please notify local provider of the delay. There is no obligation to wait extra time. In case they can wait extra parking fee may be resulted due to delays must be paid on site.<br />&nbsp;<br /><strong>Maximum Waiting Time At Departure Point:</strong><br />20 Minutes<br />&nbsp; &nbsp;<br /><strong>Luggage Information:</strong><br />1 suitcase per person is allowed. On private transfers if the number of luggage are more than this or there are pushchairs/wheelchairs etc.; a big enough vehicle must be booked for comfort and safety. Oversized luggage (e.g. surfboards golf clubs or bikes) may have extra fee.&nbsp;Provider cannot be held responsible for damaged baggage personal belongings or any items left in the vehicle.<br /><br /><strong>Children/Infants:</strong><br />Please make sure infants and children are included in the total number of passengers e.g. if three adults one child and an infant are travelling a private transfer vehicle for at least five people needed to be booked. On shuttles infants under the age of 2 are free if they sit on a responsible adult`s knee but they must still be included in the booking. &nbsp;</span></p>', '1', '', '2017/01/01', '2017/12/01', 0, 0, 1, 1482878727, 1482878727, 0),
(2, 'HEATHROW AIRPORT (LHR)', 29, 49, '24 Hours  00:00 - 23:59', '<p><span class=\"metin\"><strong>Private Transfer:</strong><br />Private Transfer will be for your own personal use and will not be shared with other travelers. We recommend this transfer if you are looking to arrive and depart hassle free.<br /><br /><strong>Arrival Instructions:</strong><br />Please proceed to the Arrivals Hall after the baggage &amp; customs where our driver will be holding a clipboard with your name written on it. Please identify yourself by showing your confirmation voucher and in turn they will transfer you immediately.<br /><br /><strong>Departure Instructions:</strong><br />Wait at the lobby of your accommodation where our transfer assistance will meet you. Please present your service voucher and in turn they will transfer you immediately.</span></p>', '<p><span class=\"metin\">&bull; Please make sure that you entered travel information correctly at time of booking. Supplements might occur due to mis-information on arrival/departure details.<br />&bull; For this <strong>Private Transfer </strong>we advise you to call the Local Tour Operator from the numbers on the voucher&nbsp;<u>if you could not meet with the transfer assistance at remote airports or busy hours</u>&nbsp;maximum 20 minutes after your exact pick up time before leaving the Airport/Port/Residence. Otherwise your transfer may be counted as No Show of yours and refund may not apply.<br />&bull; Transfers to/from outside of city center is upon availability and may require supplement fee.<br />&bull; Delayed flight arrivals are monitored no extra charge for flight delays.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Cancellation Policy: This service can be cancelled without any penalties&nbsp;<strong>4</strong>&nbsp;day(s) prior to first service date. </span></p>', '<p><span class=\"metin\"><strong>Maximum Waiting Time At Arrival Point:</strong><br />1 Hour<br />In the event of a problem with your luggage please notify local provider of the delay. There is no obligation to wait extra time. In case they can wait extra parking fee may be resulted due to delays must be paid on site.<br />&nbsp;<br /><strong>Maximum Waiting Time At Departure Point:</strong><br />20 Minutes<br />&nbsp; &nbsp;<br /><strong>Luggage Information:</strong><br />1 suitcase and 1 carry-on bag per person is allowed. On private transfers if the number of luggage are more than this or there are pushchairs/wheelchairs etc.; a big enough vehicle must be booked for comfort and safety. Oversized luggage (e.g. surfboards golf clubs or bikes) may have extra fee.&nbsp;Provider cannot be held responsible for damaged baggage personal belongings or any items left in the vehicle.<br /><br /><strong>Children/Infants:</strong><br />Please make sure infants and children are included in the total number of passengers e.g. if three adults one child and an infant are travelling a private transfer vehicle for at least five people needed to be booked. On shuttles infants under the age of 2 are free if they sit on a responsible adult`s knee but they must still be included in the booking.</span></p>', '2', '', '2017/01/01', '2017/12/01', 0, 0, 1, 1482878907, 1482878907, 0),
(3, 'HEATHROW AIRPORT (LHR)', 29, 49, '24 Hours  00:00 - 23:59', '<p><span class=\"metin\"><strong>Private Transfer:</strong><br />Private Transfer will be for your own personal use and will not be shared with other travelers. We recommend this transfer if you are looking to arrive and depart hassle free.<br /><br /><strong>Arrival Instructions:</strong><br />Please proceed to the Arrivals Hall after the baggage &amp; customs where our driver will be holding a clipboard with your name written on it. Please identify yourself by showing your confirmation voucher and in turn they will transfer you immediately.<br /><br /><strong>Departure Instructions:</strong><br />Wait at the lobby of your accommodation where our transfer assistance will meet you. Please present your service voucher and in turn they will transfer you immediately.</span></p>', '<p><span class=\"metin\">&bull; Please make sure that you entered travel information correctly at time of booking. Supplements might occur due to mis-information on arrival/departure details.<br />&bull; For this <strong>Private Transfer </strong>we advise you to call the Local Tour Operator from the numbers on the voucher&nbsp;<u>if you could not meet with the transfer assistance at remote airports or busy hours</u>&nbsp;maximum 20 minutes after your exact pick up time before leaving the Airport/Port/Residence. Otherwise your transfer may be counted as No Show of yours and refund may not apply.<br />&bull; Transfers to/from outside of city center is upon availability and may require supplement fee.<br />&bull; Delayed flight arrivals are monitored no extra charge for flight delays.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Cancellation Policy: This service can be cancelled without any penalties&nbsp;<strong>4</strong>&nbsp;day(s) prior to first service date.</span></p>', '<p><span class=\"metin\"><strong>Maximum Waiting Time At Arrival Point:</strong><br />1 Hour<br />In the event of a problem with your luggage please notify local provider of the delay. There is no obligation to wait extra time. In case they can wait extra parking fee may be resulted due to delays must be paid on site.<br />&nbsp;<br /><strong>Maximum Waiting Time At Departure Point:</strong><br />20 Minutes<br />&nbsp; &nbsp;<br /><strong>Luggage Information:</strong><br />1 suitcase and 1 carry-on bag per person is allowed. On private transfers if the number of luggage are more than this or there are pushchairs/wheelchairs etc.; a big enough vehicle must be booked for comfort and safety. Oversized luggage (e.g. surfboards golf clubs or bikes) may have extra fee.&nbsp;Provider cannot be held responsible for damaged baggage personal belongings or any items left in the vehicle.<br /><br /><strong>Children/Infants:</strong><br />Please make sure infants and children are included in the total number of passengers e.g. if three adults one child and an infant are travelling a private transfer vehicle for at least five people needed to be booked. On shuttles infants under the age of 2 are free if they sit on a responsible adult`s knee but they must still be included in the booking.</span></p>', '1', '', '2017/01/01', '2017/12/01', 0, 0, 1, 1482879001, 1482879001, 0),
(4, 'HEATHROW AIRPORT (LHR)    CARDIFF', 29, 49, '24 Hours  00:00 - 23:59', '<p><span class=\"metin\"><strong>Private Transfer:</strong><br />Private Transfer will be for your own personal use and will not be shared with other travelers. We recommend this transfer if you are looking to arrive and depart hassle free.<br /><br /><strong>Arrival Instructions:</strong><br />Please proceed to the Arrivals Hall after the baggage &amp; customs where our driver will be holding a clipboard with your name written on it. Please identify yourself by showing your confirmation voucher and in turn they will transfer you immediately.<br /><br /><strong>Departure Instructions:</strong><br />Wait at the lobby of your accommodation where our transfer assistance will meet you. Please present your service voucher and in turn they will transfer you immediately.</span></p>', '<p><span class=\"metin\">&bull; Please make sure that you entered travel information correctly at time of booking. Supplements might occur due to mis-information on arrival/departure details.<br />&bull; For this <strong>Private Transfer </strong>we advise you to call the Local Tour Operator from the numbers on the voucher&nbsp;<u>if you could not meet with the transfer assistance at remote airports or busy hours</u>&nbsp;maximum 20 minutes after your exact pick up time before leaving the Airport/Port/Residence. Otherwise your transfer may be counted as No Show of yours and refund may not apply.<br />&bull; Transfers to/from outside of city center is upon availability and may require supplement fee.<br />&bull; Delayed flight arrivals are monitored no extra charge for flight delays.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Cancellation Policy: This service can be cancelled without any penalties&nbsp;<strong>4</strong>&nbsp;day(s) prior to first service date.</span></p>', '<p><span class=\"metin\"><strong>Maximum Waiting Time At Arrival Point:</strong><br />1 Hour<br />In the event of a problem with your luggage please notify local provider of the delay. There is no obligation to wait extra time. In case they can wait extra parking fee may be resulted due to delays must be paid on site.<br />&nbsp;<br /><strong>Maximum Waiting Time At Departure Point:</strong><br />20 Minutes<br />&nbsp; &nbsp;<br /><strong>Luggage Information:</strong><br />1 suitcase and 1 carry-on bag per person is allowed. On private transfers if the number of luggage are more than this or there are pushchairs/wheelchairs etc.; a big enough vehicle must be booked for comfort and safety. Oversized luggage (e.g. surfboards golf clubs or bikes) may have extra fee.&nbsp;Provider cannot be held responsible for damaged baggage personal belongings or any items left in the vehicle.<br /><br /><strong>Children/Infants:</strong><br />Please make sure infants and children are included in the total number of passengers e.g. if three adults one child and an infant are travelling a private transfer vehicle for at least five people needed to be booked. On shuttles infants under the age of 2 are free if they sit on a responsible adult`s knee but they must still be included in the booking.</span></p>', '2', '+44999999999', '2017/01/01', '2017/12/01', 2, 3, 1, 1482879119, 1493726178, 0),
(5, 'GATWICK AIRPORT (LGW)    LONDON', 29, 49, '24 Hours  00:00 - 23:59', '<p><span class=\"metin\"><strong>Private Transfer:</strong><br />Private Transfer will be for your own personal use and will not be shared with other travelers. We recommend this transfer if you are looking to arrive and depart hassle free.<br /><br /><strong>Arrival Instructions:</strong><br />Please proceed to the Arrivals Hall after the baggage &amp; customs where our driver will be holding a clipboard with your name written on it. Please identify yourself by showing your confirmation voucher and in turn they will transfer you immediately.<br /><br /><strong>Departure Instructions:</strong><br />Wait at the lobby of your accommodation where our transfer assistance will meet you. Please present your service voucher and in turn they will transfer you immediately.</span></p>', '<p><span class=\"metin\">&bull; Please make sure that you entered travel information correctly at time of booking. Supplements might occur due to mis-information on arrival/departure details. &nbsp;<br />&bull; For this <strong>Private Transfer </strong>we advise you to call the Local Tour Operator from the numbers on the voucher&nbsp;<u>if you could not meet with the transfer assistance at remote airports or busy hours&nbsp;</u>maximum 20 minutes after your exact pick up time before leaving the Airport/Port/Residence. Otherwise your transfer may be counted as No Show of yours and refund may not apply.<br />&bull; Delayed flight arrivals are monitored no extra charge for flight delays. &nbsp;<br />&bull; Amendments are upon availability and may require supplement fee. &nbsp;<br />&bull;&nbsp;Full cancellation applies in the event of No-Show. &nbsp; </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Cancellation Policy: This service can be cancelled without any penalties&nbsp;<strong>4</strong>&nbsp;day(s) prior to first service date.</span></p>', '<p><span class=\"metin\"><strong>Maximum Waiting Time At Arrival Point:</strong><br />1 Hour<br />In the event of a problem with your luggage please notify local provider of the delay. There is no obligation to wait extra time. In case they can wait extra parking fee may be resulted due to delays must be paid on site.<br />&nbsp;<br /><strong>Maximum Waiting Time At Departure Point:</strong><br />20 Minutes<br />&nbsp; &nbsp;<br /><strong>Luggage Information:</strong><br />1 suitcase per person is allowed. On private transfers if the number of luggage are more than this or there are pushchairs/wheelchairs etc.; a big enough vehicle must be booked for comfort and safety. Oversized luggage (e.g. surfboards golf clubs or bikes) may have extra fee.&nbsp;Provider cannot be held responsible for damaged baggage personal belongings or any items left in the vehicle.<br /><br /><strong>Children/Infants:</strong><br />Please make sure infants and children are included in the total number of passengers e.g. if three adults one child and an infant are travelling a private transfer vehicle for at least five people needed to be booked. On shuttles infants under the age of 2 are free if they sit on a responsible adult`s knee but they must still be included in the booking.</span></p>', '2', '+44827381847219', '2017/01/01', '2017/12/01', 3, 3, 1, 1482879217, 1494329812, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mg_transfer_image`
--

CREATE TABLE `mg_transfer_image` (
  `id` int(11) NOT NULL,
  `mg_transfer_id` int(11) NOT NULL COMMENT 'Transfer ID',
  `image` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Image',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Transfer Image/Transfer Images';

-- --------------------------------------------------------

--
-- Table structure for table `mg_transfer_order`
--

CREATE TABLE `mg_transfer_order` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL COMMENT 'Transfer ID',
  `user_id` int(11) NOT NULL COMMENT 'User ID',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Code',
  `adult` int(2) NOT NULL,
  `direction` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '* Direction [ roundtrip, arrival, departure ]',
  `date_arrival` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Arrival Date',
  `date_departure` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Departure Date',
  `leader_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tour Leader''s Name',
  `passenger_cell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Passenger''s Cell Number',
  `arrival_acbt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival_time` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival_dropofflocation` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival_additional_requests` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_pickuplocation` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_acbt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_time` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_pickuptime` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_additional_requests` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_finz` int(1) NOT NULL,
  `state_penalty` int(1) NOT NULL,
  `state_cancel` int(1) NOT NULL,
  `state` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` int(11) NOT NULL COMMENT 'Order Date',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Transfer Order/Transfer Orders' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mg_transfer_order`
--

INSERT INTO `mg_transfer_order` (`id`, `transfer_id`, `user_id`, `code`, `adult`, `direction`, `date_arrival`, `date_departure`, `leader_name`, `passenger_cell`, `arrival_acbt`, `arrival_code`, `arrival_time`, `arrival_dropofflocation`, `arrival_additional_requests`, `departure_pickuplocation`, `departure_acbt`, `departure_code`, `departure_time`, `departure_pickuptime`, `departure_additional_requests`, `state_finz`, `state_penalty`, `state_cancel`, `state`, `date_created`, `hide`) VALUES
(6, 5, 2, 'T17050912575', 1, 'roundtrip', '2017/05/14', '2017/05/24', 'John Due', '+19437827982', 'Turkish Air', '12-304895', '01:00', 'Hotel Palace', 'A glass of coffee.', 'Some Where', 'Luftansa', '1-29304890', '07:50', '23:55', 'Some food.', 0, 0, 0, 'WAITING', 1494329942, 0),
(4, 5, 2, 'T17041629893', 3, 'arrival', '2017/04/18', '', 'Mac Morgan', '+9092834573927', 'Turkish Air', '920843893', '00:05', 'Hotel Palace', 'A glass of water.', '', '', '', '', '', '', 0, 0, 0, 'WAITING', 1492377367, 0),
(5, 5, 2, 'T17041621471', 3, 'arrival', '2017/04/18', '', 'Mac Morgan', '+9092834573927', 'Turkish Air', '920843893', '23:45', 'Hotel Palace', 'A glass of tea.', '', '', '', '', '', '', 0, 0, 0, 'FINZ', 1492377895, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mg_transfer_order_item`
--

CREATE TABLE `mg_transfer_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL COMMENT 'Order ID',
  `priceper_id` int(11) NOT NULL,
  `count` int(11) NOT NULL COMMENT 'Count',
  `unitcost` float NOT NULL COMMENT 'Unit Cost',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mg_transfer_order_item`
--

INSERT INTO `mg_transfer_order_item` (`id`, `order_id`, `priceper_id`, `count`, `unitcost`, `hide`) VALUES
(6, 6, 78, 1, 380, 0),
(4, 4, 42, 1, 108.59, 0),
(5, 5, 42, 1, 108.59, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'عنوان',
  `cat` int(11) NOT NULL COMMENT 'دسته بندی',
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'شرح خبر',
  `visit` int(11) NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'عکس',
  `flag` int(1) NOT NULL,
  `date_created` int(11) NOT NULL COMMENT 'تاریخ',
  `date_updated` int(11) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='خبر/اخبار';

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `cat`, `text`, `visit`, `image`, `flag`, `date_created`, `date_updated`, `hide`) VALUES
(1, 't', 28, '<p>t</p>', 52, 'data/news_pic/1/0-1479503544-large.jpg', 0, 1479503544, 1479503574, 0),
(2, 'ff', 28, '<p>ffffffffffffff</p>', 29, 'data/news_pic/2/0-1480281792-large.jpg', 0, 1479503708, 1480281792, 0),
(3, 'et iusto odio dignissim', 28, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 104, 'data/news_pic/3/0-1480281775-large2.jpg', 0, 1479503825, 1480281775, 0),
(4, 'Lorem ipsum', 29, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 7, '', 0, 1479671362, 0, 0),
(5, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit,', 29, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 3, 'data/news_pic/5/0-1480283731-large4.jpg', 0, 1479678244, 1480283731, 0),
(6, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit,', 29, '<p>rem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,<br /><br /></p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>', 2, 'data/news_pic/6/0-1479678308-large.jpg', 0, 1479678308, 1479678308, 0),
(7, 'sfvsdv', 28, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>', 4, '', 0, 1479678347, 0, 0),
(8, 'asfcsfsfvsvsvs svsvsvsfgvwrwrv v', 29, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>', 10, 'data/news_pic/8/0-1480283713-large5.jpg', 1, 1479678378, 1480283713, 0),
(9, 'consectetuer adipiscing elit,', 29, '<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit,</span><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit,</span><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit,</span></p>\\r\\n<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit, consectetuer adipiscing elit, consectetuer adipiscing elit,</span></p>\\r\\n<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit, consectetuer adipiscing elit, consectetuer adipiscing elit,</span></p>\\r\\n<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit, consectetuer adipiscing elit, consectetuer adipiscing elit,</span></p>\\r\\n<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit, consectetuer adipiscing elit, consectetuer adipiscing elit,</span></p>', 4, 'data/news_pic/9/0-1480068621-s-d.jpg', 1, 1480068621, 1480069336, 0),
(13, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy', 29, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy</p>', 1, '', 1, 1480110200, 0, 0),
(12, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy', 28, '<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</span></p>', 0, 'data/news_pic/12/0-1480109448-large.jpg', 1, 1480109448, 1480109448, 0),
(14, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh', 29, '<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipisc</p>\\r\\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipisc</p>\\r\\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipisc</p>', 19, 'data/news_pic/14/0-1480291927-large3.jpg', 1, 1480291927, 1480291927, 0);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'ایمیل'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='ایمیل/ایمیل‌ها';

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(3, 'jalal7h@gmaikl.com'),
(1, 'jalal7h@gmail.com'),
(2, 'yechizai@yeja.com');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `meta_title` text COLLATE utf8_persian_ci NOT NULL COMMENT 'عنوان صفحه',
  `meta_kw` text COLLATE utf8_persian_ci NOT NULL COMMENT 'کلمات کلیدی',
  `meta_desc` text COLLATE utf8_persian_ci NOT NULL COMMENT 'توضیحات',
  `ignore_in_sitemap` int(1) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `name`, `meta_title`, `meta_kw`, `meta_desc`, `ignore_in_sitemap`, `hide`) VALUES
(2, 'Contact', '', '', '', 0, 0),
(20, 'FAQ', '', '', '', 0, 0),
(1, 'Home', '', '', '', 0, 0),
(3, 'About', '', '', '', 0, 0),
(4, 'Help', '', '', '', 0, 0),
(5, 'Learning', '', '', '', 0, 0),
(6, 'Terms', '', '', '', 0, 0),
(7, 'Privacy', '', '', '', 0, 0),
(14, 'Clientarea', '', '', '', 0, 0),
(19, 'Client Profile', '', '', '', 0, 0),
(58, 'Register', '', '', '', 0, 0),
(16, 'User Verification', '', '', '', 0, 0),
(60, 'Login', '', '', '', 0, 0),
(63, 'Forgot Password', '', '', '', 0, 0),
(51, 'News', '', '', '', 0, 0),
(52, 'News display', '<?\\r\\necho news_meta( \"title\" );\\r\\n?>', '<?\\r\\necho news_meta( \"kw\" );\\r\\n?>', '<?\\r\\necho news_meta( \"desc\" );\\r\\n?>', 0, 0),
(8, 'List of posts', '', '', '', 0, 0),
(102, 'some page', '', '', '', 0, 1),
(103, 'What is Daily Tour', '', '', '', 0, 0),
(104, 'Details about the Transfer service', '', '', '', 0, 0),
(105, 'All about the Visa', '', '', '', 0, 0),
(106, 'HOW I LEAVE FEEDBACK', '', '', '', 0, 1),
(9, 'Gallery', '', '', '', 0, 0),
(107, 'IRAN VISA', '', '', '', 0, 0);

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
  `hide_name` int(1) NOT NULL COMMENT 'عدم نمایش عنوان',
  `data` text COLLATE utf8_persian_ci NOT NULL,
  `framed` int(6) NOT NULL DEFAULT '0',
  `pos` varchar(10) COLLATE utf8_persian_ci NOT NULL COMMENT 'top center left right bottom',
  `flag` int(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `page_layer`
--

INSERT INTO `page_layer` (`id`, `page_id`, `prio`, `func`, `type`, `name`, `hide_name`, `data`, `framed`, `pos`, `flag`) VALUES
(2, 2, 1, 'contact_vw_form', '', 'Contact', 0, '', 1, '', 1),
(20, 20, 1, 'faq_display', '', 'FAQ', 0, '', 1, '', 1),
(1, 1, 2, 'postlist', 'HTML', 'Last posts', 0, '{\"type\":\"gallery\",\"cats\":[55,56,57,58,60,61]}', 1, '', 1),
(111, 1, 0, 'mg_searchbox', 'HTML', 'Search box', 0, '', 1, '', 1),
(8, 8, 1, 'postlist', '', 'List of posts', 0, '{\"type\":\"blog\",\"cats\":[55,56,57,58,60,61]}', 1, '', 1),
(112, 1, 1, 'dailytour_top', 'HTML', 'Top Daily Tours', 0, '', 1, '', 1),
(115, 104, 1, 'layout_post', 'HTML', 'Details about the Transfer service', 0, '<p><span style=\\\"font-family: DefaultFont;\\\">Working on ...</span></p>', 1, '', 1),
(114, 103, 2, 'layout_post', 'HTML', 'What is Daily Tour', 0, '<p><span style=\\\"font-family: DefaultFont;\\\">Working on ...</span></p>', 1, '', 1),
(116, 105, 1, 'layout_post', 'HTML', 'All about the Visa', 0, '<p><span style=\\\"font-family: DefaultFont;\\\">Working on ...</span></p>', 1, '', 1),
(9, 9, 1, 'photogallery', '', 'Gallery', 0, '', 1, '', 1),
(118, 107, 1, 'layout_post', 'HTML', 'IRAN VISA', 0, '<p><span style=\\\"font-family: DefaultFont;\\\">Working on</span></p>\\r\\n<p><span style=\\\"font-family: DefaultFont;\\\">...</span></p>', 1, '', 1),
(3, 3, 1, 'layout_post', 'HTML', 'About', 0, '<p><span style=\\\"color: #87786e;\\\">Who is GlobalTourismPro Holidays ?</span><br /><span class=\\\"metin\\\">GlobalTourismPro is a wholesaler for travel agencies only, providing Airport Transfers, Daily Excursions, Package Tours, Cruise Packages, Shore Excursions, Show/Museum/Sports Tickets, Rent a Car Services and Custom Design-Group Requests. </span><br /><br /><span style=\\\"color: #87786e;\\\">Benefits of working withGlobalTourismPro :</span><br /><span class=\\\"metin\\\">&bull; It is exclusively for travel agencies. <br />&bull; Book online, get instant confirmation, print your vouchers immediately. <br />&bull; We are local, we are at your clients\\\' service at the service points, we are one local phone away. <br />&bull; We speak your language, our operations team speaks English, Spanish, German, Italian, Turkish... <br />&bull; The richest product inventory, and we are adding new ones every minute. <br />&bull; Best rates on internet, one stop for all extra services.</span></p>', 1, '', 1),
(4, 4, 1, 'layout_post', 'HTML', 'Help', 0, '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(5, 5, 1, 'layout_post', 'HTML', 'Learn', 0, '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(6, 6, 1, 'layout_post', 'HTML', 'Terms', 0, '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(7, 7, 1, 'layout_post', 'HTML', 'Privacy Policy', 0, '<p><span style=\"font-family: DefaultFont;\">Under Construction ...</span></p>', 1, '', 1),
(14, 14, 2, 'userpanel_desk', '', 'Client Desk', 0, '', 1, '', 1),
(16, 16, 1, 'userverification', '', 'User Verification', 0, '', 1, '', 1),
(19, 19, 1, 'userprofile_vw', 'PHP5', 'Profile', 0, '', 1, '', 1),
(58, 58, 1, 'user_register_form', 'PHP5', 'Register', 0, '', 1, '', 1),
(60, 60, 1, 'user_login_form', 'PHP5', 'Login', 0, '', 1, '', 1),
(63, 63, 1, 'user_forgot_form', 'PHP5', 'Forgot password', 0, '', 1, '', 1),
(52, 52, 1, 'news_display', '', 'News display', 0, '', 1, '', 1),
(51, 51, 1, 'news_list', '', 'News', 0, '', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `photogallery`
--

CREATE TABLE `photogallery` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL COMMENT 'دسته‌بندی',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان',
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'شرح',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'تصویر',
  `view` int(11) NOT NULL COMMENT 'بازدید',
  `flag` int(1) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='تصویر/تصاویر' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `photogallery`
--

INSERT INTO `photogallery` (`id`, `cat`, `name`, `desc`, `image`, `view`, `flag`, `hide`) VALUES
(1, 0, '', '', 'data/photogallery_image/1/1493756432288AmirChakhmaqComplexandMosqueofYazdnight.JPG', 0, 1, 0),
(2, 0, '', '', 'data/photogallery_image/2/1493756432844AttackofLightShirazNasirAlMulkMosquePanoramabyMohammadRezaDomiriGanji.jpg', 0, 1, 0),
(3, 0, '', '', 'data/photogallery_image/3/1493756433720AzadiMonument.jpg', 0, 1, 0),
(4, 0, '', '', 'data/photogallery_image/4/1493756433807carpet4.jpg', 0, 1, 0),
(5, 0, '', '', 'data/photogallery_image/5/1493756433400eram.jpg', 0, 1, 0),
(6, 0, '', '', 'data/photogallery_image/6/1493756433693historiccityofyazdiran1600x1066.jpg', 0, 1, 0),
(7, 0, '', '', 'data/photogallery_image/7/1493756433862MiladTowerAtNight.JPG', 0, 1, 0),
(8, 0, '', '', 'data/photogallery_image/8/1493756433520SonnenunterganginPerspolis.jpg', 0, 1, 0),
(9, 0, '', '', 'data/photogallery_image/9/1493756433292url3.jpg', 0, 1, 0),
(10, 0, '', '', 'data/photogallery_image/10/1493756433100yazddesertcitywideview.jpg', 0, 1, 0),
(11, 0, '', '', 'data/photogallery_image/11/1493756838819010571024x683.jpg', 0, 1, 0),
(12, 0, '', '', 'data/photogallery_image/12/14937568389303111024x683.jpg', 0, 1, 0),
(13, 0, '', '', 'data/photogallery_image/13/1493756838390005687x1024.jpg', 0, 1, 0),
(14, 0, '', '', 'data/photogallery_image/14/1493756838532201410300846151024x768.jpg', 0, 1, 0),
(15, 0, '', '', 'data/photogallery_image/15/1493756838535201411040702311024x768.jpg', 0, 1, 0),
(16, 0, '', '', 'data/photogallery_image/16/1493756838397201411051208051024x768.jpg', 0, 1, 0),
(17, 0, '', '', 'data/photogallery_image/17/1493756838574201411060851261024x768.jpg', 0, 1, 0),
(18, 0, '', '', 'data/photogallery_image/18/149375683889322082013244911024x768.jpg', 0, 1, 0),
(19, 0, '', '', 'data/photogallery_image/19/1493756838271abbasimosqueisfahan1024x768.jpg', 0, 1, 0),
(20, 0, '', '', 'data/photogallery_image/20/1493756838510Anarak11024x684.jpg', 0, 1, 0),
(21, 0, '', '', 'data/photogallery_image/21/1493756838998ArgKarimkhani.jpg', 0, 1, 0),
(22, 0, '', '', 'data/photogallery_image/22/1493756838613Asiab02.jpg', 0, 1, 0),
(23, 0, '', '', 'data/photogallery_image/23/1493756838148bakhtiari1024x683.jpg', 0, 1, 0),
(24, 0, '', '', 'data/photogallery_image/24/1493756838887daresetareha221024x683.jpg', 0, 1, 0),
(25, 0, '', '', 'data/photogallery_image/25/1493756838849DSC03131024x685.jpg', 0, 1, 0),
(26, 0, '', '', 'data/photogallery_image/26/1493756838101DSC00120.jpg', 0, 1, 0),
(27, 0, '', '', 'data/photogallery_image/27/1493756838981DSC010771024x685.jpg', 0, 1, 0),
(28, 0, '', '', 'data/photogallery_image/28/1493756838569DSC01363768x1024.jpg', 0, 1, 0),
(29, 0, '', '', 'data/photogallery_image/29/1493756839350DSC024471024x768.jpg', 0, 1, 0),
(30, 0, '', '', 'data/photogallery_image/30/1493756839434DSC043161024x768.jpg', 0, 1, 0),
(31, 0, '', '', 'data/photogallery_image/31/1493756839446DSC049831024x768.jpg', 0, 1, 0),
(32, 0, '', '', 'data/photogallery_image/32/1493756839361DSC06085.jpg', 0, 1, 0),
(33, 0, '', '', 'data/photogallery_image/33/1493756839350DSC082321024x768.jpg', 0, 1, 0),
(34, 0, '', '', 'data/photogallery_image/34/1493756839364DSC086171024x768.jpg', 0, 1, 0),
(35, 0, '', '', 'data/photogallery_image/35/1493756839744DSCN04241024x768.jpg', 0, 1, 0),
(36, 0, '', '', 'data/photogallery_image/36/1493756839247DSCN48342.jpg', 0, 1, 0),
(37, 0, '', '', 'data/photogallery_image/37/1493756839958imammosqueinisfahaniran1024x768.jpg', 0, 1, 0),
(38, 0, '', '', 'data/photogallery_image/38/1493756866215IMG5591024x683.jpg', 0, 1, 0),
(39, 0, '', '', 'data/photogallery_image/39/1493756866963IMG12681024x683.jpg', 0, 1, 0),
(40, 0, '', '', 'data/photogallery_image/40/1493756866391IMG35951024x683.jpg', 0, 1, 0),
(41, 0, '', '', 'data/photogallery_image/41/1493756866362IMG72611024x684.jpg', 0, 1, 0),
(42, 0, '', '', 'data/photogallery_image/42/1493756866921IMG73211024x683.jpg', 0, 1, 0),
(43, 0, '', '', 'data/photogallery_image/43/1493756866883IMG76451024x683.jpg', 0, 1, 0),
(44, 0, '', '', 'data/photogallery_image/44/1493756866110IMG76721024x683.jpg', 0, 1, 0),
(45, 0, '', '', 'data/photogallery_image/45/1493756866324IMG78771024x684.jpg', 0, 1, 0),
(46, 0, '', '', 'data/photogallery_image/46/1493756866444IMG82121024x683.jpg', 0, 1, 0),
(47, 0, '', '', 'data/photogallery_image/47/1493756866578IMG83251024x684.jpg', 0, 1, 0),
(48, 0, '', '', 'data/photogallery_image/48/1493756866557IMG94571024x683.jpg', 0, 1, 0),
(49, 0, '', '', 'data/photogallery_image/49/1493756866295IMG96421024x683.jpg', 0, 1, 0),
(50, 0, '', '', 'data/photogallery_image/50/1493756866578IMG96761024x683.jpg', 0, 1, 0),
(51, 0, '', '', 'data/photogallery_image/51/1493756866326Jandagh1024x684.jpg', 0, 1, 0),
(52, 0, '', '', 'data/photogallery_image/52/1493756888193khayyam41683x1024.jpg', 0, 1, 0),
(53, 0, '', '', 'data/photogallery_image/53/1493756888297kordestanordibehesht874291024x768.jpg', 0, 1, 0),
(54, 0, '', '', 'data/photogallery_image/54/1493756888941Manjeelwindmills.jpg', 0, 1, 0),
(55, 0, '', '', 'data/photogallery_image/55/1493756888754MG347511024x683.jpg', 0, 1, 0),
(56, 0, '', '', 'data/photogallery_image/56/1493756888337MG43771024x683.jpg', 0, 1, 0),
(57, 0, '', '', 'data/photogallery_image/57/1493756888174MG43881024x683.jpg', 0, 1, 0),
(58, 0, '', '', 'data/photogallery_image/58/1493756888681MG45271024x683.jpg', 0, 1, 0),
(59, 0, '', '', 'data/photogallery_image/59/1493756888892MG9495Copy1024x683.jpg', 0, 1, 0),
(60, 0, '', '', 'data/photogallery_image/60/1493756888615morook111024x683.jpg', 0, 1, 0),
(61, 0, '', '', 'data/photogallery_image/61/1493756888838rostayesaraghaseyed1024x683.jpg', 0, 1, 0),
(62, 0, '', '', 'data/photogallery_image/62/1493756888656shemshakskiresorttehraniran201024x690.jpg', 0, 1, 0),
(63, 0, '', '', 'data/photogallery_image/63/1493756888536shooshtar31024x683.jpg', 0, 1, 0),
(64, 0, '', '', 'data/photogallery_image/64/1493756888342Sofrekhane1024x684.jpg', 0, 1, 0),
(65, 0, '', '', 'data/photogallery_image/65/1493756888872xcvxcv1024x683.jpg', 0, 1, 0),
(66, 0, '', '', 'data/photogallery_image/66/1493805670910IMG36221024x683.jpg', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='موقعیت/موقعیت‌ها';

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `name`, `parent`, `type`, `hide`) VALUES
(1, 'India', 0, 'country', 0),
(2, 'Iran', 0, 'country', 0),
(3, 'Turkey', 0, 'country', 0),
(4, 'Russia', 0, 'country', 0),
(5, 'France', 0, 'country', 0),
(6, 'Germany', 0, 'country', 0),
(7, 'Canada', 0, 'country', 0),
(8, 'Isfahan', 2, 'city', 0),
(9, 'Shiraz', 2, 'city', 0),
(10, 'Tehran', 2, 'city', 0),
(11, 'Kashan', 2, 'city', 0),
(12, 'Mashhad', 2, 'city', 0),
(13, 'Kerman', 2, 'city', 0),
(14, 'Moskow', 4, 'city', 0),
(15, 'Istanbul', 3, 'city', 0),
(16, 'Ankara', 3, 'city', 0),
(17, 'Izmir', 3, 'city', 0),
(18, 'Berlin', 6, 'city', 0),
(19, 'Munich', 6, 'city', 0),
(20, 'Paris', 5, 'city', 0),
(21, 'Toronto', 7, 'city', 0),
(22, 'United Kingdom', 0, 'country', 0),
(23, 'Italy', 0, 'country', 1),
(24, 'China', 0, 'country', 0),
(25, 'South Korea', 0, 'country', 0),
(27, 'www', 0, 'country', 1),
(28, 'Italy', 0, 'country', 0),
(29, 'London', 22, 'city', 0),
(30, 'Birmingham', 22, 'city', 0),
(31, 'Manchester', 22, 'city', 0),
(35, 'Pekan', 24, 'city', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان',
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'نامک',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن',
  `kw` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'کلمات کلیدی',
  `cat` int(11) NOT NULL COMMENT 'دسته‌بندی',
  `flag` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='پست/پست‌ها' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `slug`, `text`, `kw`, `cat`, `flag`, `date_created`, `hide`) VALUES
(2, 'FAST FACTS', 'fast-facts', '<h2><strong>IRAN, A COMPLETE CHOICE</strong></h2>\\r\\n<p>Iran is a four season country with 75 Millions of population. That considered as a pearl of culture and history, located in the Middle-east. This is the safest country in this area. This country with its special natural and Cultural characteristics, is one of the best tourism destinations in the world.</p>\\r\\n<p>The strength of this journey, is to have a chance of enjoying the Iranian hospitality which makes the joy of journey doubled. In fact, travelling to Iran, the cradle of civilization, with having reach records of history and culture, is travelling in the time tunnel, that makes the travelers be more familiar with the apogee of beauty which is related to culture, Art, Architecture in different historical periods from the pre-history era to the Advent of Islam.</p>\\r\\n<p>Many of these monuments considered to be unique that are registered as world heritage by UNESCO. Totally 21 monuments and landscape are registered in UNESCO world heritage. A traveler to Iran has the chance to of experiencing every seconds of Iran&rsquo;s 7000 years.</p>\\r\\n<p>Various climate situations of Iran&rsquo;s plateau cause the creation of various Natural views with different types of flora and fauna, that form the real enjoy of Eco-tourism for travelers. Desert peace in central plateau, beside the excitement of wrecked soaring mountains in the north and west of Iran, mysterious jungles and steps of north and North West.</p>\\r\\n<h2><strong>FAST FACTS:</strong></h2>\\r\\n<p>As the second-largest Middle Eastern country and located in north of Persian Gulf and Sea of Oman, neighboring<br />Tehran, as country&rsquo;s capital since late 16th century, has grown to become Iran&rsquo;s largest city, as well as its cultural and economic center, home to approximately one-sixth of Iran&rsquo;s population. Other Iranian populous cities are Mashhad, Isfahan, Tabriz, Shiraz and Ahvaz, which are also counted as country&rsquo;s tourism highlights.</p>\\r\\n<p>Iran today, attracts many travelers with different goals and interests and it might be one of most gratifying destinations for any tourist.</p>\\r\\n<h3><strong>Formal Name</strong></h3>\\r\\n<p>The Islamic Republic of Iran (IRIP)</p>\\r\\n<p><strong>Location, Coastline</strong></p>\\r\\n<p>Middle East, Bordering Countries are: Afghanistan 936 km, Armenia 35 km, Azerbaijan-proper 432 km, Azerbaijan 179 km, Iraq 1,458 km, Pakistan 909 km, Turkey 499 km, Turkmenistan 992 km, total 5,440 km. 2,440&nbsp;km along the Sea of Oman and the Persian Gulf; Iran also borders the Caspian Sea&nbsp;&nbsp;(740 km)</p>\\r\\n<p><strong>Area, Geographic Coordinates, Elevation Extremes, Land Use</strong></p>\\r\\n<p>1.648&nbsp;Million sq km (slightly larger than Alaska). 32 00&nbsp;N, 53 00 E. Caspian Sea -28 m, Mount Damavand 5,671 m. Arable land 10%, permanent crops 1%, permanent pastures 27%, forests and woodland 7%, other 55%</p>\\r\\n<p><strong><br />Time</strong></p>\\r\\n<p>GMT 3:30 September 22 to March 21 &mdash;&mdash;&mdash; GMT 4:30 March 22 to September 21</p>\\r\\n<p><strong><br />Climate &amp; Terrain</strong></p>\\r\\n<p>Mostly mountain, arid or semi-arid, subtropical along the Caspian Coast. Rugged, mountainous rim; high, central basin with deserts, mountains; small, discontinuous plains along both coasts</p>', '', 55, 1, 1493479856, 0),
(3, 'Attraction and Potential', 'attraction-and-potential', '<p><strong>Natural Resources</strong></p>\\r\\n<p>Petroleum, natural gas, coal, chromium, copper, iron ore, lead, manganese, zinc, sulfur</p>\\r\\n<p>&nbsp;</p>\\r\\n<p><strong>Capital, Major Cities</strong></p>\\r\\n<p>Capital of Iran is Tehran. Isfahan, Tabriz, Shiraz, Mashhad are the other major cities.<br /><strong>Population, Ethnic Groups, Official Language, Religions</strong></p>\\r\\n<p>75,149,669 Dec. 2011 es. Persian 51%, Azerbaijani 24%, Gilaki and Mazandarani 8%, Kurd 7%, Arab 3%, Lur 2%, Baluch 2%, Turkic 1%, other 2%. Official Language is Persian. Muslim 99.4%(74,682,938 person) &nbsp; Christians, Jews, Zoroastrians 0.6%</p>\\r\\n<p><strong><br />Currency, Economy, Industries, Agricultural Products, Exports</strong></p>\\r\\n<p>Iranian Rial. A mixture of central planning, state ownership of oil and large enterprises, village agriculture, and small-scale private trading and service ventures. Petroleum, petrochemicals, textiles, construction materials, food processing, metal fabricating, automobile manufacturing. Wheat, rice, sugar beets, fruits, pistachios, cotton, dairy products, wool; caviar. Petroleum, carpets, fruits, nuts, hides, steel</p>', '', 55, 1, 1493479856, 0),
(4, 'Dress Code', 'dress-code', '<p>Dress code:</p>\\r\\n<p>The country&rsquo;s name is fairly self-explanatory about its dress code; while in Islamic republic of Iran, you are obliged to conform to Islamic dress-Code known as Hijab; however, the rules are much more lenient for tourists.</p>\\r\\n<p>Women:</p>\\r\\n<p>Women are expected to their hair covered, necessarily not with a tight scarf, as it&rsquo;s common to leave some parts uncovered or your hair stands out of your loose shawl.</p>\\r\\n<p>Moreover you are required to cover your upper body with long sleeved and loose cloth down to your mid-tight, your legs are also required to be covered down to ankles.</p>\\r\\n<p>Men:</p>\\r\\n<p>For men, shorts, too short-Sleeved or sleeveless Shirts are not acceptable in public.</p>', '', 56, 1, 1493479856, 0),
(5, 'Shopping', 'shopping', '<p>SHOPPING</p>\\r\\n<p>The best places to shop are the bazaars in Tehran, Shiraz and Isfahan. Shop for silks, Persian rugs, brassware, embroidery, ceramics, hand blown glass, antiques, turquoise, carved or painted miniatures, caviar, inlaid wood, enamel work, silver and gold ware and other local handicrafts.</p>', '', 57, 1, 1493479856, 0),
(6, 'Foods', 'foods', '<p>Being diverse and distinct in different regions, almost every meal in Iran is accompanied by bread and/or rice. Obviously each city has its regional cuisine according to locally available ingredients, most of which you will have the opportunity to try in our package tours. Still, read on to find out about the most favorite and easier-to-find Iranian dishes.</p>\\r\\n<p>KABABS</p>\\r\\n<p>Even in a restaurant with a long menu, most main-dish options will be Kabab. Common varieties of which are:<img class=\"wp-image-1148 alignright\" src=\"http://www.kooleh.com/wp-content/uploads/2016/09/%DA%A9%D8%A8%D8%A7%D8%A8-%DA%A9%D9%88%D8%A8%DB%8C%D8%AF%D9%87-1024x575.jpg\" sizes=\"(max-width: 268px) 100vw, 268px\" srcset=\"http://www.kooleh.com/wp-content/uploads/2016/09/کباب-کوبیده-300x169.jpg 300w, http://www.kooleh.com/wp-content/uploads/2016/09/کباب-کوبیده-768x432.jpg 768w, http://www.kooleh.com/wp-content/uploads/2016/09/کباب-کوبیده.jpg 1500w\" alt=\"%da%a9%d8%a8%d8%a7%d8%a8-%da%a9%d9%88%d8%a8%db%8c%d8%af%d9%87\" width=\"268\" height=\"152\" /></p>\\r\\n<p>Kabab Bakhtiari: Lamb chops and chicken Kabab Koobideh: grind mutton, breadcrumbs and onion ground together. Shishlik: large lamb chunks Jujeh Kabab: Grilled marinated pieces of chicken Kabab Bonab: Same as Kubide Kabab (larger in size) made of minced mutton</p>\\r\\n<p>You probably come across many other of names in your menu however, they are usually a combi- nation of above-mentioned Kebabs, having their basis in these main types.</p>\\r\\n<p>STEWS</p>\\r\\n<p><img class=\"wp-image-1152 alignright\" src=\"http://www.kooleh.com/wp-content/uploads/2016/09/8a85a53e-b8da-4e78-9fef-868a6032340e.jpg\" sizes=\"(max-width: 259px) 100vw, 259px\" srcset=\"http://www.kooleh.com/wp-content/uploads/2016/09/8a85a53e-b8da-4e78-9fef-868a6032340e.jpg 615w, http://www.kooleh.com/wp-content/uploads/2016/09/8a85a53e-b8da-4e78-9fef-868a6032340e-300x189.jpg 300w\" alt=\"8a85a53e-b8da-4e78-9fef-868a6032340e\" width=\"259\" height=\"163\" />&nbsp;Most restaurants serve varieties of Khoresht (meaty stew with vegetables) among which Ghormeh Sabzi</p>\\r\\n<p>(green mix of diced meat, beans and vegetables),</p>\\r\\n<p>Gheimeh (consisting of meat, toma- toes, split peas, onion and dried lime), Karafs (means celery in Persian) and Fesenjan</p>\\r\\n<p>(sauce of Pomegranate juice, walnut, and roast chicken) are Persian classics and the most favorites.</p>\\r\\n<p>There are also vegetarian dishes made from mashed eggplant such as Mirza Ghassemi or Kashk-e Bademjan.</p>\\r\\n<p>Another must-be-tried meal in Iran is Dizi (known alternatively as Abgoosht) which is a broth, accompanied by Naan Sangak (kind of bread) with its own art of eating.</p>', '', 58, 1, 1493479856, 0),
(7, 'A Classical view of Iran', 'a-classical-view-of-iran', '<p><strong>Day 1: Arrival in Tehran</strong></p>\\r\\n<p>You will arrive in Iran early in the morning and we have a lot to venture, numerous places to visit, so get some good rest to get up all energetic and fresh in the morning.</p>\\r\\n<p><strong>O/N Tehran</strong></p>\\r\\n<p><strong>Day 2: Tehran</strong></p>\\r\\n<p>A full day Sightseeing in Tehran including: We will enjoy ourselves while visiting <strong>Golestan Palace</strong> (WHS)&nbsp; one of the oldest of the historic monuments in the city of Tehran. The glory and perfection in design of this building will surpass all your expectations of beauty. It consists of gardens, royal buildings, and collections of Iranian crafts and European presents from the 18th and 19th centuries. Next we visit <strong>National Museum of Iran</strong> which holds an incredibly wide range of pre-Islamic as well as post-Islamic remaining works including pottery vessels, metal objects, textile remains, and some rare books and coins. Make sure not to miss <strong>Treasury of National Jewels Museum</strong>. Here is the most dazzling collection of gemstones and jewelry known in the world; the most spectacular objects have been placed on public display and form one of the country&rsquo;s principal tourist attractions.&nbsp;After lunch we will visit <strong>Carpet Museum</strong>, Carpet-weaving has been around since the advent of early features of urban civilization and is undoubtedly one of the most distinguished manifestations of Iranian culture and art. Carpet Museum&nbsp;exhibits a variety of&nbsp;fine Persian carpets, kilims and sophisticated carpet designs from all over&nbsp;Iran, dating from the 16th century to the present. In addition to its attractive carpet and rug galleries, the museum building has a beautiful architecture and facade resembling a carpet-weaving loom, then we will visit <strong>Azadi Tower</strong>. At night we will drive to the tallest tower in Iran and 17th-tallest freestanding structure&nbsp;in the world, <strong>Milad Tower </strong>is a multi-purpose tower standing at 435 meters from base to the tip of the antenna. This landmark accommodates a variety of sections and parts on each floor ranging from a cafeteria, a public art gallery, a library to a five-star hotel.<strong>O/N Tehran</strong></p>\\r\\n<p><strong>Day 3: Tehran-Shiraz (1 Hour Flight)</strong></p>\\r\\n<p>We will start our day with The&nbsp;<strong>Niavaran Palace</strong> that&nbsp;is a historical complex which consists of several impressive buildings and monuments began being constructed by Qajar dynasty. There are numerous fabulous rooms and halls built different purposes through which visitors can roam and appreciate the design, architecture and decoration. Visiting <strong>Saad Abbad Palace</strong> is a great way to become more familiar with various historical, cultural and artistic aspects of Iran. At the foot of the Alborz ranges, north of Tehran, lays Sa&rsquo;ad Abad Palace. The glorious structure was first erected as summer residence of Qajar kings and now is turned into a majestic museum to represent the finest works of art from Iranian and non-Iranian artists to a large number of visitors. There we visit <strong>Darband Mountainside</strong> where most Iranians spend their leisure time in the nature to enjoy spectacular sceneries and great food in its restaurants in the mountain. It is a fabulous choice to breathe some fresh air and be away from the air-pollution of the mega city. Then we will visit <strong>Tajrish Bazaar</strong> one of the oldest areas of Tehran. This center of commerce is decorated with well-designed arches. The bazaar has many passage ways leading to different sections where you can purchase a variety of goods and products.in the next we will transfer to Airport to have flight to where the Capital of ancient Persia located in ,Shiraz.<strong>O/N Shiraz</strong></p>\\r\\n<p><strong>Day 4: Shiraz</strong></p>\\r\\n<p>In the morning, you will open your eyes to a majestic city; Shiraz, the home to numerous internationally-recognized Poets and Rose is waiting to welcome you right outside your hotel room. After being served with a tasteful and delicious breakfast, your exiting tour will begin; we will visit <strong>Nasir-ol-Molk Mosque</strong>, a master piece of innovation and creation. Sun rays will paint the floor and the columns with various and vibrant colors by passing through the colorful window glasses. Afterwards, you will be taken to see Karim Khan Citadel, a well-built fort, and a most see monument.&nbsp; Then we move on to enjoy the fabulous architecture of <strong>Vakil Mosque</strong> and admire the beauty of carpets, rugs, and woven handicrafts found in <strong>Vakil Bazaar</strong>, then we get to <strong>Moshir Saray</strong> a traditional Bazaar, the next step we will visit colorful paradise that named <strong>Eram Garden</strong> (WHS). We will call it a day by <strong>Hafez Tomb</strong>, one of the most prominent poets of Iran. We driving through <strong>Quran Gate</strong> which was the entrance gate of the city.<strong>O/N Shiraz</strong></p>\\r\\n<p><strong>Day 5: Shiraz-Yazd (449 Km Drive)</strong></p>\\r\\n<p>We will start the second day by driving to the history of ancient Persia by visiting <strong>Persepolis</strong> (WHS), a complex accommodating a cluster of palaces. Afterwards we will visit <strong>Naghsh-e Rostam</strong> which&nbsp;is an ancient&nbsp;<strong>Necropolis</strong>, a large ancient&nbsp;cemetery&nbsp;with elaborate&nbsp;tomb&nbsp;monuments. Here you can see a group of ancient Iranian&nbsp;rock reliefs&nbsp;cut into the cliff, from both the Sasanid&nbsp;periods. We will continue to have the privilege by visiting <strong>Pasargadae</strong> (WHS), where Cyrus the Great is resting for centuries. These ruins are among the only remains reflecting the glory of ancient Persian Empire.<strong>O/N Yazd</strong></p>\\r\\n<p><strong>Day 6: Yazd</strong></p>\\r\\n<p>Reaching Yazd, we begin by visiting Zoroastrian&rsquo;s <strong>Tower of Silence</strong> which a circular and raised structure built by&nbsp;Zoroastrians on top of a hill. It was used&nbsp;for&nbsp;incarnation&nbsp;for dead bodies to be exposed to carrion birds. We next have the chance to visit <strong>Yazd Fire-Temple</strong>, a place of worship for&nbsp;Zoroastrians, which contains in its heart a 2500-year-old fire and the Zoroastrians&rsquo; Museum containing numerous ancient writings. We then head to the <strong>Water Museum</strong>, an ancient house which possesses a <strong>Qanat</strong> (WHS) in its basement providing the house with a fabulous cool pleasing air. We will experience walking through narrow allies of <strong>Fahadan District</strong> with tall mud and straw walls, which are reminiscent of the ancient architecture of the city. The passages of the city was previously replete with arcs, curves, and bends, wide enough for just two or three pedestrians to walk through. Among in numerable attractions of Yazd, here we will visit <strong>Amir Chakhmakh Complex</strong>. The complex is decorated by along rectangular pool, surrounded by small shops; not only can one enjoy shopping for souvenirs from such traditional and local shops which mainly sell handicrafts, but he/she can also rest their eyes on alluring beauty of the architecture of the mosque. Last but not Least, is <strong>Dowlat Abad Garden</strong> (WHS) which is renown all across the globe due to its tallest wind tower of the world.<strong>O/N Yazd</strong></p>\\r\\n<p><strong>Day 7: Yazd-Isfahan (323 Km Drive)</strong></p>\\r\\n<p>In the morning drive to Isfahan, En-route to Isfahan, we will have a short stop in <strong>Meybod</strong>. The city receives great credit for minting-coins workshops which we also will visit. On the way to Isfahan we stop to visit <strong>Narin Castle</strong> Remains located in the middle of historical texture of <strong>Meybod</strong>. Another must-see monument in Meybod is <strong>Shah-Abbasi Caravanserai</strong> built in Safavid era. Just like travelers in the past who could rest and recover from the day&rsquo;s journey, we also stop here on our way to Isfahan to enjoy the architecture of the structure having rooms all around it traditionally used as shops and stores. Now it is time to visit <strong>Mud-Brick Ice house</strong> which has a shaped of an up-side down cone which has a subterranean storage space; it was often used to store ice, but sometimes was used to store food as well. We should leave Meybod to visit <strong>Nain Jame Mosque</strong> situated in the old texture of the city. The Mosque was built after the Mohamad&rsquo;s Mosque in Medina.&nbsp;<strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 8: Isfahan</strong></p>\\r\\n<p>Get ready to visit half of the world; Isfahan was once the capital of Persia and one of the largest cities in the world. Even today, the city retains much of its past glory. This hub of creativity was rightly granted the title &ldquo;Half-of-the-World&rdquo; due to its flourishing commerce and a great variety of astonishing arts ranging from poetry and handicrafts to unique architectural styles. We begin our journey through Isfahan by visiting <strong>Chehel-Sotun Palace</strong>. This architectural masterpiece is a pavilion in the midst of a park at the far end of a long pool which is a typical design of all Persian Gardens. The palace has been constructed for the King&rsquo;s entertainment and receptions during Safavid-era. Chehel Sotun Palace literally means &ldquo;Forty Columns&rdquo; which was inspired by the twenty slender wooden columns supporting the entrance pavilion, which, when reflected in the water of the fountain, are said to appear to be forty. The most startling feature of the pavilion is the brilliant interior design and paintings which includes fabulous roofs, old tile-covered floors, and painted walls featuring scenes of battles and celebrations hold by the king. Chehel-Sotun Palace is not just an old building; it tells us about history and each and every crack on the walls or the floors holds a story of the past. We will continue our tour to <strong>Meidane Emam</strong> (Naghsh-e-Jahan) (WHS) Square which is an oblong-shaped square built in Safavid era. The square with its lively atmosphere has always been a perennial tourist attraction; it is bordered on all sides by aesthetically remarkable monumental buildings linked by a series of two-storied arcades of shops.The monuments surrounding the square are named Shah Mosque, The Pavilion of&nbsp;Ali-Qapu&nbsp;Palace, Sheikh Lotfollah Mosque and last but not least Isfahan <strong>Grand Bazaar</strong>.&nbsp;Next, we visit <strong>Imam Mosque</strong> situated on the south side of the Shah square. The mosque was built during Safavid period by the order of the first Shah Abbas of Persia. The undeniable beauty and Sophistication in design of the mosque do mirror ages and Years of experience in constructing mosques by Iranians. All parts of the mosque have been woven together in great harmony to present a seamless, matchless whole. Religious concepts along with traditional symbols are all fully tangible in the design of the structure. The dome of the mosque standing on top with tall Minarets soaring into the sky, seem to invite every passerby in to worship and pray the Lord. <strong>Sheikh Lotfollah Mosque</strong>, standing on the eastern side of Naghsh-e-Jahan Square, is considered as one of the marvels of Persian architecture. Every element of the building is a true embodiment of elegance; it enchants every viewer by its dome changing color from dawn to dusk. There is an underground corridor offering a passage from the building to Ali-Qapu palace which is going to be the next piece of history to visit. <strong>The Pavilion of Ali-Qapu</strong> is a grand palace located on the western side of the Naghsh-e-Jahan Square, opposite of Sheikh Lotfollah Mosque. The building was named Ali-Qapu which means &ldquo;great gate&rdquo; in as much as it was right at the entrance to the Safavid palaces which stretched from the Naghsh-e-Jahan Square to the <strong>Chahar Bagh</strong> Boulevard. The structures was a symbol of the government&rsquo;s power and was originally used as a place to hold important political negotiations. Ali-Qapu is rich in naturalistic wall paintings; they abound with floral, animal and bird motifs. The building is also embellished with mirrors, arcs and magnificent colorful tiles. <strong>Siyosepol</strong> which literally means 33 arches is a bridge highly ranked as being one of the most famous examples of&nbsp;Safavid bridge&nbsp;design. It is the longest bridge on Zayandeh Rood River connecting east of Isfahan to its west. The Zayandeh Rood River can be considered as a contributing factor to the growth of the population and the economy of the city; it helped established&nbsp;Isfahan&nbsp;as an influential center, and gave a green landscape to Isfahan, a city in the middle of a desert.<strong>&nbsp;O/N Isfahan</strong></p>\\r\\n<p><strong>Day 9: Isfahan</strong></p>\\r\\n<p>We are going to have a great day with a great start; first thing in the morning we will visit <strong>Jame-Mosque</strong> (WHS). This is one of the oldest mosques still standing in Iran claiming its place as a masterpiece in Persian architecture for its structural clarity and geometric balance. The mosque is renowned for reflecting classic art in a traditional and Islamic structure. We then should not miss <strong>Vank Cathedral</strong> which is one of the most celebrated example of the colorful architecture to mirror Christians&rsquo; religious and spiritual concepts. Another amazing masterpiece of engineering and genius design is <strong>Menar-Jonban</strong>. The name of the monument is quite self-explanatory about the structure. Menar-Jonban literally means shaking minaret; the monument consists of two minarets facing each other. Its notable feature is that if one of the&nbsp;minarets&nbsp;is shaken, the other minaret will shake as well. We then visit another well-known bridge over Zayandeh Rood River called <strong>Khadju</strong> and next to see <strong>Shahrestan Bridge</strong> the oldest bridge on&nbsp;Zayandeh Rood River.</p>\\r\\n<p><strong>O /N Isfahan</strong></p>\\r\\n<p><strong>Day 10: Isfahan-Kashan (219 Km Drive)</strong></p>\\r\\n<p>In the morning drive to Kashan, on the way to Kashan we will visit <strong>Abyaneh</strong>. The village has a brilliant architecture; houses are constructed using peculiar reddish hue mud. The other attractive feature of the place is the women clothes which have colorful and happy patterns and an under-knee skirts. Abyunaki people have persistently maintained this traditional costume.<strong>O/N Kashan</strong></p>\\r\\n<p><strong>Day 11: Kashan- IKA airport (236 Km Drive)</strong></p>\\r\\n<p>While being Kashan, we will visit <strong>Fin Garden</strong> (WHS) a lush garden renowned as being the very epitome of the Persian garden. In the garden you can enjoy a delightful atmosphere as water from a natural spring flows through a series of turquoise-colored pools and fountains. Then we will visit <strong>Boroujerdi and Tabatabaei Traditional</strong> Houses, Tabatabaei Traditional house is a perfect place to gain an insight as to how great taste of art and exquisite workmanship can come together to build a splendid house about 2 centuries ago. Almost all of the classic features of traditional Persian residential architecture such as interior and exterior yards, central pools and elegant wall paintings can be seen in Tabatabaei house. Then we will drive to IKA airport for departure flight.</p>\\r\\n<p>Saying goodbye is never easy, but it is time to go to the airport. Iran is a kind of place that you cannot get enough of it and to appreciate its beauty thoroughly in such few days is not possible. Therefore, until next time we will have the honor to host you here in Iran take care and enjoy your flight.</p>', '', 60, 1, 1493479856, 0),
(8, 'A Glimpse of Persia', 'a-glimpse-of-persia', '<p><strong>Day 1: Arrival in Shiraz</strong></p>\\r\\n<p>You will arrive in Iran early in the morning and we have a lot to venture, numerous places to visit, so get some good rest to get up all energetic and fresh in the morning.<strong>O/N Shiraz</strong></p>\\r\\n<p><strong>Day 2: Shiraz</strong></p>\\r\\n<p>In the morning, you will open your eyes to a majestic city; Shiraz, the home to numerous internationally-recognized Poets and Rose is waiting to welcome you right outside your hotel room. After being served with a tasteful and delicious breakfast, your exiting tour will begin; we will visit <strong>Nasir-ol-Molk Mosque</strong>, a master piece of innovation and creation. Sun rays will paint the floor and the columns with various and vibrant colors by passing through the colorful window glasses. Afterwards, you will be taken to see Karim Khan Citadel, a well-built fort, and a most see monument.&nbsp; Then we move on to enjoy the fabulous architecture of <strong>Vakil Mosque</strong> and admire the beauty of carpets, rugs, and woven handicrafts found in <strong>Vakil Bazaar</strong>, then we get to <strong>Moshir Saray</strong> a traditional Bazaar, the next step we will visit colorful paradise that named <strong>Eram Garden</strong> (WHS). We will call it a day by <strong>Hafez Tomb</strong>, one of the most prominent poets of Iran. We driving through <strong>Quran Gate</strong> which was the entrance gate of the city.<strong>O/N Shiraz</strong></p>\\r\\n<p><strong>Day 3: Shiraz-Isfahan (483 Km Drive)</strong></p>\\r\\n<p>We will start the second day by driving to the history of ancient Persia by visiting <strong>Persepolis</strong> (WHS), a complex accommodating a cluster of palaces. Afterwards we will visit <strong>Naghsh-e Rostam </strong>which&nbsp;is an ancient <strong>Necropolis</strong>, a large ancient&nbsp;cemetery&nbsp;with elaborate&nbsp;tomb&nbsp;monuments. Here you can see a group of ancient Iranian&nbsp;rock reliefs&nbsp;cut into the cliff, from the Sassanid&nbsp;periods. We will continue to have the privilege by visiting <strong>Pasargadae</strong> (WHS), where Cyrus the Great is resting for centuries. These ruins are among the only remains reflecting the glory of ancient Persian Empire.<strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 4: Isfahan</strong></p>\\r\\n<p>Get ready to visit half of the world; Isfahan was once the capital of Persia and one of the largest cities in the world. Even today, the city retains much of its past glory. This hub of creativity was rightly granted the title &ldquo;Half-of-the-World&rdquo; due to its flourishing commerce and a great variety of astonishing arts ranging from poetry and handicrafts to unique architectural styles. We begin our journey through Isfahan by visiting <strong>Chehel-Sotun Palace</strong>. This architectural masterpiece is a pavilion in the midst of a park at the far end of a long pool which is a typical design of all Persian Gardens. The palace has been constructed for the King&rsquo;s entertainment and receptions during Safavid-era. Chehel Sotun Palace literally means &ldquo;Forty Columns&rdquo; which was inspired by the twenty slender wooden columns supporting the entrance pavilion, which, when reflected in the water of the fountain, are said to appear to be forty. The most startling feature of the pavilion is the brilliant interior design and paintings which includes fabulous roofs, old tile-covered floors, and painted walls featuring scenes of battles and celebrations hold by the king. Chehel-Sotun Palace is not just an old building; it tells us about history and each and every crack on the walls or the floors holds a story of the past. We will continue our tour to <strong>Meidane Emam</strong> (Naghsh-e-Jahan) (WHS) Square which is an oblong-shaped square built in Safavid era. The square with its lively atmosphere has always been a perennial tourist attraction; it is bordered on all sides by aesthetically remarkable monumental buildings linked by a series of two-storied arcades of shops. The monuments surrounding the square are named Shah Mosque,&nbsp;Ali Qapu&nbsp;Palace, Sheikh Lotfollah Mosque and last but not least Isfahan <strong>Grand Bazaar</strong>.&nbsp;Next, we visit <strong>Imam Mosque</strong> situated on the south side of the Shah square. The mosque was built during Safavid period by the order of the first Shah Abbas of Persia. The undeniable beauty and Sophistication in design of the mosque do mirror ages and years of experience in constructing mosques by Iranians. All parts of the mosque have been woven together in great harmony to present a seamless, matchless whole. Religious concepts along with traditional symbols are all fully tangible in the design of the structure. The dome of the mosque standing on top with tall Minarets soaring into the sky, seem to invite every passerby in to worship and pray the Lord. <strong>Sheikh Lotfollah Mosque</strong>, standing on the eastern side of Naghsh-e-Jahan Square, is considered as one of the marvels of Persian architecture. Every element of the building is a true embodiment of elegance; it enchants every viewer by its dome changing color from dawn to dusk. There is an underground corridor offering a passage from the building to Ali-Qapu palace which is going to be the next piece of history to visit. <strong>The Pavilion of Ali-Qapu</strong> is a grand palace located on the western side of the Naghsh-e-Jahan Square, opposite of Sheikh Lotfollah Mosque. The building was named Ali-Qapu which means &ldquo;great gate&rdquo; in as much as it was right at the entrance to the Safavid palaces which stretched from the Naghsh-e-Jahan Square to the Chahar Bagh Boulevard. The structures was a symbol of the government&rsquo;s power and was originally used as a place to hold important political negotiations. The Pavilion of Ali-Qapu is rich in naturalistic wall paintings; they abound with floral, animal and bird motifs. The building is also embellished with mirrors, arcs and magnificent colorful tiles. <strong>Siyosepol</strong> which literally means 33 arches is a bridge highly ranked as being one of the most famous examples of&nbsp;Safavid bridge&nbsp;design. It is the longest bridge on Zayandeh Rood River connecting east of Isfahan to its west. The Zayandeh Rood River can be considered as a contributing factor to the growth of the population and the economy of the city; it helped established&nbsp;Isfahan&nbsp;as an influential center, and gave a green landscape to Isfahan, a city in the middle of a desert.<strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 5: Isfahan</strong></p>\\r\\n<p>We are going to have a great day with a great start; first thing in the morning we will visit <strong>Jame-Mosque</strong> (WHS). This is one of the oldest mosques still standing in Iran claiming its place as a masterpiece in Persian architecture for its structural clarity and geometric balance. The mosque is renowned for reflecting classic art in a traditional and Islamic structure. We then should not miss <strong>Vank Cathedral</strong> which is one of the most celebrated example of the colorful architecture to mirror Christians&rsquo; religious and spiritual concepts. Another amazing masterpiece of engineering and genius design is <strong>Menar-Jonban</strong>. The name of the monument is quite self-explanatory about the structure. Menar-Jonban literally means shaking minaret; the monument consists of two minarets facing each other. Its notable feature is that if one of the&nbsp;minarets&nbsp;is shaken, the other minaret will shake as well. We then visit another well-known bridge over Zayandeh Rood River called <strong>Khadju</strong> and next to see <strong>Shahrestan Bridge</strong> the oldest bridge on&nbsp;Zayandeh Rood River.</p>\\r\\n<p><strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 6: Isfahan-Kashan (219 Km Drive)</strong></p>\\r\\n<p>In the morning drive to Kashan, on the way to Kashan we will visit <strong>Abyaneh</strong>. The village has a brilliant architecture; houses are constructed with peculiar reddish hue mud. The other attractive feature of the place is the women clothes which have colorful and happy patterns and an under-knee skirts. Abyunaki people have persistently maintained this traditional costume. Reaching to Kashan, we will visit <strong>Tabatabaei</strong> and <strong>Boroujerdi Traditional</strong> Houses.<strong>O/N Kashan</strong></p>\\r\\n<p><strong>Day 7: Kashan-Tehran (323 Km Drive)</strong></p>\\r\\n<p>While being Kashan, we will visit <strong>Fin Garden</strong> (WHS) a lush garden renowned as being the very epitome of the Persian garden. In the garden you can enjoy a delightful atmosphere as water from a natural spring flows through a series of turquoise-colored pools and fountains. Now it is time to drive to the capital of Iran, Tehran. There we visit <strong>Darband Mountainside</strong> where most Iranians spend their leisure time in the nature to enjoy spectacular sceneries and great food in its restaurants in the mountain. It is a fabulous choice to breathe some fresh air and be away from the air-pollution of the mega city. Then we will visit <strong>Tajrish Bazaar</strong> one of the oldest areas of Tehran. This center of commerce is decorated with well-designed arches. The bazaar has many passage ways leading to different sections where you can purchase a variety of goods and products.</p>\\r\\n<p><strong>O/N Tehran</strong></p>\\r\\n<p><strong>Day 8: Tehran &ndash; Departure</strong></p>\\r\\n<p>A full day Sightseeing in Tehran including: We will start our tour with <strong>Reza Abbasi Museum</strong>, then enjoy ourselves while visiting <strong>Golestan Palace</strong> (WHS) one of the oldest of the historic monuments in the city of Tehran. The glory and perfection in design of this building will surpass all your expectations of beauty. It consists of gardens, royal buildings, and collections of Iranian crafts and European presents from the 18th and 19th centuries. Next we visit Iran <strong>National Museum of Iran</strong>, which holds an incredibly wide range of pre-Islamic as well as post-Islamic remaining works including pottery vessels, metal objects, textile remains, and some rare books and coins. Make sure not to miss Treasury of <strong>National Jewels Museum</strong>. Here is the most dazzling collection of gemstones and jewelry known in the world; the most spectacular objects have been placed on public display and form one of the country&rsquo;s principal tourist attractions, finally we will have a panoramic view of <strong>Azadi Tower</strong>.</p>\\r\\n<p>Saying goodbye is never easy, but it is time to go to the airport. Iran is a kind of place that you cannot get enough of it and to appreciate its beauty thoroughly in such few days is not possible. Therefore, until next time we will have the honor to host you here in Iran take care and enjoy your flight.</p>', '', 60, 1, 1493479856, 0);
INSERT INTO `post` (`id`, `name`, `slug`, `text`, `kw`, `cat`, `flag`, `date_created`, `hide`) VALUES
(9, 'A Grandeur of Iran', 'a-grandeur-of-iran', '<p><strong>Day 1: Arrival in Shiraz</strong></p>\\r\\n<p>You will arrive in Iran early in the morning and we have a lot to venture, numerous places to visit, so get some good rest to get up all energetic and fresh in the morning.<strong>O/N Shiraz</strong></p>\\r\\n<p><strong>Day 2: Shiraz</strong></p>\\r\\n<p>In the morning, you will open your eyes to a majestic city; Shiraz, the home to numerous internationally-recognized Poets and Rose is waiting to welcome you right outside your hotel room. After being served with a tasteful and delicious breakfast, your exiting tour will begin; we will visit <strong>Nasir-ol-Molk Mosque</strong>, a master piece of innovation and creation. Sun rays will paint the floor and the columns with various and vibrant colors by passing through the colorful window glasses. Afterwards, you will be taken to see Karim Khan Citadel, a well-built fort, and a most see monument.&nbsp; Then we move on to enjoy the fabulous architecture of <strong>Vakil Mosque</strong> and admire the beauty of carpets, rugs, and woven handicrafts found in <strong>Vakil Bazaar</strong>, then we get to <strong>Moshir Saray</strong> a traditional Bazaar, the next step we will visit colorful paradise that named <strong>Eram Garden</strong> (WHS). We will call it a day by <strong>Hafez Tomb</strong>, one of the most prominent poets of Iran.<strong>O/N Shiraz</strong></p>\\r\\n<p><strong>Day 3: Shiraz</strong></p>\\r\\n<p>We will start the Third day by having an existing excursion to the history of ancient Persia by visiting <strong>Persepolis</strong> (WHS), a complex accommodating a cluster of palaces. Afterwards we will visit Naghsh-e Rostam which&nbsp;is an ancient&nbsp;<strong>Necropolis</strong>, a large ancient&nbsp;cemetery&nbsp;with elaborate&nbsp;tomb&nbsp;monuments. Here you can see a group of ancient Iranian&nbsp;rock reliefs&nbsp;cut into the cliff, from the Sassanid&nbsp;periods. We will continue to have the privilege by visiting <strong>Pasargadae</strong> (WHS), where Cyrus the Great is resting for centuries. These ruins are among the only remains reflecting the glory of ancient Persian Empire. We driving through <strong>Quran Gate</strong> which was the entrance gate of the city.<strong>O/N Shiraz</strong></p>\\r\\n<p><strong>Day 4: Shiraz-Kerman (569 Km Drive)</strong></p>\\r\\n<p>After travelling back to the history, now it&rsquo;s time to appreciate a not very common face of the nature, by visiting salt lakes. We first go to <strong>Maharlu Lake</strong> to be fascinated by the pink color of this salt lake. <strong>Sarvestan palace</strong> would be our next stop. This palace has been erected on a land as big as 25 hectares and is one of the earliest rock stones structures built in Sassanid-era. We will finish the day by going to a salt lake of <strong>Bakhtegan</strong> which hosts some specific species of emigrant birds, such as Dalmatian pelican and flamingo.</p>\\r\\n<p><strong>O/N Kerman</strong></p>\\r\\n<p><strong>Day 5: Kerman</strong></p>\\r\\n<p>On this day you will have a time of your life. At first, we seize the opportunity to enjoy visiting <strong>Ganjali Khan Complex</strong> which encompasses a <strong>Traditional Bathhouse</strong>, well-designed <strong>Bazaar</strong>, a <strong>Caravanserai</strong> and a <strong>Mosque</strong> with divine and spiritual atmosphere. For the next part of the day, we will travel to an area called Mahan, situated in south of Kerman, where a green patch, known as <strong>Shazde Mahan Garden </strong>(WHS), appears right in the middle of an arid and sterile Desert. This land mark is a dazzling pavilion at far end of the pool which is located on top of the garden and water flows down from a stair-like path to the entrance gate. To complete the joy, we will then go to <strong>Nematollah Vali Mausoleum</strong>. The spectacular Turquoise dome of the building is easily recognized from far away.<strong>O/N Kerman</strong></p>\\r\\n<p><strong>Day 6: Kerman to Yazd (372 Km Drive)</strong></p>\\r\\n<p>The home to Zoroastrians, Yazd still holds Fire temples, with fires burning for 2500 years now. The city also has great reputation for its remarkable wind towers providing us with natural air conditioning system to blow cool and pleasing air in the middle of the burning summer. One may also remember Yazd by the Pahlavani and Zoorkhane rituals. On the way to Yazd you will have the chance to visit <strong>Zein-o-Din Caravanserai</strong> in a relatively short stop. The caravanserai has offered cozy stay and accommodation for passing caravans. <strong>Mehr-Padin Castle</strong>, located in Mehriz, is sure among the parts of your tour that you will not forget. This glorious castle was built 600 years ago. It has two defensive battlements and nine circular towers. Exterior space of the castle is surrounded by a vast moat and interior space of the castle is surrounded by two mud brick fences. Mehriz city is famous for its beautiful and spectacular gardens. One such garden is <strong>Baghe-Pahlavan</strong> <strong>Garden</strong> (WHS) which dates back to the late Qajar era;&nbsp; it can you can keep you away from the hectic lifestyle, at least for a few hours, by its cold water stream running right through the middle of the garden with stout and soaring trees standing at its sides. At top of the garden there is a pavilion with an impressive design. All in all, the features found in this garden reflect the shifting trend from traditional styles of building gardens to more modern ones which can be seen today. <strong>Fahraj Mosque</strong> demonstrates the simple architectural characteristics of the early Islamic centuries. It is among the oldest extant mosques in Persia. The beauty of the mosque is embedded in its simplicity; its modest internal courtyard is lined with clay tiles and every visitor surely receives a relaxing and soothing vibe from the building.</p>\\r\\n<p><strong>O/N Yazd</strong></p>\\r\\n<p><strong>Day 7: Yazd</strong></p>\\r\\n<p>Reaching Yazd, we begin by visiting Zoroastrian&rsquo;s <strong>Tower of Silence</strong> which a circular and raised structure built by&nbsp;Zoroastrians on top of a hill. It was used&nbsp;for&nbsp;incarnation&nbsp;for dead bodies to be exposed to carrion birds. We next have the chance to visit <strong>Yazd Fire-Temple</strong>, a place of worship for&nbsp;Zoroastrians, which contains in its heart a 2500-year-old fire and the Zoroastrians&rsquo; Museum containing numerous ancient writings. We then head to the <strong>Water Museum</strong>, an ancient house which possesses a <strong>Qanat</strong> (WHS) in its basement providing the house with a fabulous cool pleasing air. We will experience walking through narrow allies of <strong>Fahadan District</strong> with tall mud and straw walls, which are reminiscent of the ancient architecture of the city. The passages of the city was previously replete with arcs, curves, and bends, wide enough for just two or three pedestrians to walk through. Among in numerable attractions of Yazd, here we will visit <strong>Amir Chakhmakh Complex</strong>. The complex is decorated by along rectangular pool, surrounded by small shops; not only can one enjoy shopping for souvenirs from such traditional and local shops which mainly sell handicrafts, but he/she can also rest their eyes on alluring beauty of the architecture of the mosque. Last but not Least, is <strong>Dowlat Abad Garden</strong> (WHS) which is renown all across the globe due to its tallest wind tower of the world.<strong>O/N Yazd</strong></p>\\r\\n<p><strong>Day 8: Yazd-Isfahan (323 Km Drive)</strong></p>\\r\\n<p>In the morning drive to Isfahan, En-route to Isfahan, we will have a short stop in <strong>Meybod</strong>. The city receives great credit for minting-coins workshops which we also will visit. On the way to Isfahan we stop to visit <strong>Narin Castle</strong> Remains located in the middle of historical texture of <strong>Meybod</strong>. Another must-see monument in Meybod is <strong>Shah-Abbasi Caravanserai</strong> built in Safavid era. Just like travelers in the past who could rest and recover from the day&rsquo;s journey, we also stop here on our way to Isfahan to enjoy the architecture of the structure having rooms all around it traditionally used as shops and stores. Now it is time to visit <strong>Mud-Brick Ice house</strong> which has a shaped of an up-side down cone which has a subterranean storage space; it was often used to store ice, but sometimes was used to store food as well. We should leave Meybod to visit <strong>Nain Jame Mosque</strong> situated in the old texture of the city. The Mosque was built after the Mohamad&rsquo;s Mosque in Medina.&nbsp;<strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 9: Isfahan</strong></p>\\r\\n<p>Get ready to visit half of the world; Isfahan was once the capital of Persia and one of the largest cities in the world. Even today, the city retains much of its past glory. This hub of creativity was rightly granted the title &ldquo;Half-of-the-World&rdquo; due to its flourishing commerce and a great variety of astonishing arts ranging from poetry and handicrafts to unique architectural styles. We begin our journey through Isfahan by visiting <strong>Chehel-Sotun Palace</strong>. This architectural masterpiece is a pavilion in the midst of a park at the far end of a long pool which is a typical design of all Persian Gardens. The palace has been constructed for the King&rsquo;s entertainment and receptions during Safavid-era. Chehel Sotun Palace literally means &ldquo;Forty Columns&rdquo; which was inspired by the twenty slender wooden columns supporting the entrance pavilion, which, when reflected in the water of the fountain, are said to appear to be forty. The most startling feature of the pavilion is the brilliant interior design and paintings which includes fabulous roofs, old tile-covered floors, and painted walls featuring scenes of battles and celebrations hold by the king. Chehel-Sotun Palace is not just an old building; it tells us about history and each and every crack on the walls or the floors holds a story of the past. We will continue our tour to <strong>Meidane Emam</strong> (Naghsh-e-Jahan) (WHS) Square which is an oblong-shaped square built in Safavid era. The square with its lively atmosphere has always been a perennial tourist attraction; it is bordered on all sides by aesthetically remarkable monumental buildings linked by a series of two-storied arcades of shops. The monuments surrounding the square are named Shah Mosque, The Pavilion of&nbsp;Ali-Qapu&nbsp;Palace, Sheikh Lotfollah Mosque and last but not least Isfahan <strong>Grand Bazaar</strong>.&nbsp;Next, we visit <strong>Imam Mosque</strong> situated on the south side of the Shah square. The mosque was built during Safavid period by the order of the first Shah Abbas of Persia. The undeniable beauty and Sophistication in design of the mosque do mirror ages and years of experience in constructing mosques by Iranians. All parts of the mosque have been woven together in great harmony to present a seamless, matchless whole. Religious concepts along with traditional symbols are all fully tangible in the design of the structure. The dome of the mosque standing on top with tall Minarets soaring into the sky, seem to invite every passerby in to worship and pray the Lord. <strong>Sheikh Lotfollah Mosque</strong>, standing on the eastern side of Naghsh-e-Jahan Square, is considered as one of the marvels of Persian architecture. Every element of the building is a true embodiment of elegance; it enchants every viewer by its dome changing color from dawn to dusk. There is an underground corridor offering a passage from the building to Ali-Qapu palace which is going to be the next piece of history to visit. <strong>The Pavilion of Ali-Qapu</strong> is a grand palace located on the western side of the Naghsh-e-Jahan Square, opposite of Sheikh Lotfollah Mosque. The building was named Ali-Qapu which means &ldquo;great gate&rdquo; in as much as it was right at the entrance to the Safavid palaces which stretched from the Naghsh-e-Jahan Square to the <strong>Chahar Bagh</strong> Boulevard. The structures was a symbol of the government&rsquo;s power and was originally used as a place to hold important political negotiations. Ali-Qapu is rich in naturalistic wall paintings; they abound with floral, animal and bird motifs. The building is also embellished with mirrors, arcs and magnificent colorful tiles. <strong>Siyosepol</strong> which literally means 33 arches is a bridge highly ranked as being one of the most famous examples of&nbsp;Safavid bridge&nbsp;design. It is the longest bridge on Zayandeh Rood River connecting east of Isfahan to its west. The Zayandeh Rood River can be considered as a contributing factor to the growth of the population and the economy of the city; it helped established&nbsp;Isfahan&nbsp;as an influential center, and gave a green landscape to Isfahan, a city in the middle of a desert.<strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 10: Isfahan</strong></p>\\r\\n<p>We are going to have a great day with a great start; first thing in the morning we will visit <strong>Jame-Mosque</strong> (WHS). This is one of the oldest mosques still standing in Iran claiming its place as a masterpiece in Persian architecture for its structural clarity and geometric balance. The mosque is renowned for reflecting classic art in a traditional and Islamic structure. We then should not miss <strong>Vank Cathedral</strong> which is one of the most celebrated example of the colorful architecture to mirror Christians&rsquo; religious and spiritual concepts. Another amazing masterpiece of engineering and genius design is <strong>Menar-Jonban</strong>. The name of the monument is quite self-explanatory about the structure. Menar-Jonban literally means shaking minaret; the monument consists of two minarets facing each other. Its notable feature is that if one of the&nbsp;minarets&nbsp;is shaken, the other minaret will shake as well. We then visit another well-known bridge over Zayandeh Rood River called <strong>Khadju</strong> and next to see <strong>Shahrestan Bridge</strong> the oldest bridge on&nbsp;Zayandeh Rood River.</p>\\r\\n<p><strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 11: Isfahan-Kashan (219 Km Drive)</strong></p>\\r\\n<p>In the morning drive to Kashan, on the way to Kashan we will visit <strong>Abyaneh</strong>. The village has a brilliant architecture; houses are constructed using peculiar reddish hue mud. The other attractive feature of the place is the women clothes which have colorful and happy patterns and an under-knee skirts. Abyunaki people have persistently maintained this traditional costume.<strong>O/N Kashan</strong></p>\\r\\n<p><strong>Day 12: Kashan-Tehran (244 Km Drive)</strong></p>\\r\\n<p>While being Kashan, we will visit <strong>Fin Garden </strong>(WHS) a lush garden renowned as being the very epitome of the Persian garden. In the garden you can enjoy a delightful atmosphere as water from a natural spring flows through a series of turquoise-colored pools and fountains. Then we will visit <strong>Boroujerdi and Tabatabaei Traditional</strong> Houses, Tabatabaei Traditional house is a perfect place to gain an insight as to how great taste of art and exquisite workmanship can come together to build a splendid house about 2 centuries ago. Almost all of the classic features of traditional Persian residential architecture such as interior and exterior yards, central pools and elegant wall paintings can be seen in Tabatabaei house. Now it is time to drive to the capital of Iran, Tehran. There we visit <strong>Darband Mountainside</strong> where most Iranians spend their leisure time in the nature to enjoy spectacular sceneries and great food in its restaurants in the mountain. It is a fabulous choice to breathe some fresh air and be away from the air-pollution of the mega city. Then we will visit <strong>Tajrish Bazaar</strong> one of the oldest areas of Tehran. This center of commerce is decorated with well-designed arches. The bazaar has many passage ways leading to different sections where you can purchase a variety of goods and products.<strong>O/N Tehran</strong></p>\\r\\n<p><strong>Day 13: Tehran &ndash; Departure</strong></p>\\r\\n<p>A full day Sightseeing in Tehran including: We will enjoy ourselves while visiting <strong>Golestan Palace </strong>(WHS) one of the oldest of the historic monuments in the city of Tehran. The glory and perfection in design of this building will surpass all your expectations of beauty. It consists of gardens, royal buildings, and collections of Iranian crafts and European presents from the 18th and 19th centuries. Next we visit <strong>National Museum of Iran</strong> which holds an incredibly wide range of pre-Islamic as well as post-Islamic remaining works including pottery vessels, metal objects, textile remains, and some rare books and coins. Make sure not to miss Treasury of <strong>National Jewels Museum</strong>. Here is the most dazzling collection of gemstones and jewelry known in the world; the most spectacular objects have been placed on public display and form one of the country&rsquo;s principal tourist attractions, finally we will have a panoramic view of <strong>Azadi Tower</strong>.&nbsp;Saying goodbye is never easy, but it is time to go to the airport. Iran is a kind of place that you cannot get enough of it and to appreciate its beauty thoroughly in such few days is not possible. Therefore, until next time we will have the honor to host you here in Iran take care and enjoy your flight.</p>', '', 60, 1, 1493479856, 0),
(10, 'Encyclopedic view of Iran', 'encyclopedic-view-of-iran', '<h4>Day 1: Mashhad</h4>\\r\\n<p>Arrive <strong>Mashhad</strong>. Meet and assist at the Airport and check-in to the hotel. After breakfast an excursion to <strong>Tous</strong> to visit the <strong>Tomb of&nbsp;Ferdowsi</strong> is a Tomb Complex composed of a white marble base, and a decorative edifice erected in honor of this&nbsp;Persian&nbsp;poet located in&nbsp;Tous, in&nbsp;Razavi Khorasan province. It was built in the early 1930s,&nbsp;and uses mainly elements of&nbsp;Achaemenid architecture. The construction of the Mausoleum as well as its aesthetic design is a reflection of the cultural, and geo-political status of&nbsp;Iran&nbsp;at the time, and then we will visit The <strong>Nader Shah Mausoleum</strong> is a building located in the <strong>Naderi Garden- Museum Complex</strong>. It was built in 1963 in honor of the Afsharid Nader Shah. The Mausoleum consists of the Tomb of Nader Shah, which is located in the center, and two halls, one of which is the Museum of Iranian Weapons from different eras and the other is the Museum of Artifacts of Nader Shah Era, and <strong>the Holy Shrine of Imam Reza</strong> (AS) Complex contains the Mausoleum of the eighth Imam of Shia. He was martyred in the Year 818 A.D. The Shrine is also <strong>the largest Mausoleum in the world</strong>, covering an area of 70 acres. The complex consists of 26 buildings, 9 courtyards and 6 entrances. A walk in the Bazaar is the finish point of the schedule.<strong>O/N Mashhad</strong></p>\\r\\n<h4>Day 2: Mashhad &ndash; Ferdows &ndash; Tabas (555 Km Drive)</h4>\\r\\n<p>Check-out hotel and drive ahead of south west to <strong>Tabas</strong>. En route visit <strong>Anthropology Museum of Ferdows</strong> and <strong>Ruins of Esfahak</strong>. It is an absolute beautiful tourist attraction and the Old Esfahak is a mirror reflecting the history, architecture arts and culture, and the inhabitants of this land&nbsp; The collection includes a variety of residential and public places such as mosques, public baths and treasury, a school and others. The mostly one-floor buildings and one or two porches are very rare. The texture located on the main road of Tabas &ndash; <strong>Deyhook</strong> and the site is a fine opportunity for enthusiasts to visit is this special place. <strong>Golshan Garden </strong>(WHS) will be visit upon arrival. It is one of the rare Iranian gardens. It is really beautiful and historical that a permanent water stream is passing from it. The garden belongs to Afshariye- Zanyeh dynasty that was constructed by Mir-Hassan-Khan (the third Tabas Governor) from Afshariey Khan-governing dynasty who was assigned by Nader Shah for governing in Tabas region. Plants in different species from various climates and thousands of fruits trees have made the garden unique. The design of the garden has been copied from Char Bagh and Quran verses about heaven that two flowing and permanent streams pass from each other.<strong>O/N Tabas</strong></p>\\r\\n<h4><strong>Day 3: Tabas</strong></h4>\\r\\n<p>Today you will visit incredible places, rice vegetation in desert at the<strong> village of Azmeyqan</strong>, a valley that hot and cold water flows at the same spring, <strong>Morteza Ali valley</strong>.<strong>O/N Tabas</strong></p>\\r\\n<h4><strong>Day 4: Tabas &ndash; Kharanaq &ndash; Ardakan &ndash; Yazd (365 Km Drive)</strong></h4>\\r\\n<p>Morning drive to the Central Desert of Iran where located in the heart land. We will visit Central Desert landscapes on the way like <strong>Tabaqeh Desert</strong> and <strong>Salt lake</strong>, now it&rsquo;s time to visit more than 1000 years old Village, We will arrived to <strong>Kharanagh</strong> . Where a restored wind tower rises up on the square and behind it, built in mud. It is a ruin almost in defiance, fighting against the forces of nature. Basting alley ways spread out like a spider web inward in the old and almost abandoned village (typical desert archeology), Then to the Shrine of <strong>Chak Chakon</strong> the way of Yazd. One of the most important Zoroastrian shrines in Iran, Chak Chak (WHS) (sometimes pronounced Chek Chek or <strong>Chak Chakou</strong> in local dialects) is located in Yazd Province in the center of Iran. It attracts thousands of pilgrims for an annual festival that lasts for ten days from the beginning of the third month after <strong>Nowruz</strong>. The Shrine of Chak Chak is nestled deep in the mountains of Yazd. Many people mistakenly refer to Chak Chak as a Fire Temple (atashkadeh), the place of worship for Zoroastrians. It is, however, a holy shrine (ziaratgah) meant for pilgrimage. For the most part, Chak Chak is open to tourists year-round. The only time that it is reserved exclusively for Zoroastrians is during a four-day stretch in June every year when Zoroastrians from all over Iran and the world gather for mass worship, religious ceremonies, community building, and celebration, including playing music and singing traditional songs. We will have a short stop in <strong>Meybod</strong>. The city receives great credit for minting-coins workshops which we also will visit. On the way to Isfahan we stop to visit <strong>Narin Castle</strong> Remains located in the middle of historical texture of Meybod. Another must-see monument in Meybod is <strong>Mud-Brick Ice house</strong> which has a shaped of an up-side down cone which has a subterranean storage space; it was often used to store ice, but sometimes was used to store food as well. The <strong>Pigeon Tower</strong> is our last sightseeing in the 4<sup>th</sup> day.<strong>O/N Yazd</strong></p>\\r\\n<h4><strong>Day 5: Yazd</strong></h4>\\r\\n<p>Reaching Yazd, we begin by visiting <strong>Zoroastrian&rsquo;s Tower of Silence</strong> which a circular and raised structure built by&nbsp;Zoroastrians on top of a hill. It was used&nbsp;for&nbsp;incarnation&nbsp;for dead bodies to be exposed to carrion birds. We next have the chance to visit <strong>Yazd Fire-Temple</strong>, a place of worship for&nbsp;Zoroastrians, which contains in its heart a 2500-year-old fire and the Zoroastrians&rsquo; museum containing numerous ancient writings. We then head to the <strong>Water Museum</strong>, an ancient house which possesses a <strong>Qanat</strong> (WHS) in its basement providing the house with a fabulous cool pleasing air. We will experience walking through narrow allies of <strong>Fahadan District </strong>with tall mud and straw walls, which are reminiscent of the ancient architecture of the city. The passages of the city was previously replete with arcs, curves, and bends, wide enough for just two or three pedestrians to walk through. Among in numerable attractions of Yazd, here we will visit <strong>Amir Chakhmakh Complex</strong>. The complex is decorated by along rectangular pool, surrounded by small shops; not only can one enjoy shopping for souvenirs from such traditional and local shops which mainly sell handicrafts, but he/she can also rest their eyes on alluring beauty of the architecture of the mosque. Last but not Least, is <strong>Dowlat Abad Garden</strong> (WHS) which is renown all across the globe due to its <strong>tallest wind tower of the world.O/N Yazd</strong></p>\\r\\n<h4><strong>Day 6: Yazd &ndash;Kerman (472 Km Drive)</strong></h4>\\r\\n<p>We are going to have a great day with a great start of driving to <strong>Zein-o-Din Caravanserai</strong>. The caravanserai has offered cozy stay and accommodation for passing caravans. Then continue to <strong>Meymand</strong> rocky village (WHS) which is believed to be a primary human residence in the Iranian Plateau, dating back to 12,000 years ago. In 2005, Meymand was awarded the UNESCO-Greece Melina Mercury International Prize for the Safeguarding and Management of Cultural Landscapes.&nbsp;<strong>O/N Kerman</strong></p>\\r\\n<h4><strong>Day 7: Kerman &ndash; Mahan &ndash; Rayen &ndash; Kerman (210 Km Drive)</strong></h4>\\r\\n<p>An excursion to the cities of <strong>Rayen </strong>and<strong> Mahan</strong> give us a great feelings of ancient trading routes which comes through this region of the country. On this day you will have a time of your life. At first, we seize the opportunity to enjoy visiting <strong>Rayen Castel</strong> and <strong>Ganjali khan Complex</strong> which encompasses a traditional bathhouse, well-designed Bazaar, a Caravanserai and a Mosque with divine and spiritual atmosphere. For the next part of the day, we will travel to an area called <strong>Mahan</strong>, situated in south of Kerman, where a green patch, known as <strong>Shazde Mahan Garden </strong>(WHS), appears right in the middle of an arid and sterile Desert. This land mark is a dazzling pavilion at far end of the pool which is located on top of the garden and water flows down from a stair-like path to the entrance gate. To complete the joy, we will then go to <strong>Nematollah Vali Mausoleum</strong>. The spectacular Turquoise dome of the building is easily recognized from far away.</p>\\r\\n<p><strong>O/N Kerman</strong></p>\\r\\n<h4><strong>Day 8: Kerman &ndash; Sirch &ndash; Shahdad &ndash; Kerman (315 Km Drive)</strong></h4>\\r\\n<p>An excursion for exploring the mysterious <strong>desert of Lut</strong> by visiting Spectacular sights like <strong>Shahdad </strong>to enter the Lut desert (WHS) and visit Caravanserai, The central Lut is the vast part in the Lut desert that contains the lowest part of the desert. There are several <strong>Kaluts</strong>&nbsp;in this region that are extended from the center Lut to the west. They are the most beautiful natural phenomena. They are unique and can&rsquo;t be found in any desert of the world, <strong>egg shaped hills</strong> and <strong>Salt River</strong> as the samples of eye-catching sights. On the way visiting <strong>Cypress of Sirch</strong> is possible.<strong>O/N Kerman</strong></p>\\r\\n<h4><strong>Day 9: Kerman-Shiraz (575 Km Drive)</strong></h4>\\r\\n<p>We settle in the vehicle to the remote city of Shiraz. On the way we have a short stop in Sirjan to visit the <strong>pipe shaped wind towers</strong>. <strong>Sarvestan palace</strong> would be our next stop. This palace has been erected on a land as big as 25 hectares and is one of the earliest rock stones structures built in Sassanid-era. We will be fascinated by the pink color of this <strong>salt lake of Maharloo</strong>.<strong>O/N Shiraz</strong></p>\\r\\n<h4><strong>Day 10: Shiraz</strong></h4>\\r\\n<p>In the morning, you will open your eyes to a majestic city Shiraz, the home to numerous internationally-recognized philosophers and poets, is waiting to welcome you right outside your hotel room. After being served with a tasteful and delicious breakfast, your exiting tour will begin; we will visit <strong>Nasir-ol-Molk Mosque</strong>, a master piece of innovation and creation. Sun rays will paint the floor and the columns with various and vibrant colors by passing through the colorful window glasses. Then we move on to enjoy the fabulous architecture of <strong>Vakil Mosque</strong> and admire the beauty of carpets, rugs, and woven handicrafts found in <strong>Vakil Bazar</strong>. Then we get to <strong>Moshir Saray</strong> Afterwards, you will be taken to see <strong>Karim Khan Citadel</strong>, a well-built fort, and a most see monument. In the afternoon a visit to <strong>Eram Garden </strong>(WHS) The abundance 100 kind of&nbsp; beautiful flowers, refreshing air, aromatic myrtles and towering cypress trees, including a tree dating back to 3,000 years (Sarv-e naz) have made Eram Garden a major tourist destination, especially during the spring and summer. We will call it a day by <strong>Hafez Tomb</strong>, one of the most prominent poets of Iran.<strong>O/N Shiraz</strong></p>\\r\\n<h4><strong>Day 11: Shiraz-Isfahan (483 Km Drive)</strong></h4>\\r\\n<p>We will start the second day by driving to the history of ancient Persia by visiting <strong>Persepolis</strong> (WHS), a complex accommodating a cluster of palaces. Afterwards we will visit <strong>Naghsh-e Rostam</strong> which&nbsp;is the ancient&nbsp;necropolis, a large ancient&nbsp;cemetery&nbsp;with elaborate&nbsp;tomb&nbsp;monuments. Here you can see a group of ancient Iranian&nbsp;rock reliefs&nbsp;cut into the cliff, from both the Achaemenid&nbsp;and&nbsp;Sassanid&nbsp;periods. We will continue to have the privilege by visiting <strong>Pasargadae</strong> (WHS), where Cyrus the Great is resting for centuries. These ruins are among the only remains reflecting the glory of ancient Persian Empire.<strong>O/N Isfahan</strong></p>\\r\\n<h4><strong>Day 12: Isfahan</strong></h4>\\r\\n<p>Get ready to visit half of the world; Isfahan was once the capital of Persia and one of the largest cities in the world. Even today, the city retains much of its past glory. This hub of creativity was rightly granted the title &ldquo;Half-of-the-World&rdquo; due to its flourishing commerce and a great variety of astonishing arts ranging from poetry and handicrafts to unique architectural styles. We begin our journey through Isfahan by visiting <strong>Chehel-Sotun Palace</strong>. This architectural masterpiece is a pavilion in the midst of a park at the far end of a long pool which is a typical design of all Persian Gardens. The palace has been constructed for the King&rsquo;s entertainment and receptions during Safavid-era. Chehel Sotun Palace literally means &ldquo;Forty Columns&rdquo; which was inspired by the twenty slender wooden columns supporting the entrance pavilion, which, when reflected in the water of the fountain, are said to appear to be forty. The most startling feature of the pavilion is the brilliant interior design and paintings which includes fabulous roofs, old tile-covered floors, and painted walls featuring scenes of battles and celebrations hold by the king. Chehel-Sotun Palace is not just an old building; it tells us about history and each and every crack on the walls or the floors holds a story of the past. We will continue our tour to <strong>Meidane Emam</strong> (Naghsh-e-Jahan) (WHS) Square which is an oblong-shaped square built in Safavid era. The square with its lively atmosphere has always been a perennial tourist attraction; it is bordered on all sides by aesthetically remarkable monumental buildings linked by a series of two-storied arcades of shops. The monuments surrounding the square are named Shah Mosque,&nbsp;Ali Qapu&nbsp;Palace, Sheikh Lotfollah Mosque and last but not least Isfahan <strong>Grand Bazaar</strong>.&nbsp;Next, we visit <strong>Imam Mosque</strong> situated on the south side of the Shah square. The mosque was built during Safavid period by the order of the first Shah Abbas of Persia. The undeniable beauty and Sophistication in design of the mosque do mirror ages and years of experience in constructing mosques by Iranians. All parts of the mosque have been woven together in great harmony to present a seamless, matchless whole. Religious concepts along with traditional symbols are all fully tangible in the design of the structure. The dome of the mosque standing on top with tall Minarets soaring into the sky, seem to invite every passerby in to worship and pray the Lord. <strong>Sheikh Lotfollah Mosque</strong>, standing on the eastern side of Naghsh-e-Jahan Square, is considered as one of the marvels of Persian architecture. Every element of the building is a true embodiment of elegance; it enchants every viewer by its dome changing color from dawn to dusk. There is an underground corridor offering a passage from the building to Ali-Qapu palace which is going to be the next piece of history to visit. <strong>The Pavilion of Ali-Qapu</strong> is a grand palace located on the western side of the Naghsh-e-Jahan Square, opposite of Sheikh Lotfollah Mosque. The building was named Ali-Qapu which means &ldquo;great gate&rdquo; in as much as it was right at the entrance to the Safavid palaces which stretched from the Naghsh-e-Jahan Square to the Chahar Bagh Boulevard. The structures was a symbol of the government&rsquo;s power and was originally used as a place to hold important political negotiations. The Pavilion of Ali-Qapu is rich in naturalistic wall paintings; they abound with floral, animal and bird motifs. The building is also embellished with mirrors, arcs and magnificent colorful tiles. <strong>Siyosepol</strong> which literally means 33 arches is a bridge highly ranked as being one of the most famous examples of&nbsp;Safavid bridge&nbsp;design. It is the longest bridge on <strong>Zayandeh Rood River</strong> connecting east of Isfahan to its west. The Zayandeh Rood River can be considered as a contributing factor to the growth of the population and the economy of the city; it helped established&nbsp;Isfahan&nbsp;as an influential center, and gave a green landscape to Isfahan, a city in the middle of a desert.<strong>O/N Isfahan</strong></p>\\r\\n<h4><strong>Day13: Isfahan &ndash; Abyaneh &ndash; Kashan &ndash; Tehran (451 Km Drive)</strong></h4>\\r\\n<p>In the morning drive to Tehran, A short stop in Murche khoort and visit <strong>Madarshah caravanserai</strong> will take us back to the Silk Road era, on the way to Tehran we will visit <strong>Abyaneh</strong>. The village has a brilliant architecture; houses are constructed using peculiar reddish hue mud. The other attractive feature of the place is the women clothes which have colorful and happy patterns and an under-knee skirts. Abyunaki people have persistently maintained this traditional costume. After being in Abyane we will drive to Kashan, to visit <strong>Fin Garden</strong> (WHS) a lush garden renowned as being the very epitome of the Persian garden. In the garden you can enjoy a delightful atmosphere as water from a natural spring flows through a series of turquoise-colored pools and fountains. Then we have a nice view of <strong>Tabatabi Traditional House</strong>. Tabatabai Traditional House is a perfect place to gain an insight as to how great taste of art and exquisite workmanship can come together to build a splendid house about 2 centuries ago. Almost all of the classic features of traditional Persian residential architecture such as interior and exterior yards, central pools, and elegant wall paintings can be seen in Tabatabi House.<strong>O/N Tehran</strong></p>\\r\\n<h4><strong>Day 14: Tehran &ndash; Departure</strong></h4>\\r\\n<p>A full day Sightseeing in Tehran including: We will enjoy ourselves while visiting <strong>Golestan Palace</strong> (WHS)&nbsp; one of the oldest of the historic monuments in the city of Tehran. The glory and perfection in design of this building will surpass all your expectations of beauty. It consists of gardens, royal buildings, and collections of Iranian crafts and European presents from the 18th and 19th centuries. Next we visit <strong>Iran National museum</strong> which holds an incredibly wide range of pre-Islamic as well as post-Islamic remaining works including pottery vessels, metal objects, textile remains, and some rare books and coins. Make sure not to miss <strong>Treasury of National Jewels museum</strong>. Here is the most dazzling collection of gemstones and jewelry known in the world; the most spectacular objects have been placed on public display and form one of the country&rsquo;s principal tourist attractions. Visiting <strong>Saad Abbad</strong> Palace is a great way to become more familiar with various historical, cultural and artistic aspects of Iran. At the foot of the Alborz ranges, north of Tehran, lays Sa&rsquo;ad Abad Palace. The glorious structure was first erected as summer residence of Qajar kings and now is turned into a majestic museum to represent the finest works of art from Iranian and non-Iranian artists to a large number of visitors. There we visit <strong>Darband Mountainside</strong> where most Iranians spend their leisure time in the nature to enjoy spectacular sceneries and great food in its restaurants in the mountain. It is a fabulous choice to breathe some fresh air and be away from the air-pollution of the mega city. At night we will drive to the tallest tower in Iran and 17th-tallest freestanding structure&nbsp;in the world, <strong>Milad Tower</strong> is a multi-purpose tower standing at 435 meters from base to the tip of the antenna. This landmark accommodates a variety of sections and parts on each floor ranging from a cafeteria, a public art gallery, a library to a five-star hotel. Saying goodbye is never easy, but it is time to go to the airport. Iran is a kind of place that you cannot get enough of it and to appreciate its beauty thoroughly in such few days is not possible. Therefore, until next time we will have the honor to host you here in Iran take care and enjoy your flight.</p>', '', 60, 1, 1493479856, 0);
INSERT INTO `post` (`id`, `name`, `slug`, `text`, `kw`, `cat`, `flag`, `date_created`, `hide`) VALUES
(11, 'Geo Culture', 'geo-culture', '<p><strong>Day1: Arrival in Tehran</strong></p>\\r\\n<p>Arrive at the IKIA, meet and assist at the airport. Check in to the hotel.<strong>O/N Tehran</strong></p>\\r\\n<p><strong>Day 2: Tehran</strong></p>\\r\\n<p>A full day Sightseeing in Tehran including: We will enjoy ourselves while visiting <strong>Golestan Palace</strong> (WHS)&nbsp; one of the oldest of the historic monuments in the city of Tehran. The glory and perfection in design of this building will surpass all your expectations of beauty. It consists of gardens, royal buildings, and collections of Iranian crafts and European presents from the 18th and 19th centuries. Next we visit <strong>National Museum of Iran</strong> which holds an incredibly wide range of pre-Islamic as well as post-Islamic remaining works including pottery vessels, metal objects, textile remains, and some rare books and coins. Make sure not to miss <strong>Treasury of National Jewels Museum</strong>. Here is the most dazzling collection of gemstones and jewelry known in the world; the most spectacular objects have been placed on public display and form one of the country&rsquo;s principal tourist attractions.&nbsp;After lunch we will visit <strong>Azadi Tower</strong>. At night we will drive to the tallest tower in Iran and 17th-tallest freestanding structure&nbsp;in the world, <strong>Milad Tower </strong>is a multi-purpose tower standing at 435 meters from base to the tip of the antenna. This landmark accommodates a variety of sections and parts on each floor ranging from a cafeteria, a public art gallery, a library to a five-star hotel.<strong>O/N Tehran</strong></p>\\r\\n<p><strong>Day3: Tehran &ndash; Qeshm (1Hour Flight)</strong></p>\\r\\n<p>After breakfast a morning flight will bring us to the most beautiful and wonderful island. <strong>Qeshm&nbsp;Island</strong> is the largest island in the&nbsp;<strong>Persian Gulf</strong>, with rocky coastlines that protects a mountainous and often beautiful interior. This&nbsp; dolphin shaped&nbsp; island is narrower and shallower in the northern part while the southern part is relatively &nbsp;wider&nbsp; and deeper ,at first we will have excursion to <strong>Qeshm Geo Park</strong> that&nbsp; has been registered as the Middle East first of the kind in the United Nations Educational, Scientific and Cultural Organization (UNESCO) in 2006. Qeshm Geo Park, <strong>Sheeb Deraz Village</strong> and The <strong>Stars Valley</strong>&nbsp; that is known as one of the most beautiful geological manifestations in Qeshm Island; are our sights that is visited by the group.<strong>O/N Qeshm</strong></p>\\r\\n<p><strong>Day 4: Qeshm</strong></p>\\r\\n<p>After breakfast start an excursion to explore the Island by visit the historic <strong>Kharbas (Khurbez) Caves</strong> were formed naturally more than 2800 years ago due to receding of the water leve. <strong>Tourian Village</strong> is a village about 31 km to the southwest of Qeshm. Agriculture is booming in this village. Vegetable cultivation, sunflower farms and beautiful palm groves are among the tourist attractions of this region. Then <strong>Chahkouh straight</strong>, <strong>Harra (mangrow)</strong> Ecosystem perhaps the most unique attraction on&nbsp;Qeshm&nbsp;Island&nbsp;and the coasts of&nbsp;<strong>Persian Gulf</strong>&nbsp;for every domestic or foreign tourist is the <strong>floating Mangrove forests</strong>. It spreads from&nbsp;strait&nbsp;of&nbsp;<strong>Hormoz</strong>&nbsp;to the east on&nbsp;Oman&nbsp;beaches and the&nbsp;Indian Ocean. These widespread forests can be seen at the beaches of Persian Gulf around the Laft horbor at north of&nbsp;Qeshm Island&nbsp;and Khamir horbor. Avesina, the great Iranian scientist, called the trees Hara, and in next step is <strong>Left district</strong> with <strong>its</strong> <strong>golden wells</strong>; Left is a historical and ancient city which is dated to more than 2000 years ago. The natural view and scene of Laft is covered with green and verdant tropical trees, tall palm gardens, beside attractive and dazzling beauty of the sea and floating Hara forest that draw the newcomer&rsquo;s attention. The architectural style of the houses of Laft are very amazing and attractive. The most obvious architectural features of the houses is their various windbreaks (wind&rsquo;s towers) that are in different size.<strong>O/N Qeshm</strong></p>\\r\\n<p><strong>Day 5: Qeshm &ndash; Shiraz (1 Hour 25 Min Flight)</strong></p>\\r\\n<p>After breakfast an excursion to Hengam The distance between <strong>Hengam Island</strong> and&nbsp;<strong>Qeshm Island</strong>&nbsp;is about 2 kilometers (1.2 miles). The primary economic activity is&nbsp;fishing, as well as some&nbsp;tourism&nbsp;and sightseeing. The main sights of Hengam are the English harbor buildings along with the coal storage; or <strong>Hormoz Island</strong> that has many attractions. It has many colorful mountains- colored earth, multicolored stones and&nbsp;and some salt cave.&nbsp;&nbsp;&nbsp;&nbsp;Beauty of nature, kindness of&nbsp;indigenous people who live in the Island&nbsp;can be a&nbsp;reason for tourists to make this their vacation spot during the winter. The climate in this Island is extremely favorable in the months during late autumn and winter, and then fly to Shiraz by an afternoon flight.<strong>O/N Shiraz</strong></p>\\r\\n<p><strong>Day 6: Shiraz</strong></p>\\r\\n<p>Today is our last day in Iran. So after check out bring us to Full day city tour of Shiraz after breakfast including: Orange garden <strong>Narenjestan &ndash; e &ndash; Qavam</strong> the Narenjestan is composed as a walled rectangular garden with a pavilion at its northernmost edge. This pavilion is the biruni&nbsp;of a larger residential complex, with the function of receiving guests and serving as a place for reception and celebration. <strong>Khan School</strong> (school of Theology), this school is one of the most famous and greatest schools in Shiraz that located in Isaac Big district. There are beautiful decorations and tiling in entrance of school. <strong>Imamzadeh Ali Ebn-e Hamze Shrine</strong>, the Highlights include the eye-catching bulbous Shirazi dome, dazzling Venetian mirror work, stained-glass windows and an intricate, ancient wooden door. In the afternoon a visit to <strong>Eram Garden</strong> (UNESCO sight) The abundance 100 kind of beautiful flowers, refreshing air, aromatic myrtles and towering cypress trees, including a tree dating back to 3,000 years (Sarv-e naz) have made Eram Garden a major tourist destination, especially during the spring and summer. And at night we will visit <strong>Tomb of Saadi</strong>.<strong>O/N Shiraz</strong></p>\\r\\n<p><strong>Day 7: Shiraz &ndash; Bafq (544 Km Drive)</strong></p>\\r\\n<p>After an early check out, we will start the seventh day by driving to the history of ancient Persia by visiting <strong>Persepolis</strong> (WHS), a complex accommodating a cluster of palaces. Afterwards we will visit <strong>Naghsh-e Rostam </strong>which&nbsp;is an ancient&nbsp;<strong>Necropolis</strong>, a large ancient&nbsp;cemetery&nbsp;with elaborate&nbsp;tomb&nbsp;monuments. Here you can see a group of ancient Iranian&nbsp;rock reliefs&nbsp;cut into the cliff, from&nbsp;Sassanid&nbsp;periods. We will continue to have the privilege by visiting <strong>Pasargadae</strong> (WHS), where Cyrus the Great is resting for centuries. These ruins are among the only remains reflecting the glory of ancient Persian Empire. Desert walk is our last program in the 7<sup>th</sup> day.<strong>O/N Bafq</strong></p>\\r\\n<p><strong>Day 8: Bafq &ndash; Yazd (126 Km Drive)</strong></p>\\r\\n<p>After breakfast in Bafq, Reaching Yazd, we begin by visiting Zoroastrian&rsquo;s <strong>Tower of Silence</strong> which a circular and raised structure built by&nbsp;Zoroastrians on top of a hill. It was used&nbsp;for&nbsp;incarnation&nbsp;for dead bodies to be exposed to carrion birds. We next have the chance to visit Yazd <strong>Fire-Temple</strong>, a place of worship for&nbsp;Zoroastrians, which contains in its heart a 2500-year-old fire and the Zoroastrians&rsquo; museum containing numerous ancient writings. We then head to the <strong>Water Museum</strong>, an ancient house which possesses a <strong>Qanat</strong> (WHS) in its basement providing the house with a fabulous cool pleasing air. We will experience walking through narrow allies of <strong>Fahadan District</strong> with tall mud and straw walls, which are reminiscent of the ancient architecture of the city. The passages of the city was previously replete with arcs, curves, and bends, wide enough for just two or three pedestrians to walk through. Among in numerable attractions of Yazd, here we will visit <strong>Amir Chakhmakh Complex</strong>. The complex is decorated by along rectangular pool, surrounded by small shops; not only can one enjoy shopping for souvenirs from such traditional and local shops which mainly sell handicrafts, but he/she can also rest their eyes on alluring beauty of the architecture of the mosque. Last but not Least, is <strong>Dowlat Abad</strong> <strong>Garden</strong> (WHS) which is renown all across the globe due to its tallest <strong>wind tower</strong> of the world.<strong>O/N Yazd</strong></p>\\r\\n<p><strong>Day 9: Yazd &ndash; Meybod &ndash; Nain &ndash; Isfahan (3 H 48 Min Drive)</strong></p>\\r\\n<p>In the morning drive to Isfahan, En-route to Isfahan, we will have a short stop in <strong>Meybod</strong>. The city receives great credit for minting-coins workshops which we also will visit. On the way to Isfahan we stop to visit <strong>Narin Castle</strong> Remains located in the middle of historical texture of Nain. Another must-see monument in Nain is <strong>Shah-Abbasi Caravanserai</strong> built in Safavid era. Just like travelers in the past who could rest and recover from the day&rsquo;s journey, we also stop here on our way to Isfahan to enjoy the architecture of the structure having rooms all around it traditionally used as shops and stores. Now it is time to visit <strong>Mud-Brick Ice house</strong> which has a shaped of an up-side down cone which has a subterranean storage space; it was often used to store ice, but sometimes was used to store food as well. We should not leave Nain before visiting <strong>Nain Jame Mosque</strong> situated in the old texture of the city. The Mosque was built after the Mohamad&rsquo;s Mosque in Medina.<strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 10: Isfahan</strong></p>\\r\\n<p>Get ready to visit half of the world; Isfahan was once the capital of Persia and one of the largest cities in the world. Even today, the city retains much of its past glory. This hub of creativity was rightly granted the title &ldquo;Half-of-the-World&rdquo; due to its flourishing commerce and a great variety of astonishing arts ranging from poetry and handicrafts to unique architectural styles. We begin our journey through Isfahan by visiting we then should not miss <strong>Vank Cathedral</strong> which is one of the most celebrated example of the colorful architecture to mirror Christians&rsquo; religious and spiritual concepts. <strong>Chehel-Sotun Palace</strong>. This architectural masterpiece is a pavilion in the midst of a park at the far end of a long pool which is a typical design of all Persian Gardens. The palace has been constructed for the King&rsquo;s entertainment and receptions during Safavid-era. Chehel Sotun Palace literally means &ldquo;Forty Columns&rdquo; which was inspired by the twenty slender wooden columns supporting the entrance pavilion, which, when reflected in the water of the fountain, are said to appear to be forty. The most startling feature of the pavilion is the brilliant interior design and paintings which includes fabulous roofs, old tile-covered floors, and painted walls featuring scenes of battles and celebrations hold by the king. Chehel-Sotun Palace is not just an old building; it tells us about history and each and every crack on the walls or the floors holds a story of the past. We will continue our tour to <strong>Meidane Emam</strong> (Naghsh-e-Jahan) (WHS) Square which is an oblong-shaped square built in Safavid era. The square with its lively atmosphere has always been a perennial tourist attraction; it is bordered on all sides by aesthetically remarkable monumental buildings linked by a series of two-storied arcades of shops. The monuments surrounding the square are named Shah Mosque,&nbsp;Ali Qapu&nbsp;Palace, Sheikh Lotfollah Mosque and last but not least Isfahan <strong>Grand Bazaar</strong>.&nbsp;Next, we visit <strong>Imam Mosque </strong>Situated on the south side of the Shah square. The mosque was built during Safavid period by the order of the first Shah Abbas of Persia. The undeniable beauty and Sophistication in design of the mosque do mirror ages and years of experience in constructing mosques by Iranians. All parts of the mosque have been woven together in great harmony to present a seamless, matchless whole. Religious concepts along with traditional symbols are all fully tangible in the design of the structure. The dome of the mosque standing on top with tall Minarets soaring into the sky, seem to invite every passerby in to worship and pray the Lord. <strong>Sheikh Lotfollah Mosque</strong>, standing on the eastern side of Naghsh-e-Jahan Square, is considered as one of the marvels of Persian architecture. Every element of the building is a true embodiment of elegance; it enchants every viewer by its dome changing color from dawn to dusk. There is an underground corridor offering a passage from the building to Ali-Qapu palace which is going to be the next piece of history to visit. <strong>The Pavilion of Ali-Qapu</strong> is a grand palace located on the western side of the Naghsh-e-Jahan Square, opposite of Sheikh Lotfollah Mosque. The building was named Ali-Qapu which means &ldquo;great gate&rdquo; in as much as it was right at the entrance to the Safavid palaces which stretched from the Naghsh-e-Jahan Square to the <strong>Chahar Bagh</strong> Boulevard. The structures was a symbol of the government&rsquo;s power and was originally used as a place to hold important political negotiations. The Pavilion of Ali-Qapu is rich in naturalistic wall paintings; they abound with floral, animal and bird motifs. The building is also embellished with mirrors, arcs and magnificent colorful tiles. <strong>Siyosepol</strong> which literally means 33 arches is a bridge highly ranked as being one of the most famous examples of&nbsp;Safavid bridge&nbsp;design. It is the longest bridge on Zayandeh Rood River connecting east of Isfahan to its west. The Zayandeh Rood River can be considered as a contributing factor to the growth of the population and the economy of the city; it helped established&nbsp;Isfahan&nbsp;as an influential center, and gave a green landscape to Isfahan, a city in the middle of a desert.<strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 11: Isfahan &ndash; Abyaneh &ndash; Kashan &ndash; IKA airport (4 H 15 Min Drive)</strong></p>\\r\\n<p>In the morning drive to Tehran, A short stop in <strong>Murche khoort</strong> and visit <strong>Madarshah Caravanserai</strong> will take us back to the Silk Road era, on the way to Tehran we will visit Abyaneh. The village has a brilliant architecture; houses are constructed using peculiar reddish hue mud. The other attractive feature of the place is the women clothes which have colorful and happy patterns and an under-knee skirts. Abyunaki people have persistently maintained this traditional costume. After being in Abyaneh we will drive to Kashan, to visit <strong>Fin Garden</strong> (WHS) a lush garden renowned as being the very epitome of the Persian garden. In the garden you can enjoy a delightful atmosphere as water from a natural spring flows through a series of turquoise-colored pools and fountains. Then we will visit <strong>Sialk Hills</strong>, <strong>Boroujerdi</strong>, <strong>Aqa Bozorg Mosque</strong> and <strong>Tabatabaei Traditional</strong> Houses. Tabatabaei Traditional House is a perfect place to gain an insight as to how great taste of art and exquisite workmanship can come together to build a splendid house about 2 centuries ago. Almost all of the classic features of traditional Persian residential architecture such as interior and exterior yards, central pools, and elegant wall paintings can be seen in Tabatabaei House. Saying goodbye is never easy, but it is time to go to the airport. Iran is a kind of place that you cannot get enough of it and to appreciate its beauty thoroughly in such few days is not possible. Therefore, until next time we will have the honor to host you here in Iran take care and enjoy your flight.</p>', '', 60, 1, 1493479856, 0),
(12, 'RESORT SKI OF DIZIN', 'resort-ski-of-dizin', '<h3><strong>DAY 1: Arrive Tehran / Dizin&nbsp;</strong></h3>\\r\\n<h4>Arrive in Tehran and then drive directly to Ski Resort of Dizin. Afternoon is free to ski or explore the scenery.</h4>\\r\\n<ul>\\r\\n<li>Half day skiing at Dizin Ski Resort.</li>\\r\\n</ul>\\r\\n<h3><strong>DAY 2: Dizin Ski Resort&nbsp;</strong></h3>\\r\\n<h4>You are free for the next two days to ski at the resort.</h4>\\r\\n<ul>\\r\\n<li>Full days skiing at Dizin Ski Resort.</li>\\r\\n</ul>\\r\\n<h3><strong>DAY 3: Tehran</strong></h3>\\r\\n<h4>After breakfast, half day ski and leave ski resort and drive back to Tehran and check-in hotel.</h4>\\r\\n<ul>\\r\\n<li>Half day skiing at Dizin Ski Resort.</li>\\r\\n</ul>\\r\\n<h3><strong>Day 4: Tehran &ndash; IKA airport</strong></h3>\\r\\n<h4>After breakfast, visit Saad Abad Palace, Golestan Palace, National Museum of Iran, Azadi Tower (Exterior Panoramic view) and then transfer to IKA Airport.</h4>', '', 61, 1, 1493479856, 0),
(13, 'DAMAVAND', 'damavand', '<p><strong>Day 1: Tehran</strong></p>\\r\\n<p>Arrive in Tehran transfer to hotel.<strong>O/N Tehran</strong></p>\\r\\n<p>&nbsp;</p>\\r\\n<p><strong>Day 2:&nbsp; Tehran</strong></p>\\r\\n<p>After breakfast, visit Saad Abad Palace, Golestan Palace, National Museum of Iran, Azadi Tower (Exterior Panoramic view).<strong>O/N Tehran</strong></p>\\r\\n<p>&nbsp;</p>\\r\\n<p><strong>Day 3: Dizin &ndash; Camp 2900 m (2 H Drive)</strong></p>\\r\\n<p>Transfer to Dizin pass and camping.<strong>O/N Camp</strong></p>\\r\\n<p><strong>&nbsp;</strong></p>\\r\\n<p><strong>Day 4: Camp &ndash; Koloon Bastak Peak &ndash; Tehran</strong></p>\\r\\n<p>Climb to Koloon Bastak peak (3450 m).<strong>O/N Tehran</strong></p>\\r\\n<p>&nbsp;</p>\\r\\n<p><strong>Day 5: Tehran &ndash; Polour Hut (2 H Drive)</strong></p>\\r\\n<p>After breakfast, Drive to Polour.<strong>O/N Polour Hut</strong></p>\\r\\n<p>&nbsp;</p>\\r\\n<p><strong>Day 6: Polour Hut &ndash; Goosfand Sara &ndash; Bargah Sevom (5 hrs. climbing &ndash; 1 hrs. by jeep).</strong></p>\\r\\n<p>Drive to goosfand Sara (3200m) climb to Bargah Sevom (4200m).<strong>O/N Bargah Sevom Shelter</strong></p>\\r\\n<p>&nbsp;</p>\\r\\n<p><strong>Day 7: Bargah Sevom &ndash; Damavand (8 H Climbing to Peak)</strong></p>\\r\\n<p>Acclimatization or summit day to <strong>Damavand</strong> (5671m).<strong>O/N Damavand</strong></p>\\r\\n<p><strong>&nbsp;</strong></p>\\r\\n<p><strong>Day 8: Damavand</strong></p>\\r\\n<p>Reserve day.<strong>O/N Damavand</strong></p>\\r\\n<p>&nbsp;</p>\\r\\n<p><strong>Day 9: Damavand &ndash; Polour &ndash; Tehran</strong></p>\\r\\n<p>Descending to poloor and Tehran.<strong>O/N Tehran</strong></p>\\r\\n<p>&nbsp;</p>\\r\\n<p><strong>Day 10: Tehran &ndash; IKA airport</strong></p>\\r\\n<p>Go back to home.</p>', '', 61, 1, 1493479856, 0),
(14, 'RESORT SKI OF TOCHAL', 'resort-ski-of-tochal', '<h3><strong>DAY 1: Arrive Tehran / Tochal&nbsp;</strong></h3>\\r\\n<h4>Arrive in Tehran then drive by car to Tochal Telecabin and the ski resort entrance and stay in tochal hotel in 3750 meter from the sea level.</h4>\\r\\n<ul>\\r\\n<li>Half day skiing at Tochal Ski Resort.</li>\\r\\n</ul>\\r\\n<h3><strong>DAY 2: Tochal Ski Resort&nbsp;</strong></h3>\\r\\n<h4>You are free for the next two days to ski at the resort.</h4>\\r\\n<ul>\\r\\n<li>Full days skiing at Tochal Ski Resort.</li>\\r\\n</ul>\\r\\n<h3>DAY 3: Tehran</h3>\\r\\n<h4>After breakfast, half day ski and leave ski resort and drive back to Tehran and check-in hotel.</h4>\\r\\n<ul>\\r\\n<li>Half day skiing at Tochal Ski Resort.</li>\\r\\n</ul>\\r\\n<h3><strong>Day 4: Tehran &ndash; IKA airport</strong></h3>\\r\\n<h4>After breakfast, visit Saad Abad Palace, Golestan Palace, National Museum of Iran, Azadi Tower (Exterior Panoramic view) and then transfer to IKA Airport.</h4>', '', 61, 1, 1493479856, 0),
(15, 'A Glimpse of Persia & SKI Sepidan', 'a-glimpse-of-persia-ski-sepidan', '<h4><strong>Day 1: Arrival in Tehran</strong></h4>\\r\\n<p>You will arrive in Iran early in the morning and we have a lot to venture, numerous places to visit, so get some good rest to get up all energetic and fresh in the morning. full day Sightseeing in Tehran including: We will enjoy ourselves while visiting <strong>Golestan Palace</strong> (WHS)&nbsp; one of the oldest of the historic monuments in the city of Tehran. The glory and perfection in design of this building will surpass all your expectations of beauty. It consists of gardens, royal buildings, and collections of Iranian crafts and European presents from the 18th and 19th centuries. Next we visit <strong>National Museum of Iran</strong> which holds an incredibly wide range of pre-Islamic as well as post-Islamic remaining works including pottery vessels, metal objects, textile remains, and some rare books and coins. Make sure not to miss <strong>Treasury of National Jewels Museum</strong>. Here is the most dazzling collection of gemstones and jewelry known in the world; the most spectacular objects have been placed on public display and form one of the country&rsquo;s principal tourist attractions.&nbsp;After lunch we will visit <strong>Carpet Museum</strong>, Carpet-weaving has been around since the advent of early features of urban civilization and is undoubtedly one of the most distinguished manifestations of Iranian culture and art. Carpet Museum&nbsp;exhibits a variety of&nbsp;fine Persian carpets, kilims and sophisticated carpet designs from all over&nbsp;Iran, dating from the 16th century to the present. In addition to its attractive carpet and rug galleries, the museum building has a beautiful architecture and facade resembling a carpet-weaving loom, then we will visit <strong>Azadi Tower</strong>. At night we will drive to the tallest tower in Iran and 17th-tallest freestanding structure&nbsp;in the world, <strong>Milad Tower </strong>is a multi-purpose tower standing at 435 meters from base to the tip of the antenna. This landmark accommodates a variety of sections and parts on each floor ranging from a cafeteria, a public art gallery, a library to a five-star hotel.<strong>O/N Tehran</strong></p>\\r\\n<p><strong>Day 2: Tehran-Shiraz (1 Hour Flight)</strong></p>\\r\\n<p>After a morning flight to Shiraz, you will open your eyes to a majestic city; Shiraz, the home to numerous internationally-recognized Poets and Rose is waiting to welcome you right outside your hotel room. After being served with a tasteful and delicious breakfast, your exiting tour will begin; we will visit <strong>Nasir-ol-Molk Mosque</strong>, a master piece of innovation and creation. Sun rays will paint the floor and the columns with various and vibrant colors by passing through the colorful window glasses. Afterwards, you will be taken to see Karim Khan Citadel, a well-built fort, and a most see monument.&nbsp; Then we move on to enjoy the fabulous architecture of <strong>Vakil Mosque</strong> and admire the beauty of carpets, rugs, and woven handicrafts found in <strong>Vakil Bazaar</strong>, then we get to <strong>Moshir Saray</strong> a traditional Bazaar, the next step we will visit colorful paradise that named <strong>Eram Garden</strong> (WHS). We will call it a day by <strong>Hafez Tomb</strong>, one of the most prominent poets of Iran. We driving through <strong>Quran Gate</strong> which was the entrance gate of the city.<strong>O/N Shiraz</strong></p>\\r\\n<p><strong>Day 3: Shiraz- Sepidan (SKI Slope)</strong></p>\\r\\n<p>We will start the day by driving to the history of ancient Persia by visiting <strong>Persepolis</strong> (WHS), a complex accommodating a cluster of palaces. Afterwards we will visit <strong>Naghsh-e Rostam </strong>which&nbsp;is an ancient <strong>Necropolis</strong>, a large ancient&nbsp;cemetery&nbsp;with elaborate&nbsp;tomb&nbsp;monuments. Here you can see a group of ancient Iranian&nbsp;rock reliefs&nbsp;cut into the cliff, from the Sassanid&nbsp;periods. We will continue to have the privilege by visiting <strong>Pasargadae</strong> (WHS), where Cyrus the Great is resting for centuries. These ruins are among the only remains reflecting the glory of ancient Persian Empire. Then drive directly to Sepidan (ski slope).<strong>O/N ski slope of Sepidan</strong></p>\\r\\n<p><strong>Day 4: Sepidan (SKI Slope)</strong></p>\\r\\n<p>All day skiing to enjoy the nature of the southern Ski slope of Iran.<strong>O/N ski slope of Sepidan</strong></p>\\r\\n<p><strong>Day 5: Sepidan (SKI Slope) &ndash; Isfahan (440 Km Drive)</strong></p>\\r\\n<p>After breakfast drive to Isfahan. En-route visit <strong>Izadkhast Castle</strong>.<strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 6: Isfahan</strong></p>\\r\\n<p>Get ready to visit half of the world; Isfahan was once the capital of Persia and one of the largest cities in the world. Even today, the city retains much of its past glory. This hub of creativity was rightly granted the title &ldquo;Half-of-the-World&rdquo; due to its flourishing commerce and a great variety of astonishing arts ranging from poetry and handicrafts to unique architectural styles. We begin our journey through Isfahan by visiting <strong>Chehel-Sotun Palace</strong>. This architectural masterpiece is a pavilion in the midst of a park at the far end of a long pool which is a typical design of all Persian Gardens. The palace has been constructed for the King&rsquo;s entertainment and receptions during Safavid-era. Chehel Sotun Palace literally means &ldquo;Forty Columns&rdquo; which was inspired by the twenty slender wooden columns supporting the entrance pavilion, which, when reflected in the water of the fountain, are said to appear to be forty. The most startling feature of the pavilion is the brilliant interior design and paintings which includes fabulous roofs, old tile-covered floors, and painted walls featuring scenes of battles and celebrations hold by the king. Chehel-Sotun Palace is not just an old building; it tells us about history and each and every crack on the walls or the floors holds a story of the past. We will continue our tour to <strong>Meidane Emam</strong> (Naghsh-e-Jahan) (WHS) Square which is an oblong-shaped square built in Safavid era. The square with its lively atmosphere has always been a perennial tourist attraction; it is bordered on all sides by aesthetically remarkable monumental buildings linked by a series of two-storied arcades of shops. The monuments surrounding the square are named Shah Mosque,&nbsp;Ali Qapu&nbsp;Palace, Sheikh Lotfollah Mosque and last but not least Isfahan <strong>Grand Bazaar</strong>.&nbsp;Next, we visit <strong>Imam Mosque</strong> situated on the south side of the Shah square. The mosque was built during Safavid period by the order of the first Shah Abbas of Persia. The undeniable beauty and Sophistication in design of the mosque do mirror ages and years of experience in constructing mosques by Iranians. All parts of the mosque have been woven together in great harmony to present a seamless, matchless whole. Religious concepts along with traditional symbols are all fully tangible in the design of the structure. The dome of the mosque standing on top with tall Minarets soaring into the sky, seem to invite every passerby in to worship and pray the Lord. <strong>Sheikh Lotfollah Mosque</strong>, standing on the eastern side of Naghsh-e-Jahan Square, is considered as one of the marvels of Persian architecture. Every element of the building is a true embodiment of elegance; it enchants every viewer by its dome changing color from dawn to dusk. There is an underground corridor offering a passage from the building to Ali-Qapu palace which is going to be the next piece of history to visit. <strong>The Pavilion of Ali-Qapu</strong> is a grand palace located on the western side of the Naghsh-e-Jahan Square, opposite of Sheikh Lotfollah Mosque. The building was named Ali-Qapu which means &ldquo;great gate&rdquo; in as much as it was right at the entrance to the Safavid palaces which stretched from the Naghsh-e-Jahan Square to the Chahar Bagh Boulevard. The structures was a symbol of the government&rsquo;s power and was originally used as a place to hold important political negotiations. Ali-Qapu is rich in naturalistic wall paintings; they abound with floral, animal and bird motifs. The building is also embellished with mirrors, arcs and magnificent colorful tiles. <strong>Siyosepol</strong> which literally means 33 arches is a bridge highly ranked as being one of the most famous examples of&nbsp;Safavid bridge&nbsp;design. It is the longest bridge on Zayandeh Rood River connecting east of Isfahan to its west. The Zayandeh Rood River can be considered as a contributing factor to the growth of the population and the economy of the city; it helped established&nbsp;Isfahan&nbsp;as an influential center, and gave a green landscape to Isfahan, a city in the middle of a desert.<strong>O/N Isfahan</strong></p>\\r\\n<p><strong>Day 7: Isfahan-Kashan- IKA (411 Km Drive)</strong></p>\\r\\n<p>In the morning drive to IKA, on the way we will visit <strong>Abyaneh</strong>. The village has a brilliant architecture; houses are constructed with peculiar reddish hue mud. The other attractive feature of the place is the women clothes which have colorful and happy patterns and an under-knee skirts. Abyunaki people have persistently maintained this traditional costume. Reaching to Kashan, Then we will visit <strong>Fin garden</strong>, <strong>Boroujerdi and Tabatabaei Traditional</strong> Houses, Tabatabaei Traditional house is a perfect place to gain an insight as to how great taste of art and exquisite workmanship can come together to build a splendid house about 2 centuries ago. Almost all of the classic features of traditional Persian residential architecture such as interior and exterior yards, central pools and elegant wall paintings can be seen in Tabatabaei house. Then we will drive to IKA airport for departure flight.</p>', '', 61, 1, 1493479856, 0),
(18, 'HOW I LEAVE FEEDBACK?', 'how-i-leave-feedback', '<p>Working on ...</p>', '', 75, 1, 1493757502, 0),
(19, 'TRAVEL DOCUMENTS', 'travel-documents', '<p>Working on ..</p>', '', 75, 1, 1493757569, 0),
(20, 'CHANGES AND CANCELLATION', 'changes-and-cancellation', '<p>Working on ..</p>', '', 75, 1, 1493757590, 0),
(21, 'INSURANCE', 'insurance', '<p>Working on ..</p>', '', 75, 1, 1493757608, 0),
(22, 'MONEY & EXCHANGE ADVICE', 'money-exchange-advice', '<p>Working on ..</p>', '', 75, 1, 1493757624, 0),
(23, 'HEALTH ADVICE BEFORE YOU TRAVEL', 'health-advice-before-you-travel', '<p>Working on ...</p>', '', 75, 1, 1493757828, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_image`
--

CREATE TABLE `post_image` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'تصویر',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='تصویر پست/تصاویر پست' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `post_image`
--

INSERT INTO `post_image` (`id`, `post_id`, `image`, `hide`) VALUES
(3, 2, 'data/post_image/2/0-1492854953-Map-of-Iran-850x459.jpg', 0),
(4, 3, 'data/post_image/3/0-1492855031-iran.jpg', 0),
(5, 4, 'data/post_image/4/0-1492855067-33-1.jpg', 0),
(6, 5, 'data/post_image/5/0-1492855110-bazar_tabriz-1-1393646342-640x459.jpg', 0),
(7, 6, 'data/post_image/6/0-1492855184-food-in-iran-742x459.jpg', 0),
(18, 15, 'data/post_image/13/0-1492857129-Stary-Nights-of-Damavand.jpg', 0),
(9, 8, 'data/post_image/8/0-1492856079-331594_582-1024x620.jpg', 0),
(10, 9, 'data/post_image/9/0-1492856145-KARIM-KHAN-CITHADEL-1024x682.jpg', 0),
(11, 10, 'data/post_image/10/0-1492856505-3.png', 0),
(12, 11, 'data/post_image/11/0-1492856625-there-are-also-gorgeous-mosques-here-such-as-the-n.jpg', 0),
(13, 7, 'data/post_image/7/0-1492856944-CI1W8942_1-1024x683.jpg', 0),
(14, 12, 'data/post_image/12/0-1492857059-extreme-skiing-jump-widescreen-wallpaper.jpg', 0),
(15, 13, 'data/post_image/13/0-1492857129-Stary-Nights-of-Damavand.jpg', 0),
(16, 14, 'data/post_image/14/0-1492857180-67870203-skiing-wallpaper.jpg', 0),
(17, 15, 'data/post_image/15/0-1492857232-A-Glimpse-of-Persia-SKI-Sepidan-pdf_001-2-1024x848.jpg', 0);

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
('sms_state', 'وضعیت پیامک', '0', ''),
('contact_fax', 'شماره فکس', '+90 212 2254245', ''),
('contact_address', 'آدرس دفتر', 'Technopark D2, 2nd Floor Esenler/ Istanbul - Turkey', ''),
('contact_email_address_0', '', 'support@globaltourismpro.com', ''),
('contact_email_address_1', '', 'info@globaltourismpro.com', ''),
('tiny_title', 'نام سایت', 'Global Tourism Pro', ''),
('main_title', 'عنوان سایت', 'GlobalTourismPro Travel, Tourism and Transfer Solutions.', ''),
('money_unit', 'واحد پولی', '€%% EUR', ''),
('template', 'قالب سایت', 'Default', ''),
('websitedescription', 'فعالیت سایت', 'GlobalTourismPro is a Travel Portal Development and Design Services Facilitates Trip Planning & Online Travel Portal Development guide Tool for Flight, Hotel and Travel Portal software , A leading global Travel Software development company having years of experience providing technical assistance to SME’s & Large scale Travel & Leisure companies', ''),
('keywords', 'کلمات کلیدی', 'GlobalTourismPro, Traveling, Tourism, Transfer, Airline, Hotel', ''),
('webstatus_main', 'وضعیت سایت', '1', ''),
('webstatus_main_content', 'متن وضعیت غیرفعال', 'We are working hard to fix problems.\\r\\nSo please wait a little more ...', ''),
('html_extra_tags', 'تگ های اضافی', '', ''),
('fbcomment_share_on_twitter', 'دکمه اشتراک در توئیتر', '0', ''),
('fbcomment_user_countOn24h', 'محدودیت ثبت نظر در روز', '15', ''),
('fbcomment_user_countOn60m', 'محدودیت ثبت نظر در ساعت', '5', ''),
('contact_cell', 'شماره همراه', '+90 212 1122344', ''),
('sms_connection_string', 'رشته اتصال سرور پیامک', 'http://postgah.net/API/SendSms.ashx?username=user01&password=pass01&from=30005825000120&to=%TO%&text=%TEXT%', ''),
('site_ico', 'آیکون سایت', 'data/site_ico/0-1483692628-7735-ScreenShot2017-01-06at112541AM.ico', ''),
('site_logo', 'لوگوی سایت', 'data/site_logo/0-1483712104-5561-met_logo', ''),
('mg9_dailytour_voucher_assistance', 'شماره تماس پشتیبانی تور یک‌روزه در وچر', '+90 545 300 1006', '');

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'عنوان',
  `url` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'پیوند',
  `desc` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'توضیحات',
  `image` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'تصویر',
  `flag` int(1) NOT NULL COMMENT 'وضعیت',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='اسلاید/اسلاید‌ها' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `name`, `url`, `desc`, `image`, `flag`, `hide`) VALUES
(1, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/1/0-1483729032-kremlin-wall-night-moscow-590.jpg', 1, 1),
(16, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/16/0-1483773387-b30d92d5-f709-48bf-8641-173a1823a882.jpg', 1, 1),
(3, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/3/0-1483729013-IMG_1284.jpg', 1, 1),
(15, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/15/0-1483773372-2016-Italy-Europe-Italy-Rome-the-North-SS-15941673.jpg', 1, 1),
(4, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/4/0-1483730658-India_HD.jpg', 1, 1),
(5, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/5/0-1483730672-india-wallpaper-3.jpg', 1, 1),
(6, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/6/0-1483730688-15322170_l.jpg', 1, 1),
(7, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/7/0-1483730701-o-ISTANBUL-facebook.jpg', 1, 1),
(8, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/8/0-1483730717-LondonBridge.jpg', 1, 1),
(9, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/9/0-1483730731-London_Thames_Sunset_panorama_-_Feb_2008.jpg', 1, 1),
(10, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/10/0-1483730758-11_Prague.jpg', 1, 1),
(11, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/11/0-1483730772-20ff8e6bc45d4a04a75887e20a111eb5.jpg', 1, 1),
(12, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/12/0-1483730788-boat-racing-on-the-river-in-prague-at-sundown-3246.jpg', 1, 1),
(13, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/13/0-1483730801-Prague-Czech-Republic.jpg', 1, 1),
(14, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/14/0-1483730828-prague-sunrise-8099151633.jpg', 1, 1),
(17, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/17/0-1483773401-piazza-navona-rome.jpg', 1, 1),
(18, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/18/0-1483773415-roman-forum-1.jpg', 1, 1),
(19, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/19/0-1483773430-Rome-advantage2.jpg', 1, 1),
(20, 'Imagine your weekend at Atlanta !', '', 'Atlanta is the capital of and the most populous city in the U.S. state of Georgia', 'data/slideshow_image/20/0-1483773442-rome.jpg', 1, 1),
(21, 'Isfahan Attractions', '', 'Naqsh-e Jahan Square, Meydan Kohne, Shahshahan Square, Chaharbagh Boulevard, Chaharbagh-e-khajou', 'data/slideshow_image/21/0-1493566868-7ZZyeeK58.jpg', 1, 0),
(22, 'Kashan Tourism Attractions', '', 'Sialk Hill, Agha Bozorg Mosque, Boroujerdi ha Residence, Tabatabaie Residence, Ameri-Ha (Amerian) House, Abbasian House, Sharifian House. Al-e-Yaseen House, Sultan Amir Shrine, Sultan Amir Bath, 40 Dokhtaran Fortress', 'data/slideshow_image/22/0-1493567678-kashan.jpg', 1, 0),
(23, 'Shiraz, The city of Love.', '', 'Hafez Tomb, Saadi Tomb, Arg of Karim Khan, Afif abad Garden, Narangestan Qavam, Delgosha Garden, Nasir al-Mulk Mosque, Jame’e Atigh Mosque, Vakil Mosque, New mosque, Vakil Bath, Vakil Bazaar, Saray-e-Moshir, Mesgarha Bazaar, Moshir-e-Now Bazaar, Abesh Khatoon Tomb, Seyed Taj-e-din Gharib Tomb, Sheykh Roozbahan Tomb, Khan school, Ghal\'eye Karim Khan, Christians Church, Qor\'an Gate, Gahvareye Did', 'data/slideshow_image/23/0-1493567392-Nasir_al-_mulk_mosque_Shiraz.jpg', 1, 0),
(24, 'Shiraz, Perspolis', '', 'Iran Gate of all Nations. Perspolis Fars Province Takht e Jamshid Achaemenid Persia', 'data/slideshow_image/24/0-1493567881-Iran_Gate-of-all-Nations_Perspolis_Fars-Province_T.jpg', 1, 0),
(25, 'Kados, Masule, Gilan', '', 'Kados, Masule, Gilan', 'data/slideshow_image/25/0-1493568023-Kados_maklawan_23.jpg', 1, 0),
(26, 'Persepolis, Shiraz', '', 'Persepolis The Persian Soldiers, Shiraz, Fars', 'data/slideshow_image/26/0-1493568058-Persepolis_The_Persian_Soldiers.jpg', 1, 0),
(27, 'Borujerdi House', '', 'The house was built in 1857 by architect Ustad Ali Maryam, for the wife of Seyyed Mehdi Borujerdi, a wealthy merchant.', 'data/slideshow_image/27/0-1493568134-______.jpg', 1, 0),
(28, 'Homa', '', 'Homa, is a mythical bird of Iranian legends and fables, and continuing as a common motif in Sufi and Diwan poetry.', 'data/slideshow_image/28/0-1493568251-.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slug`
--

CREATE TABLE `slug` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slug`
--

INSERT INTO `slug` (`id`, `slug`, `path`, `name`) VALUES
(2, 'contact', './?page=2', 'contact'),
(3, 'about', './?page=3', 'about'),
(4, 'help', './?page=4', 'help'),
(5, 'learn', './?page=5', 'learn'),
(6, 'terms', './?page=6', 'terms'),
(7, 'privacy', './?page=7', 'privacy'),
(8, 'post', './?page=8', 'post'),
(14, 'client', './?page=14', 'userpanel'),
(51, 'news', './?page=51', 'news'),
(58, 'register', './?page=58', 'register'),
(59, 'register_landing', './?page=59', 'register_landing'),
(60, 'login', './?page=60', 'login'),
(63, 'forgot', './?page=63', 'forgot'),
(65, 'the_posts/fast-facts', './?page=8&cat_id=55', NULL),
(76, 'pankgke-102.html', './?page=102', NULL),
(77, 'What-is-DailyTour', './?page=103', NULL),
(78, 'Details-about-the-Transfer-service', './?page=104', NULL),
(79, 'All-about-the-Visa', './?page=105', NULL),
(80, 'gallery', './?page=9', NULL),
(81, 'iran-visa', './?page=107', NULL);

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
(1, 'Tours', 'linkify', '1', 3, 1, 1, 0),
(2, 'About', 'linkify', '2', 3, 3, 1, 0),
(15, 'SEO', 'seo', '', 3, 9, 1, 0),
(5, 'More', 'linkify', '3', 3, 2, 1, 0),
(9, 'Social networks', 'social', 'https://www.facebook.com/GlobalTourismPro\\r\\nhttps://plus.google.com/GlobalTourismPro\\r\\nhttps://twitter.com/GlobalTourismPro\\r\\nhttp://instagram.com/GlobalTourismPro', 8, 12, 1, 0),
(10, 'Copyright', 'html', '<p><span style=\"font-family: DefaultFont;\">Copyright GlobalTourismPro &nbsp;&copy; 2016 </span></p>\\r\\n<p><span style=\"font-family: DefaultFont;\">All right reserved.</span></p>', 4, 13, 1, 0),
(12, 'Some new line.', 'hr', '', 12, 11, 1, 0),
(16, 'Our Services', 'linkify', '5', 3, 7, 1, 0),
(13, 'Newsletter', 'nl', '', 6, 10, 1, 0),
(14, 'First Delimiter', 'hr', '', 12, 8, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `texty`
--

CREATE TABLE `texty` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'نام',
  `prompt` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'اعلان کادر',
  `user_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email_subject` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان ایمیل',
  `user_email_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن ایمیل',
  `user_sms` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'پیامک',
  `user2_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user2_email_subject` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان ایمیل',
  `user2_email_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن ایمیل',
  `user2_sms` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'پیامک',
  `admin_email_subject` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان ایمیل مدیر',
  `admin_email_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن ایمیل مدیر',
  `admin_sms` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن پیامک مدیر',
  `flagstring` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vars` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(1) NOT NULL COMMENT 'وضعیت'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `texty`
--

INSERT INTO `texty` (`id`, `slug`, `name`, `prompt`, `user_title`, `user_email_subject`, `user_email_content`, `user_sms`, `user2_title`, `user2_email_subject`, `user2_email_content`, `user2_sms`, `admin_email_subject`, `admin_email_content`, `admin_sms`, `flagstring`, `vars`, `flag`) VALUES
(1, 'user_register_do', 'ثبت نام - انجام', 'Registration successfully done.\\r\\nLogin credentials is sent to your email inbox.', '', 'Welcome to {tiny_title}.', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nCongratulation!\\r\\nRegistration is successfully done.\\r\\n\\r\\nEmail address:‌ {user_username}\\r\\nPassword: {user_password}\\r\\n\\r\\nLogin to website :\\r\\n{login_page}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', '', '', '', '1100000', 'user_id user_username user_password login_page', 1),
(2, 'user_changepassword_save', 'تغییر کلمه عبور', 'Your password is successfully changed.', '', 'Your password updated.', 'Hi,\\r\\nDear client,\\r\\n\\r\\nYour password is changed to : \\r\\n{user_new_password}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', '', '', '', '1100000', 'user_new_password', 1),
(3, 'user_forgot_save', 'بازیابی گذرواژه - انجام', 'Reset password successfully done.', '', 'Reset password done', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nReset password is successfully done.\\r\\nYour new password is : \\r\\n{user_new_password}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', '', '', '', '1100011', 'user_new_password', 1),
(4, 'user_forgot_send', 'بازیابی گذرواژه - ارسال لینک ', 'The password reset-link is sent to your email inbox \"{user_email}\".\\r\\nPlease check your email inbox and click on the related link to reset password. (check your junk/spam if not found).', '', 'Reset password request', 'Hi,\\r\\nDear client,\\r\\n\\r\\nAccording to your request for reset password on \"{tiny_title}\", here is the reset password link : \\r\\n{forgot_link}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', '', '', '', '1100000', 'forgot_link', 1),
(5, 'billing_settleInvoice', 'تایید پرداخت صورتحساب', 'Payment successfully done.\\r\\nCost : {invoice_cost}\\r\\nInvoice ID : {invoice_id}\\r\\nTransaction ID : {invoice_transaction}', '', 'Payment confirm on invoice {invoice_id}', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nWe confirm that your invoice #{invoice_id} with cost of {invoice_cost} is paid.\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', 'Invoice #{invoice_id} paid', 'Hi,\\r\\n\\r\\nInvoice #{invoice_id} with cost of {invoice_cost} is paid by {user_name}.\\r\\n\\r\\nregards\\r\\n{tiny_title}', 'Invoice with cost of {invoice_cost} paid by {user_name}', '1100011', 'invoice_id invoice_transaction invoice_cost', 1),
(6, 'billing_invoiceMake_congratulate', 'ایجاد صورتحساب جدید', 'The new bills in the amount of {invoice_cost} was created with ID #{invoice_id}. \\r\\n\\r\\n{invoice_payment_button}', '', 'New Invoice #{invoice_id}', 'Hi,\\r\\nDear {user_name}،\\r\\n\\r\\nThe new bills in the amount of {invoice_cost} was created with ID #{invoice_id}. \\r\\n\\r\\nPayment link :\\r\\n{invoice_payment_link}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', '', '', '', '1100000', 'invoice_id invoice_cost invoice_payment_link', 1),
(7, 'billing_orderSettle', 'تایید پرداخت سفارش', 'Order submitted.\\r\\nYour order id is #{order_id}.', ' سفارش‌دهنده', 'Your new order #{order_id}', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nYour new order #{order_id} is submitted and will be investigated as soon as possible.\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', 'New order by {user_name}', 'Hi,\\r\\nDear client,\\r\\n\\r\\nThere is a new order with cost of {cost}, submitted by {user_name}.\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '1100011', 'cost order_id ', 1),
(8, 'billing_userpanel_payment_wallet', 'پرداخت بواسطه کیف پول', 'You did paid {invoice_cost} from your credit.\\r\\nThanks for your payment.\\r\\n', '', 'Payment from your credit.', 'Hi,\\r\\nDear {user_name}،\\r\\n\\r\\nWe received {invoice_cost} from your credit.\\r\\nThanks for your payment.\\r\\n\\r\\nregards\\r\\n{tiny_title}\\r\\n\\r\\n', '', '', '', '', '', '', '', '', '1100011', '', 1),
(9, 'contact_vw_send', 'فرم تماس', 'Your message is submitted.', '', 'Message submitted', 'Hi,\\r\\nDear {sender_name},\\r\\n\\r\\nYour message is submitted and you will be replied as soon as possible.\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', 'New contact message from {sender_name}', 'Hi,\\r\\n\\r\\nThere is a new contact message from {sender_name}.\\r\\n{contact_linkadmin}\\r\\n\\r\\nregards\\r\\n{tiny_title}', 'New contact message by {sender_name}', '1100011', 'sender_name sender_email  contact_linkadmin', 1),
(10, 'ticketbox_view_save_support', 'تیکت پشتیبانی - ارسال پاسخ', '', 'ارسال‌کننده پیام', 'Your reply on ticket #{ticket_id}', 'Hi,\\r\\nDear client {user_name},\\r\\n\\r\\nYour ticket reply is submitted successfully with ID of #{ticket_id}.\\r\\n{ticket_link}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', 'دریافت‌کننده پیام', 'New reply on your ticket #{ticket_id}', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nThere is a new reply on your ticket #{ticket_id}.\\r\\n{ticket_link}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', 'New ticket by {user_name}', 'Hi,\\r\\n\\r\\nThere is a new ticket on category of \"{ticket_cat}\", submitted by {user_name}.\\r\\nTicket subject: {tickt_name}\\r\\n{ticket_adminlink}\\r\\n\\r\\nregards\\r\\n{tiny_title}', 'New ticket by {user_name}\\r\\nSubject: {ticket_name}', '0101011', 'ticket_id ticket_name ticket_cat ticket_link ticket_adminlink', 1),
(12, 'ticketbox_mg_saveNew', 'تیکت پشتیبانی - ثبت توسط مدیر', 'Ticket reply is successfully sent for {user_name}.', '', '', '', '', 'کاربر گیرنده پیام', 'New ticket from administrator', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nThere is a new ticket from Administrator of website for you.\\r\\nthe subject of message is : \"{ticket_name}\" \\r\\n{ticket_link}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '1001000', 'ticket_id ticket_name ticket_link', 1),
(13, 'ticketbox_user_saveNew', 'تیکت پشتیبانی - ثبت توسط کاربر', 'Dear client,\\r\\nYour new ticket is submitted, and will be replied as soon as possible.', 'کاربر ارسال‌کننده پیام', 'Ticket #{ticket_id}', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nYour new ticket with subject of \"{ticket_name}\" is submitted.\\r\\n{ticket_link}\\r\\nPlease wait for reply.\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', 'New ticket by {user_name}', 'Hi,\\r\\n\\r\\nThere is a new ticket by \"{user_name}\", with subject of : \\r\\n{ticket_name}\\r\\n\\r\\n{ticket_adminlink}\\r\\n\\r\\nregards\\r\\n{tiny_title}', 'New ticket by {user_name}\\r\\nSubject: {ticket_name}', '1100011', 'ticket_id ticket_name ticket_link ticket_adminlink receiver_user_name sender_user_name', 1),
(16, 'ticketbox_view_save_to_client', 'پیام کاربر به کاربر - ارسال پاسخ', '', 'ارسال‌کننده پیام', 'Reply to ticket #{ticket_id}', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nYour reply to ticket \"{ticket_name}\" is sent to client \"{receiver_user_name}\".\\r\\n\\r\\nregards\\r\\n{tiny_title}\\r\\n\\r\\n', '', 'دریافت‌کننده پیام', 'Reply to ticket #{ticket_id}', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nThere is a new reply for ticket \"{ticket_name}\" by {sender_user_name}.\\r\\n{ticket_link}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '0101011', 'ticket_id ticket_name ticket_cat ticket_link ticket_adminlink sender_user_name receiver_user_name', 1),
(17, 'userprofile_save', 'ویرایش پروفایل', 'Your profile updated successfully.', '', 'Profile Update', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nYour profile update successfully.\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', 'Profile update on user \"{user_name}\"', 'Hi,\\r\\n\\r\\nThe client {user_name} updated his/her profile details.\\r\\nlogin to client panel : \\r\\n{login_link}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '1100011', 'login_link', 1),
(19, 'transfer_confirm', 'New Transfer Order', 'Thanks for your order.\\r\\nYour request will be appreciated after your payment.', '', 'Your Transfer  Order', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nYour new order for transfer \"{transfer_name}\" is submitted, and will be appreciated after the related payment.\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', 'New Transfer Order for {transfer_name}', 'Hi,\\r\\n\\r\\nthere is a new order for \"{transfer_name}\", by \"{user_name}\"\\r\\n{admin_order_link}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '1100011', 'transfer_name admin_order_link ', 1),
(18, 'dailytour_confirm', 'New Daily Tour Order', 'Thanks for your order.\\r\\nYour request will be appreciated after your payment.', '', 'Your Daily Tour  Order', 'Hi,\\r\\nDear {user_name},\\r\\n\\r\\nYour new order for daily tour \"{dailytour_name}\" is submitted, and will be appreciated after the related payment.\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', 'New Daily Tour Order for {dailytour_name}', 'Hi,\\r\\n\\r\\nthere is a new order for \"{dailytour_name}\", by \"{user_name}\"\\r\\n{admin_order_link}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '1100011', 'dailytour_name admin_order_link ', 1),
(21, 'userverification', 'پیامک تایید شماره موبایل', '', '', 'User Verification', 'Hi,\\r\\nDear client،\\r\\n\\r\\nYour email verification code is :\\r\\n{verify_code}\\r\\nPlease insert the code into the verification form.\\r\\n\\r\\nOr click on the following link to verify your email address : \\r\\n{verify_link}\\r\\n\\r\\nregards\\r\\n{tiny_title}', '', '', '', '', '', '', '', '', '0100000', 'verify_code verify_link', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticketbox`
--

CREATE TABLE `ticketbox` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL COMMENT 'دسته بندی',
  `name` varchar(512) COLLATE utf8_persian_ci NOT NULL COMMENT 'عنوان پیام',
  `date_created` int(11) NOT NULL,
  `date_updated` int(11) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='پیام/پیام‌ها';

-- --------------------------------------------------------

--
-- Table structure for table `ticketbox_post`
--

CREATE TABLE `ticketbox_post` (
  `id` int(11) NOT NULL,
  `ticketbox_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` text COLLATE utf8_persian_ci NOT NULL COMMENT 'متن درخواست',
  `date_created` int(11) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketbox_user`
--

CREATE TABLE `ticketbox_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ticketbox_id` int(11) NOT NULL,
  `view` int(1) NOT NULL COMMENT '0 = new , 1 = old',
  `flag` int(1) NOT NULL COMMENT 'Archive',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'آدرس ایمیل',
  `email_verified` int(1) NOT NULL,
  `password` varchar(255) COLLATE utf8_persian_ci NOT NULL DEFAULT '' COMMENT 'کلمه عبور',
  `permission` int(12) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'نام و نام خانوادگی',
  `wallet_credit` int(11) NOT NULL,
  `cell` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'تلفن همراه',
  `cell_verified` int(1) NOT NULL,
  `tell` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'تلفن ثابت',
  `address` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'آدرس',
  `profile_pic` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'عکس',
  `im_a` varchar(1024) COLLATE utf8_persian_ci NOT NULL COMMENT 'حرفه/شغل',
  `work_at` varchar(1024) COLLATE utf8_persian_ci NOT NULL COMMENT 'محل کار',
  `gender` varchar(1) COLLATE utf8_persian_ci NOT NULL COMMENT 'جنسیت',
  `offrate` float NOT NULL COMMENT 'Off Rate',
  `useraccess_title` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'سمت مدیریت',
  `useronline_date` int(10) NOT NULL,
  `flag` int(1) NOT NULL COMMENT 'وضعیت',
  `hide` int(1) NOT NULL,
  `register_ip` varchar(15) COLLATE utf8_persian_ci NOT NULL COMMENT 'آی پی ثبت نام',
  `login_ip` varchar(15) COLLATE utf8_persian_ci NOT NULL COMMENT 'آی پی آخرین ورود',
  `login_date` int(11) NOT NULL COMMENT '	زمان آخرین ورود',
  `date_created` int(11) NOT NULL,
  `date_updated` int(11) NOT NULL,
  `company_no` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'Company Registration No.',
  `yata_no` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'Yata No.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `email_verified`, `password`, `permission`, `name`, `wallet_credit`, `cell`, `cell_verified`, `tell`, `address`, `profile_pic`, `im_a`, `work_at`, `gender`, `offrate`, `useraccess_title`, `useronline_date`, `flag`, `hide`, `register_ip`, `login_ip`, `login_date`, `date_created`, `date_updated`, `company_no`, `yata_no`) VALUES
(1, 'info@globaltourismpro.com', 1, '9bb3da7992db2e95708e77be0a3f8938', 2, 'Ogün Özbir', 0, '+902123820940', 0, '', '1000000', '', '', '', '', 0, '', 1494345205, 0, 0, '', '', 0, 0, 1494345205, '', ''),
(2, 'jalal7h@gmail.com', 1, '3360@met', 0, 'Edmond Koligof', 0, '+909128844331', 0, '', '', 'data/user_profile_pic/2/0-1493675489-me-on-niak.jpg', '999', '', 'M', 5, '', 1494345205, 1, 0, '', '', 0, 0, 1494345205, '899889', '8777609');

-- --------------------------------------------------------

--
-- Table structure for table `useraccess`
--

CREATE TABLE `useraccess` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `user_id` int(11) NOT NULL COMMENT 'شناسه کاربر',
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
-- Indexes for table `bookmarky`
--
ALTER TABLE `bookmarky`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `cat` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cronjob`
--
ALTER TABLE `cronjob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fbcomment`
--
ALTER TABLE `fbcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kword`
--
ALTER TABLE `kword`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kword` (`kword`);
ALTER TABLE `kword` ADD FULLTEXT KEY `kword_2` (`kword`);

--
-- Indexes for table `kwordusage`
--
ALTER TABLE `kwordusage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_name` (`table_name`,`table_id`,`kword_id`);

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
-- Indexes for table `litesponsor`
--
ALTER TABLE `litesponsor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mg_dailytour`
--
ALTER TABLE `mg_dailytour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mg_dailytour_image`
--
ALTER TABLE `mg_dailytour_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mg_dailytour_language`
--
ALTER TABLE `mg_dailytour_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mg_dailytour_order`
--
ALTER TABLE `mg_dailytour_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mg_dailytour_order_item`
--
ALTER TABLE `mg_dailytour_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mg_price`
--
ALTER TABLE `mg_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_name` (`table_name`,`table_id`,`priceper_id`);

--
-- Indexes for table `mg_transfer`
--
ALTER TABLE `mg_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mg_transfer_image`
--
ALTER TABLE `mg_transfer_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mg_transfer_order`
--
ALTER TABLE `mg_transfer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mg_transfer_order_item`
--
ALTER TABLE `mg_transfer_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
-- Indexes for table `photogallery`
--
ALTER TABLE `photogallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `post_image`
--
ALTER TABLE `post_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`slug`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slug`
--
ALTER TABLE `slug`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `path` (`path`),
  ADD UNIQUE KEY `name` (`name`);

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
-- Indexes for table `ticketbox`
--
ALTER TABLE `ticketbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketbox_post`
--
ALTER TABLE `ticketbox_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketbox_user`
--
ALTER TABLE `ticketbox_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`email`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_invoice`
--
ALTER TABLE `billing_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `billing_method`
--
ALTER TABLE `billing_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bookmarky`
--
ALTER TABLE `bookmarky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cronjob`
--
ALTER TABLE `cronjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `fbcomment`
--
ALTER TABLE `fbcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kword`
--
ALTER TABLE `kword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kwordusage`
--
ALTER TABLE `kwordusage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `linkify`
--
ALTER TABLE `linkify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `linkify_config`
--
ALTER TABLE `linkify_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `litesponsor`
--
ALTER TABLE `litesponsor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mg_dailytour`
--
ALTER TABLE `mg_dailytour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mg_dailytour_image`
--
ALTER TABLE `mg_dailytour_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `mg_dailytour_language`
--
ALTER TABLE `mg_dailytour_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mg_dailytour_order`
--
ALTER TABLE `mg_dailytour_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `mg_dailytour_order_item`
--
ALTER TABLE `mg_dailytour_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `mg_price`
--
ALTER TABLE `mg_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `mg_transfer`
--
ALTER TABLE `mg_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mg_transfer_image`
--
ALTER TABLE `mg_transfer_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mg_transfer_order`
--
ALTER TABLE `mg_transfer_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mg_transfer_order_item`
--
ALTER TABLE `mg_transfer_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `page_layer`
--
ALTER TABLE `page_layer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `photogallery`
--
ALTER TABLE `photogallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `post_image`
--
ALTER TABLE `post_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `slug`
--
ALTER TABLE `slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `stat_counter`
--
ALTER TABLE `stat_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tallfooter`
--
ALTER TABLE `tallfooter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `texty`
--
ALTER TABLE `texty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `ticketbox`
--
ALTER TABLE `ticketbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticketbox_post`
--
ALTER TABLE `ticketbox_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticketbox_user`
--
ALTER TABLE `ticketbox_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `useraccess`
--
ALTER TABLE `useraccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
