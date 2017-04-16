<?

# jalal7h@gmail.com
# 2016/12/24
# 1.0

function dailytour_mg_form(){


	###################################################
	# price per inputs
	#
	if( $id = $_REQUEST['id'] ){
		$mg_price = mg_price( 'mg_dailytour', $id );
	}

	$money_unit = setting('money_unit');
	if( strstr( $money_unit, '%%') ){
		$money_unit = trim( explode('%%', $money_unit)[1] );
	}
	foreach( cat_display('priceper') as $id => $priceper ) {
		$priceper_pattern.= '
		<div class="lmfe_inDiv number">
			[!"text:price['.$id.'].numeric"'.( $mg_price[$id] ? '=>"'.$mg_price[$id].'"' : '' ).',"'.$priceper.'","notInDiv"!]
			<span class="money_unit">'.$money_unit.'</span>
		</div>';
	}
	#
	###################################################



	###################################################
	# the form
	# -------------------------------------------------
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

			<div class="priceList">
				<div class="head">Price Per : </div>
				'.$priceper_pattern.'
			</div>

			<hr>
	
			[!"date:date_from"!]
			[!"date:date_to"!]

			[!"number:deathline"!]

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
	
		[!"submit:Save"!]
	
	');
	# -------------------------------------------------
	#
	###################################################
	


}




