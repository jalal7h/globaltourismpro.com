<?

# jalal7h@gmail.com
# 2017/04/18
# 2.2

function slideit( $slides , $the_time=4000, $thumb=false, $display_name=0, $display_desc=0, $size='1280x400' ){

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

	#
	# retina
	list( $slide_w, $slide_h ) = explode('x', $size);
	$retina_w = $slide_w * 2;
	$retina_h = $slide_h * 2;
	$retina = $retina_w.'x'.$retina_h;

	#
	# size
	foreach( $slides as $i => $slide ){
		$slides[$i]['image'] = str_replace( _URL, _URL.'/resize_n_cut/'.$retina, $slides[$i]['image'] );
	}
	// var_dump($slides);die();

	return template_engine( 'slideit', [
		
		'slides'		=> $slides,
		'the_size'		=> $size,
		'the_time'		=> $the_time,
		'display_name'	=> $display_name,
		'display_desc'	=> $display_desc,

		'effect_count'	=> 4,

	]);
	
}




