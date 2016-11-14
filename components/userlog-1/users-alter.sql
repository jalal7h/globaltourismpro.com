
ALTER TABLE `users` ADD `register_ip` VARCHAR(15) NOT NULL COMMENT 'آی پی ثبت نام';
ALTER TABLE `users` ADD `register_date` INT(11) NOT NULL COMMENT 'زمان ثبت نام';

ALTER TABLE `users` ADD `login_ip` VARCHAR(15) NOT NULL COMMENT 'آی پی آخرین ورود';
ALTER TABLE `users` ADD `login_date` INT(11) NOT NULL COMMENT '	زمان آخرین ورود';



--spi--
