
CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'عنوان',
  `url` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'پیوند',
  `desc` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'توضیحات',
  `image` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'تصویر',
  `flag` int(1) NOT NULL COMMENT 'وضعیت',
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='اسلاید/اسلاید‌ها' ROW_FORMAT=DYNAMIC;

ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--spi--
