
ALTER TABLE `user` ADD `register_ip` VARCHAR(15) NOT NULL COMMENT 'آی پی ثبت نام';
ALTER TABLE `user` ADD `register_date` INT(11) NOT NULL COMMENT 'زمان ثبت نام';

ALTER TABLE `user` ADD `login_ip` VARCHAR(15) NOT NULL COMMENT 'آی پی آخرین ورود';
ALTER TABLE `user` ADD `login_date` INT(11) NOT NULL COMMENT '	زمان آخرین ورود';



--spi--
