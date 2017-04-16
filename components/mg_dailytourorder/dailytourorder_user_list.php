<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

function dailytourorder_user_list(){
	
	# --------------------------------------------
	echo listmaker_list([
		'head'	=> 'DailyTour Bookings',
		'class' => __FUNCTION__,
		'table' => 'mg_dailytour_order',
		'where' => [ 'user_id' => user_logged() ],
		'order' => [ 'date_created' => 'desc' ],
		'limit' => 5,
		'url' => [
			'base' => '_URL."/?page=14&do_slug='.$_REQUEST['do_slug'].'"', // *
		],
		'filter' => [
			'state' => [ '.. Booking State ..', $GLOBALS['mg_order_state_pattern_translate'] ],
		],
		'button' => [
			'booking_message' => [
				'url'	=> 'dailytourorder_user_list_button_booking_message_url',
				'icon'	=> '0e6',
				'name'	=> 'Booking Message',
				'color'	=> 'blue',
			],
			'booking_invoice' => [
				'url'	=> 'dailytourorder_user_list_button_booking_invoice_url',
				'icon'	=> '155',
				'name'	=> 'Booking Invoice',
				'color'	=> '#8c00d4',
				'func'	=> 'dailytourorder_user_list_button_booking_invoice_func',
			],
			'booking_voucher' => [
				'url'	=> '$rw["id"]',
				'icon'	=> '0f6',
				'name'	=> 'Booking Voucher',
				'color'	=> 'orangered',
				'func'	=> 'dailytourorder_user_list_button_booking_voucher_func',
			],
		],
		'item' => [
			[ 'dailytourorder_idNameDest($rw)', 'head'=>lmtc("mg_dailytour_order:dailytour_id") ],
			[ 'dailytourorder_dates($rw)', 'head'=>'Date' ],
			[ 'dailytourorder_bookInfo($rw)', 'head'=>'Booking' ],
		],
		'search' => [ 
			'code',
			'leader_name', 
			'additional_requests',
			'passenger_cell', 
			'mg_dailytour(dailytour_id)[name]',
		],
	]);
	# --------------------------------------------

}




function dailytourorder_user_list_button_booking_message_url( $rw ){
	return _URL.'/'.Slug::get('page',14).'/ticket/new';
}

function dailytourorder_user_list_button_booking_voucher_func( $rw ){
	if( $rw['state'] == 'FINZ' ){
		return true;
	} else {
		return false;
	}
}


function dailytourorder_user_list_button_booking_invoice_func( $rw ){
	if( $rw['state'] == 'WAITING' ){
		return true;
	} else {
		return false;
	}
}

function dailytourorder_user_list_button_booking_invoice_url( $rw ){
	$rw_invoice = billing_invoiceDetail_byOrderDetail( 'mg_dailytour_order', $rw['id'] );
	return billing_invoiceLink( $rw_invoice );
}



