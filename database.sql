-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2017 at 03:08 AM
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
(36, 2, 'mg_transfer_order', 5, 108.59, 'paypal', '230874739880N', 1492326471, 1492377895, 0);

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
  `color` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `flag` int(1) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `desc`, `kw`, `parent`, `cat`, `prio`, `logo`, `family_tree`, `color`, `flag`, `hide`) VALUES
(46, 'German', '', '', 0, 'guidingLanguages', 2, '', '', '', 1, 0),
(45, 'French', '', '', 0, 'guidingLanguages', 3, '', '', '', 1, 0),
(44, 'English', '', '', 0, 'guidingLanguages', 1, '', '', '', 1, 0),
(43, 'Shared', '', '', 0, 'transferBasis', 0, '', '', '', 1, 0),
(42, 'Vehicle', '', 'vehicle', 0, 'priceper', 5, '', '', '', 1, 0),
(41, 'Every Sundays', '', '', 0, 'departs', 2, '', '', '', 1, 0),
(40, 'Every Day', '', '', 0, 'departs', 1, '', '', '', 1, 0),
(39, 'EVERY DAY', '', '', 0, 'transferType', 0, '', '', '', 1, 1),
(38, 'Shared', '', '', 0, 'serviceBasis', 2, '', '', '', 1, 0),
(37, 'Private', '', '', 0, 'serviceBasis', 1, '', '', '', 1, 0),
(36, 'Ifant ( 0 - 2 )', '', '', 0, 'priceper', 4, '', '', '', 1, 0),
(35, 'Child ( 7-12 )', '', '', 0, 'priceper', 2, '', '', '', 1, 0),
(34, 'Child ( 3-6 )', '', '', 0, 'priceper', 3, '', '', '', 1, 0),
(33, 'Adult', '', '', 0, 'priceper', 1, '', '', '', 1, 0),
(28, 'Politic', '', '', 0, 'news', 0, '', '', '', 1, 0),
(29, 'sport', '', '', 0, 'news', 0, '', '', '', 1, 0),
(30, 'Complaint', '', '', 0, 'ticketbox', 0, '', '', '', 1, 0),
(31, 'Amendment', '', '', 0, 'ticketbox', 0, '', '', '', 1, 0),
(32, 'Cancellation', '', '', 0, 'ticketbox', 0, '', '', '', 1, 0),
(47, 'Italian', '', '', 0, 'guidingLanguages', 4, '', '', '', 1, 0),
(48, 'Specific Day', '', '', 0, 'departs', 3, '', '', '', 1, 0),
(49, 'Private', '', '', 0, 'transferBasis', 0, '', '', '', 1, 0),
(12, 'زیر دیپلم', '', '', 0, 'academic_degree', 0, '', '', '', 0, 0),
(13, 'دیپلم', '', '', 0, 'academic_degree', 0, '', '', '', 0, 0),
(14, 'فوق دیپلم', '', '', 0, 'academic_degree', 0, '', '', '', 0, 0),
(15, 'لیسانس', '', '', 0, 'academic_degree', 0, '', '', '', 0, 0),
(16, 'فوق لیسانس', '', '', 0, 'academic_degree', 0, '', '', '', 0, 0),
(17, 'دکترا', '', '', 0, 'academic_degree', 0, '', '', '', 0, 0),
(18, 'مایل به جواب دادن نیستم', '', '', 0, 'academic_degree', 0, '', '', '', 0, 0),
(19, 'شاغل', '', '', 0, 'emplyment_status', 0, '', '', '', 0, 0),
(20, 'بدون شغل', '', '', 0, 'emplyment_status', 0, '', '', '', 0, 0),
(21, 'در جستجوی کار', '', '', 0, 'emplyment_status', 0, '', '', '', 0, 0),
(22, 'دانش آموز', '', '', 0, 'emplyment_status', 0, '', '', '', 0, 0),
(23, 'دانشجو', '', '', 0, 'emplyment_status', 0, '', '', '', 0, 0),
(24, 'بازنشسته', '', '', 0, 'emplyment_status', 0, '', '', '', 0, 0),
(25, 'خانه دار', '', '', 0, 'emplyment_status', 0, '', '', '', 0, 0),
(26, 'مایل به جواب دادن نیستم', '', '', 0, 'emplyment_status', 0, '', '', '', 0, 0),
(50, 'Special Requests', '', '', 0, 'ticketbox', 0, '', '', '', 1, 0),
(51, 'Itinerary', '', '', 0, 'ticketbox', 0, '', '', '', 1, 0),
(52, 'Reservation Details', '', '', 0, 'ticketbox', 0, '', '', '', 1, 0),
(53, 'Pick Up', '', '', 0, 'ticketbox', 0, '', '', '', 1, 0),
(54, 'Drop Off', '', '', 0, 'ticketbox', 0, '', '', '', 1, 0);

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
  `date` int(10) NOT NULL COMMENT 'زمان',
  `flag` int(1) NOT NULL COMMENT 'وضعیت',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='نظر/نظرات' ROW_FORMAT=DYNAMIC;

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
(1, 'About GlobalTourismPro', '{_URL}/page-3.html', '', 1, 0, 0, '1', 0),
(2, 'FAQ', '{_URL}/faq', '', 1, 0, 0, '3', 0),
(3, 'News RSS', '{_URL}/rss/news.xml', '', 1, 0, 0, '3', 0),
(4, 'Product RSS', '{_URL}/rss/item.xml', '', 1, 0, 0, '3', 0),
(5, 'Agency Request', '{_URL}', '', 1, 0, 0, '2', 0),
(6, 'Home', '{_URL}/', '', 1, 1, 0, '4', 0),
(7, 'Contact', '{_URL}/contact', '', 1, 2, 0, '4', 0),
(8, 'About', '{_URL}/about', '', 1, 0, 6, '4', 1),
(9, 'About', '{_URL}/about', '', 1, 0, 6, '4', 1),
(10, 'FAQ', '{_URL}/faq', '', 1, 0, 8, '4', 0),
(11, 'About', '{_URL}/about', '', 1, 3, 0, '4', 0),
(12, 'News', '{_URL}/news', '', 1, 5, 0, '4', 0),
(13, 'FAQ', '{_URL}/faq', '', 1, 5, 0, '4', 0);

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
(1, 'Global Tourism Pro', 0, 0, 0, 1, 0),
(2, 'Connect to us', 0, 0, 0, 1, 0),
(3, 'More', 0, 0, 0, 1, 0),
(4, 'Header', 1, 0, 0, 1, 0);

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
  `top_flag` int(1) NOT NULL,
  `flag` int(1) NOT NULL COMMENT 'Status',
  `date_created` int(11) NOT NULL,
  `date_updated` int(11) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Daily Tour/Daily Tours';

--
-- Dumping data for table `mg_dailytour`
--

