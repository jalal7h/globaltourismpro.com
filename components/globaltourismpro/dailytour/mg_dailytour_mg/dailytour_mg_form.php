<?php

# jalal7h@gmail.com
# 2017/07/31
# 1.2

function dailytour_mg_form(){

	if( !is_master() and (table('mg_dailytour', $_REQUEST['id'])['owner'] != admin_logged()) ){
		echo convbox_back('Access denied');
		return true;
	}

	echo listmaker_form('
		
		[!"table" => "mg_dailytour"!]
			
			[!"text:name"!]
			[!"text:highlights"!]

			[!"positionbox:position_id"!]
			[!"select:serviceBasis_id","option"=>cat_display("serviceBasis")!]
			[!"select:departs_id","option"=>cat_display("departs")!]
			[!"text:duration"!]

			<div class="languages">
				[!"select:language+","option"=>cat_display("guidingLanguages")!]
			</div>

			<hr>

			<div class="lmfe_inDiv priceList" style="width:100%">
				<span class="lmfe_tnit head">Price</span>
				'.dailytour_mg_priceform().'
			</div>

			<hr>
	
			[!"date:date_from"!]
			[!"date:date_to"!]

			[!"number:deathline"!]
			[!"number:reservation"!]

			<hr>
			
			<div class="departure_central_flag">
				[!"checkbox:departure_central_flag","Determine a centrally located meeting point"!]
			</div>
			
			<div class="departure_central" <?=( $rw["departure_central_flag"] ? "style=\'display:block;\'" : "" ) ?> >
				[!"text:departure_central_point"!]
				[!"clock:departure_central_time"!]
			</div>

			<hr>
		
			[!"textarea:itinerary.tinymce"!]
			[!"textarea:inclusions.tinymce"!]
			[!"textarea:conditions.tinymce"!]
			[!"textarea:notes.tinymce"!]
			
			<hr>
	
			[!"file:image+"!]

			<hr>

			[!"Keywords","keyword:kword"=>kwordusage_get("mg_dailytour",$rw["id"],$string_flag=true)!]

			<hr>
	
		[!submit!]
	
	');

}




