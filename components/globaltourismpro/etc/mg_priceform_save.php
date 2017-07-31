<?php

# jalal7h@gmail.com
# 2017/05/09
# 1.0

function mg_priceform_save( $table ){
	
	foreach( $_REQUEST as $key => $value ){
		
		if( substr( $key, 0, 6) != 'price_' ){
			continue;
		}

		$cat_id = substr( $key, 6 );

		if( sizeof($_REQUEST[ 'price_'.$cat_id ]) ){
			foreach( $_REQUEST[ 'price_'.$cat_id ] as $i => $price ){
				if(! $price ){
					continue;
				} else {
					$more_than = $_REQUEST[ 'more_than_'.$cat_id ][ $i ];
					$set[ $cat_id ][ $more_than ] = $price;
				}
			}
		}

	}

	if(! sizeof($set) ){
		echo convbox_back( 'We need you to put at lease one price for this product.' , 'red' );

	} else {
		mg_pricelist_set( $table, $set );
	}

}

