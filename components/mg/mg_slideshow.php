<?php

# jalal7h@gmail.com
# 2017/01/11
# 1.0

add_layer( 'mg_slideshow', 'Slideshow', 'center' );

function mg_slideshow(){
	
	if( !in_array(_PAGE, [1,14]) or $_REQUEST['service'] ){
		return '';
	}

	$slide_array = slideshow_get([
		'random' => true,
		// 'limit' => 5
	]);
		
	$the_slideshow = slideit( $slide_array , 8000 );
	$the_slideshow = str_replace( '<div class="list">' , "<img src=\""._URL."/image_list/slideit_gradiant.png\" class=\"gradiant\">\n\t".'<div class="list">', $the_slideshow );

	return $the_slideshow;
	
}

