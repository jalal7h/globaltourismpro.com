<?php

# jalal7h@gmail.com
# 2017/05/03
# 1.0

function mg_cost_after_offrate( $cost ){
	
	if(! $user_id = user_logged() ){
	} else if(! $rw_user = user_detail($user_id) ){
	} else if(! $offrate = $rw_user['offrate'] ){
	} else {
		$cost*= 100 - $offrate;
		$cost/= 100;
		$cost = sprintf( "%2.2f", $cost );
		return $cost;
	}

	return $cost;

}

