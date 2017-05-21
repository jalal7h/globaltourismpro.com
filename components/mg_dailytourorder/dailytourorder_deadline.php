<?php

# jalal7h@gmail.com
# 2017/04/15
# 1.0

# id e order e dailytour ro migire, deadline ro bar migardune

function dailytourorder_deadline( $dailytourorder_id ){

	if(! $rw = table( 'mg_dailytour_order', $dailytourorder_id ) ){
		e();

	} else if(! $rw_dailytour = table( 'mg_dailytour*', $rw['dailytour_id'] ) ){
		e();
	
	#
	# age deathline 0 bud, deadline  == service date
	} else if(! $deadline = $rw_dailytour['deathline'] ){
		$deadline = $rw['date'];
		
	} else {
		$U = DateU( $rw['date'] );
		$U-= $deadline * (60 * 60 * 24);
		$deadline = substr(UDate($U), 0, 10);
	}

	$deadline.= " 17:00"; # nxx

	return $deadline;

}

