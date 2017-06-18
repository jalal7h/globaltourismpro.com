<?php

# jalal7h@gmail.com
# 2017/06/18
# 1.0

add_action('tket_view_post_remove');

function tket_view_post_remove(){

	if(! $que_key = $_REQUEST['que_key'] ){
		ed();

	} else if(! $list = que::get($que_key) ){
		ed();
	}

	if(! $list['remove'] ){
		ed();
	}

	if(! admin_logged() ){
		ed();
	
	} else if(! $post_id = $_REQUEST['post_id'] ){
		//

	} else if(! $rw_tp = table('tket_post', $post_id) ){
		//

	} else if(! dbrm('tket_post', $post_id) ){
		//

	} else if( dbr(dbq(" SELECT COUNT(*) FROM `tket_post` WHERE `tket_id`='".$rw_tp['tket_id']."' "),0,0) == 0 ){
		dbrm( 'tket', $rw_tp['tket_id'], true );
		echo "NULL";
		die();

	} else {
		echo "OK";
		die();
	}

	echo "ER";

}


