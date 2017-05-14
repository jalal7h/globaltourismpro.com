<?php

# jalal7h@gmail.com
# 2017/04/26
# 1.2

add_layer( 'mg_billboard', 'Billboard', 'center' );

function mg_billboard(){

	if( _PAGE != 1 or d404_flag === true ){
		return;
	}

	$rand1 = rand(101,118);
	$rand2 = rand(101,118);

	$the_billboard = "

	<div class=\"mg_billboard_w\">
		<div class=\"rotated\">0
			<div class=\"mg_billboard cl_l1r\">
				<div class=\"inner\">
					<span class=\"main_title\">".setting('main_title')."</span>
					<a href=\""._URL."/gallery\" class=\"img_w\">
						<div class=\"img_div\">
						<img class=\"r1\" src=\""._URL."/resize_n_cut/672x294/image_list/gallery_thumbs_".$rand1.".jpg\"/>
						<img class=\"r2\" src=\""._URL."/resize_n_cut/672x294/image_list/gallery_thumbs_".$rand2.".jpg\"/>
						</div>
					</a>
				</div>
			</div>
			<div class=\"cl_l1r mg_billboard_fleshdown\">
				<div class=\"c2\">
					<div class=\"c3 cl_l1r\"></div>
				</div>
			</div>
		</div>
		<div class=\"cl_l2r mg_billboard_footer\"></div>
	</div>
	";

	return $the_billboard;
	
}

