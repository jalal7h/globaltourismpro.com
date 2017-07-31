<?php

# jalal7h@gmail.com
# 2017/04/16
# 1.0

function transferorder_bookInfo( $rw ){

	if( $rw["state"] == 'WAITING' ){		
		$t[] = 'Payment deadline : ' . transferorder_deadline( $rw['id'] );
	}

	if( $rw["state"] ){
		$t[] = $GLOBALS["mg_order_state_pattern_translate"][ $rw["state"] ];
	}

	$t[] = 'Cost : ' . billing_format( mg_order_cost( "mg_transfer_order", $rw["id"] ) );

	$t = implode( '<br>', $t);

	return $t;
	
}



