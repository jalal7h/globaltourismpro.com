
<div class="dailytour_view" date_from="{date_from}" date_to="{date_to}" >

	<div class="breadcrumb cl_l2r">
		<a href="{_URL}/dailytour">{lmtc('mg_dailytour')[1]}</a>
		<a href="{_URL}/dailytour/0/{country_id}">{country}</a>
		<a href="{_URL}/dailytour/0/{city_id}">{city}</a>
		<a href="<?=dailytour_link($rw)?>"><?=$rw['name']?></a>
	</div>

	<a class="pdf cl_l2r" href="{_URL}/html2pdf{_URI}" download ><lang>Download</lang></a>

	<div class="slider">
		{the_slider}
	</div><!--


 --><div class="detail cl_l2">
		<div class="name">
			<?=$rw['name']?>
			<div <?=bookmarky('mg_dailytour', $rw['id'])?> ></div>
		</div>
		<div class="city cl_l2">{country} / {city}</div>
		<div class="basis"><memo>{lmtc('mg_dailytour:serviceBasis_id')}:</memo> <?=cat_translate($rw['serviceBasis_id'])?></div>
		<div class="departs"><memo>{lmtc('mg_dailytour:departs_id')}:</memo> <?=cat_translate($rw['departs_id'])?></div>
		<div class="departure_point"><memo>{lmtc('mg_dailytour:departure_central_point')}:</memo> {city}</div>
		<div class="duration"><memo>{lmtc('mg_dailytour:duration')}:</memo> <?=$rw['duration']?></div>
		<div class="cost cl_l1r"><span class="from">FROM</span> {cost}</div>
	</div><!--


 --><?= tabmenu([
			'Inclusions'=> $rw['inclusions'] ,
			'Itinerary'	=> $rw['itinerary'] ,
			'Conditions'=> $rw['conditions'] ,
			'Notes'		=> $rw['notes'] ,
		],'cl_l1');
 	?><!--


 --><form class="orderbox cl_l2" method="post" action="{_URL}/dailytour_order">
 	<input type="hidden" name="dailytour_id" value="{id}">
 		<div class="the_list">
 			<div class="head"><lang>Total Number of Travelers</lang></div>
 			<? foreach( $price_list as $pp_id => $pp ): ?>
 				<label>
 					<select class="order_item" name="order[<?=$pp_id?>]" >
 					<option value=""></option>
 					<?for($i=1; $i<=40; $i++):?>
 						<option value="<?=$i?>"><?=$i?> <?=( $i == 1 ? 'person' : 'persons')?> (<?=billing_format($pp['items'][$i])?>)</option>	
 					<?endfor?>
 					</select>
 					<span><?=$pp['name']?></span>
 				</label>
 			<? endforeach ?>
 		</div>

		<div class="notice">
			<?=( 
			$rw['deathline'] == 0 
				? __('This option is not refundable') 
				: __('This option is refundable and amendable, please see Cancellation Policy: This service can be cancelled without any penalties %% day(s) prior to first service date.' ,[ $rw['deathline'] ] )
			)?>
		</div>

		<div class="time_n_submit">
			<icon class="fa fa-calendar cl_l2_t"></icon>
			<input type="text" class="date cl_l2_t" required name="date">
			<input type="submit" class="cl_l1r cl_l1r_hover btn btn-lg" value="<lang>Book now</lang>">
		</div>

	</form>


</div>

