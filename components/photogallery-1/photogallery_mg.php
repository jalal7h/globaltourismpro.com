<?php

# jalal7h@gmail.com
# 2017/05/02
# 1.0

add_component( 'photogallery_mg', 'گالری تصاویر', '03e' );

function photogallery_mg(){
	
	listmaker_tabmenu([
	
		"photogallery_mg_list" => __("لیست تصاویر"),
		"cat_mg&l=photogallery" => cat_detail('photogallery')['name'],
	
	], _URL."/?page=admin&cp=".$_REQUEST['cp'] );

}

