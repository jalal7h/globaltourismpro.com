<?php

# jalal7h@gmail.com
# 2017/05/03
# 1.1

function postlist_extra_save( $rw_pl ){

	// $type = $_REQUEST['postlist_type'];

	if( sizeof($_REQUEST['cat']) ){
		foreach( $_REQUEST['cat'] as $cat_id => $bla ){
			$cats[] = $cat_id;
		}
	}
	// 	$cats = implode(',', $cats);
	// }

	// $data = $type . "/" . $cats;

	$data['type'] = $_REQUEST['postlist_type'];
	$data['cats'] = $cats;

	$data_json = json_encode( $data );

	dbs( 'page_layer', [ 'data'=>$data_json ], [ 'id'=>$rw_pl['id'] ] );

}

