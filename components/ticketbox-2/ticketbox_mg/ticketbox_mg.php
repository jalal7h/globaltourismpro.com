<?php

# jalal7h@gmail.com
# 2017/06/16
# 2.0

add_component( 'ticketbox_mg', 'پیام‌های پشتیبانی', '0e6' );

function ticketbox_mg(){
	
	listmaker_tabmenu([
	
		"ticketbox_mg_list" => __("لیست %%", tket_name('ticketbox')[1] ) ,
		"cat_mg&l=ticketbox" => cat_detail('ticketbox')['name'],

	], _URL."/?page=admin&cp=".$_REQUEST['cp'] );

}


