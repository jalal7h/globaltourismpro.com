<?php

# jalal7h@gmail.com
# 2017/05/03
# 1.1

$GLOBALS['postlist_type'] = [
	'blog' => __('نمایش بصورت وبلاگ'),
	'gallery' => __('نمایش بصورت گالری'),
];

function postlist_extra( $rw_pl ){

	$data = json_decode( $rw_pl['data'], true );
	
	$cat_list = cat_display( 'post' );
	if( sizeof($cat_list) ){
		foreach( $cat_list as $cat_id => $cat_name ){
			$cat['id'] = $cat_id;
			$cat['name'] = $cat_name;
			if( in_array( $cat['id'], $data['cats'] ) ){
				$cat['checked'] = "checked";
			} else {
				$cat['checked'] = "";
			}
			$cats[] = $cat;
		}
	}

	echo template_engine( 'postlist_extra', [ 
		'type'=>$data['type'], 
		'cats'=>$cats, 
	]);

}

// blog/56,57




