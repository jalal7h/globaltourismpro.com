<?php

# jalal7h@gmail.com
# 2017/04/26
# 1.2

add_layer( 'mg_slideshow', 'Slideshow', 'center' );

function mg_slideshow(){

	if( _PAGE != 1 or d404_flag === true ){
		return;
	}

	$slide_array = slideshow_get([
		'random' => true,
		// 'limit' => 5,
	]);

	$the_slideshow = slideit( $slide_array , 8000, $thumb=false, $display_name=1, $display_text=1 );

	return $the_slideshow;
	
}

