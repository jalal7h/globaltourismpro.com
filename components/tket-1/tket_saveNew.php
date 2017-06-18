<?php

# jalal7h@gmail.com
# 2017/06/18
# 1.0

function tket_saveNew( $list ){
	
	if(! $list['add'] ){
		e();

	} else if(! $name = strip_tags($_REQUEST['name']) ){
		e();

	} else if(! $text = strip_tags($_REQUEST['text']) ){
		e();

	} else if(! $foreign = intval($_REQUEST['user_id']) ){
		e();

	} else if( is_numeric($list['add']) and $foreign != $list['add'] ){
		e();

	} else {

		$user_list = ':'.who_logged().':'.$foreign.':';
		$array_set = [ 'type'=>$list['type'], 'name'=>$name, 'user_list'=>$user_list ];

		if( isset($_REQUEST['cat']) ){
			$array_set['cat'] = intval($_REQUEST['cat']);
		}

		if(! $tket_id = dbs( 'tket', $array_set ) ){
			e();

		} else if(! tket_NewPostSave([ 'tket_id'=>$tket_id, 'user_id'=>who_logged(), 'text'=>$text ]) ){
			e();
		
		} else {

			if( function_exists( $tket_tt_func = $list['type'].'_CreateNew_trailerTask' ) ){
				$rw_tket = table('tket', $tket_id);
				$tket_tt_func( $list, $rw_tket );
			}

		}

	}


}

