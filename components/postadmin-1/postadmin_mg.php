<?php

# jalal7h@gmail.com
# 2017/04/21
# 1.0

add_component( 'postadmin_mg', 'نوشته‌ها', '00b' );

function postadmin_mg(){
	
	listmaker_tabmenu([
	
		"postadmin_mg_list" => __("لیست %%",[ lmtc('post')[1] ]) ,
		"cat_mg&l=post" => cat_detail('post')['name'],
	
	], _URL."/?page=admin&cp=".$_REQUEST['cp'] );
	
}


