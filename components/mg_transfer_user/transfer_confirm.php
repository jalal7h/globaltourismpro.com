<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.1

function transfer_confirm(){
	
	if(! $user_id = user_logged() ){
		ed();

	} else if(! $transfer_id = $_REQUEST['transfer_id'] ){
		ed();
	
	} else if(! $rw_transfer = table('mg_transfer', $transfer_id ) ){
		ed();
	}


	#
	# common columns
	$common_columns = [ 'transfer_id', 'adult', 'direction', 'leader_name', 'passenger_cell' ];

	#
	# define the column list for each direction
	switch ($_REQUEST['direction']) {
		
		case 'roundtrip':
			$additional_insert_array = [ 'date_arrival', 'date_departure', 'arrival_acbt', 'arrival_code', 'arrival_time', 'arrival_dropofflocation', 'arrival_additional_requests', 'departure_pickuplocation', 'departure_acbt', 'departure_code', 'departure_time', 'departure_pickuptime', 'departure_additional_requests' ];
			break;
		
		case 'arrival':
			$additional_insert_array = [ 'date_arrival', 'arrival_acbt', 'arrival_code', 'arrival_time', 'arrival_dropofflocation', 'arrival_additional_requests' ];
			break;
		
		case 'departure':
			$additional_insert_array = [ 'date_departure', 'departure_pickuplocation', 'departure_acbt', 'departure_code', 'departure_time', 'departure_pickuptime', 'departure_additional_requests' ];
			break;
		
		default:
			ed();

	}

	#
	# gather all columns in one array
	$insert_array = array_merge( $common_columns, $additional_insert_array );

	#
	# check if form is filled correctly.
	foreach ($insert_array as $the_key) {
		if(  $the_key == 'user_id'  or  substr($the_key,-20) == '_additional_requests'  ){
			continue;
		} else if(! $_REQUEST[ $the_key ] ){
			echo convbox_back( __('Please fill the form correctly. '.$the_key) );
			return false;
		}
	}


	#
	# get 'unitcost' and 'priceper id'
	$price_list = mg_price('mg_transfer', $transfer_id);
	$priceper_id = array_keys($price_list)[0];
	$unitcost = $price_list[ $priceper_id ];
	if( $_REQUEST['direction'] == 'roundtrip' ){
		$unitcost*= 2;
	}

	
	# 
	# order insert
	if(! $order_id = dbs( 'mg_transfer_order', array_merge($insert_array, ['user_id'=>$user_id] ) ) ){
		e();

	} else if(! dbs( 'mg_transfer_order_item', ['order_id'=>$order_id, 'priceper_id'=>$priceper_id, 'count'=>1, 'unitcost'=>$unitcost] ) ){
		e();

	} else {

		#
		# make invoice
		ob_start();
		$invoice_id = billing_invoiceMake( $unitcost, 'mg_transfer_order', $order_id );
		$invoice_texty_prompt = ob_get_contents();
		ob_end_clean();

		if(! $invoice_id ){
			ed();

		} else {
			
			mg_order_code( 'mg_transfer_order', $order_id );
			mg_order_state( 'mg_transfer_order', $order_id );

			$admin_order_link = _URL . '/admin/order/transfer/' . $order_id;

			echo texty( 'transfer_confirm', [
				'transfer_name' => $rw_transfer['name'],
				'admin_order_link' => $admin_order_link,
			]);

			echo $invoice_texty_prompt;
			return true;

		}

	}

}

