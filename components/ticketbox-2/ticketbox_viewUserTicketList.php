<?php

# jalal7h@gmail.com
# 2017/05/01
# 1.0

add_adminusertab( 'ticketbox_viewUserTicketList', 'تیکت‌ها' );

function ticketbox_viewUserTicketList(){

	$user_id = intval($_REQUEST['id']);

	tket([
	
		'base'		=> _URL.'/?page=admin&cp=user_mg&do=view&id='.$user_id.'&func=ticketbox_viewUserTicketList',
	
		'type'		=> 'ticketbox',
		'cat_name'	=> 'ticketbox',
		'user_list'	=> $user_id, // list of tickets only for this user
	
		'remove'	=> true,
		'modify'	=> true,
		'add'		=> $user_id, // true / 1 / .. / add ticket, only for admin
		'done'		=> true,
	
	]);


}


