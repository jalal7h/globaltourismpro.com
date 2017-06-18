<?php

# jalal7h@gmail.com
# 2017/06/16
# 1.0

function tket_foreignList( $rw_tket ){
	
	if( is_numeric($rw_tket) ){
		if(! $rw_tket = table( 'tket', $rw_tket ) ){
			return e();
		}
	}

	$user_list = $rw_tket['user_list'];
	$user_list = str_replace( ':'.who_logged().':' , ':', $user_list );
	$user_list = substr( $user_list, 1, -1 );
	$user_list = explode(':', $user_list);
	
	return $user_list;

}

