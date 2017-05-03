<?php

# jalal7h@gmail.com
# 2017/05/03
# 1.1

add_layer( 'postlist', 'لیست پست‌ها', 'center', $repeat='N' );

function postlist( $rw_pl ){

	#
	# actions
	switch ($_REQUEST['do']) {
		
		case 'view_post':
			return postlist_view( $rw_pl );

	}

	#
	# default values
	$type = 'blog';
	$cats_list = cat_display('post');
	if( sizeof($cats) ){
		foreach( $cats_list as $cat_id => $bla ){
			$cats[] = $cat_id;
		}
	}

	#
	# list
	if( $data = $rw_pl['data'] ){
		$data = json_decode($data, true);
		$type = $data['type'];
		$cats = $data['cats'];

	} else if(! isset( $GLOBALS['type'][ $type ] ) ){
		$type = 'blog';
	}

	#
	# the limits
	$where_arr = [ ];

	#
	# cat limits
	if( sizeof($cats) ){
		$where_arr['cat'] = $cats;
	}

	#
	# slug limit
	if( $cat_slug = $_REQUEST['cat_slug'] ){
		$rw_cat = cat_getBySlug($cat_slug);
		$where_arr['cat'] = $rw_cat['id'];
	}
	
	if(! $rw_s = table( 'post', array_merge( $where_arr, ['flag'=>1] ), [ 'id'=>'desc' ] ) ){
		//

	} else {
		
		#
		# ...
		foreach( $rw_s as $i => $rw ){
			
			#
			# memo
			$memo = $rw['text'];
			$memo = strip_tags($memo);
			$memo = explode( '<!slice!>', wordwrap( $memo, 500, "<!slice!>") )[0] . " ... ";
			$rw_s[$i]['text-memo'] = $memo;

			#
			# image
			$images = postadmin_image( $rw['id'] );
			if( sizeof($images) ){
				$rw_s[$i]['image'] = _URL.'/resize/640x640/'.$images[0];
			} else {
				$rw_s[$i]['image'] = _URL.'/image_list/postlist_image_not_found.jpg';
			}
			
		}

		# 
		# content
		$content = template_engine( 'postlist_list_'.$type, [
			'posts' => $rw_s ,
		]);

		# 
		# echo
		if( $cat_slug ){
			layout_post_box( $rw_cat['name'], $content, $allow_eval=false, $framed=1 );
		} else {
			layout_post_box( $rw_pl['name'], $content, $allow_eval=false, $framed=1 );
		}

	}

}



