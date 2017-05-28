<?php

# jalal7h@gmail.com
# 2017/05/25
# 1.0

function visa_mg_list(){
	
	# --------------------------------------------
	echo listmaker_list([
		'head' => 'List of Visa Requests',
		'table' => 'mg_visa',
		'where' => [ 'flag'=>1 ],
		'order' => [ 'date_created' => 'desc' ],
		'limit' => 10,
		'url' => [
			'base' => '_URL."/?page=admin&cp=".$_REQUEST["cp"]',
			'target' => '_URL."/?page=admin&cp=".$_REQUEST["cp"]."&do=view&id=".$rw["id"]',
			'remove' => true,
		],
		'item' => [
			[ '$rw["first_name"]." ".$rw["family_name"]." (<a href=\"".user_mg_userDetail($rw["user_id"])."\" target=\"_blank\">".user_detail($rw["user_id"])["name"].")</a>"','head'=>lmtc("mg_visa:first_name")." / ".lmtc("mg_visa:family_name") ],
			[ '$rw["departure_airport"]', 'head'=>"Departure airport" ],
			[ '$rw["arrival_date"]', 'head'=>"Arrival date" ],
			[ '$rw["destination"]', 'head'=>"Destination" ],
			[ 'visa_mg_list_status($rw)', 'head'=>"Status" ],
		],
		'search' => [ 'user(user_id)[name]', 'first_name', 'family_name', 'gender', 'marital_status', 'birth_country', 'birth_city', 'father_name', 'grandfather_name', 'nationality', 'previous_nationality', 'occupation', 'job_title', 'company', 'work_city', 'work_address', 'passport_number', 'passport_type', 'passport_issue_place', 'stay_duration', 'entrance_city', 'visa_collect_city', 'howmany_in_iran', 'last_visit_to_iran', 'phone_number', 'email', 'city_of_residence', 'address', 'departure_airport', 'destination', 'dated_itinerary', 'emergency_contact' ],
	]);
	# --------------------------------------------

}


function visa_mg_list_status( $rw ){

	if( $rw['done'] ){
		$status = 'Approved';
	
	} else {
		$status = 'Waiting';
	}

	return $status;

}



