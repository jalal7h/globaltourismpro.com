
<div class="transfer_view" date_from="{date_from}" date_to="{date_to}" >

	<div class="breadcrumb cl_l2r">
		<a href="{_URL}/transfer">{lmtc('mg_transfer')[1]}</a>
		<a href="{_URL}/transfer/0/{country_id}">{country}</a>
		<a href="{_URL}/transfer/0/{city_id}">{city}</a>
		<a href="<?=transfer_link($rw)?>"><?=$rw['name']?></a>
	</div>

	<a class="pdf cl_l1" href="{_URL}/html2pdf{_URI}" download ><lang>Download</lang></a>

	<div class="slider">
		{the_slider}
	</div><!--


 --><div class="detail cl_l2">
		<div class="name"><?=$rw['name']?></div>
		<div class="city cl_l2">{country} / {city}</div>
		<div class="basis"><memo>{lmtc('mg_transfer:transferBasis_id')}:</memo> <?=cat_translate($rw['transferBasis_id'])?></div>
		<div class="departs"><memo>{lmtc('mg_transfer:tariff')}:</memo> <?=$rw['tariff']?></div>
		<div class="basis"><memo><lang>Price</lang>:</memo> <lang>Per Vehicle</lang></div>
		<div class="basis"><memo>Vehicles:</memo> <?=$list_of_vehicles_in_text?></div>
		<div class="cost cl_l1r"><span class="from">FROM</span> {cost}</div>
	</div><!--


 --><?
		echo tabmenu([
			'Itinerary'	=> $rw['itinerary'] ,
			'Conditions'=> $rw['conditions'] ,
			'Notes'		=> $rw['notes'] ,
		],'cl_l1');
 	?><!--


 --><form class="orderbox cl_l2" method="post" action="{_URL}/transfer_order">
 	<input type="hidden" name="transfer_id" value="{id}">
 		<div class="the_list">

			<div class="head">Travelers: </div>

 			<label>
				<span>Vehicle: </span>
				<select required name="vehicle" >
					<option value=""></option>
				<?foreach( $list_of_vehicles as $vehicle_id => $vehicle ):?>
					<option value="<?=$vehicle_id?>" adult_max="<?=$vehicle['adult_max']?>" ><?=$vehicle['name']?> / <?=$vehicle['price']?></option>
				<?endforeach?>
				</select>
				<div class="adult_w"></div>
			</label>
			
 		</div>

		<div class="notice">
			<?=( 
			$rw['deathline'] == 0 
				? __('This option is not refundable') 
				: __('This option is refundable and amendable, please see Cancellation Policy: This service can be cancelled without any penalties %% day(s) prior to first service date.' ,[ $rw['deathline'] ] )
			)?>
		</div>

		<div class="time_n_submit">

			<div class="direction">
				<label><input type="radio" name="direction" checked value="roundtrip"> Round Trip</label>
				<label><input type="radio" name="direction" value="arrival"> Arrival</label>
				<label><input type="radio" name="direction" value="departure"> Departure</label>
			</div>

			<icon class="fa fa-calendar cl_l2_t"></icon>
			<input type="text" class="date_arrival cl_l2_t" required name="date_arrival" placeholder="Arrival">

			<icon class="fa fa-calendar cl_l2_t"></icon>
			<input type="text" class="date_departure cl_l2_t" required name="date_departure" placeholder="Departure">

			<input type="submit" class="cl_l1r btn btn-lg" value="<lang>Book now</lang>">
		</div>

	</form>


</div>

