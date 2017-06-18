<?php

# jalal7h@gmail.com
# 2017/06/18
# 2.0

add_userpanel_item( 'ticketbox_user_list', 'ticket', __('تیکت‌ها'), '0e6' );

function ticketbox_user_list(){
	
	if(! $user_id = user_logged() ){
		ed();
	}

	tket([

		'base'		=> _URL.'/?page=14&do_slug=ticket',

		'type'		=> 'ticketbox',
		'cat_name'	=> 'ticketbox',
		'user_list'	=> user_logged(), // list of tickets only for this user

		'add'		=> 1, // add ticket, only for admin

	]);


}



