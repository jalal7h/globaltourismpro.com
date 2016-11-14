
ALTER TABLE `users` ADD `flag_admin` INT(1) NOT NULL COMMENT 'وضعیت مدیریت';
ALTER TABLE `users` ADD `flag_user` INT(1) NOT NULL COMMENT 'وضعیت کاربری';
ALTER TABLE `users` ADD `management_title` VARCHAR(255) NOT NULL COMMENT 'سمت مدیریت';

--spi--
