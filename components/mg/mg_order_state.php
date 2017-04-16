<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

/* ###

	WAITING:	NOT PAID ( 0000 : paid 0, finz 0, penalty 0, cancel 0 )
	CONFIRM:	PAID ( 1000 : paid 1, finz 0, penalty 0, cancel 0 )
	FINILIZE:	PAID, ACCEPTED BY AIRLINE ( 1100 : paid 1, finz 1, penalty 0, cancel 0 )
	PENALTY:	NOT PAID, REFUNDED, CANCELLED ( 0011 : paid 0, finz 0, penalty 1, cancel 1 )
	CANCEL:		NOT PAID, CANCELLED ( 0001 : paid 0, finz 0, penalty 0, cancel 1 )

*/ ###

$GLOBALS['mg_order_state_pattern'] = [
	'0000' => 'WAITING',
	'1000' => 'CONFIRM',
	'1100' => 'FINZ',
	'0011' => 'PENALTY',
	'0001' => 'CANCEL',
];

$GLOBALS['mg_order_state_pattern_translate'] = [
	'WAITING' => 'Payment Processing',
	'CONFIRM' => 'Confirmed',
	'FINZ' => 'Finalized',
	'PENALTY' => 'Penalty',
	'CANCEL' => 'Cancelled',
];


# this function will be executed after each change on an specific record.
# this will fetch the true state, and set it on database, and also return the state back.

function mg_order_state( $orderTable_name, $orderTable_id ){
	
	if(! $rw_order = table( $orderTable_name, $orderTable_id) ){
		e();
		
	} else {

		#
		# paid
		$rw_invoice = billing_invoiceDetail_byOrderDetail( $orderTable_name, $orderTable_id );
		if( $rw_invoice['date'] ){
			$state_paid = 1;
		} else {
			$state_paid = 0;
		}

		$state_code.= $state_paid
					. intval($rw_order['state_finz']) 
					. intval($rw_order['state_penalty'])
					. intval($rw_order['state_cancel']);


		$state = $GLOBALS['mg_order_state_pattern'][ $state_code ];

		dbs( $orderTable_name, [ 'state'=>$state ], [ 'id'=>$orderTable_id ] );
		return $state;

	}

}










