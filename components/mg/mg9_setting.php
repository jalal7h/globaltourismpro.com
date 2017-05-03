<?

# jalal7h@gmail.com
# 2017/04/30
# 1.0

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
			
			<div>
				[!"'.setting_rw('mg9_dailytour_voucher_assistance')['name'].'","text:mg9_dailytour_voucher_assistance"!]
			</div>

			<hr>
	
		[!"submit:'.__('ثبت').'"!]
	');
	# -------------------------------------------------

}


