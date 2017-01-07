<?

# jalal7h@gmail.com
# 2017/01/06
# 2.0

function slideit( $array , $time=1000, $display_name=false, $display_desc=false ){
	
	$c.= "<div class=\"".__FUNCTION__."\" the_time=\"$time\" >\n";
	$c.= "\t<div class=\"list\">\n";

	if(! isset($array[0]) ){
		$array = [$array];
	}

	if(! sizeof($array) ){
		e();
	
	} else foreach( $array as $i => $slide ){

		#
		# if its linked
		$c.= "\t\t<a".( $slide['url'] ? " href=\"".$slide['url']."\"" : '' )."><img src=\"".$slide['image']."\" class=\"isss\">";

		#
		# if it have some text
		if( $display_name or $display_desc ){
			
			$c.= "<div class=\"info\">\n";

			# 
			# if the name
			if( $display_name ){
				$c.= "<span class=\"name\">".$slide['name']."</span>\n";
			}

			# 
			# if description
			if( $display_desc ){
				$c.= "<span class=\"desc\">".$slide['desc']."</span>\n";
			}

			$c.= "</div>\n";

		}

		$c.= "</a>\n";

	}

	$c.= "\t</div>\n";
	$c.= "</div>\n";

	#
	# return tue result
	return $c;
	
}




