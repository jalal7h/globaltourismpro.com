<?php

# jalal7h@gmail.com
# 2017/06/15
# 2.0

add_tket( 'ticketbox', __('تیکت/تیکت‌ها') );

function ticketbox_mg_list(){

	tket([

		'base'		=> _URL.'/?page=admin&cp=ticketbox_mg&func=ticketbox_mg_list',

		'type'		=> 'ticketbox',
		'cat_name'	=> 'ticketbox',
		'user_list'	=> admin_logged(),

		'remove'	=> true,
		'modify'	=> true,
		'add'		=> true,
		'done'		=> true,

	]);

}








