<?php

# jalal7h@gmail.com
# 2017/04/22
# 1.0

function postadmin_image( $post_id ){
	
	if(! $rs = dbq(" SELECT * FROM `post_image` WHERE `post_id`='$post_id' ORDER BY `id` ASC ") ){
		e();

	} else if(! dbn($rs) ){
		return [];

	} else while( $rw = dbf($rs) ){
		$list[] = $rw['image'];
	}

	return $list;

}

