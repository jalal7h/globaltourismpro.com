<?php

# jalal7h@gmail.com
# 2017/01/06
# 1.0

# $list : random = [true/false]  {optional}
#		: limit = [number] {optional}

function slideshow_get( $list ){
	
	$where = [ 'flag'=>1 ];

	if( $list['random'] ){
		$order[] = "rand()";
	}
	
	if( $list['limit'] ){
		$limit = $list['limit'];
	}

	#
	# get from database
	$slides = table( 'slideshow', $where, $order, $limit );

	#
	# fix
	foreach ($slides as $i => $slide) {
		$slides[$i]['image'] = _URL."/".$slides[$i]['image'];
	}

	#
	# return it
	return $slides;

}

