<?php

# jalal7h@gmail.com
# 2017/05/24
# 1.0

add_userpanel_item( 'visa_user_list', 'visa', 'Visa Requests', '0a3', 3, $default=false );

function visa_user_list(){
	
	if(! $user_id = user_logged() ){
		ed();
	}

	switch($_REQUEST['do']){
		
		case 'form':
			return visa_user_form();

		case 'saveNew':
			return visa_user_saveNew();

	}


	# --------------------------------------------
	echo listmaker_list([
		'head' => 'List of Visa Requests',
		'table' => 'mg_visa',
		'where' => [ 'user_id'=>$user_id ],
		'order' => [ 'date_created' => 'desc' ],
		'limit' => 10,
		'url' => [
			'base' => '_URL."/?page=".$_REQUEST["page"]."&do_slug=".$_REQUEST["do_slug"]',
			'target' => 'visa_user_link($rw["id"])',
			'add' => true,
		],
		'add_prompt' => 'Request for new visa',
		'item' => [
			[ '$rw["first_name"]." ".$rw["family_name"]','head'=>lmtc("mg_visa:first_name")." / ".lmtc("mg_visa:family_name") ],
			[ '$rw["departure_airport"]', 'head'=>"Departure airport" ],
			[ '$rw["arrival_date"]', 'head'=>"Arrival date" ],
			[ '$rw["destination"]', 'head'=>"Destination" ],
			[ 'visa_user_list_status($rw)', 'head'=>"Status" ],
		],
		'button' => [
			'the_name_of_button' => [
				'url'	=> 'visa_invoiceLink($rw["id"])',
				'icon'	=> '155',
				'name'	=> 'Payment',
				'color'	=> '#8851b9',
				'func'	=> 'visa_user_list_paymentButtonIfNeeded',
			],
		],
		'search' => [ 'first_name', 'family_name', 'gender', 'marital_status', 'birth_country', 'birth_city', 'father_name', 'grandfather_name', 'nationality', 'previous_nationality', 'occupation', 'job_title', 'company', 'work_city', 'work_address', 'passport_number', 'passport_type', 'passport_issue_place', 'stay_duration', 'entrance_city', 'visa_collect_city', 'howmany_in_iran', 'last_visit_to_iran', 'phone_number', 'email', 'city_of_residence', 'address', 'departure_airport', 'destination', 'dated_itinerary', 'emergency_contact' ],
	]);
	# --------------------------------------------

}


function visa_user_list_status( $rw ){

	if( $rw['done'] ){
		$status = 'Approved';
	
	} else if( $rw['flag'] ){
		$status = 'Waiting to Approve'; // Waiting
	
	} else {
		$status = 'Not paid';
	}

	return $status;

}


function visa_user_list_paymentButtonIfNeeded( $rw ){
	
	if( visa_user_list_status( $rw ) == 'Not paid' ){
		return true;
	
	} else {
		return false;
	}

}



