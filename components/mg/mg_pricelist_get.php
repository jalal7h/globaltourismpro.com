<?php

# jalal7h@gmail.com
# 2017/05/09
# 1.0

function mg_pricelist_get( $table, $cat_id ){
	
	list( $table_name, $table_id ) = explode( ':', $table );

	$array_set = [ 'table_name'=>$table_name, 'table_id'=>$table_id, 'priceper_id'=>$cat_id ];
	
	if( $rw_s = table( 'mg_price', $array_set, [ 'more_than'=>'asc' ] ) ){
		return $rw_s;
	
	} else {
		return false;
	}
	
}



