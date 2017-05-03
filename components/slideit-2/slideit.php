<?

# jalal7h@gmail.com
# 2017/04/18
# 2.2

function slideit( $slides , $the_time=1000, $thumb=false, $display_name=0, $display_desc=0 ){

	if(! is_array($slides) ){
		return e();
	} else if(! sizeof($slides) ){
		return e();
	}

	#
	# fix if its an array of images
	if( is_string($slides[0]) ){
		foreach ($slides as $i => $slide) {
			$slides[$i] = [ 'image'=>$slide ];
		}
	}

	return template_engine( 'slideit', [
		
		'slides'		=> $slides,
		'the_time'		=> $the_time,
		'display_name'	=> $display_name,
		'display_desc'	=> $display_desc,

		'effect_count'	=> 4,

	]);
	
}




