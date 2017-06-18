<?php

# jalal7h@gmail.com
# 2017/06/15
# 1.0

function tket_isAccessibleFor( $tket_id, $user_id ){
	
	if(! $rw_tket = table( 'tket', $tket_id ) ){
		return false;

	} else if(! strstr( $rw_tket['user_list'], ':'.$user_id.':' ) ){
		return false;
	
	} else {
		return true;
	}

}

