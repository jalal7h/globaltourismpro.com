<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

add_action('transferorder_voucher');

function transferorder_voucher(){

	if(! $voucher_id = $_REQUEST['voucher_id'] ){
		e();

	} else if(! $rw_tro = table('mg_transfer_order', ['code'=>$voucher_id] )[0] ){
		e();

	} else if(! $rw_user = user_detail($rw_tro['user_id']) ){
		e();

	} else if(! $rw_tr = table('mg_transfer', $rw_tro['transfer_id']) ){
		e();
	
	} else {

		$rw_vehicle = table('mg_vehicle', $rw_tr['vehicle_id']);
		$vehicle = $rw_vehicle['name'].' ('.$rw_vehicle['pax'].')';

		echo template_engine( 'transferorder_voucher', [

			'client_title'		=> $rw_user['name'] ,
			'client_email'		=> $rw_user['email'] ,
			'client_phone'		=> $rw_user['tell'] ,
			'client_cell'		=> $rw_user['cell'] ,

			'website_title' 	=> strtoupper( setting('tiny_title') ) ,
			'website_phone'		=> setting('contact_tell') ,
			'website_cell'		=> setting('contact_cell') ,
			'website_fax'		=> setting('contact_fax') ,
			'website_email'		=> setting('contact_email_address_1') ,
			'website_address'	=> setting('contact_address') ,
			'website_logo'		=> _URL.'/'.setting('site_logo') ,

			'itinerary'			=> trim($rw_tr['itinerary']) ,
			'conditions'		=> trim($rw_tr['conditions']) ,
			'notes'				=> trim($rw_tr['notes']) ,

			'transfer_name'		=> $rw_tr['name'] ,
			'transfer_type'		=> ucfirst($rw_tro['direction']) ,
			'destination'		=> position_translate($rw_tr['position_id']) ,
			'service_basis'		=> cat_translate($rw_tr['transferBasis_id']) ,
			'drivernumber'		=> $rw_tr['drivernumber'] ,
			'tariff'			=> $rw_tr['tariff'] ,
			'vehicle'			=> $vehicle ,

			'booking_status'	=> $GLOBALS['mg_order_state_pattern_translate'][ $rw_tro['state'] ] ,

			'booking_date'		=> substr( UDate($rw_tro['date_created']), 0, 10 ) ,
			
			// 'service_date'		=> $rw_tro['date'] ,
			// 'departure_point'	=> ( $rw_tr['departure_central_flag'] ? $rw_tr['departure_central_point'] : $rw_tro['departure_point'] ) ,
			// 'departure_time'	=> ( $rw_tr['departure_central_flag'] ? $rw_tr['departure_central_time'] : $rw_tro['departure_time'] ) ,
			// 'guiding_language'	=> cat_translate( $rw_tro['guiding_language'] ) ,

			'date_arrival'		=> $rw_tro['date_arrival'] ,
			'arrival_time'		=> $rw_tro['arrival_time'] ,
			'arrival_acbt'		=> $rw_tro['arrival_acbt'] ,
			'arrival_code'		=> $rw_tro['arrival_code'] ,
			'arrival_dropoff'	=> $rw_tro['arrival_dropofflocation'] ,
			'arrival_additional'=> $rw_tro['arrival_additional_requests'] ,

			'date_departure'	=> $rw_tro['date_departure'] ,
			'departure_time'	=> $rw_tro['departure_time'] ,
			'departure_pickup'	=> $rw_tro['departure_pickuplocation'] ,
			'departure_acbt'	=> $rw_tro['departure_acbt'] ,
			'departure_code'	=> $rw_tro['departure_code'] ,
			'departure_pickup'	=> $rw_tro['departure_pickuptime'] ,
			'departure_additional'=> $rw_tro['departure_additional_requests'] ,

			'travellers'		=> $rw_tro['adult'] ,

			'passenger_cell'	=> $rw_tro['passenger_cell'] ,
			'leader_name'		=> ucwords($rw_tro['leader_name']) ,
			'additional_requests'=> $rw_tro['additional_requests'] ,

			'voucher_url'		=> _URL.'/voucher/transfer/'.$voucher_id ,
			'voucher_pdf'		=> _URL.'/html2pdf/voucher/transfer/'.$voucher_id ,

			'barcode'			=> _URL.'/modules/barcodegen/html/image.php?filetype=PNG&dpi=72&scale=4&rotation=0&font_family=0&font_size=10&text='.$rw_tro['code'].'&thickness=30&checksum=&code=BCGcode39' ,


			'Booking_ID'		=> $rw_tro['code'] ,

		]);

	}

}

