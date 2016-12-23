-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 23, 2016 at 11:40 PM
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

--
-- Dumping data for table `billing_invoice`
--

INSERT INTO `billing_invoice` (`id`, `user_id`, `order_table`, `order_id`, `cost`, `method`, `transaction`, `date`, `date_created`, `hide`) VALUES
(1, 1, '', 0, 4000, 'manual2', '', 0, 1480032566, 0);

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
  `flag` int(1) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `desc`, `kw`, `parent`, `cat`, `prio`, `logo`, `family_tree`, `flag`, `hide`) VALUES
(28, 'Politic', '', '', 0, 'news', 0, '', '', 1, 0),
(29, 'sport', '', '', 0, 'news', 0, '', '', 1, 0),
(30, 'Billing', '', '', 0, 'ticketbox', 0, '', '', 1, 0),
(31, 'Transfer issues', '', '', 0, 'ticketbox', 0, '', '', 1, 0),
(32, 'Tour issues', '', '', 0, 'ticketbox', 0, '', '', 1, 0);

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
(1, '1. How much will it cost to travel to Australia, New Zealand or Fiji?', 'Prices for our travel packages from the USA typically start at US$3500 per person for 2 weeks including all accommodation,  flights (domestic and international), transfers, tours, some meals and Visa issuance for entry into Australia. \\r\\n\\r\\nPricing is dependent on the “class” of accommodation (3-5 Star) and the “number” of travelers in your group, the more people to share costs the less it will cost per person. Pricing is also significantly affected by the “Dates” you chose to travel ranging from Basic Season (cheap) to Peak (expensive).'),
(2, '3. What is the Date Format?', 'Common date format in Australia, New Zealand & Fiji is: DD/MM/YY (not MM/DD/YY).\\r\\n\\r\\nEXAMPLE: May 3rd, 2017\\r\\n\\r\\nUS Date – 05/03/17\\r\\n\\r\\nAustralia/New Zealand Date – 03/05/17'),
(4, '4. Are self-drive packages available for Australia, New Zealand &/or Fiji?', 'Yes, self-drive travel packages that include rental vehicles are available and can be tailored to suit your needs.\\r\\n\\r\\nAll drivers, including visitors from other countries, must carry their license or permit at all times when driving. You must have either a current driver’s license from your home country or an International Driving Permit (IDP). You will only be able to drive the same types of vehicles you are licensed to drive in your home country. Make sure your driver’s license is current and in English. If your license is not in English, you must bring an English translation with you or obtain an IDP. Contact your local automobile club for further details about obtaining a translation or an IDP.\\r\\n\\r\\nPlease remember that in Australia, New Zealand & Fiji we drive on the left-hand side of the road. Drivers give way (or yield) to all traffic crossing or approaching from the right. Signposting follows standard international symbols and all distances are in kilometres (km). Both drivers & passengers must wear a safety belt in both the front and back seats.\\r\\n\\r\\nHere are some general tips and hints to help you drive safely:\\r\\n\\r\\nAlways drive on the left-hand side of the road and give way to your right\\r\\nAll road distances are measured in kilometres\\r\\nWhen turning left, give way (yield) to traffic crossing or approaching from your right\\r\\nWhen the traffic light is red, you must stop. There is no left turn rule as in North America.\\r\\nThe amber traffic light means stop unless you are so close to the intersection you can’t stop safely.\\r\\nRandom police stops for breath testing can occur at anytime \\r\\nCameras are also common place along highways and stoplight intersections.  Fines are sent by post for speed or stopping violations.'),
(3, '2. How long does it take to get to Australia, New Zealand or Fiji?', 'An average non-stop flight from the USA (West Coast) to:\\r\\n\\r\\nAustralia is approximately 14 hours.\\r\\nNew Zealand is approximately 13 hours.\\r\\nFiji is approximately 11 hours.\\r\\n\\r\\nOn the way back, the flight time is less due to the prevailing Easterly winds across the Pacific. Flight times may vary depending on routing.'),
(5, '5. What is twinshare accommodation?', 'Twin Share means “Double Occupancy.”  This term refers to two people traveling together who occupy the same room.'),
(6, '6. What do I dial in an Emergency?', 'In case of an Emergency whilst in Australia Dial “000″ (not 911).\\r\\nIn case of an Emergency whilst in New Zealand Dial “111″.\\r\\nIn case of an Emergency whilst in Fiji Dial “917″ for Police, or “911″ for Fire or Ambulance.'),
(7, '7. What are the Flight Baggage Restrictions?', 'Qantas Airlines restrict checked baggage to 2 pieces (50 pounds per piece) per person plus 1 carry-on bag (15 pounds). This allowance is applicable to all your Qantas flights in your booking (including both International and Domestic sectors). However some flights in Australia (e.g. to Heron Island) are restricted to 1 piece per person plus a carry-on. Please check with the Airlines for baggage restrictions associated with your flights before you depart the USA. Penalties may be issued by the Airlines as a result of excess baggage. Excess baggage penalties are your responsibility. If you wish to travel with more than the checked baggage allowance you can pre-purchase an Additional Baggage Allowance before you go, at lower rates than Airport Excess Baggage charges.');

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

