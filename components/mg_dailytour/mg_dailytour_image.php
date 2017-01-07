<?

# jalal7h@gmail.com
# 2016/12/26
# 1.0

function mg_dailytour_image( $id = null ){

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
		$images[] = _URL."/".$rw['image'];
	}

	if(! sizeof($images) ){
		$images[] = _URL.'/image_list/no-image-found.png';
	}

	return $images;

}