INSERT INTO `mg_dailytour` (`id`, `name`, `position_id`, `serviceBasis_id`, `departs_id`, `duration`, `highlights`, `itinerary`, `inclusions`, `conditions`, `notes`, `date_from`, `date_to`, `departure_central_flag`, `departure_central_point`, `departure_central_time`, `deathline`, `top_flag`, `flag`, `date_created`, `date_updated`, `hide`) VALUES
(1, '1-DAY LONDON HOP ON HOP OFF TOUR', 29, 38, 40, '1 Day', '', '<p><span class=\"metin\"><strong>Available Guiding Language(s):</strong> <br />&bull; Audio Guide<br />&bull; Chinese, English, French, German, Italian, Japanese, Portuguese, Russian, Spanish <br /><br /><strong>Included Services:</strong><br />&bull; This ticket will be valid 48 hours between 4th October until 29th February 2016!<br />&bull; 1 day valid ticket<br />&bull; Complimentary access for second day during the period of April 1 - June 30<br />&bull; All sightseeing mentioned in the itinerary &nbsp;<br />&bull; Licensed live tour guide on Yellow Route&nbsp; <br /><br /><strong>Excluded Services:</strong><br />&bull; Pick up/drop off service from/to hotel<br />&bull; Tips to the guide and driver (optional)<br />&bull; Meals / beverage</span></p>', '<p><span class=\"metin\">HIGHLIGHTS: LONDON AQUARIUM, LONDON EYE, ST JAMES&rsquo;S PARK, ROYAL BUCKINGHAM PALACE, NATURAL HISTORY MUSEUM</span></p>\\n<hr size=\"1\" />\\n<p><span class=\"metin\">Visit London, the capital city of England - with CitySightseeing:<br />Visit London and see the sights of the bustling capital city and the largest metropolitan area in the United Kingdom from the top deck of an open top red bus with City Sightseeing and The Original Tour. London is packed with plenty of things to do so let us guide you through the city to visit the prime locations and top attractions including historical museums, striking parks, and modern galleries. We invite you to experience all the magical sights and sounds of London in a comfortable and secure environment.<br /><br />City Sightseeing and the Original Tours hop on hop off bus tours are THE essential way to visit this vivacious city, which is bursting with breathtaking sights and attractions. The beauty of the London sightseeing bus tour is that you can use your ticket on three premium routes allowing you to interchange between them to hop off at over 60 points of interest in the city.<br /><br />Let our bus tour guide you through the things to do in London:<br />Our bus tours offer you the chance to hop off the colourful bus at any one of the marked stops and visit numerous attractions all in one day. Why not use the red route and take the children to visit the Sea Life London Aquarium to learn about Europe&rsquo;s largest global marine life collection, interact with the animals and discover over 5,000 species of sea creatures. A short stroll away, you will encounter an extraordinary piece of engineering design and architecture &ndash; The London Eye. For those who enjoy overlooking the a city from a great height The London Eye will take you on a flight above and beyond for exhilarating views as far as Windsor Castle! You will also observe many of the grand sights and things to do where your tour bus will transport you.<br /><br />Why not change routes and use the Yellow line to visit St James&rsquo;s Park, the royal Buckingham Palace or St Paul&rsquo;s Cathedral? You can even pay a visit to many of the charming museums and renowned shops &ndash; just use an interchange point and take the Blue line to stopover at the Natural History Museum, Science Museum or Wellington Museum amongst other remarkable landmarks.<br /><br />London bus tours include amazing free offers The Original Tour is delighted to offer all customers a FREE cruise pass on the River Thames through London. Simply collect your free pass from a member of The Original Tour staff. On arriving at the pier of your choice go directly to the boat and present the pass to City Cruises staff, then hop-on and hop-off the cruise as you please. Passes are collected by the City Cruises staff on the outward journey, so for subsequent journeys you will need to show a valid Original Tour bus ticket. Cruises depart from Westminster Pier (Big Ben) and the Tower (of London) Pier. The hop-on, hop-off passes are valid within the same 24 hours as your bus ticket.<br /><br />You may hop off at any of the mentioned HO-HO points and hop on to another bus, on the same day of the tour, with the same ticket.<br /><br /><strong>Red Route:</strong><br /><u>Stop 1:</u> Victoria - <u>Stop 2:</u> Hyde Park Corner - <u>Stop 3:</u> Marble Arch - <u>Stop 4:</u> George Street - <u>Stop 5:</u>Madame Tussauds - <u>Stop 6:</u> Whitehouse Hotel - <u>Stop 7:</u> Oxford Circus - <u>Stop 8:</u> Piccadilly Circus - <u>Stop 9:</u>Trafalgar Square (Pall Mall) - <u>Stop 10:</u> Trafalgar Square (Whitehall) - <u>Stop 11:</u> Cenotaph - <u>Stop 12:</u>Westminster Bridge - <u>Stop 13:</u> London Eye - <u>Stop 14:</u> Covent Garden - <u>Stop 15:</u> St. Pauls Cathedral - <u>Stop 16:</u> The Monument - <u>Stop 17:</u> City Hall - <u>Stop 18:</u> Tower of London - <u>Stop 19:</u> Shakespeares Globe - <u>Stop 20:</u> Tate Modern - <u>Stop 21:</u> Embankment Pier - <u>Stop 22:</u> Westminster Pier - <u>Stop 23:</u> Lambeth Palace -<u>Stop 24:</u> Lambeth Bridge - <u>Stop 25:</u> Buckingham Palace - <u>Stop 26:</u> Victoria - <u>Stop 27:</u> Green Line Coach Stn.<br /><br /><strong>Yellow Route:</strong><br /><u>Stop 1:</u> Piccadilly Circus - <u>Stop 2:</u> Trafalgar Square - <u>Stop 3:</u> St James Palace - <u>Stop 4:</u> Piccadilly - <u>Stop 5:</u>Hyde Park Corner - <u>Stop 6:</u> Park Lane - <u>Stop 7:</u> Victoria - <u>Stop 8:</u>&nbsp;Big Ben and the House of Parliament -<u>Stop 9:</u>&nbsp;Lambeth Palace - <u>Stop 10:</u>&nbsp;Westminster Bridge - <u>Stop 11:</u>&nbsp;Parliament Street - <u>Stop 12:</u>&nbsp;Horse Guards Parade - <u>Stop 13:</u>&nbsp;Charing Cross - <u>Stop 14:</u>&nbsp;Stanley Gibbons - <u>Stop 15:</u>&nbsp;Covent Garden - <u>Stop 16:</u>&nbsp;St. Pauls Cathedral - <u>Stop 17:</u>&nbsp;Queen Victoria Street - <u>Stop 18:</u>&nbsp;The Monument - <u>Stop 19:</u>&nbsp;City Hall -<u>Stop 20:</u>&nbsp;Tower of London - <u>Stop 21:</u>&nbsp;Shakespeares Globe - <u>Stop 22:</u>&nbsp;Tate Modern - <u>Stop 23:</u>&nbsp;Embankment Pier - <u>Stop 24:</u>&nbsp;Trafalgar Square - <u>Stop 25:</u>&nbsp;St james<br /><br /><strong>Blue Route:</strong><br /><u>Stop 1:</u>&nbsp;Kensington Palace - <u>Stop 2:</u>&nbsp;Baden-Powell House - <u>Stop 3:</u>&nbsp;Natural History Museum - <u>Stop 4:</u>&nbsp;Science Museum - <u>Stop 5:</u>&nbsp;Victoria and Albert Museum - <u>Stop 6:</u>&nbsp;Brompton Oratory - <u>Stop 7:</u>&nbsp;Harrods, Knightsbridge - <u>Stop 8:</u>&nbsp;Harvey Nichols - <u>Stop 9:</u>&nbsp;Hyde Park - <u>Stop 10:</u>&nbsp;Ritz Hotel - <u>Stop 11:</u>&nbsp;Piccadilly Circus - <u>Stop 12:</u>&nbsp;Russel Square - <u>Stop 13:</u>&nbsp;British Museum - <u>Stop 14:</u>&nbsp;Wellington Museum - <u>Stop 15:</u>&nbsp;Royal Albert Hall - <u>Stop 16:</u>&nbsp;Albert Memorial - <u>Stop 17:</u>&nbsp;Kensington High Street</span></p>', '<p><span class=\"metin\">&bull; In the rare event of lack of availability due to special events, an alternative day or service may be advised.<br />&bull; No refund will be given in the event of late arrivals to the tour departure point or in the event of No-Show.<br />&bull; Amendments are upon availability and may require supplement fee.</span></p>', '<p><span class=\"metin\"><strong>Departure Times:</strong><br />Red Route: 8:30 am ~ 5:20 pm&nbsp;<br />Yellow Route: 8:30 am ~ 8:00 pm<br />Blue Route: 8:45 am ~ 5:10 pm<br /><br /><strong>Departure Points:</strong><br />Red Route Stop 1 - Victoria&nbsp;<br />Yellow Route Stop 1 - Piccadilly Circus&nbsp;&nbsp;<br />Blue Route Stop 1 - Russell Square<br /><br /><strong>Frequency:</strong><br />Every 10 - 30 mins<br /><br /><strong>Duration:</strong><br />135 mins (Red and Yellow route)&nbsp;<br /><br /><strong>Season:</strong><br />All year round (excluding 25th December)</span></p>', '2017/01/01', '2017/12/10', 1, '17 Gloddaeth Street, BINHAM, NR21 6RS', '11:55', 0, 0, 1, 0, 0, 0),
(3, '24 HOUR RIVER CRUISE IN LONDON TICKET', 29, 38, 40, '1 Day', '', '<p><span class=\"metin\"><strong>Available Guiding Language(s):</strong> <br />&bull; Unescorted <br /><br /><strong>Included Services:</strong><br />&bull;&nbsp;1 day valid Cruise ticket<br />&bull; All sightseeing mentioned in the itinerary <br /><br /><strong>Excluded Services:</strong><br />&bull; Pick up / drop off service from/to hotel<br />&bull; Tips to the guide and driver (optional)<br />&bull; Meals / beverage<br />&bull; Personal expenses</span></p>', '<p><span class=\"metin\">HIGHLIGHTS: BIG BEN, THE LONDON EYE, TOWER BRIDGE</span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>What`s Unique:</strong><br />&bull; The best way to explore London!<br />&bull; See&nbsp;Big Ben, The London Eye, Tower Bridge and more!<br /><br /><strong>Description &amp; Program:</strong><br />The River Red Rover is all-day hop on, hop off Thames river pass offering unlimited access to the river for 24 hours. You can hop on and hop off at any one of four piers, with open passage on any cruises sightseeing boats for a full day spent exploring the sights of the Thames.&nbsp;<br />With comfortable seats, hot and cold refreshments, guided commentary, friendly staff and (most importantly) uncompromised views from all-weather sightseeing boats, this is the best way to see the heart of London. &nbsp;</span></p>', '<p><span class=\"metin\">&bull; In the rare event of lack of availability due to special events an alternative day or service may be advised.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show.<br />&bull;&nbsp;Actual&nbsp;times may vary depending upon the state of the tide and other river traffic. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>Cancellation Policy:</strong> Once booked, this product cannot be cancelled. </span></p>', '<p><span class=\"metin\"><strong>Operating Hours:</strong><br />10:00 am - 7:00 pm&nbsp;<br /><br />Greenwich Pier&nbsp;10:40 am - 6:40 pm<br /><br /><strong>Departure Point:</strong><br />Westminster Pier, or London Eye Pier or Tower and Greenwich Pier<br /><br /><strong>Frequency:</strong><br />30 &nbsp;Minutes<br /><br /><strong>Additional Info:</strong><br />&bull; Clients must be ready at the departure point 15 minutes before the exact departure time.</span></p>', '2017/01/01', '2017/12/10', 0, '', '', 0, 0, 1, 0, 0, 0),
(4, '', 29, 0, 0, '', '', '', '', '', '', '2017/01/01', '2017/12/10', 0, '', '', 0, 0, 0, 0, 0, 1),
(5, '', 0, 0, 0, '', '', '', '', '', '', '2017/01/01', '2017/12/10', 0, '', '', 0, 0, 1, 0, 0, 1),
(6, '', 0, 0, 0, '', '', '', '', '', '', '2017/01/01', '2017/12/10', 0, '', '', 0, 0, 1, 0, 0, 1),
(7, '72 HOURS RIVER RED ROVER CRUISE TOUR TICKET', 29, 38, 40, '3 Days', '', '<p><span class=\"metin\"><strong>Available Guiding Language(s):</strong> <br />&bull; Unescorted <br /><br /><strong>Included Services:</strong><br />&bull;&nbsp;3 day valid Cruise ticket<br />&bull; All sightseeing mentioned in the itinerary <br /><br /><strong>Excluded Services:</strong><br />&bull; Pick up / drop off service from/to hotel<br />&bull; Tips to the guide and driver (optional)<br />&bull; Meals / beverage<br />&bull; Personal expenses</span></p>', '<p><span class=\"metin\">HIGHLIGHTS: BIG BEN, THE LONDON EYE, TOWER BRIDGE</span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>What`s Unique:</strong><br />&bull; The best way to explore London!<br />&bull; See&nbsp;Big Ben, The London Eye, Tower Bridge and more!<br /><br /><strong>Description &amp; Program:</strong><br />The River Red Rover is all-day hop on, hop off Thames river pass offering unlimited access to the river for 72 hours. You can hop on and hop off at any one of four piers, with open passage on any cruises sightseeing boats for a full day spent exploring the sights of the Thames.&nbsp;<br />With comfortable seats, hot and cold refreshments, guided commentary, friendly staff and (most importantly) uncompromised views from all-weather sightseeing boats, this is the best way to see the heart of London.</span></p>', '<p><span class=\"metin\">&bull; In the rare event of lack of availability due to special events an alternative day or service may be advised.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show.<br />&bull;&nbsp;Actual&nbsp;times may vary depending upon the state of the tide and other river traffic.&nbsp; </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>Cancellation Policy:</strong> Once booked, this product cannot be cancelled. </span></p>', '<p><span class=\"metin\"><strong>Operating Hours:</strong><br />10:00 am - 7:00 pm<br /><br />Greenwich Pier: 10:40 am - 6:40 pm<br /><br /><strong>Departure Point:</strong><br />Westminster Pier, or London Eye Pier or Tower and Greenwich Pier<br /><br /><strong>Frequency:</strong><br />30 &nbsp;Minutes<br /><br /><strong>Additional Info:</strong><br />&bull; Clients must be ready at the departure point 30 minutes before the exact departure time.</span></p>', '2017/01/01', '2017/12/10', 0, '', '', 0, 0, 1, 0, 0, 0),
(8, 'DAY TRIP TO EDINBURGH WITH EDINBURGH CASTLE AND BUS TOUR', 29, 38, 48, '15:00 Hours', '', '<p><span class=\"metin\"><strong>Available Guiding Language(s):</strong> <br />&bull; Unescorted <br /><br /><strong>Included Services:</strong><br />&bull;&nbsp;Reserved train seats<br />&bull;&nbsp;Open Top Bus Tour<br />&bull;&nbsp;Admissions to Edinburgh Castle <br /><br /><strong>Excluded Services:</strong><br />&bull;&nbsp;Guiding services<br />​&bull; Visa for Ireland (if necessary)<br />&bull; Pick up/drop off service from/to hotel&nbsp;(available upon request)<br />&bull; Gratuities (optional)<br />&bull; Meals / beverage&nbsp;&nbsp;</span></p>', '<p><span class=\"metin\">HIGHLIGHTS: LONDON TO EDINBURGH, EDINBURGH CASTLE, OPEN TOP BUS TOUR, TRAIN</span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>What`s Unique:</strong><br />&bull;&nbsp;Return Train Tickets to Edinburgh with Reserved Seats<br />&bull;&nbsp;Entry to Edinburgh Castle<br />&bull;&nbsp;Open Top Bus Tour<br />&bull;&nbsp;Designated Time for Shopping<br />&nbsp;<br /><br /><strong>Description &amp; Program:</strong><br /><strong>Departure from King&rsquo;s Cross Station</strong><br />Our Golden Tours representative will meet and greet you at the ticket office in King&rsquo;s Cross Station at 6.30 am. You&rsquo;ll be given a welcome pack full of exciting details about your day in Scotland, before being escorted to your train with reserved seats. The journey will swoop along Britain&rsquo;s scenic east coast, before arriving in Edinburgh at 11.32 am! You&rsquo;ll also get a handy Edinburgh map to make navigating the city a little easier.<br /><br /><strong>Open Top Bus Tour in Edinburgh</strong><br />See the Scottish capital from a hop on hop off open top bus tour and take in all the major sights! From the Queen&rsquo;s official residence when she visits Scotland, Palace of Holyroodhouse, to towering Edinburgh Castle that dominates the Edinburgh skyline, you&rsquo;ll soon get acquainted with the charming city during this tour. You&rsquo;ll cruise down Royal Mile, one of the busiest streets in Edinburgh&rsquo;s historic old town, and past the famed Greyfriars Bobby monument.<br /><br /><strong>Edinburgh Castle</strong><br />You&rsquo;ll enjoy a free admission to Edinburgh Castle &ndash; this much-loved fortress has been involved in many historical conflicts since the 12th century and stands guard over the city from atop the Castle Rock. See the dazzling Scottish Crown Jewels and pose for photos with unbeatable panoramic views of the city skyline in the background.<br /><br /><strong>Return Journey</strong><br />Bid goodbye to Scotland as your train departs Edinburgh at 5.30 pm, arriving back in London at 10.18 pm.</span></p>', '<p><span class=\"metin\">&bull;&nbsp;This tour operates with minimum number booking on provider`s side and if doesn`t operate an alternative day or service may be advised.<br />&bull; In the rare event of lack of availability due to special events an alternative day or service may be advised.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show.<br />&bull; Once booked, this tour cannot be cancelled. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>Cancellation Policy:</strong> Once booked, this product cannot be cancelled. </span></p>', '<p><span class=\"metin\"><strong>Departure Schedule: London - Edinburgh</strong><br /><u>Check-in time</u>: 6:30 am<br /><u>Departure from Kings Cross Station</u>: 7:01 am<br /><u>Arrival at Edinburgh Waverly Station</u>: 11:33 am<br /><br /><strong>Departure Schedule: Edinburgh - London</strong><br /><u>Check-in time</u>: 5:00 pm<br /><u>Departure from Edinburgh Waverly Station</u>: 5:30 pm<br /><u>Arrival at Kings Cross Station</u>: 10:18 pm<br /><br /><strong>Duration:</strong><br />15 Hours (approx.)<br /><br /><strong>Schedule:</strong><br />All Year: Monday to Thursday<br /><br /><strong>Ending Point:</strong><br />Returns to the original departure point<br /><br /><strong>Additional Info:</strong><br />&bull; Clients must be ready at the departure point 15 minutes before the exact departure time.</span></p>', '2017/01/05', '2017/12/10', 1, 'Some DEparture Point Ede', '12:00', 2, 0, 1, 1482872580, 1492167920, 0),
(9, 'DAY TRIP TO LIVERPOOL BY VIRGIN TRAINS INCLUDING TICKET FOR STANDARD SEAT AND VISIT TO THE BEATLES STORY MUSEUM', 29, 38, 48, '14:00 Hours', 'Bruges, Venice of the north, Grand palace square, Market hall', '<p><span class=\"metin\"><strong>Available Guiding Language(s):</strong> <br />&bull; Unescorted <br /><br /><strong>Included Services:</strong><br />&bull;&nbsp;Reserved seats on Virgin Trains<br />&bull;&nbsp;Beatles Magical Mystery Tour<br />&bull;&nbsp;Admissions to Beatles Story <br /><br /><strong>Excluded Services:</strong><br />&bull; Guiding services<br />&bull; Pick up/drop off service from/to hotel&nbsp;(available upon request)<br />&bull; Gratuities (optional)<br />&bull; Meals / beverage&nbsp;&nbsp;&nbsp;</span></p>', '<p><span class=\"metin\">HIGHLIGHTS: LONDON TO LIVERPOOL, BEATLES STORY, MAGICAL MYSTERY BUS TOUR, TRAIN</span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>What`s Unique:</strong><br />&bull; Reserved Seats on Virgin Trains<br />&bull; Beatles Magical Mystery Tour<br />&bull; Entry to the Beatles Story<br />&bull; Designated Time for Shopping and Sightseeing<br />&nbsp;<br /><strong>Description &amp; Program:</strong><br /><strong>Departure from Euston Station</strong><br />Make your way to Euston Station and meet your Golden Tours representative at 6.30am by the ticket office. Your train departs at 7.07am and arrives at Liverpool Lime Street Station at 9.47am &ndash; the representative will take you to your comfortable reserved seats, so all you have to do is relax and listen to your favourite Beatles songs!<br /><br /><strong>Liverpool</strong><br />Once disembarking in Liverpool, we highly recommend heading to Matthew Street and visiting the Beatles Shop and Matthew Street Gallery. Stuffed full of Beatles memorabilia, the Beatles Shop is the place to pick up a whole host of souvenirs relating to the Fab Four. The Cavern Pub (opposite the Cavern Club) is a great place to have a drink from 11am &ndash; it displays a number of unique and authentic Beatles items.<br /><br /><strong>Beatles Story&nbsp;</strong><br />After leaving Matthew Street, make your way to Albert Dock and to the Beatles Story exhibition. See how four young men from this city achieved worldwide fame and charmed the public with their catchy hits. The exhibition reveals the lives of John, Paul, George and Ringo from their early days through to their solo careers.<br /><br /><strong>Beatles Magical Mystery Bus Tour</strong><br />Your Liverpool afternoon is spent onboard a Beatles Magical Mystery tour, which will be conveniently booked for you. Departing from the Beatles Story Exhibition and finishing two hours later at the Cavern Club, the tour is given on a vintage 1960&rsquo;s coach, identical to the vehicle used in the 1967 film Magical Mystery Tour! (Vehicle subject to change.)<br /><br />The bus will visit over 30 classic sites, including the Fab Four&rsquo;s former homes, schools and birthplaces. You&rsquo;ll see iconic Penny Lane and Strawberry Fields, names of Liverpool locations that inspired classic Beatles tunes!<br /><br /><strong>Return Journey</strong><br />As your Beatles-filled day comes to an end, head back to Liverpool Lime Street station, where your train will depart at 6.48pm, arriving back in London at 9.06pm.</span></p>', '<p><span class=\"metin\">&bull;&nbsp;This tour operates with minimum number booking on provider`s side and if doesn`t operate an alternative day or service may be advised.<br />&bull; In the rare event of lack of availability due to special events an alternative day or service may be advised.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show.<br />&bull; Once booked, this tour cannot be cancelled.&nbsp; </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\"><strong>Cancellation Policy:</strong> Once booked, this product cannot be cancelled. </span></p>', '<p><span class=\"metin\"><u><strong>Departure Schedule: London - Liverpool</strong></u><br /><strong>Check-in time</strong>: 6:30 am<br /><strong>Departure from Euston Station</strong>: 7:07 am<br /><strong>Arrival at Liverpool Station</strong>: 9:23 am<br /><br /><u><strong>Departure Schedule: Liverpool - London</strong></u><br /><strong>Check-in time</strong>: 6:15 pm<br /><strong>Departure from Liverpool Station</strong>: 6:47 pm<br /><strong>Arrival at Euston Station</strong>: 9:04 pm<br /><br /><strong>Duration:</strong><br />15 Hours (approx.)<br /><br /><strong>Schedule:</strong><br />Monday to Saturday<br /><br /><strong>Ending Point:</strong><br />Returns to the original departure point<br /><br /><strong>Additional Info:</strong><br />&bull; Clients must be ready at the departure point 15 minutes before the exact departure time.</span></p>', '2017/01/12', '2017/12/31', 1, 'Paris, N9842', '08:00', 2, 0, 1, 1482872832, 1492169608, 0);

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
(2, 9, 44),
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
(22, 8, 2, 'D17041423662', '2017/02/27', 'George McDonnald', '', '', 44, '', '+908283748272', 0, 0, 0, 'WAITING', 1486547803, 0),
(24, 8, 2, 'D17041226662', '2017/02/27', 'George McDonnald', '', '', 44, '', '+908283748272', 0, 0, 0, 'WAITING', 1486547881, 1),
(27, 8, 2, 'D17041426669', '2017/01/10', 'George McDonnald', '', '', 44, '', '+908283748272', 0, 0, 0, 'WAITING', 1486548056, 0),
(29, 8, 2, 'D17041426667', '2017/02/27', 'George McDonnald', '', '', 44, '', '+908283748272', 0, 0, 0, 'WAITING', 1486552453, 0),
(34, 8, 2, 'D17041426665', '2017/02/27', 'George McDonnald', '', '', 44, '', '+908283748272', 0, 0, 0, 'WAITING', 1486571771, 0),
(44, 8, 2, 'D17041426432', '2017/04/18', 'John Due', '', '', 44, 'Some Cigarette', '+493344210982', 0, 0, 0, 'WAITING', 1491245634, 0),
(47, 9, 2, 'D17041426662', '2017/04/26', 'Loreena McKennitt', '', '', 45, '', '+90221184821', 0, 0, 0, 'WAITING', 1492171076, 1),
(48, 9, 2, 'D17041434852', '2017/04/26', 'loreena mckennitt', '', '', 45, '', '+90221184821', 1, 0, 0, 'FINZ', 1492172155, 0),
(49, 9, 2, 'D17041419477', '2017/04/26', 'loreena mckennitt', '', '', 45, 'A glass of tea.', '+90221184821', 0, 0, 0, 'CONFIRM', 1492172387, 0);

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
(2, 19, 33, 1, 234, 0),
(3, 20, 33, 1, 234, 0),
(4, 21, 33, 1, 234, 0),
(5, 22, 33, 1, 234, 0),
(6, 23, 33, 1, 234, 0),
(7, 24, 33, 1, 234, 0),
(8, 25, 33, 1, 234, 0),
(9, 26, 33, 1, 234, 0),
(10, 27, 33, 1, 234, 0),
(11, 28, 33, 1, 234, 0),
(12, 29, 33, 1, 234, 0),
(13, 30, 33, 1, 234, 0),
(14, 31, 33, 1, 234, 0),
(15, 32, 33, 1, 234, 0),
(16, 33, 33, 1, 234, 0),
(17, 34, 33, 1, 234, 0),
(18, 35, 33, 1, 234, 0),
(19, 36, 33, 1, 234, 0),
(20, 37, 33, 1, 234, 0),
(21, 38, 33, 1, 234, 0),
(22, 39, 33, 1, 234, 0),
(23, 40, 33, 1, 234, 0),
(24, 41, 33, 1, 234, 0),
(25, 42, 33, 1, 234, 0),
(26, 43, 34, 1, 179, 0),
(27, 43, 35, 2, 179, 0),
(28, 44, 35, 1, 221, 0),
(29, 44, 34, 3, 221, 0),
(30, 44, 33, 2, 234, 0),
(37, 47, 34, 1, 179, 0),
(38, 47, 35, 3, 179, 0),
(39, 47, 33, 2, 193, 0),
(40, 48, 34, 1, 179.2, 0),
(41, 48, 35, 3, 179.2, 0),
(42, 48, 33, 2, 192.75, 0),
(43, 49, 34, 1, 179.2, 0),
(44, 49, 35, 3, 179.2, 0),
(45, 49, 33, 2, 192.75, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mg_price`
--

CREATE TABLE `mg_price` (
  `id` int(11) NOT NULL,
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` int(11) NOT NULL,
  `priceper_id` int(11) NOT NULL,
  `price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mg_price`
--

INSERT INTO `mg_price` (`id`, `table_name`, `table_id`, `priceper_id`, `price`, `hide`) VALUES
(9, 'mg_dailytour', 1, 34, '21.28', 0),
(8, 'mg_dailytour', 1, 33, '42.56', 0),
(7, 'mg_dailytour', 1, 35, '21.28', 0),
(6, 'mg_dailytour', 1, 34, '21.28', 1),
(10, 'mg_dailytour', 3, 33, '23.35', 0),
(11, 'mg_dailytour', 3, 35, '14.01', 0),
(12, 'mg_dailytour', 3, 34, '14.01', 0),
(13, 'mg_dailytour', 7, 33, '29.19', 0),
(14, 'mg_dailytour', 7, 35, '14.01', 0),
(15, 'mg_dailytour', 7, 34, '14.01', 0),
(16, 'mg_dailytour', 8, 33, '234.3', 0),
(17, 'mg_dailytour', 8, 35, '220.63', 0),
(18, 'mg_dailytour', 8, 34, '220.64', 0),
(19, 'mg_dailytour', 9, 33, '192.75', 0),
(20, 'mg_dailytour', 9, 35, '179.2', 0),
(21, 'mg_dailytour', 9, 34, '179.2', 0),
(22, 'mg_transfer', 1, 42, '95.73', 0),
(23, 'mg_transfer', 2, 42, '166.95', 0),
(24, 'mg_transfer', 3, 42, '122.58', 0),
(25, 'mg_transfer', 4, 42, '318.72', 0),
(26, 'mg_transfer', 5, 42, '108.59', 0);

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
  `vehicle_id` int(11) NOT NULL COMMENT 'Vehicle',
  `date_start` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'From',
  `date_end` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'To',
  `deathline` int(11) NOT NULL COMMENT 'Deathline',
  `flag` int(1) NOT NULL COMMENT 'Status',
  `date_created` int(11) NOT NULL,
  `date_updated` int(11) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Transfer/Transfers';

--
-- Dumping data for table `mg_transfer`
--

INSERT INTO `mg_transfer` (`id`, `name`, `position_id`, `transferBasis_id`, `tariff`, `itinerary`, `conditions`, `notes`, `vehicle_id`, `date_start`, `date_end`, `deathline`, `flag`, `date_created`, `date_updated`, `hide`) VALUES
(1, 'GATWICK AIRPORT (LGW)', 29, 49, '24 Hours  00:00 - 23:59', '<p><span class=\"metin\"><strong>Private Transfer:</strong><br />Private Transfer will be for your own personal use and will not be shared with other travelers. We recommend this transfer if you are looking to arrive and depart hassle free.<br /><br /><strong>Arrival Instructions:</strong><br />Please proceed to the Arrivals Hall after the baggage &amp; customs where our driver will be holding a clipboard with your name written on it. Please identify yourself by showing your confirmation voucher and in turn they will transfer you immediately.<br /><br /><strong>Departure Instructions:</strong><br />Wait at the lobby of your accommodation where our transfer assistance will meet you. Please present your service voucher and in turn they will transfer you immediately.</span></p>', '<p><span class=\"metin\">&bull; Please make sure that you entered travel information correctly at time of booking. Supplements might occur due to mis-information on arrival/departure details.<br />&bull; For this <strong>Private Transfer </strong>we advise you to call the Local Tour Operator from the numbers on the voucher&nbsp;<u>if you could not meet with the transfer assistance at remote airports or busy hours</u>&nbsp;maximum 20 minutes after your exact pick up time before leaving the Airport/Port/Residence. Otherwise your transfer may be counted as No Show of yours and refund may not apply.<br />&bull; Transfers to/from outside of city center is upon availability and may require supplement fee.<br />&bull; Delayed flight arrivals are monitored no extra charge for flight delays.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Cancellation Policy: This service can be cancelled without any penalties&nbsp;<strong>4</strong>&nbsp;day(s) prior to first service date.</span></p>', '<p><span class=\"metin\"><strong>Maximum Waiting Time At Arrival Point:</strong><br />1 Hour<br />In the event of a problem with your luggage please notify local provider of the delay. There is no obligation to wait extra time. In case they can wait extra parking fee may be resulted due to delays must be paid on site.<br />&nbsp;<br /><strong>Maximum Waiting Time At Departure Point:</strong><br />20 Minutes<br />&nbsp; &nbsp;<br /><strong>Luggage Information:</strong><br />1 suitcase per person is allowed. On private transfers if the number of luggage are more than this or there are pushchairs/wheelchairs etc.; a big enough vehicle must be booked for comfort and safety. Oversized luggage (e.g. surfboards golf clubs or bikes) may have extra fee.&nbsp;Provider cannot be held responsible for damaged baggage personal belongings or any items left in the vehicle.<br /><br /><strong>Children/Infants:</strong><br />Please make sure infants and children are included in the total number of passengers e.g. if three adults one child and an infant are travelling a private transfer vehicle for at least five people needed to be booked. On shuttles infants under the age of 2 are free if they sit on a responsible adult`s knee but they must still be included in the booking. &nbsp;</span></p>', 1, '2017/01/01', '2017/12/01', 0, 1, 1482878727, 1482878727, 0),
(2, 'HEATHROW AIRPORT (LHR)', 29, 49, '24 Hours  00:00 - 23:59', '<p><span class=\"metin\"><strong>Private Transfer:</strong><br />Private Transfer will be for your own personal use and will not be shared with other travelers. We recommend this transfer if you are looking to arrive and depart hassle free.<br /><br /><strong>Arrival Instructions:</strong><br />Please proceed to the Arrivals Hall after the baggage &amp; customs where our driver will be holding a clipboard with your name written on it. Please identify yourself by showing your confirmation voucher and in turn they will transfer you immediately.<br /><br /><strong>Departure Instructions:</strong><br />Wait at the lobby of your accommodation where our transfer assistance will meet you. Please present your service voucher and in turn they will transfer you immediately.</span></p>', '<p><span class=\"metin\">&bull; Please make sure that you entered travel information correctly at time of booking. Supplements might occur due to mis-information on arrival/departure details.<br />&bull; For this <strong>Private Transfer </strong>we advise you to call the Local Tour Operator from the numbers on the voucher&nbsp;<u>if you could not meet with the transfer assistance at remote airports or busy hours</u>&nbsp;maximum 20 minutes after your exact pick up time before leaving the Airport/Port/Residence. Otherwise your transfer may be counted as No Show of yours and refund may not apply.<br />&bull; Transfers to/from outside of city center is upon availability and may require supplement fee.<br />&bull; Delayed flight arrivals are monitored no extra charge for flight delays.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Cancellation Policy: This service can be cancelled without any penalties&nbsp;<strong>4</strong>&nbsp;day(s) prior to first service date. </span></p>', '<p><span class=\"metin\"><strong>Maximum Waiting Time At Arrival Point:</strong><br />1 Hour<br />In the event of a problem with your luggage please notify local provider of the delay. There is no obligation to wait extra time. In case they can wait extra parking fee may be resulted due to delays must be paid on site.<br />&nbsp;<br /><strong>Maximum Waiting Time At Departure Point:</strong><br />20 Minutes<br />&nbsp; &nbsp;<br /><strong>Luggage Information:</strong><br />1 suitcase and 1 carry-on bag per person is allowed. On private transfers if the number of luggage are more than this or there are pushchairs/wheelchairs etc.; a big enough vehicle must be booked for comfort and safety. Oversized luggage (e.g. surfboards golf clubs or bikes) may have extra fee.&nbsp;Provider cannot be held responsible for damaged baggage personal belongings or any items left in the vehicle.<br /><br /><strong>Children/Infants:</strong><br />Please make sure infants and children are included in the total number of passengers e.g. if three adults one child and an infant are travelling a private transfer vehicle for at least five people needed to be booked. On shuttles infants under the age of 2 are free if they sit on a responsible adult`s knee but they must still be included in the booking.</span></p>', 2, '2017/01/01', '2017/12/01', 0, 1, 1482878907, 1482878907, 0),
(3, 'HEATHROW AIRPORT (LHR)', 29, 49, '24 Hours  00:00 - 23:59', '<p><span class=\"metin\"><strong>Private Transfer:</strong><br />Private Transfer will be for your own personal use and will not be shared with other travelers. We recommend this transfer if you are looking to arrive and depart hassle free.<br /><br /><strong>Arrival Instructions:</strong><br />Please proceed to the Arrivals Hall after the baggage &amp; customs where our driver will be holding a clipboard with your name written on it. Please identify yourself by showing your confirmation voucher and in turn they will transfer you immediately.<br /><br /><strong>Departure Instructions:</strong><br />Wait at the lobby of your accommodation where our transfer assistance will meet you. Please present your service voucher and in turn they will transfer you immediately.</span></p>', '<p><span class=\"metin\">&bull; Please make sure that you entered travel information correctly at time of booking. Supplements might occur due to mis-information on arrival/departure details.<br />&bull; For this <strong>Private Transfer </strong>we advise you to call the Local Tour Operator from the numbers on the voucher&nbsp;<u>if you could not meet with the transfer assistance at remote airports or busy hours</u>&nbsp;maximum 20 minutes after your exact pick up time before leaving the Airport/Port/Residence. Otherwise your transfer may be counted as No Show of yours and refund may not apply.<br />&bull; Transfers to/from outside of city center is upon availability and may require supplement fee.<br />&bull; Delayed flight arrivals are monitored no extra charge for flight delays.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Cancellation Policy: This service can be cancelled without any penalties&nbsp;<strong>4</strong>&nbsp;day(s) prior to first service date.</span></p>', '<p><span class=\"metin\"><strong>Maximum Waiting Time At Arrival Point:</strong><br />1 Hour<br />In the event of a problem with your luggage please notify local provider of the delay. There is no obligation to wait extra time. In case they can wait extra parking fee may be resulted due to delays must be paid on site.<br />&nbsp;<br /><strong>Maximum Waiting Time At Departure Point:</strong><br />20 Minutes<br />&nbsp; &nbsp;<br /><strong>Luggage Information:</strong><br />1 suitcase and 1 carry-on bag per person is allowed. On private transfers if the number of luggage are more than this or there are pushchairs/wheelchairs etc.; a big enough vehicle must be booked for comfort and safety. Oversized luggage (e.g. surfboards golf clubs or bikes) may have extra fee.&nbsp;Provider cannot be held responsible for damaged baggage personal belongings or any items left in the vehicle.<br /><br /><strong>Children/Infants:</strong><br />Please make sure infants and children are included in the total number of passengers e.g. if three adults one child and an infant are travelling a private transfer vehicle for at least five people needed to be booked. On shuttles infants under the age of 2 are free if they sit on a responsible adult`s knee but they must still be included in the booking.</span></p>', 1, '2017/01/01', '2017/12/01', 0, 1, 1482879001, 1482879001, 0),
(4, 'HEATHROW AIRPORT (LHR)    CARDIFF', 29, 49, '24 Hours  00:00 - 23:59', '<p><span class=\"metin\"><strong>Private Transfer:</strong><br />Private Transfer will be for your own personal use and will not be shared with other travelers. We recommend this transfer if you are looking to arrive and depart hassle free.<br /><br /><strong>Arrival Instructions:</strong><br />Please proceed to the Arrivals Hall after the baggage &amp; customs where our driver will be holding a clipboard with your name written on it. Please identify yourself by showing your confirmation voucher and in turn they will transfer you immediately.<br /><br /><strong>Departure Instructions:</strong><br />Wait at the lobby of your accommodation where our transfer assistance will meet you. Please present your service voucher and in turn they will transfer you immediately.</span></p>', '<p><span class=\"metin\">&bull; Please make sure that you entered travel information correctly at time of booking. Supplements might occur due to mis-information on arrival/departure details.<br />&bull; For this <strong>Private Transfer </strong>we advise you to call the Local Tour Operator from the numbers on the voucher&nbsp;<u>if you could not meet with the transfer assistance at remote airports or busy hours</u>&nbsp;maximum 20 minutes after your exact pick up time before leaving the Airport/Port/Residence. Otherwise your transfer may be counted as No Show of yours and refund may not apply.<br />&bull; Transfers to/from outside of city center is upon availability and may require supplement fee.<br />&bull; Delayed flight arrivals are monitored no extra charge for flight delays.<br />&bull; Amendments are upon availability and may require supplement fee.<br />&bull;&nbsp;Full cancellation applies in the event of No-Show. </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Cancellation Policy: This service can be cancelled without any penalties&nbsp;<strong>4</strong>&nbsp;day(s) prior to first service date.</span></p>', '<p><span class=\"metin\"><strong>Maximum Waiting Time At Arrival Point:</strong><br />1 Hour<br />In the event of a problem with your luggage please notify local provider of the delay. There is no obligation to wait extra time. In case they can wait extra parking fee may be resulted due to delays must be paid on site.<br />&nbsp;<br /><strong>Maximum Waiting Time At Departure Point:</strong><br />20 Minutes<br />&nbsp; &nbsp;<br /><strong>Luggage Information:</strong><br />1 suitcase and 1 carry-on bag per person is allowed. On private transfers if the number of luggage are more than this or there are pushchairs/wheelchairs etc.; a big enough vehicle must be booked for comfort and safety. Oversized luggage (e.g. surfboards golf clubs or bikes) may have extra fee.&nbsp;Provider cannot be held responsible for damaged baggage personal belongings or any items left in the vehicle.<br /><br /><strong>Children/Infants:</strong><br />Please make sure infants and children are included in the total number of passengers e.g. if three adults one child and an infant are travelling a private transfer vehicle for at least five people needed to be booked. On shuttles infants under the age of 2 are free if they sit on a responsible adult`s knee but they must still be included in the booking.</span></p>', 2, '2017/01/01', '2017/12/01', 0, 1, 1482879119, 1482879119, 0),
(5, 'GATWICK AIRPORT (LGW)    LONDON', 29, 49, '24 Hours  00:00 - 23:59', '<p><span class=\"metin\"><strong>Private Transfer:</strong><br />Private Transfer will be for your own personal use and will not be shared with other travelers. We recommend this transfer if you are looking to arrive and depart hassle free.<br /><br /><strong>Arrival Instructions:</strong><br />Please proceed to the Arrivals Hall after the baggage &amp; customs where our driver will be holding a clipboard with your name written on it. Please identify yourself by showing your confirmation voucher and in turn they will transfer you immediately.<br /><br /><strong>Departure Instructions:</strong><br />Wait at the lobby of your accommodation where our transfer assistance will meet you. Please present your service voucher and in turn they will transfer you immediately.</span></p>', '<p><span class=\"metin\">&bull; Please make sure that you entered travel information correctly at time of booking. Supplements might occur due to mis-information on arrival/departure details. &nbsp;<br />&bull; For this <strong>Private Transfer </strong>we advise you to call the Local Tour Operator from the numbers on the voucher&nbsp;<u>if you could not meet with the transfer assistance at remote airports or busy hours&nbsp;</u>maximum 20 minutes after your exact pick up time before leaving the Airport/Port/Residence. Otherwise your transfer may be counted as No Show of yours and refund may not apply.<br />&bull; Delayed flight arrivals are monitored no extra charge for flight delays. &nbsp;<br />&bull; Amendments are upon availability and may require supplement fee. &nbsp;<br />&bull;&nbsp;Full cancellation applies in the event of No-Show. &nbsp; </span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Tax:&nbsp;Included<br /></span></p>\\r\\n<hr size=\"1\" />\\r\\n<p><span class=\"metin\">Cancellation Policy: This service can be cancelled without any penalties&nbsp;<strong>4</strong>&nbsp;day(s) prior to first service date.</span></p>', '<p><span class=\"metin\"><strong>Maximum Waiting Time At Arrival Point:</strong><br />1 Hour<br />In the event of a problem with your luggage please notify local provider of the delay. There is no obligation to wait extra time. In case they can wait extra parking fee may be resulted due to delays must be paid on site.<br />&nbsp;<br /><strong>Maximum Waiting Time At Departure Point:</strong><br />20 Minutes<br />&nbsp; &nbsp;<br /><strong>Luggage Information:</strong><br />1 suitcase per person is allowed. On private transfers if the number of luggage are more than this or there are pushchairs/wheelchairs etc.; a big enough vehicle must be booked for comfort and safety. Oversized luggage (e.g. surfboards golf clubs or bikes) may have extra fee.&nbsp;Provider cannot be held responsible for damaged baggage personal belongings or any items left in the vehicle.<br /><br /><strong>Children/Infants:</strong><br />Please make sure infants and children are included in the total number of passengers e.g. if three adults one child and an infant are travelling a private transfer vehicle for at least five people needed to be booked. On shuttles infants under the age of 2 are free if they sit on a responsible adult`s knee but they must still be included in the booking.</span></p>', 1, '2017/01/01', '2017/12/01', 3, 1, 1482879217, 1486585462, 0);

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
(4, 5, 2, 'T17041629893', 3, 'arrival', '2017/04/18', '', 'Mac Morgan', '+9092834573927', 'Turkish Air', '920843893', '00:05', 'Hotel Palace', 'A glass of tea.', '', '', '', '', '', '', 0, 0, 0, 'WAITING', 1492377367, 0),
(5, 5, 2, 'T17041621471', 3, 'arrival', '2017/04/18', '', 'Mac Morgan', '+9092834573927', 'Turkish Air', '920843893', '00:05', 'Hotel Palace', 'A glass of tea.', '', '', '', '', '', '', 0, 0, 0, 'FINZ', 1492377895, 0);

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
(1, 1, 0, 1, 0, 0),
(2, 2, 42, 1, 109, 0),
(3, 3, 42, 1, 217, 0),
(4, 4, 42, 1, 108.59, 0),
(5, 5, 42, 1, 108.59, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mg_vehicle`
--

CREATE TABLE `mg_vehicle` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Title',
  `pax` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Pax',
  `prio` int(11) NOT NULL COMMENT 'Priority',
  `flag` int(1) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Vehicle';

--
-- Dumping data for table `mg_vehicle`
--

INSERT INTO `mg_vehicle` (`id`, `name`, `pax`, `prio`, `flag`, `hide`) VALUES
(1, 'Minibus', '1-6', 0, 1, 0),
(2, 'Sedan', '1-4', 0, 1, 0);

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
  `date_created` int(11) NOT NULL COMMENT 'تاریخ',
  `date_updated` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='خبر/اخبار';

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `cat`, `text`, `visit`, `image`, `date_created`, `date_updated`) VALUES
(1, 't', 28, '<p>t</p>', 52, 'data/news_pic/1/0-1479503544-large.jpg', 1479503544, 1479503574),
(2, 'ff', 28, '<p>ffffffffffffff</p>', 29, 'data/news_pic/2/0-1480281792-large.jpg', 1479503708, 1480281792),
(3, 'et iusto odio dignissim', 28, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 104, 'data/news_pic/3/0-1480281775-large2.jpg', 1479503825, 1480281775),
(4, 'Lorem ipsum', 29, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 7, '', 1479671362, 0),
(5, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit,', 29, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 3, 'data/news_pic/5/0-1480283731-large4.jpg', 1479678244, 1480283731),
(6, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit,', 29, '<p>rem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,<br /><br /></p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>', 2, 'data/news_pic/6/0-1479678308-large.jpg', 1479678308, 1479678308),
(7, 'sfvsdv', 28, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>', 4, '', 1479678347, 0),
(8, 'asfcsfsfvsvsvs svsvsvsfgvwrwrv v', 29, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</p>', 9, 'data/news_pic/8/0-1480283713-large5.jpg', 1479678378, 1480283713),
(9, 'consectetuer adipiscing elit,', 29, '<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit,</span><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit,</span><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit,</span></p>\\r\\n<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit, consectetuer adipiscing elit, consectetuer adipiscing elit,</span></p>\\r\\n<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit, consectetuer adipiscing elit, consectetuer adipiscing elit,</span></p>\\r\\n<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit, consectetuer adipiscing elit, consectetuer adipiscing elit,</span></p>\\r\\n<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> consectetuer adipiscing elit, consectetuer adipiscing elit, consectetuer adipiscing elit,</span></p>', 4, 'data/news_pic/9/0-1480068621-s-d.jpg', 1480068621, 1480069336),
(13, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy', 29, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummyLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy</p>', 1, '', 1480110200, 0),
(12, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy', 28, '<p><span style=\"color: #333333; font-family: DefaultFont, Tahoma; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</span></p>', 0, 'data/news_pic/12/0-1480109448-large.jpg', 1480109448, 1480109448),
(14, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh', 29, '<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipisc</p>\\r\\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipisc</p>\\r\\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\\r\\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; outline: none; line-height: 35px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; font-family: DefaultFont, Tahoma; vertical-align: baseline; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipisc</p>', 16, 'data/news_pic/14/0-1480291927-large3.jpg', 1480291927, 1480291927);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'ایمیل'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='ایمیل/ایمیل‌ها';

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
(52, 'News display', '<?\\r\\necho news_meta( \"title\" );\\r\\n?>', '<?\\r\\necho news_meta( \"kw\" );\\r\\n?>', '<?\\r\\necho news_meta( \"desc\" );\\r\\n?>', 0, 0);

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
(1, 1, 2, 'layout_post', 'HTML', 'Home', 1, '<table border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\\"778\\\"><span style=\\\"color: #87786e;\\\">Who is Globaltourism PRO ?</span><br /><span class=\\\"metin\\\">Globaltourism PRO is a wholesaler for travel agencies only, providing Airport Transfers, Daily Excursions, Package Tours, Cruise Packages, Shore Excursions, Show/Museum/Sports Tickets, Rent a Car Services and Custom Design and Group Booking Requests. </span><br /><br /><span style=\\\"color: #87786e;\\\">Benefits of working with Globaltourism PRO :</span><br /><span class=\\\"metin\\\">&bull; It is exclusively for travel agencies. <br />&bull; Book online, get instant confirmation, print your vouchers immediately. <br />&bull; We are local, we are at your clients\\\' service at the service points, we are one local phone away. <br />&bull; We speak your language, our operations team speaks English, French, Chinese, Spanish, German, Italian, Russian, Arabic, Persian, Turkish... <br />&bull; The richest product inventory, and we are adding new ones every minute. <br />&bull; Best rates on internet, one stop for all extra services.<br /><br /><img src=\\\"http://www.metglobaldmc.com//art/cek.png\\\" alt=\\\"\\\" width=\\\"13\\\" height=\\\"11\\\" /> Join us and sign up free for Globaltourism PRO B2B Online Reservation System! &nbsp; &nbsp; &nbsp;<a class=\\\"submit_button\\\" href=\\\"register\\\">Register now !</a> </span></td>\\r\\n</tr>\\r\\n</tbody>\\r\\n</table>', 1, '', 1),
(3, 3, 1, 'layout_post', 'HTML', 'About', 0, '<p><span style=\\\"color: #87786e;\\\">Who is GlobalTourismPro Holidays ?</span><br /><span class=\\\"metin\\\">GlobalTourismPro is a wholesaler for travel agencies only, providing Airport Transfers, Daily Excursions, Package Tours, Cruise Packages, Shore Excursions, Show/Museum/Sports Tickets, Rent a Car Services and Custom Design-Group Requests. </span><br /><br /><span style=\\\"color: #87786e;\\\">Benefits of working withGlobalTourismPro :</span><br /><span class=\\\"metin\\\">&bull; It is exclusively for travel agencies. <br />&bull; Book online, get instant confirmation, print your vouchers immediately. <br />&bull; We are local, we are at your clients\\\' service at the service points, we are one local phone away. <br />&bull; We speak your language, our operations team speaks English, Spanish, German, Italian, Turkish... <br />&bull; The richest product inventory, and we are adding new ones every minute. <br />&bull; Best rates on internet, one stop for all extra services.</span></p>', 1, '', 1),
(4, 4, 1, 'layout_post', 'HTML', 'Help', 0, '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(5, 5, 1, 'layout_post', 'HTML', 'Learn', 0, '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(6, 6, 1, 'layout_post', 'HTML', 'Terms', 0, '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(7, 7, 1, 'layout_post', 'HTML', 'Privacy Policy', 0, '<p><span style=\"font-family: DefaultFont;\">Under Construction ...</span></p>', 1, '', 1),
(14, 14, 2, 'userpanel_desk', '', 'Client Desk', 0, '', 1, '', 1),
(16, 16, 1, 'userverification', '', 'تایید شناسه کاربر', 0, '', 1, '', 1),
(19, 19, 1, 'userprofile_vw', 'PHP5', 'Profile', 0, '', 1, '', 1),
(58, 58, 1, 'user_register_form', 'PHP5', 'Register', 0, '', 1, '', 1),
(60, 60, 1, 'user_login_form', 'PHP5', 'Login', 0, '', 1, '', 1),
(63, 63, 1, 'user_forgot_form', 'PHP5', 'Forgot password', 0, '', 1, '', 1),
(52, 52, 1, 'news_display', '', 'News display', 0, '', 1, '', 1),
(51, 51, 1, 'news_list', '', 'News', 0, '', 1, '', 1),
(61, 1, 1, 'user_login_form_side', 'HTML', 'Login form', 0, '', 1, 'left', 1);

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
('money_unit', 'واحد پولی', '$%% USD', ''),
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
('site_logo', 'لوگوی سایت', 'data/site_logo/0-1483712104-5561-met_logo.png', '');

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
(1, 'moscow - cremlin', '', '', 'data/slideshow_image/1/0-1483729032-kremlin-wall-night-moscow-590.jpg', 1, 0),
(16, 'Rome #2', '', '', 'data/slideshow_image/16/0-1483773387-b30d92d5-f709-48bf-8641-173a1823a882.jpg', 1, 0),
(3, 'moscow #1', '', '', 'data/slideshow_image/3/0-1483729013-IMG_1284.jpg', 1, 0),
(15, 'Rome #1', '', '', 'data/slideshow_image/15/0-1483773372-2016-Italy-Europe-Italy-Rome-the-North-SS-15941673.jpg', 1, 0),
(4, 'India #1', '', '', 'data/slideshow_image/4/0-1483730658-India_HD.jpg', 1, 0),
(5, 'India #2', '', '', 'data/slideshow_image/5/0-1483730672-india-wallpaper-3.jpg', 1, 0),
(6, 'istanbul #1', '', '', 'data/slideshow_image/6/0-1483730688-15322170_l.jpg', 1, 0),
(7, 'istanbul #2', '', '', 'data/slideshow_image/7/0-1483730701-o-ISTANBUL-facebook.jpg', 1, 0),
(8, 'london #1', '', '', 'data/slideshow_image/8/0-1483730717-LondonBridge.jpg', 1, 0),
(9, 'london #2', '', '', 'data/slideshow_image/9/0-1483730731-London_Thames_Sunset_panorama_-_Feb_2008.jpg', 1, 0),
(10, 'prague #1', '', '', 'data/slideshow_image/10/0-1483730758-11_Prague.jpg', 1, 0),
(11, 'prague #2', '', '', 'data/slideshow_image/11/0-1483730772-20ff8e6bc45d4a04a75887e20a111eb5.jpg', 1, 0),
(12, 'prague #3', '', '', 'data/slideshow_image/12/0-1483730788-boat-racing-on-the-river-in-prague-at-sundown-3246.jpg', 1, 0),
(13, 'prague #4', '', '', 'data/slideshow_image/13/0-1483730801-Prague-Czech-Republic.jpg', 1, 0),
(14, 'prague #5', '', '', 'data/slideshow_image/14/0-1483730828-prague-sunrise-8099151633.jpg', 1, 0),
(17, 'Rome #3', '', '', 'data/slideshow_image/17/0-1483773401-piazza-navona-rome.jpg', 1, 0),
(18, 'Rome #4', '', '', 'data/slideshow_image/18/0-1483773415-roman-forum-1.jpg', 1, 0),
(19, 'Rome #5', '', '', 'data/slideshow_image/19/0-1483773430-Rome-advantage2.jpg', 1, 0),
(20, 'Rome #6', '', '', 'data/slideshow_image/20/0-1483773442-rome.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slug`
--

CREATE TABLE `slug` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slug`
--

INSERT INTO `slug` (`id`, `slug`, `path`, `table_name`, `table_id`) VALUES
(2, 'contact', './?page=2', 'page', 2),
(3, 'about', './?page=3', 'page', 3),
(4, 'help', './?page=4', 'page', 4),
(5, 'learn', './?page=5', 'page', 5),
(6, 'terms', './?page=6', 'page', 6),
(7, 'privacy', './?page=7', 'page', 7),
(14, 'client', './?page=14', 'page', 14),
(51, 'news', './?page=51', 'page', 51),
(58, 'register', './?page=58', 'page', 58),
(59, 'register_landing', './?page=59', 'page', 59),
(60, 'login', './?page=60', 'page', 60),
(63, 'forgot', './?page=63', 'page', 63);

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
(5, 'More', 'linkify', '1', 3, 3, 1, 0),
(9, 'Social networks', 'social', 'https://www.facebook.com/GlobalTourismPro\\nhttps://plus.google.com/GlobalTourismPro	\\nhttps://twitter.com/GlobalTourismPro\\nhttp://instagram.com/GlobalTourismPro\\nhttp://globaltourismpro.com/sitemap.xml', 6, 9, 1, 0),
(10, 'Copyright', 'html', '<p><span style=\"font-family: DefaultFont;\">Copyright GlobalTourismPro &nbsp;&copy; 2016 </span></p>\\n<p><span style=\"font-family: DefaultFont;\">All right reserved.</span></p>', 6, 7, 1, 0),
(12, 'Some new line.', 'hr', '', 12, 8, 1, 0);

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
  `management_title` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'سمت مدیریت',
  `useronline_date` int(10) NOT NULL,
  `flag` int(1) NOT NULL COMMENT 'وضعیت',
  `hide` int(1) NOT NULL,
  `register_ip` varchar(15) COLLATE utf8_persian_ci NOT NULL COMMENT 'آی پی ثبت نام',
  `register_date` int(11) NOT NULL COMMENT 'زمان ثبت نام',
  `login_ip` varchar(15) COLLATE utf8_persian_ci NOT NULL COMMENT 'آی پی آخرین ورود',
  `login_date` int(11) NOT NULL COMMENT '	زمان آخرین ورود'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `email_verified`, `password`, `permission`, `name`, `wallet_credit`, `cell`, `cell_verified`, `tell`, `address`, `profile_pic`, `im_a`, `work_at`, `gender`, `management_title`, `useronline_date`, `flag`, `hide`, `register_ip`, `register_date`, `login_ip`, `login_date`) VALUES
(1, 'ogun@karisma.co.tr', 1, '9bb3da7992db2e95708e77be0a3f8938', 2, 'Ogün Özbir', 0, '902123820942', 0, '', '1000000', '', '', '', '', '', 1492382322, 0, 0, '', 0, '', 0),
(2, 'jalal7h@gmail.com', 1, '3360@met', 0, 'Edmond Koligof', 0, '+9093211321', 0, '', '', 'data/user/data-profile_pic-44202-0-1480553293-me-on-niak.jpg', '', '', '', '', 1492382322, 1, 0, '', 0, '', 0),
(3, 'monja@mohta.ba', 1, '1949b7308f936aa179af4cad5238f9ba', 2, 'Konjale Mohtaba', 0, '+90444332954384', 0, '', '', '', '', '', '', 'Billing Management', 1480803837, 1, 0, '', 0, '', 0);

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
-- Indexes for table `mg_vehicle`
--
ALTER TABLE `mg_vehicle`
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
  ADD UNIQUE KEY `table_name` (`table_name`,`table_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `billing_method`
--
ALTER TABLE `billing_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bookmarky`
--
ALTER TABLE `bookmarky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `linkify_config`
--
ALTER TABLE `linkify_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `mg_dailytour_order_item`
--
ALTER TABLE `mg_dailytour_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `mg_price`
--
ALTER TABLE `mg_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mg_transfer_order_item`
--
ALTER TABLE `mg_transfer_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mg_vehicle`
--
ALTER TABLE `mg_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `page_layer`
--
ALTER TABLE `page_layer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `slug`
--
ALTER TABLE `slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `stat_counter`
--
ALTER TABLE `stat_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tallfooter`
--
ALTER TABLE `tallfooter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=13;
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
