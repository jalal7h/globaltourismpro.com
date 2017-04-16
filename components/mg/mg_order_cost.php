<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

function mg_order_cost( $orderTable_name, $orderTable_id ){
	
	$orderItemTable_name = $orderTable_name."_item";

	if(! $rs = dbq(" SELECT SUM(`unitcost`*`count`) FROM `$orderItemTable_name` WHERE `order_id`='$orderTable_id' ") ){
		ed();

	} else if(! $cost = dbr( $rs, 0, 0 ) ) {
		ed();

	} else {
		return $cost;
	}

}










