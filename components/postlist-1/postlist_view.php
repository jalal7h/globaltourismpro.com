<?php

# jalal7h@gmail.com
# 2017/04/24
# 1.0

function postlist_view( $rw_pl ){
	
	if(! $slug = trim($_REQUEST['post_slug']) ){
		e();

	} else if(! $rw_post = table('post', ['slug'=>$slug]) ){
		e();

	} else {
		
		$post = $rw_post[0];
		$images = postadmin_image( $post['id'] );
		if( sizeof($images) ){
			foreach ($images as $i => $image) {
				$images[$i] = _URL.'/'.$image;
			}
		}

		echo template_engine( 'postlist_view', [
			'post' => $post,
			'images' => $images,
		]);

	}
	
}

