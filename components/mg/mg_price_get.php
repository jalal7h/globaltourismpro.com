<?php

# jalal7h@gmail.com
# 2017/05/09
# 1.0

#
# echo mg_price_get( 'mg_dailytour:11' );
# echo mg_price_get( 'mg_dailytour:13', $cat_id=33, $more_than=2 );
# 

function mg_price_get( $table, $cat_id=null, $more_than=0 ){

	list( $table_name, $table_id ) = explode( ':', $table );
	
	if(! $cat_id ){
		$query = " SELECT `price` FROM `mg_price` WHERE `table_name`='$table_name' AND `table_id`='$table_id' ORDER BY `price` ASC LIMIT 1 ";
	
	} else {
		$query = " SELECT `price` FROM `mg_price` WHERE `table_name`='$table_name' AND `table_id`='$table_id' AND `priceper_id`='$cat_id' AND `more_than`<=$more_than ORDER BY `more_than` DESC LIMIT 1 ";
	}

	if(! $rs = dbq( $query ) ){
		e();

	} else if(! dbn($rs) ){
		e();

	} else if(! $rw = dbf($rs) ){
		e();

	} else {
		return $rw['price'];
	}

	return false;

}



