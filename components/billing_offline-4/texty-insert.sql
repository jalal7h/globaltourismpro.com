
INSERT INTO `texty` ( `slug`, `name`, `prompt`, `user_email_subject`, `user_email_content`, `admin_email_subject`, `admin_email_content`, `user_sms`, `admin_sms`,`flag`) VALUES

( 'billing_management_offline_list_flag', 'تایید پرداخت آفلاین', 'پرداخت به مبلغ {cost} تایید و برای {user_name} منظور گردید ', 'پرداخت شما به مبلغ {cost} تایید شد', 'با سلام\r\nکاربر گرامی، {user_name}\r\nپرداخت شما به مبلغ {cost} از {bank_name} مورد تایید مدیریت قرار گرفته و در حساب کاربری شما منظور گردید\r\nبا تشکر', '', '', '', '',1),

( 'billing_userpanel_payment_offline_save_n_congragulate', '', 'پرداخت شما به مبلغ {cost} ثبت شد.\r\nبه زودی مورد بررسی قرار خواهد گرفت.', 'پرداخت آفلاین به مبلغ {cost}', 'با سلام\r\nپرداخت شما به مبلغ {cost} ثبت گردید و بزودی به تایید مدیریت خواهد رسید\r\nبا تشکر', 'ثبت پرداخت آفلاین به مبلغ {cost}', 'سلام\r\nثبت مبلغ {cost} توسط کاربر با نام {user_name} در بانک {bank_name} انجام شد', '', '',1);

--spi--
