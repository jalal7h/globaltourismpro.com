<?php

# jalal7h@gmail.com
# 2017/04/15
# 1.0

# id e order e transfer ro migire, deadline ro bar migardune

function transferorder_deadline( $transferorder_id ){

	if(! $rw = table( 'mg_transfer_order', $transferorder_id ) ){
		ed();

	} else if(! $rw_transfer = table( 'mg_transfer', $rw['transfer_id'] ) ){
		ed();
	
	#
	# age deathline 0 bud, deadline  == service date
	} else if(! $deadline = $rw_transfer['deathline'] ){
		$deadline = ( $rw['date_arrival'] ? $rw['date_arrival'] : $rw['date_departure'] );
		
	} else {
		$date = ( $rw['date_arrival'] ? $rw['date_arrival'] : $rw['date_departure'] );
		$U = DateU( $date );
		$U-= $deadline * (60 * 60 * 24);
		$deadline = substr(UDate($U), 0, 10);
	}

	$deadline.= " 17:00"; # nxx

	return $deadline;

}

