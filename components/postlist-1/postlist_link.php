<?php

# jalal7h@gmail.com
# 2017/05/21
# 1.0

function postlist_link( $rw_post ){
	
	if( is_numeric($rw_post) ){
		$rw_post = table( 'post', $rw_post );
	}

	if(! $rw_cat = cat_getByID($rw_post['cat']) ){
		e();

	} else {
		return _URL."/".Slug::getSlugByName('post')."/".$rw_cat['slug'].'/'.$rw_post['slug'];
	}
	
}



