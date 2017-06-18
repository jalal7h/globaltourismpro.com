<?php

# jalal7h@gmail.com
# 2017/06/16
# 1.0

function tket_setAsViewed( $tket_id, $user_id, $set_as ){

	$where_set = [ 'tket_id'=>$tket_id, 'user_id'=>$user_id ];

	switch( $set_as ){
		
		case '0': // set as new
		case 'new':
			dbrm( 'tket_view', $where_set );
			break;

		case '1': // set as viewed
		case 'viewed':
			if(! table( 'tket_view', $where_set ) ){
				dbs( 'tket_view', $where_set );
			}
			break;

	}

}