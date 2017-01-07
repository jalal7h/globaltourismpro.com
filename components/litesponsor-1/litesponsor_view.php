<?

# jalal7h@gmail.com
# 2017/01/07
# 1.1

// add_layer( 'litesponsor_view', 'لیست اسپانسرها' , 'center' );

function litesponsor_view(){
	
	$limit = litesponsor_view_limit;
	$the_height = litesponsor_view_height;

	$c = "<div class=\"".__FUNCTION__."\">\n";
	
	if(! $rs = dbq(" SELECT * FROM `litesponsor` ORDER BY rand() LIMIT $limit ") ){
		e();

	} else if(! dbn($rs) ){
		return '';
	
	} else while( $rw = dbf($rs) ){
		$sz = getimagesize($rw['image']);
		$width = $sz[0];
		$height = $sz[1];
		$width = round( ($width * $the_height) / $height );
		$c.= '<a'.( (litesponsor_url_flag === true and $rw['link'] != '') ? 
			' href="'.$rw['link'].'" target="_blank"' : '' ).'><img width="'.$width.'px" height="'.$the_height.'" src="'._URL.'/'.$rw['image'].'" /></a>';
		$c.= "\n";
	}

	$c.= "</div>\n";

	return $c;
}


