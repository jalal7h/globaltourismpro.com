
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


ALTER TABLE `texty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);


ALTER TABLE `texty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'شناسه';


--spi--
