<?php

# jalal7h@gmail.com
# 2017/01/23
# 1.0

function dailytour_view(){
	
	if(! $id = intval($_REQUEST['id']) ){
		e();

	} else if(! $rw = table('mg_dailytour',$id) ){
		e();
		
	} else {

		$v['rw'] = $rw;

		echo js_print( 'mg_dailytour_user', 'dailytour_view' );

		#
		# the slider
		$slides = dailytour_image( $id );
		$v['the_slider'] = slideit( $slides , $the_time=4000, $thumb=true, $display_name=0, $display_desc=0, $size='570x350' );
		// slideit( $slides , 4000, true );
		
		#
		# country / city
		$v['city_id'] = $rw['position_id'];
		$v['city'] = position_translate($rw['position_id']);
		$the_parent = position_get_parent( $rw['position_id'] );
		$v['country_id'] = $the_parent['id'];
		$v['country'] = $the_parent['name'];

		#
		# price
		$cost = mg_price_get('mg_dailytour:'.$id);
		$cost = mg_cost_after_offrate( $cost );
		$cost = billing_format( $cost );
		$v['cost'] = $cost;
		
		#
		# price list
		foreach( cat_display('priceper') as $pp_id => $pp_name ){
			if( $rw0_s = mg_pricelist_get( 'mg_dailytour:'.$id , $pp_id ) ){
				$price_array[ $pp_id ]['name'] = $pp_name;
				foreach( $rw0_s as $rw0 ){
					$rw0['price'] = mg_cost_after_offrate( $rw0['price'] );
					$price_array[ $pp_id ]['items'][ $rw0['more_than'] ] = $rw0['price'];
				}
				for( $i=0; $i<=40; $i++ ){
					if( $price_array[ $pp_id ]['items'][ $i ] ){
						$cost_tmp = $price_array[ $pp_id ]['items'][ $i ];
					}
					$price_array[ $pp_id ]['items'][ $i ] = $cost_tmp;
				}
			}
		}
		$v['price_list'] = $price_array;

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
		echo template_engine( 'dailytour_view', $v );

	}

}




