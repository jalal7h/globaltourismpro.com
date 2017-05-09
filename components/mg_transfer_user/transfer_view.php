<?php

# jalal7h@gmail.com
# 2017/01/23
# 1.0

function transfer_view(){
	
	if(! $id = intval($_REQUEST['id']) ){
		e();

	} else if(! $rw = table('mg_transfer',$id) ){
		e();
		
	} else {

		$v['rw'] = $rw;

		echo js_print( 'mg_transfer_user', 'transfer_view' );

		#
		# the slider
		$slides = transfer_image( $id, "1200x700" );
		$v['the_slider'] = slideit( $slides , 4000, true );
		
		#
		# country / city
		$v['city_id'] = $rw['position_id'];
		$v['city'] = position_translate($rw['position_id']);
		$the_parent = position_get_parent( $rw['position_id'] );
		$v['country_id'] = $the_parent['id'];
		$v['country'] = $the_parent['name'];

		#
		# price
		foreach( cat_display('transfer_vehicle') as $cat_id => $cat_name ){
			if( $rw_s_price = mg_pricelist_get( 'mg_transfer:'.$rw['id'], $cat_id ) ){
				foreach( $rw_s_price as $rw_price ){
					$cat_id = $rw_price['priceper_id'];
					$name = cat_translate($rw_price['priceper_id']);
					$v['list_of_vehicles_in_text'][] = trim( explode( '(', $name )[0] );
					$price = $rw_price['price'];
					$price = mg_cost_after_offrate($price);
					$price = billing_format($price);
					$adult_max = explode( '-', $name )[1];
					$adult_max = intval( $adult_max );
					$v['list_of_vehicles'][ $rw_price['id'] ] = [ 'cat_id'=>$cat_id, 'name'=>$name, 'price'=>$price, 'adult_max'=>$adult_max ];
				}
			}
		}
		if( sizeof($v['list_of_vehicles_in_text']) ){
			$v['list_of_vehicles_in_text'] = implode( ', ', $v['list_of_vehicles_in_text'] );
		}

		#
		# date from
		if(! $v['date_from'] = $_REQUEST['date_from'] ){
			$v['date_from'] = $rw['date_from'];
		}
		if( $rw['reservation'] ){
			$v['date_from'] = substr( UDate( DateU( $v['date_from'] ) + 3600*24*$rw['reservation'] ) , 0 , 10 );
		}
		$v['date_from'] = str_replace('/', '-', $v['date_from']);
		
		#
		# date to
		if(! $v['date_to'] = $_REQUEST['date_to'] ){
			$v['date_to'] = $rw['date_to'];
		}
		$v['date_to'] = str_replace('/', '-', $v['date_to']);

		#
		# template
		echo template_engine( 'transfer_view', $v );

	}

}