--
-- Dumping data for table `fbcomment`
--

INSERT INTO `fbcomment` (`id`, `text`, `user_id`, `page_id`, `table_name`, `table_id`, `comment_id`, `date`, `flag`, `hide`) VALUES
(1, 'ok', 1, 52, 'news', 14, 0, 1480440961, 1, 0),
(2, 'nooooooooooo', 1, 52, 'news', 14, 1, 1480440974, 1, 0);

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
  `cat` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'موقعیت'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='پیوند/پیوندها';

--
-- Dumping data for table `linkify`
--

INSERT INTO `linkify` (`id`, `name`, `url`, `pic`, `flag`, `prio`, `parent`, `cat`) VALUES
(1, 'About Karizma', 'http://127.0.0.1/live.git/mjsafar.com/page-3.html', '', 1, 0, 0, '1'),
(2, 'FAQ', './faq', '', 1, 0, 0, '3'),
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

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(3, 'yeki@yeja.com');

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
(63, 'Forgot Password', '', '', ''),
(51, 'News', '', '', ''),
(52, 'News display', '<?\\r\\necho news_meta( \"title\" );\\r\\n?>', '<?\\r\\necho news_meta( \"kw\" );\\r\\n?>', '<?\\r\\necho news_meta( \"desc\" );\\r\\n?>');

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
(1, 1, 2, 'layout_post', 'PHP5', 'Home', '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(3, 3, 1, 'layout_post', 'HTML', 'About', '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(4, 4, 1, 'layout_post', 'HTML', 'Help', '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(5, 5, 1, 'layout_post', 'HTML', 'Learn', '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(6, 6, 1, 'layout_post', 'HTML', 'Terms', '<p><span style=\"font-family: DefaultFont;\">Under Contstruction ...</span></p>', 1, '', 1),
(7, 7, 1, 'layout_post', 'HTML', 'Privacy Policy', '<p><span style=\"font-family: DefaultFont;\">Under Construction ...</span></p>', 1, '', 1),
(14, 14, 2, 'userpanel_desk', '', 'Client Desk', '', 1, '', 1),
(15, 14, 1, 'userpanel_menu', '', 'Client Menu', '', 1, 'right', 1),
(19, 19, 1, 'userprofile_vw', 'PHP5', 'Profile', '', 1, '', 1),
(58, 58, 1, 'user_register_form', 'PHP5', 'Register', '', 1, '', 1),
(59, 59, 1, 'layout_post', 'PHP5', 'Register Confirm', '<?php users_register_do(); ?>', 1, '', 1),
(60, 60, 1, 'user_login_form', 'PHP5', 'Login', '', 1, '', 1),
(63, 63, 1, 'user_forgot_form', 'PHP5', 'Forgot password', '', 1, '', 1),
(52, 52, 1, 'news_display', '', 'News display', '', 1, '', 1),
(51, 51, 1, 'news_list', '', 'News', '', 1, '', 1);

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
('sms_state', 'وضعیت پیامک', '0', ''),
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
('webstatus_main_content', 'متن وضعیت غیرفعال', 'We are working hard to fix problems.\\r\\nSo please wait a little more ...', ''),
('html_extra_tags', 'تگ های اضافی', '', ''),
('fbcomment_share_on_twitter', 'دکمه اشتراک در توئیتر', '0', ''),
('fbcomment_user_countOn24h', 'محدودیت ثبت نظر در روز', '15', ''),
('fbcomment_user_countOn60m', 'محدودیت ثبت نظر در ساعت', '5', ''),
('contact_cell', 'شماره همراه', '+90 212 11223344', ''),
('sms_connection_string', 'رشته اتصال سرور پیامک', 'http://postgah.net/API/SendSms.ashx?username=user01&password=pass01&from=30005825000120&to=%TO%&text=%TEXT%', '');

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
(9, 'Social networks', 'social', 'https://www.facebook.com/Karisma\\r\\nhttps://plus.google.com/Karisma	\\r\\nhttps://twitter.com/Karisma\\r\\nhttp://instagram.com/Karisma\\r\\nhttp://karisma.co.tr/sitemap.xml', 6, 8, 1, 0),
(10, 'Copyright', 'html', '<p><span style=\"font-family: DefaultFont;\">Copyright Karisma &nbsp;&copy; 2016 </span></p>\\r\\n<p><span style=\"font-family: DefaultFont;\">All right reserved.</span></p>', 6, 7, 1, 0);

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
(1, 'user_register_do', 'ثبت نام - انجام', 'ثبت نام با موفقیت انجام شد!\\r\\nاطلاعات ورود به پنل کاربری به آدرس ایمیل شما ارسال شده است.', '', 'ثبت نام در {tiny_title}', 'با سلام،\\r\\nکاربر گرامی {user_name}، \\r\\n\\r\\nحساب کاربری شما با موفقیت ایجاد شد و اطلاعات حساب شما به شرح زیر است : \\r\\nنام کاربری:‌ {user_username}\\r\\nگذرواژه: {user_password}\\r\\n\\r\\nورود به سایت :‌\\r\\n{login_page}\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', 'کاربر گرامی خوش آمدید\\r\\nثبت نام با موفقیت انجام شد \\r\\nنام کاربری: {user_username}\\r\\nکلمه عبور: {user_password}', '', '', '', '', '', '', '', '', 'user_id user_username user_password login_page', 1),
(2, 'user_changepassword_save', 'تغییر کلمه عبور', 'کلمه عبور جدید شما با موفقیت ثبت شد.', '', 'بروزرسانی کلمه عبور', 'با سلام،\\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nکلمه عبور شما به عبارت زیر تغییر یافت.\\r\\n{user_new_password}\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', 'با سلام،\\r\\nکلمه عبور جدید شما تغییر یافت به :\\r\\n{user_new_password}\\r\\n\\r\\n{tiny_title}', '', '', '', '', 'تغییر کلمه عبور {user_name}', 'با سلام،\\r\\n\\r\\nکاربر {user_name} کلمه عبور خود را به \"{user_new_password}\" تغییر داد.\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', '', '1110011', 'user_new_password', 1),
(3, 'user_forgot_save', 'بازیابی گذرواژه - انجام', 'بازیابی گذرواژه با موفقیت انجام شد.', '', 'بازیابی گذرواژه انجام شد', 'با سلام\\r\\nکاربر گرامی {user_name}\\r\\n\\r\\nبازیابی گذرواژه حساب شما با موفقیت انجام شد.\\r\\nکلمه عبور جدید شما :\\r\\n{user_new_password}\\r\\n\\r\\nبا تشکر', '', '', '', '', '', '', '', '', '', 'user_new_password', 1),
(4, 'user_forgot_send', 'بازیابی گذرواژه - ارسال لینک ', 'با سلام\\r\\nلینک بازیابی گذرواژه به آدرس ایمیل {user_email} ارسال شد.\\r\\nلطفا ایمیل خود را بررسی نمایید. (در صورت اینکه ایمیل ارسالی در پوشه اینباکس شما نبود ، پوشه اسپم خود را چک نمایید)', '', 'درخواست گذرواژه جدید', 'سلام،\\r\\n\\r\\nبا توجه به درخواست شما برای ثبت کلمه عبور جدید ، پیوند تنظیم مجدد کلمه عبور به ایمیل {user_email} ارسال شد.\\r\\nلینک : \\r\\n{forgot_link}\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', '', '', '', '', '', '', '', '', '1100000', 'forgot_link', 1),
(5, 'billing_settleInvoice', 'تایید پرداخت صورتحساب', 'پرداخت با موفقیت انجام شد.\\r\\nمبلغ : {invoice_cost}\\r\\nشماره فاکتور : {invoice_id}\\r\\nکد تراکنش : {invoice_transaction}', '', 'صورتحساب شما به شماره {invoice_id} پرداخت شد', 'با سلام،\\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nصورتحساب شما به مبلغ {invoice_cost} به شناسه {invoice_id} پرداخت شد.\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', 'سلام\\r\\nصورتحساب به مبلغ {invoice_cost} به شناسه {invoice_id} پرداخت شد.\\r\\nبا تشکر\\r\\n{tiny_title}', '', '', '', '', 'پرداخت صورتحساب به شماره {invoice_id}', 'با سلام،\\r\\n\\r\\nصورتحساب به مبلغ {invoice_cost} با شناسه {invoice_id} توسط {user_name} پرداخت شد.\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', 'صورتحساب به مبلغ {invoice_cost} به توسط {user_name} پرداخت شد.', '', 'invoice_id invoice_transaction invoice_cost', 1),
(6, 'billing_invoiceMake_congratulate', 'ایجاد صورتحساب جدید', 'صورتحساب به شناسه #{invoice_id} به مبلغ {invoice_cost} ایجاد شد.', '', 'ثبت صورتحساب {invoice_id}', 'با سلام،\\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nصورتحساب جدید به شناسه {invoice_id} به مبلغ {invoice_cost} ایجاد شد.\\r\\nبرای پرداخت صورتحساب :\\r\\n{invoice_payment_link}\\r\\n\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', 'سلام\\r\\nصورتحساب جدید به مبلغ {invoice_cost} به شناسه #{invoice_id} صادر شد.\\r\\nبا تشکر\\r\\n{tiny_title}', '', '', '', '', '', '', '', '', 'invoice_id invoice_cost invoice_payment_link', 1),
(7, 'billing_orderSettle', 'تایید پرداخت سفارش', 'سفارش به شماره {order_id} ثبت شد', ' سفارش‌دهنده', 'ثبت سفارش شماره {order_id}', 'با سلام،\\r\\nکاربر گرامی {user_name}\\r\\n\\r\\nسفارش شما به شماره {order_id} ثبت و پس از بررسی پردازش خواهد شد.\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', 'سفارش به شناسه {order_id} ثبت شد.', '', '', '', '', 'ثبت سفارش جدید به شماره {order_id}', 'با سلام،\\r\\n\\r\\nسفارش جدید به مبلغ {cost} توسط {user_name} ثبت شد\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', '', '', 'cost order_id ', 1),
(8, 'billing_userpanel_payment_wallet', 'پرداخت بواسطه کیف پول', 'پرداخت مبلغ {invoice_cost} از کیف پول انجام شد.', '', 'پرداخت از کیف پول', 'با سلام\\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nمبلغ {invoice_cost} از اعتبار کیف پول شما پرداخت شد.\\r\\n\\r\\nباتشکر\\r\\n{tiny_title}', 'سلام\\r\\nپرداخت مبلغ {invoice_cost} از اعتبار کیف پول شما انجام شد\\r\\n{tiny_title}', '', '', '', '', '', '', '', '', '', 1),
(9, 'contact_vw_send', 'فرم تماس', 'پیام شما ثبت شد', '', 'پیام شما دریافت شد', 'با سلام،\\r\\nکاربر گرامی، {sender_name}\\r\\n\\r\\nپبام شما دریافت شد و در اولین فرصت پاسخ داده خواهد شد.\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', '', '', '', '', '', 'پیام ارتباط با ما از طرف {sender_name}', 'باسلام\\r\\n\\r\\nپیام جدید توسط کاربری با نام {sender_name} دریافت شد\\r\\nبرای مشاهده پیام :\\r\\n{contact_linkadmin}\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', '', '', 'sender_name sender_email  contact_linkadmin', 1),
(10, 'ticketbox_view_save_support', 'تیکت پشتیبانی - ارسال پاسخ', '', 'ارسال‌کننده پیام', 'پیام پشتیبانی جدید #{ticket_id}', 'با سلام،\\r\\n\\r\\nکاربرا گرامی {user_name}، درخواست پشتیبانی شما به شناسه #{ticket_id} با موفقیت ثبت شد.\\r\\nلطفا منتظر دریافت پاسخ بمانید.\\r\\n\\r\\n{ticket_link}\\r\\n\\r\\nبا تشکر', 'با سلام\\r\\nتیکت شما به شناسه #{ticket_id} ثبت شد و در اولین فرصت پاسخ داده خواهد شد.', 'دریافت‌کننده پیام', 'پاسخ به پیام پشتیبانی #{ticket_id}', 'با سلام،\\r\\n\\r\\nکاربر گرامی {user_name}، درخواست پشتیبانی شما به شناسه #{ticket_id} پاسخ جدیدی داده شد.\\r\\n\\r\\n{ticket_link}\\r\\n\\r\\nبا تشکر', 'پاسخ جدید برای \"{ticket_name}\"', 'پیام پشتیبانی جدید توسط {user_name}', 'با سلام، \\r\\n\\r\\nتیکت جدید توسط {user_name} در دسته {ticket_cat} با عنوان {tickt_name} ثبت شده است.\\r\\n{ticket_adminlink}\\r\\n\\r\\nبا تشکر', 'پیام پشتیبانی جدید، توسط {user_name}\\r\\nعنوان پیام پشتیبانی : {ticket_name}', '0111111', 'ticket_id ticket_name ticket_cat ticket_link ticket_adminlink', 1),
(11, 'ticketbox_view_save_askFromSeller', 'سوال از فروشنده - ارسال پاسخ', '', 'خریدار', 'ارسال پیام به {receiver_user_name}', 'با سلام،  کاربر گرامی {user_name}،‌ \\r\\n\\r\\nپیام شما در مورد \"{item_name}\" به فروشنده مربوطه ارسال شده است.\\r\\nلطفا منتظر پاسخ وی بمانید. \\r\\nآدرس پیام :‌ {ticket_link} \\r\\nآیتم مربوطه : {item_link}\\r\\n\\r\\nبا تشکر', 'پیام شما در مورد {item_name} به فروشنده مربوطه ارسال شد.', 'فروشنده', 'پیام جدید از {sender_user_name} در مورد {item_name}', 'با سلام،\\r\\nکاربر عزیز {user_name}، \\r\\n\\r\\nشما پیامی از طرف {sender_user_name} در رابطه با {item_name} دریافت کرده اید.\\r\\nبرای مشاهده پیام :‌ \\r\\n{ticket_link}\\r\\n\\r\\nبا تشکر', 'پیام جدید از طرف {sender_user_name} در رابطه با {item_name}', '', '', '', '0111111', 'ticket_id ticket_name ticket_cat ticket_link ticket_adminlink sender_user_name receiver_user_name item_title item_id item_name item_link', 1),
(12, 'ticketbox_mg_saveNew', 'تیکت پشتیبانی - ثبت توسط مدیر', 'پیام پشتیبانی جدید با موفقیت برای {user_name} ارسال شد.', '', '', '', '', 'کاربر گیرنده پیام', 'پیام  پشتیبانی جدید', 'با سلام\\r\\nکاربر گرامی {user_name}، \\r\\nاز طرف مدیریت سایت پیامی جدید با عنوان \"{ticket_name}\" برای شما ارسال شده است.\\r\\nبرای مشاهده پیام از آدرس زیر اقدام نمائید.\\r\\n{ticket_link}\\r\\n\\r\\nبا تشکر', 'پیام پشتیبانی جدید برای شما {ticket_name}', '', '', '', '1001111', 'ticket_id ticket_name ticket_link', 1),
(13, 'ticketbox_user_saveNew', 'تیکت پشتیبانی - ثبت توسط کاربر', 'کاربر گرامی، پیام پشتیبانی شما ثبت شده و در اولین فرصت پاسخ داده خواهد شد.', 'کاربر ارسال‌کننده پیام', 'پیام پشتیبانی #{ticket_id}', 'با سلام،\\r\\nکاربر گرامی {user_name}، پیام پشتیبانی شما با عنوان \"{ticket_name}\" ثبت شده و درحال بررسی میباشد.\\r\\nلطفا منتظر پاسخ از طرف مسئولین سایت بمانید.\\r\\n\\r\\n{ticket_link}\\r\\n\\r\\nبا تشکر', 'پیام پشتیبانی شما با شناسه #{ticket_id} ثبت شد.', '', '', '', '', 'تیکت جدید', 'با سلام، \\r\\nپیام پشتیبانی جدید با عنوان \"{ticket_name}\" از طرف \"{user_name}\" ثبت شده است.\\r\\n{ticket_adminlink}\\r\\nبا تشکر', 'تیکت جدید از \"{user_name}\" با موضوع \"{ticket_name}\"', '', 'ticket_id ticket_name ticket_link ticket_adminlink receiver_user_name sender_user_name', 1),
(14, 'ticketbox_user_saveNew_to_client', 'پیام کاربر به کاربر - ثبت جدید', 'کاربر گرامی، پیام شما ثبت و به لیست پیام‌های \"{receiver_user_name}\" افزوده شد.', 'ارسال‌کننده پیام', 'ارسال پیام به {receiver_user_name}', 'با سلام، \\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nپیام جدید شما با عنوان \"{ticket_name}\" در لیست پیام های {receiver_user_name} قرار گرفت.\\r\\n\\r\\nبا تشکر', 'پیام جدید برای {receiver_user_name} ارسال شد.', 'دریافت‌کننده پیام', 'پیام جدید از {sender_user_name}', 'با سلام، \\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nبرای شما پیام جدیدی از طرف {sender_user_name} ، با عنوان \"{ticket_name}\" ارسال شده است.\\r\\nبرای مشاهده پیام به آدرس زیر مراجعه نمائید :\\r\\n{ticket_link}\\r\\n\\r\\nبا تشکر', 'پیام جدید از {sender_user_name}', '', '', '', '1111111', 'ticket_id ticket_name ticket_link ticket_adminlink receiver_user_name sender_user_name', 1),
(15, 'ticketbox_user_saveNew_askFromSeller', 'سوال از فروشنده - پیام جدید', 'پیام شما برای فروشنده \"{item_name}\" ارسال شد و شما پس از دریافت پاسخ مطلع خواهید شد.', 'خریدار', 'پیام به فروشنده \"{item_name}\"', 'با سلام\\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nپیام شما برای {receiver_user_name} بابت {item_title}\" {item_name}\" ارسال شد.\\r\\n\\r\\nبا تشکر', '', 'فروشنده', 'پیام جدید درمورد {item_title} {item_name}', 'با سلام\\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nشما پیام جدیدی از طرف {receiver_user_name} بابت {item_title}\" {item_name}\" دارید.\\r\\nلطفا برای مشاهده پیام :\\r\\n{ticket_link}\\r\\n\\r\\nبا تشکر', 'پیام جدید درمورد {item_name}', '', '', '', '1111111', 'ticket_id ticket_name ticket_link ticket_adminlink receiver_user_name sender_user_name item_title item_id item_name', 1),
(16, 'ticketbox_view_save_to_client', 'پیام کاربر به کاربر - ارسال پاسخ', '', 'ارسال‌کننده پیام', 'پاسخ به پیام \"{ticket_name}\"', 'با سلام، \\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nپاسخ شما به پیام \"{ticket_name}\" به \"{receiver_user_name}\" ارسال شد.\\r\\n\\r\\nبا تشکر', '', 'دریافت‌کننده پیام', 'پاسخ به پیام \"{ticket_name}\"', 'با سلام،\\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nپاسخ جدیدی برای پیام \"{ticket_name}\" توسط {sender_user_name} ثبت شده است.\\r\\nبرای مشاهده :\\r\\n{ticket_link}\\r\\n\\r\\nبا تشکر', 'دریافت پاسخ جدید برای \"{ticket_name}\" از \"{sender_user_name}\"', '', '', '', '0111111', 'ticket_id ticket_name ticket_cat ticket_link ticket_adminlink sender_user_name receiver_user_name', 1),
(17, 'userprofile_save', 'ویرایش پروفایل', 'اطلاعات شما با موفقیت بروز شد.', '', 'بروزرسانی اطلاعات پروفایل', 'با سلام،\\r\\nکاربر گرامی {user_name}،\\r\\n\\r\\nاطلاعات پروفایل کاربری شما با موفقیت بروز شد.\\r\\n\\r\\nبا تشکر\\r\\n{tiny_title}', '', '', '', '', '', 'تغییر پروفایل {user_name}', 'با سلام\\r\\n\\r\\nکاربر {user_name} اطلاعات کاربری خود را بروز کرد.\\r\\nورود به محیط کاربری این شخص :\\r\\n{login_link}\\r\\n\\r\\nبا تشکر', '', '', 'login_link', 1);

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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'آدرس ایمیل',
  `password` varchar(255) COLLATE utf8_persian_ci NOT NULL DEFAULT '' COMMENT 'کلمه عبور',
  `permission` int(12) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'نام و نام خانوادگی',
  `wallet_credit` int(11) NOT NULL,
  `cell` varchar(255) COLLATE utf8_persian_ci NOT NULL COMMENT 'تلفن همراه',
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

INSERT INTO `user` (`id`, `username`, `password`, `permission`, `name`, `wallet_credit`, `cell`, `tell`, `address`, `profile_pic`, `im_a`, `work_at`, `gender`, `management_title`, `useronline_date`, `flag`, `hide`, `register_ip`, `register_date`, `login_ip`, `login_date`) VALUES
(1, 'ogun@karisma.co.tr', '9bb3da7992db2e95708e77be0a3f8938', 2, 'Ogün Özbir', 0, '+902123820942', '', '1000000', '', '', '', '', '', 1482536408, 0, 0, '', 0, '', 0),
(2, 'jalal7h@gmail.com', '9113f7e5886cdb210542c7e9c84ecfeb', 0, 'Jalal Hoseini', 0, '', '', '', '', '', '', '', '', 1480808490, 0, 0, '', 0, '', 0),
(3, 'monja@mohta.ba', '1949b7308f936aa179af4cad5238f9ba', 2, 'Konjale Mohtaba', 0, '+90444332954384', '', '', '', '', '', '', 'Billing Management', 1480803837, 1, 0, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `useraccess`
--

CREATE TABLE `useraccess` (
  `id` int(11) NOT NULL COMMENT 'شناسه',
  `user_id` int(11) NOT NULL COMMENT 'شناسه کاربر',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'بخش'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `useraccess`
--

INSERT INTO `useraccess` (`id`, `user_id`, `component`) VALUES
(10, 3, 'fbcomment_mg');

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
-- Indexes for table `upvote`
--
ALTER TABLE `upvote`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_name` (`table_name`,`table_id`,`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
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
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fbcomment`
--
ALTER TABLE `fbcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kword`
--
ALTER TABLE `kword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kwordusage`
--
ALTER TABLE `kwordusage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `page_layer`
--
ALTER TABLE `page_layer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه', AUTO_INCREMENT=18;
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
-- AUTO_INCREMENT for table `upvote`
--
ALTER TABLE `upvote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
