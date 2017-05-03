<?php

# jalal7h@gmail.com
# 2017/04/29
# 1.0

function postadmin_list_of_posts_in_select(){
	
	if(! $rs_cat = dbq(" SELECT * FROM `cat` WHERE `cat`='post' ") ){
		e();
	} else if( dbn($rs_cat) ){
		while( $rw_cat = dbf($rs_cat) ){
			$post_cat_url = _URL."/".Slug::getSlugByName('post').'/'.$rw_cat['slug'];
			$list_of_posts_in_select.= "<option value='".$post_cat_url."::".$rw_cat['name']."' >".$rw_cat['name']."</option>";

			if(! $rs_post = dbq(" SELECT * FROM `post` WHERE `cat`='".$rw_cat['id']."' AND `flag`='1' ORDER BY `id` DESC ") ){
				e();

			} else if( dbn($rs_post) ){
				while( $rw_post = dbf($rs_post) ){
					$post_url = _URL."/".Slug::getSlugByName('post').'/'.$rw_cat['slug']."/".$rw_post['slug'];
					$list_of_posts_in_select.= "<option value='".$post_url."::".$rw_post['name']."' >".$rw_cat['name'].' :: '.$rw_post['name']."</option>";
				}
			}

		}
	}

	return $list_of_posts_in_select;

}

