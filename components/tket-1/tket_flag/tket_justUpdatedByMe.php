<?php

# jalal7h@gmail.com
# 2017/06/16
# 1.0

function tket_justUpdatedByMe( $tket_id ){

	#
	# user id
	$user_id = who_logged();

	#
	# date updated on tket
	dbs( 'tket', [ 'date_updated'=>U() ], [ 'id'=>$tket_id ] );

	# 
	# remove from archive, back to live list, for both users
	dbq(" UPDATE `tket` SET `done`='0' WHERE `id`='$tket_id' LIMIT 1 ");

	#
	# view flag
	tket_setAsViewed( $tket_id, $user_id, 'viewed' );
	if( $foreignList = tket_foreignList( $tket_id ) ){
		foreach ($foreignList as $foreign_id) {
			tket_setAsViewed( $tket_id, $foreign_id, 'new' );
		}
	}

}

