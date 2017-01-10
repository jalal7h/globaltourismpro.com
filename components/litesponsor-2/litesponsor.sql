
CREATE TABLE IF NOT EXISTS `litesponsor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه',
  `name` text COLLATE utf8_persian_ci NOT NULL COMMENT 'نام اسپانسر',
  `link` text COLLATE utf8_persian_ci NOT NULL COMMENT 'پیوند',
  `pic` text COLLATE utf8_persian_ci NOT NULL COMMENT 'تصویر',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='اسپانسر/اسپانسرها' AUTO_INCREMENT=1 ;

--spi--
