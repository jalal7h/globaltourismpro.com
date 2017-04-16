<?php

# jalal7h@gmail.com
# 2017/01/22
# 1.0

function dailytour_languages( $id ){
	
	if(! $rw_s = table('mg_dailytour_language', ['mg_dailytour_id'=>$id] ) ){
		return false;

	} else foreach ($rw_s as $rw) {
		$lang[] = cat_translate($rw['language']);
	}

	return $lang;

}

