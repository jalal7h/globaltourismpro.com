<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

add_action('dailytourorder_voucher');

function dailytourorder_voucher(){

	if(! $voucher_id = $_REQUEST['voucher_id'] ){
		e();

	} else if(! $rw_dto = table('mg_dailytour_order', [ 'code'=>$voucher_id ] )[0] ){
		e();

	} else if(! $rw_user = user_detail($rw_dto['user_id']) ){
		e();

	} else if(! $rw_dt = table('mg_dailytour*', $rw_dto['dailytour_id']) ){
		e();
	
	} else {

		echo template_engine( 'dailytourorder_voucher', [

			'client_title'		=> $rw_user['name'] ,
			'client_email'		=> $rw_user['email'] ,
			'client_phone'		=> $rw_user['tell'] ,
			'client_cell'		=> $rw_user['cell'] ,

			'website_title' 	=> strtoupper( setting('tiny_title') ) ,
			'website_phone'		=> setting('contact_tell') ,
			'website_cell'		=> setting('contact_cell') ,
			'website_fax'		=> setting('contact_fax') ,
			'website_email'		=> setting('contact_email_address_1') ,
			'website_address'	=> explode( "\n", setting('contact_address') )[0],
			'website_logo'		=> _URL.'/'.setting('site_logo') ,

			'inclusions'		=> trim($rw_dt['inclusions']) ,
			'itinerary'			=> trim($rw_dt['itinerary']) ,
			'conditions'		=> trim($rw_dt['conditions']) ,
			'notes'				=> trim($rw_dt['notes']) ,

			'tour_name'			=> $rw_dt['name'] ,
			'destination'		=> position_translate($rw_dt['position_id']) ,
			'duration'			=> $rw_dt['duration'] ,
			'highlights'		=> $rw_dt['highlights'] ,
			'service_basis'		=> cat_translate($rw_dt['serviceBasis_id']) ,
			'departs'			=> cat_translate($rw_dt['departs_id']) ,

			'travellers'		=> dailytour_travellerSummary( $rw_dto['id'] ) ,
			'booking_date'		=> substr( UDate($rw_dto['date_created']), 0, 10 ) ,
			'service_date'		=> $rw_dto['date'] ,
			'departure_point'	=> ( $rw_dt['departure_central_flag'] ? $rw_dt['departure_central_point'] : $rw_dto['departure_point'] ) ,
			'departure_time'	=> ( $rw_dt['departure_central_flag'] ? $rw_dt['departure_central_time'] : $rw_dto['departure_time'] ) ,
			'guiding_language'	=> cat_translate( $rw_dto['guiding_language'] ) ,
			'passenger_cell'	=> $rw_dto['passenger_cell'] ,
			'leader_name'		=> ucwords($rw_dto['leader_name']) ,
			'additional_requests'=> $rw_dto['additional_requests'] ,

			'voucher_url'		=> _URL.'/voucher/dailytour/'.$voucher_id ,
			'voucher_pdf'		=> _URL.'/html2pdf/voucher/dailytour/'.$voucher_id ,

			'barcode'			=> _URL.'/modules/barcodegen/html/image.php?filetype=PNG&dpi=72&scale=4&rotation=0&font_family=0&font_size=10&text='.$rw_dto['code'].'&thickness=30&checksum=&code=BCGcode39' ,


			'Booking_ID'		=> $rw_dto['code'] ,

		]);

	}

}

