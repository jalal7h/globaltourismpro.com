
INSERT INTO `texty` ( `slug`, `name`, `prompt`, `user_email_subject`, `user_email_content`, `admin_email_subject`, `admin_email_content`, `user_sms`, `admin_sms`, `flag`) VALUES

( 'billing_settleInvoice', 'تایید پرداخت فاکتور', 'پرداخت با موفقیت انجام شد.\r\nمبلغ : {cost}\r\nشماره فاکتور : {id}\r\nکد تراکنش : {transaction}', 'فاکتور شما به شماره {id} پرداخت شد', 'سلام\r\nکاربر گرامی\r\nفاکتور شما به مبلغ {cost} به شناسه {id} پرداخت شد.\r\nبا تشکر از خرید شما', 'پرداخت فاکتور به شماره {id}', 'سلام\r\nفاکتور به مبلغ {cost} با شناسه {id} توسط {user_name} پرداخت شد.', '', '', 1),

( 'billing_invoiceMake_congratulate', 'ایجاد فاکتور جدید', '', 'ثبت فاکتور {invoice_id}', 'کاربر گرامی\r\n{user_name}\r\n\r\nفاکتور جدید به شناسه {invoice_id} به مبلغ {cost} ایجاد شد\r\nبرای پرداخت فاکتور از لینک زیر اقدام نمایید.\r\n\r\nبا تشکر', '', '', '', '', 1),

( 'billing_orderSettle', 'تایید پرداخت سفارش', 'سفارش به شماره {id} ثبت شد', 'ثبت سفارش شماره {id}', 'سلام\r\nسفارش شما به شماره {id} ثبت و پس از بررسی فعال خواهد شد\r\nموفق باشید', 'ثبت سفارش جدید به شماره {id}', 'سلام\r\nسفارش جدید به مبلغ {cost} توسط {user_name} ثبت شد\r\nموفق باشید', '', '', 1);
--spi--
