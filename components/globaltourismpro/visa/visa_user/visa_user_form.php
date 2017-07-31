<?php

# jalal7h@gmail.com
# 2017/05/25
# 1.0

function visa_user_form(){
	
	if(! setting('mg9_visa_flag') ){
		echo convbox_back( 'Visa reuqest is not available now.<br>Please try later.<br>', 'red' );
		return false;

	} else if(! $cost = setting('mg9_visa_price') ){
		echo convbox_back( 'Visa reuqest is not available now.<br>Please try later.<br>', 'red' );
		return false;

	} else {
		$cost = billing_format( $cost );
	}

	if( $id = $_REQUEST['id'] ){
		$rw_visa = table( 'mg_visa', $id );
	}

	# -------------------------------------------------
	echo listmaker_form('
		[!"table" => "mg_visa"!]
			
			<div class="lmfe_inDiv head">
				Visa request form
			</div>
			
			[!"text:first_name*"!]
			[!"text:family_name*"!]
			[!"select:gender*", "option"=>["Male"=>"Male","Female"=>"Female"]!]
			[!"select:marital_status*", "option"=>["Single"=>"Single", "Married"=>"Married"] !]
			
			<hr>

			[!"text:birth_country"!]
			[!"text:birth_city"!]
			[!"date:date_of_birth*"!]

			<br>

			[!"text:father_name*"!]
			[!"text:grandfather_name"!]
			[!"text:nationality*"!]
			[!"text:previous_nationality"!]

			<hr>

			[!"text:occupation"!]
			[!"text:job_title"!]
			[!"text:company"!]
			[!"text:work_city"!]
			[!"text:work_address"!]

			<hr>

			[!"text:passport_number*"!]
			[!"text:passport_type*"!]
			[!"date:passport_issue_date*"!]
			[!"date:passport_expiry_date*"!]
			[!"text:passport_issue_place*"!]

			<hr>

			[!"text:stay_duration"!]
			[!"text:entrance_city"!]
			[!"text:visa_collect_city"!]
			[!"text:howmany_in_iran"!]
			[!"text:last_visit_to_iran"!]

			<hr>

			[!"text:phone_number*"!]
			[!"text:email*"!]
			[!"text:city_of_residence*"!]
			[!"text:address*"!]

			<hr>

			[!"text:departure_airport*"!]
			[!"date:arrival_date*"!]
			[!"text:destination*"!]
			[!"date:departure_date*"!]

			<hr>

			[!"textarea:dated_itinerary"!]
			[!"textarea:emergency_contact"!]
			
			<hr>

			[!"file:photo_file*"!]
			[!"file:passport_file*"!]
			
			<br>

			'.( trim(strip_tags(setting('mg9_visa_agreement'))) ? '<hr>'.setting('mg9_visa_agreement') : '' ).'

			'.( $_REQUEST['id'] ? '

				<script>
					$(".visa_user_form.lmfo input, .visa_user_form.lmfo select, .visa_user_form.lmfo textarea").attr("disabled", "disabled");
				</script>

				<hr>

				'.(	$rw_visa['flag'] ? 

					( ($rw_visa['done'] and $rw_visa['visa_file']) ? '
						<center class="cost" style="color:green;">Your visa is approved</center>
						<hr>
						<br>
						<center><a download class="btn btn-primary btn-lg" href="'.$rw_visa['visa_file'].'" >Download VISA</a></center>
					' : '
						<center class="cost" style="color:gray;">Your visa is still not approved.</center>
						<hr>
					' )

				 : '
					<center class="cost">COST: '.$cost.'</center>
					<hr>
					<br>
					<center><a class="btn btn-primary btn-lg" href="'.visa_invoiceLink($rw_visa['id']).'" >Payment</a></center>
				 ' ).'

			' : '

				<hr>
				<center class="cost">COST: '.$cost.'</center>
				<hr>
				<br>
				[!"submit:Send request.btn-lg"!]

			').'

	');
	# -------------------------------------------------
	

}

