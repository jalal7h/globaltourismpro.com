<?php

# jalal7h@gmail.com
# 2017/05/24
# 1.0

function visa_user_saveNew(){
	
	if(! $user_id = user_logged() ){
		ed();

	} else if(! setting('mg9_visa_flag') ){
		echo convbox_back( 'Visa reuqest is not available now.<br>Please try later.<br>', 'red' );
		return false;

	} else if(! $cost = setting('mg9_visa_price') ){
		echo convbox_back( 'Visa reuqest is not available now.<br>Please try later.<br>', 'red' );
		return false;

	} else if(! $id = dbs( 'mg_visa', [ 'first_name', 'family_name', 'gender', 'marital_status', 'date_of_birth', 'birth_country', 'birth_city', 'father_name', 'grandfather_name', 'nationality', 'previous_nationality', 'occupation', 'job_title', 'company', 'work_city', 'work_address', 'passport_number', 'passport_type', 'passport_issue_date', 'passport_expiry_date', 'passport_issue_place', 'stay_duration', 'entrance_city', 'visa_collect_city', 'howmany_in_iran', 'last_visit_to_iran', 'phone_number', 'email', 'city_of_residence', 'address', 'departure_airport', 'arrival_date', 'destination', 'departure_date', 'dated_itinerary', 'emergency_contact', 'user_id'=>user_logged() ] ) ){
		echo convbox_back( 'Something wrong!', 'red' );

	} else {

		#
		# congatulate order submit.
		
		echo convbox( 'Your request successfully sent.', 'green' );
		// echo texty( '', [  ] );

		if(! billing_invoiceMake( $cost, 'mg_visa', $id, $user_id ) ){
			e();
		}

	}

}

