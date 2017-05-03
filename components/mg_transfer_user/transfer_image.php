<?

# jalal7h@gmail.com
# 2017/01/23
# 1.0

function transfer_image( $id=null, $size=null ){

	if(! $id ){
		if(! $id = $_REQUEST['id'] ){
			return e();
		}
	}

	if(! $rs = dbq(" SELECT `image` FROM `mg_transfer_image` WHERE `mg_transfer_id`='$id' ORDER BY `id` ASC ") ){
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
		$images[] = _URL.'/image_list/mg_transfer_nophoto-'.substr($id,-1).'.jpg';
	}

	return $images;

}



