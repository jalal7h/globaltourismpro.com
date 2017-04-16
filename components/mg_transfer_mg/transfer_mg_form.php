<?

# jalal7h@gmail.com
# 2016/12/27
# 1.0

function transfer_mg_form(){


	###################################################
	# price per inputs
	#
	if( $id = $_REQUEST['id'] ){
		$mg_price = mg_price( 'mg_transfer', $id );
	}

	$money_unit = setting('money_unit');
	if( strstr( $money_unit, '%%') ){
		$money_unit = trim( explode('%%', $money_unit)[1] );
	}
	foreach( cat_display('priceper') as $id => $priceper ) {
		if( table('cat',$id)['kw'] != 'vehicle' ){
			continue;
		}
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
		
		[!"table" => "mg_transfer","action"=>_URL."/admin/transfer"!]
			
			[!"text:name*"!]

			[!"positionbox:position_id*"!]
			[!"select:transferBasis_id*","option"=>cat_display("transferBasis")!]
			
			[!"text:tariff*"!]
			[!"select:vehicle_id*","option"=>vehicle_get()!]

			<hr>
			
			<div class="priceList">
				<div class="head">Price Per : </div>
				'.$priceper_pattern.'
			</div>

			<hr>
	
			[!"date:date_start*"!]
			[!"date:date_end*"!]

			[!"number:deathline"!]

			<hr>

			[!"textarea:itinerary.tinymce"!]
			[!"textarea:conditions.tinymce"!]
			[!"textarea:notes.tinymce"!]
			
			<hr>
	
			[!"file:image+*"!]

			<hr>

			[!"Keywords","keyword:kword"=>kwordusage_get("mg_transfer",$rw["id"],$string_flag=true)!]

			<hr>
	
		[!"submit:'.__('ثبت').'"!]
	
	');
	# -------------------------------------------------
	#
	###################################################
	


}




