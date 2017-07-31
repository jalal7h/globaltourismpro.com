<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

function dailytourorder_mg_list(){

	# --------------------------------------------
	echo listmaker_list([
		'head'	=> 'DailyTour Bookings',
		'class' => __FUNCTION__,
		'table' => 'mg_dailytour_order',
		'where' => ( is_master() ? [] : [" `dailytour_id` IN (SELECT `id` FROM `mg_dailytour` WHERE `owner`='".admin_logged()."') "] ),
		'order' => [ 'date_created' => 'desc' ],
		'limit' => 5,
		'url' => [
			'base' => '_URL."/?page=admin&cp=".$_REQUEST["cp"]', // *
			'remove' => '_URL."/?page=admin&cp=".$_REQUEST["cp"]."&do=remove&id=".$rw["id"]."&p=".$_REQUEST["p"]',
		],
		'filter' => [
			'state' => [ '.. Booking State ..', $GLOBALS['mg_order_state_pattern_translate'] ],
		],
		'button' => [
			'finilize' => [
				'url'	=> '_URL."/?page=admin&cp=dailytourorder_mg&do=finilize&id=".$rw["id"]."&p=".$_REQUEST["p"]',
				'icon'	=> '14a',
				'name'	=> 'Finilize',
				'color'	=> 'green',
				'confirm' => 'Are you sure to finilize this order?',
				'func'	=> 'dailytourorder_user_list_button_finilize_func',
			],
			'booking_voucher' => [
				'url'	=> '$rw["code"]',
				'icon'	=> '0f6',
				'name'	=> 'Booking Voucher',
				'color'	=> 'orangered',
				// 'func'	=> 'dailytourorder_user_list_button_booking_voucher_func',
			],
		],
		'item' => [
			[ 'dailytourorder_idNameDest($rw)' ],
			[ 'dailytourorder_mg_list_user($rw)."<br>".dailytourorder_dates($rw)' ],
			[ 'dailytourorder_bookInfo($rw)' ],
		],
		'search' => [ 
			'code',
			'leader_name', 
			'additional_requests',
			'passenger_cell', 
			'user(user_id)[email]', 
			'user(user_id)[name]', 
			'mg_dailytour(dailytour_id)[name]'
		],
	]);
	# --------------------------------------------

}


function dailytourorder_mg_list_user( $rw ){
	$rw_user = user_detail( $rw['user_id'] );
	return "<a href=\"".user_loginLink( $rw['user_id'] )."\" target=\"_blank\">".$rw_user['name']."</a>";
}


function dailytourorder_user_list_button_finilize_url( $rw ){
	return "kkk";
}


function dailytourorder_user_list_button_finilize_func( $rw ){
	if( $rw['state'] == 'CONFIRM' ){
		return true;
	} else {
		return false;		
	}
}


