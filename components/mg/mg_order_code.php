<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

function mg_order_code( $orderTable_name, $orderTable_id ){
	
	if(! $rw_order = table( $orderTable_name, $orderTable_id ) ){
		ed();
	}

	$letter = strtoupper( substr( $orderTable_name, 3, 1 ) );

	$date = $rw_order['date_created'];
	$date = UDate($date);
	$date = substr($date,2,8);
	$date = str_replace("/", "", $date);

	$hash = $rw_order['id'];
	$hash = md5x( $hash , 8 );
	$hash = hexdec( $hash );
	$hash = substr( $hash, 0, 5 );

	$code = $letter . $date . $hash;

	dbs( $orderTable_name, [ 'code'=>$code ], [ 'id'=>$orderTable_id ] );

	return $code;
	
}




