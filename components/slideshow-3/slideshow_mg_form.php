<?php

# jalal7h@gmail.com
# 2017/01/06
# 1.0

function slideshow_mg_form(){
	
	$page_list = table( 
		'page', 
		['ignore_in_sitemap'=>0], 
		["id", "name"=> "desc"]
	);

	foreach( $page_list as $page_id => $rw_page ){
		$list_of_pages_in_select.= "<option value='".layout_link($rw_page)."::".$rw_page['name']."' >".$rw_page['name']."</option>";		
	}	

	# -------------------------------------------------
	echo listmaker_form('
		[!"table" => "slideshow"!]
			
			<div class="head">'.__('فرم ثبت اسلاید').'</div>

			<hr>
			
			'.( slideshow_enable_url === true ? '
			[!"select:list_of_pages_in_select","option"=>"'.$list_of_pages_in_select.'"!]
			<hr>
			' : '' ).'

			[!"text:name*"!]
			'.( slideshow_enable_desc === true ? '[!"textarea:desc"!]' : '' ).'
			'.( slideshow_enable_url === true ? '[!"url:url*"!]' : '' ).'
			
			[!"file:image*"!]
			
			<hr>

		[!"submit:'.__('ثبت').'"!]
	');
	# -------------------------------------------------
	
}

