<?php

# jalal7h@gmail.com
# 2017/05/02
# 1.0

function photogallery_mg_list_form(){
	
	if( photogallery_name !== true and photogallery_desc !== true and photogallery_cat !== true ){
		$single_form = true;
	}

	# -------------------------------------------------
	echo listmaker_form('
		[!"table" => "photogallery"!]
			
			[!head!]
			
			'.( photogallery_name ? '[!"text:name*"!]' : '' ).'
			'.( photogallery_desc ? '[!"textarea:desc"!]' : '' ).'
			'.( photogallery_cat ? '[!"select:cat", "option"=>cat_display("photogallery")!]' : '' ).'

			[!"file:image*'. ( $single_form ? '/multiple' : '' ) .'", "prompt"=>"You can attach multiple files." !]
			
			<hr>
	
		[!submit!]
	');
	# -------------------------------------------------
	
}

