<?php

# jalal7h@gmail.com
# 2017/05/25
# 1.0

function visa_mg_view(){

	switch ($_REQUEST['do2']) {
		
		case 'saveEdit':
			visa_mg_approve();
			break;

	}

	if(! $id = $_REQUEST['id'] ){
		e();

	} else if(! $rw_visa = table( 'mg_visa', $id ) ){
		e();

	} else {

		# -------------------------------------------------
		echo listmaker_form('
			[!"table" => "mg_visa"!]

				<div class="lmfe_inDiv head">
					Visa request form
				</div>

				<hr>
				
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

				'.( $rw_visa['photo_file'] ? '<a download href="'.$rw_visa['photo_file'].'"><img class="half" src="'.$rw_visa['photo_file'].'"/></a>' : '' ).'
				'.( $rw_visa['passport_file'] ? '<a download href="'.$rw_visa['passport_file'].'"><img class="half" src="'.$rw_visa['passport_file'].'"/></a>' : '' ).'

				<br>
				<br>

		');
		# -------------------------------------------------
		

		?>
		<script>
			$(".visa_mg_view.lmfo input, .visa_mg_view.lmfo select, .visa_mg_view.lmfo textarea").attr("disabled", "disabled");
		</script>
		<hr>
		<?


		if( $rw_visa['flag'] ){ 

			if( $rw_visa['done'] and $rw_visa['visa_file'] ){
				
				?>
				<center class="cost" style="color:green;">Already approved</center>
				<br>
				<center><a download class="btn btn-primary btn-lg" href="<?=$rw_visa['visa_file']?>" >Download VISA</a></center>
				<?

			} else {

				# -------------------------------------------------
				echo listmaker_form('
					
					[!"table" => "mg_visa", "action"=>"'._URL.'/?page=admin&cp='.$_REQUEST['cp'].'&do='.$_REQUEST['do'].'", "switch"=>"do2"!]
						
						Payment is done.<br>
						To approve this request please attach the visa file, and push the "apprive" button.<br>
						<br>

						[!"Visa file", "file:visa_file@*/required=1", "accept"=>"*", "notInDiv"!]
						<br>
						<br>

					[!"submit:Approve", "notInDiv"!]

				');
				# -------------------------------------------------

			}

		} else {

			?>
			<center class="cost" style="color:gray;">Not Paid.</center>
			<?

		}

		?>
		<hr>
		<br>
		<br>
		<br>
		<br>
		<br>
		<?

	}

}




