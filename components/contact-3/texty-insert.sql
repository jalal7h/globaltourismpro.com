
INSERT INTO `texty` ( `slug`, `name`, `prompt`, `user_title`, `user_email_subject`, `user_email_content`, `user_sms`, `user2_title`, `user2_email_subject`, `user2_email_content`, `user2_sms`, `admin_email_subject`, `admin_email_content`, `admin_sms`, `flagstring`, `vars`, `flag`) VALUES

( 'contact_vw_send', 'فرم تماس', 'پیام شما ثبت شد', '', 'پیام شما دریافت شد', 'با سلام،\r\nکاربر گرامی، {sender_name}\r\n\r\nپبام شما دریافت شد و در اولین فرصت پاسخ داده خواهد شد.\r\n\r\nبا تشکر\r\n{tiny_title}', '', '', '', '', '', 'پیام ارتباط با ما از طرف {sender_name}', 'باسلام\r\n\r\nپیام جدید توسط کاربری با نام {sender_name} دریافت شد\r\nبرای مشاهده پیام :\r\n{contact_linkadmin}\r\n\r\nبا تشکر\r\n{tiny_title}', '', '', 'sender_name sender_email  contact_linkadmin', 1);


--spi--
