<?

# jalal7h@gmail.com
# 2016/11/30
# 1.0

function tket_isNew( $tket_id ){

	$user_id = who_logged();

	if(! tket_isAccessibleFor( $tket_id, $user_id ) ){
		return e();

	} else if( $rw_s = table( 'tket_view', [ 'tket_id'=>$tket_id, 'user_id'=>$user_id ] ) ){
		return false;
	
	} else {
		return true;
	}
	
}







