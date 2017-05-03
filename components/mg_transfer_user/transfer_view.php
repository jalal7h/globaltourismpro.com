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
		$price_list = mg_price('mg_transfer', $id);
		$price_per = array_keys($price_list)[0];
		$cost = $price_list[ $price_per ];
		$cost = mg_cost_after_offrate( $cost );
		$v['cost'] = billing_format($cost);
		
		#
		# adult max
		$pax = table( 'mg_vehicle', $rw['vehicle_id'] )['pax'];
		$pax = explode('-', $pax);
		$v['etc']['adult_max'] = $pax[1];

		#
		# date from
		if(! $v['date_from'] = $_REQUEST['date_from'] ){
			$v['date_from'] = $rw['date_from'];
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

