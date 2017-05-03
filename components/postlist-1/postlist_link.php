<?php

# jalal7h@gmail.com
# 2017/04/29
# 1.1

function postlist_link( $rw_post ){
	
	if(! $rw_cat = cat_getByID($rw_post['cat']) ){
		e();

	} else {
		return _URL."/".Slug::getSlugByName('post')."/".$rw_cat['slug'].'/'.$rw_post['slug'];
	}
	
}



