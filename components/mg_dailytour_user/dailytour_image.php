<?

# jalal7h@gmail.com
# 2017/01/23
# 1.0

function dailytour_image( $id = null, $size=null ){

	if(! $id ){
		if(! $id = $_REQUEST['id'] ){
			return e();
		}
	}

	if(! $rs = dbq(" SELECT `image` FROM `mg_dailytour_image` WHERE `mg_dailytour_id`='$id' ORDER BY `id` ASC ") ){
		e( dbe() );
	
	} else if(! dbn($rs) ){
		//

	} else while( $rw = dbf($rs) ){
		if( $size ){
			$images[] = _URL."/resize/".$size."/".$rw['image'];
		} else {
			$images[] = _URL."/".$rw['image'];
		}
	}

	if(! sizeof($images) ){
		$images[] = _URL.'/image_list/no-image-found.jpg';
	}

	return $images;

}



