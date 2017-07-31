
INSERT INTO `texty` ( `slug`, `name`, `prompt`, `user_title`, `user_email_subject`, `user_email_content`, `user_sms`, `user2_title`, `user2_email_subject`, `user2_email_content`, `user2_sms`, `admin_email_subject`, `admin_email_content`, `admin_sms`, `flagstring`, `vars`, `flag`) VALUES

( 'billing_settleInvoice', 'تایید پرداخت صورتحساب', 'پرداخت با موفقیت انجام شد.\r\nمبلغ : {invoice_cost}\r\nشماره فاکتور : {invoice_id}\r\nکد تراکنش : {invoice_transaction}', '', 'صورتحساب شما به شماره {invoice_id} پرداخت شد', 'با سلام،\r\nکاربر گرامی {user_name}،\r\n\r\nصورتحساب شما به مبلغ {invoice_cost} به شناسه {invoice_id} پرداخت شد.\r\n\r\nبا تشکر\r\n{tiny_title}', 'سلام\r\nصورتحساب به مبلغ {invoice_cost} به شناسه {invoice_id} پرداخت شد.\r\nبا تشکر\r\n{tiny_title}', '', '', '', '', 'پرداخت صورتحساب به شماره {invoice_id}', 'با سلام،\r\n\r\nصورتحساب به مبلغ {invoice_cost} با شناسه {invoice_id} توسط {user_name} پرداخت شد.\r\n\r\nبا تشکر\r\n{tiny_title}', 'صورتحساب به مبلغ {invoice_cost} به توسط {user_name} پرداخت شد.', '', 'invoice_id invoice_transaction invoice_cost', 1),

( 'billing_invoiceMake_congratulate', 'ایجاد صورتحساب جدید', 'صورتحساب به شناسه #{invoice_id} به مبلغ {invoice_cost} ایجاد شد.', '', 'ثبت صورتحساب {invoice_id}', 'با سلام،\r\nکاربر گرامی {user_name}،\r\n\r\nصورتحساب جدید به شناسه {invoice_id} به مبلغ {invoice_cost} ایجاد شد.\r\nبرای پرداخت صورتحساب :\r\n{invoice_payment_link}\r\n\r\n\r\nبا تشکر\r\n{tiny_title}', 'سلام\r\nصورتحساب جدید به مبلغ {invoice_cost} به شناسه #{invoice_id} صادر شد.\r\nبا تشکر\r\n{tiny_title}', '', '', '', '', '', '', '', '', 'invoice_id invoice_cost invoice_payment_link', 1),

( 'billing_orderSettle', 'تایید پرداخت سفارش', 'سفارش به شماره {order_id} ثبت شد', ' سفارش‌دهنده', 'ثبت سفارش شماره {order_id}', 'با سلام،\r\nکاربر گرامی {user_name}\r\n\r\nسفارش شما به شماره {order_id} ثبت و پس از بررسی پردازش خواهد شد.\r\n\r\nبا تشکر\r\n{tiny_title}', 'سفارش به شناسه {order_id} ثبت شد.', '', '', '', '', 'ثبت سفارش جدید به شماره {order_id}', 'با سلام،\r\n\r\nسفارش جدید به مبلغ {cost} توسط {user_name} ثبت شد\r\n\r\nبا تشکر\r\n{tiny_title}', '', '', 'cost order_id ', 1),

( 'billing_userpanel_payment_wallet', 'پرداخت بواسطه کیف پول', 'پرداخت مبلغ {invoice_cost} از کیف پول انجام شد.', '', 'پرداخت از کیف پول', 'با سلام\r\nکاربر گرامی {user_name}،\r\n\r\nمبلغ {invoice_cost} از اعتبار کیف پول شما پرداخت شد.\r\n\r\nباتشکر\r\n{tiny_title}', 'سلام\r\nپرداخت مبلغ {invoice_cost} از اعتبار کیف پول شما انجام شد\r\n{tiny_title}', '', '', '', '', '', '', '', '', '', 1);


--spi--
