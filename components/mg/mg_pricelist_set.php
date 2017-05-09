<?php

# jalal7h@gmail.com
# 2017/05/09
# 1.0

function mg_pricelist_set( $table, $set ){
	
	list( $table_name, $table_id ) = explode( ':', $table );
	$table_set = [ 'table_name'=>$table_name, 'table_id'=>$table_id ];

	foreach( $set as $cat_id => $array_of_more_than_and_price ){
		foreach( $array_of_more_than_and_price as $more_than => $price ){

			$array_set = array_merge( $table_set, [ 'priceper_id'=>$cat_id, 'more_than'=>$more_than ] );

			#
			# update
			if( $rw_s = table( 'mg_price', $array_set ) ){
				dbs( 'mg_price', [ 'price'=>$price ], $array_set );
				$list_of_updated_id_s[] = $rw_s[0]['id'];
			
			#
			# insert
			} else {
				$id = dbs( 'mg_price', array_merge( $array_set, [ 'price'=>$price ] ) );
				$list_of_updated_id_s[] = $id;
			}
		}
	}

	#
	# remove
	if( sizeof($list_of_updated_id_s) ){
		$id_query = implode( ', ', $list_of_updated_id_s );
		$id_query = " AND `id` NOT IN ( $id_query ) ";
	}
	dbq(" DELETE FROM `mg_price` WHERE `table_name`='$table_name' AND `table_id`='$table_id' $id_query ");

	#
	# fix, if there is no 0 more_then record for each pp
	foreach( $set as $cat_id => $array_of_more_than_and_price ){
		$cat_id_set = array_merge( $table_set, [ 'priceper_id'=>$cat_id ] );
		$count_pp = dbqc( 'mg_price', $cat_id_set );
		if( $count_pp > 0 ){
			$count_pp_m0 = dbqc( 'mg_price', array_merge( $cat_id_set, [ 'more_than'=>0 ] ) );
			if( $count_pp_m0 == 0 ){
				$rw_s = table( 'mg_price', $cat_id_set, [ 'price'=>'asc' ] , '1' );
				if(! sizeof($rw_s) ){
					e();
				} else {
					$id_of_victim = $rw_s[0]['id'];
					dbs( 'mg_price', [ 'more_than'=>0 ], [ 'id'=>$id_of_victim ] );
				}
			}
		}
	}

}




