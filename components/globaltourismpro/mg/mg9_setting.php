<?

# jalal7h@gmail.com
# 2017/05/24
# 1.1

add_setting('mg9_setting','Voucher And Service');

function mg9_setting(){
	
	switch ($_REQUEST['do']) {
		case 'saveNew':
			mg9_setting_save();
			break;
	}

	# -------------------------------------------------
	echo listmaker_form('
		[!"table" => "setting","rw" => setting_rw_slug_n_text()!]
			
			[!"'.setting_rw('mg9_dailytour_voucher_assistance')['name'].'","phone:mg9_dailytour_voucher_assistance"!]
			[!"'.setting_rw('mg9_visa_flag')['name'].'","toggle:mg9_visa_flag"!]
			[!"'.setting_rw('mg9_visa_price')['name'].'","cost:mg9_visa_price"!]
			[!"'.setting_rw('mg9_visa_agreement')['name'].'","textarea:mg9_visa_agreement.tinymce"!]

			<hr>
	
		[!submit!]
	');
	# -------------------------------------------------

}


