
CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'عنوان',
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'نامک',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'متن',
  `cat` int(11) NOT NULL COMMENT 'دسته‌بندی',
  `flag` int(1) NOT NULL,
  `hide` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='پست/پست‌ها' ROW_FORMAT=DYNAMIC;

ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--spi--
