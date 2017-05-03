
CREATE TABLE `photogallery` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL COMMENT 'دسته‌بندی',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان',
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'شرح',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'تصویر',
  `view` int(11) NOT NULL COMMENT 'بازدید',
  `flag` int(1) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='تصویر/تصاویر';

ALTER TABLE `photogallery`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `photogallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--spi--
