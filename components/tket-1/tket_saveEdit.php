<?php

# jalal7h@gmail.com
# 2017/06/17
# 1.0

function tket_saveEdit( $list ){
	
	$array_set = [ 'name' ];

	if(! $tket_id = intval($_REQUEST['id']) ){
		e();

	} else if(! $rw_tket = table('tket', $tket_id) ){
		e();

	} else if(! $new_foreign = $_REQUEST['user_id'] ){
		e();

	} else {

		if( $new_foreign != $foreign ) {
			
			$foreign = tket_foreignList($rw_tket)[0];

			$user_list = $rw_tket['user_list'];
			$user_list = str_replace( ':'.$foreign.':', ':', $user_list );
			$user_list.= $new_foreign.':';

			$array_set['user_list'] = $user_list;

		}

		if( isset($_REQUEST['cat']) ){
			$array_set['cat'] = intval($_REQUEST['cat']);
		}

		dbs( 'tket', $array_set, [ 'id' ] );

	}

}



