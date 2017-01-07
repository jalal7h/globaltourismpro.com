<?php

# jalal7h@gmail.com
# 2016/12/27
# 1.1

function mg_price( $table_name, $table_id, $set_price_array=null ){
	

	##################################################################
	# set priceper and price
	#
	if( $set_price_array ){
		
		# 
		# remove the old ones
		foreach( $set_price_array as $priceper_id => $price ){
			if(! $price ){
				continue;
			} else {
				$priceper_id_arr[] = $priceper_id;
			}
		}
		if( sizeof($priceper_id_arr) ){
			$priceper_id_str = implode( ',' , $priceper_id_arr );
		} else {
			$priceper_id_str = "0";
		}
		dbq(" DELETE FROM `mg_price` WHERE `table_name`='$table_name' AND `table_id`='$table_id' AND `priceper_id` NOT IN ($priceper_id_str) ");

		#
		# add new ones
		foreach( $set_price_array as $priceper_id => $price ){
			if(! $price ){
				continue;
			} else if(! $rs0 = dbq(" SELECT * FROM `mg_price` WHERE `table_name`='$table_name' AND `table_id`='$table_id' AND `priceper_id`='$priceper_id' LIMIT 1 ") ){
				e( dbe() );

			#
			# if we have it already			
			} else if( dbn($rs0) ){
				$rw0 = dbf($rs0);
				
				dbs( 'mg_price', [
					
					'table_name' => $table_name, 
					'table_id'	 => $table_id, 
					'priceper_id'=> $priceper_id, 
					'price'		 => $price
				
				], [ 'id'=>$rw0['id'] ] );


			# 
			# if its new priceper for this item
			} else {
				dbs( 'mg_price', [
					'table_name' =>$table_name,
					'table_id'	 =>$table_id,
					'priceper_id'=>$priceper_id,
					'price'		 =>$price
				]);
			}

		}

	}
	#
	##################################################################


	##################################################################
	# get price list
	#
	if(! $rs = dbq(" SELECT * FROM `mg_price` WHERE `table_name`='$table_name' AND `table_id`='$table_id' ORDER BY `id` ASC ") ){
		e( dbe() );
	
	} else if(! dbn($rs) ){
		$rw_s = false;

	} else while( $rw = dbf($rs) ){
		$rw_s[ $rw['priceper_id'] ] = $rw['price'];
	}
	#
	##################################################################


	return $rw_s;

}




