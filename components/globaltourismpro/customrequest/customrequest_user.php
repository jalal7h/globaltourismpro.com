<?php

# jalal7h@gmail.com
# 2017/06/18
# 1.0

add_userpanel_item( 'customrequest_user', 'customrequest', 'Custom Requests', '277' );

function customrequest_user(){
	
	if(! $user_id = user_logged() ){
		ed();
	}

	tket([

		'base'		=> _URL.'/?page=14&do_slug=customrequest',

		'type'		=> 'customrequest',
		'user_list'	=> user_logged(),

		'add'		=> 1, // add ticket, only for admin

	]);


}