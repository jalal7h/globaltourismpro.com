<?php

# jalal7h@gmail.com
# 2017/04/16
# 1.0

function dailytour_travellerSummary( $dailytour_order_id ){

	if(! $rs = dbq(" SELECT * FROM `mg_dailytour_order_item` WHERE `order_id`='$dailytour_order_id' ") ){
		e();
		
	} else if(! dbn($rs) ) {
		e();

	} else {
		while( $rw = dbf($rs) ){
			$text[] = $rw['count']." ".cat_translate($rw['priceper_id']);
		}
		return implode( ' | ', $text );
	}
	
}

