<?

# jalal7h@gmail.com
# 2016/11/28
# 1.1

function user_detail( $user_id ){

	if(! $user_id = intval($user_id) ){
		e();
	
	} else if(! $rw = table('user', $user_id) ){
		//

	} else {
		return $rw;
	}

	return [''];

}



