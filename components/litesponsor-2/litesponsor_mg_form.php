<?

# jalal7h@gmail.com
# 2017/01/07
# 1.0

function litesponsor_mg_form(){

	# -------------------------------------------------
	echo listmaker_form('
		[!"table" => "litesponsor"!]

		<hr>
		<br>

		[!"text:name*"!]
		'.( litesponsor_url_flag === true ? '[!"url:url*"!]' : '' ).'
		[!"file:image"!]

		<br>
		<hr>
		<br>
	
		[!"submit:'.__('ثبت').'"!]
	');
	# -------------------------------------------------
	
}


