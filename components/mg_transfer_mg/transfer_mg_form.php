<?

# jalal7h@gmail.com
# 2017/05/09
# 1.1

function transfer_mg_form(){

	foreach( cat_display('transfer_vehicle') as $cat_id => $cat_name ){
		if( $id = $_REQUEST['id'] ){
			$prices = mg_pricelist_get( 'mg_transfer:'.$id, $cat_id );
			if( sizeof($prices) ){
				$price = $prices[0]['price'];
			} else {
				$price = '';
			}
		}
		$transfer_vehicle.= '[!"cost:price_'.$cat_id.'[]"=>"'.$price.'","'.$cat_name.'"!]' . "\n";
	}

	echo listmaker_form('
		
		[!"table" => "mg_transfer","action"=>_URL."/admin/transfer"!]
			
			[!"text:name*"!]

			[!"positionbox:position_id*"!]
			[!"select:transferBasis_id*","option"=>cat_display("transferBasis")!]
			
			[!"text:tariff*"!]
			[!"text:drivernumber*"!]

			<hr>
			
			<div class="lmfe_inDiv priceList" style="width:100%">
				<span class="lmfe_tnit head">Price<br>for all of passengers</span>
				<div class="list_of_vehicles">'.$transfer_vehicle.'</div>
			</div>

			<hr>
	
			[!"date:date_from*"!]
			[!"date:date_to*"!]

			[!"number:deathline"!]
			[!"number:reservation"!]

			<hr>

			[!"textarea:itinerary.tinymce"!]
			[!"textarea:conditions.tinymce"!]
			[!"textarea:notes.tinymce"!]
			
			<hr>
	
			[!"file:image+*"!]

			<hr>

			[!"Keywords","keyword:kword"=>kwordusage_get("mg_transfer",$rw["id"],$string_flag=true)!]

			<hr>
	
		[!submit!]
	');

}




