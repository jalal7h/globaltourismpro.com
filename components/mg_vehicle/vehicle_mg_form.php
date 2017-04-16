<?

# jalal7h@gmail.com
# 2017/01/22
# 1.1

function vehicle_mg_form(){

	# -------------------------------------------------
	echo listmaker_form('
		[!"table" => "mg_vehicle","action"=>_URL."/admin/vehicle"!]
			
			[!"text:name*"!]
			[!"text:pax*"!]

			<hr>
	
		[!"submit:'.__('ثبت').'"!]
	');
	# -------------------------------------------------

}



