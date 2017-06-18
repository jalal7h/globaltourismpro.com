<?php

# jalal7h@gmail.com
# 2017/06/15
# 1.0

function tket_isRepliedBy( $tket_id, $user_id ){

	if(! $rw_s = table( 'tket_post', [ 'tket_id'=>$tket_id ], [ 'date_created'=>'desc' ] , '1' ) ){
		e();

	} else if( $rw_s[0]['user_id'] == $user_id ){
		return true;
	}

	return false;

}





