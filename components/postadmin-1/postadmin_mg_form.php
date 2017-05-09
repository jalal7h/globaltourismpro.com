<?php

# jalal7h@gmail.com
# 2017/05/07
# 1.1

function postadmin_mg_form(){
		
	# -------------------------------------------------
	echo listmaker_form('
		[!"table" => "post"!]
			
			[!head!]
			[!"select:cat*","option"=>cat_display("post")!]
			[!"text:name*"!]
			[!"text:slug'.( $_REQUEST['id'] ? '*' : '' ).'"!]
			[!"textarea:text*.tinymce"!]
			[!"keyword:kw"!]

			<hr>

			[!"file:image+"!]

			<hr>
	
		[!submit!]
	');
	# -------------------------------------------------
	

}

