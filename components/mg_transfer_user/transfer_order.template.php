
<form method="post" action="{_URL}/transfer_confirm" class="transfer_order" >
<input type="hidden" name="transfer_id" value="{transfer_id}">
<input type="hidden" name="direction" value="{direction}">
<input type="hidden" name="mg_price_id" value="{vehicle}">

	<div class="left">
		
		<div class="head cl_l1r"><lang>Booking Info</lang></div>
		
		<div class="slider">
			{the_slider}
		</div>
		

		<div class="order_items">
			
			<div class="transfer_name cl_l1r"><?=$rw_transfer['name']?></div>
			
			<div class="direction">
				<span class="memo"><lang>Depart</lang>:</span>
				<span class="data">{direction_name}</span>
			</div>
			
			<?if($_REQUEST['date_arrival']):?>
			<div class="date_arrival">
				<span class="memo"><lang>Arrival Date</lang>:</span>
				<span class="data">{date_arrival}</span>
				<input autocomplete="off" type="hidden" name="date_arrival" value="{date_arrival}">
			</div>
			<?endif?>
			
			<?if($_REQUEST['date_departure']):?>
			<div class="date_departure">
				<span class="memo"><lang>Departure Date</lang>:</span>
				<span class="data">{date_departure}</span>
				<input autocomplete="off" type="hidden" name="date_departure" value="{date_departure}">
			</div>
			<?endif?>
			
			<div class="traveller_summary">
				<span class="memo"><lang>Traveller(s)</lang>:</span>
				<span class="data">{adult} <lang>Adult(s)</lang></span>
			</div>
			
			<div class="table">
				
				<div class="re">
					<span class="priceper">
						<span class="numb">{adult}</span>
						<lang>Adult(s)</lang>
					</span>
					<span class="cost">{total_purchase}</span>
					<input type="hidden" name="adult" value="{adult}">
				</div>
				
				<div class="re total">
					<span class="priceper"><lang>Total Purchase</lang>:</span>
					<span class="cost">{total_purchase}</span>
				</div>

			</div>

		</div>

	</div><!--


 --><div class="right">
		
		<div class="head clNeu"><lang>Traveller's Info</lang></div>
		
		<div class="re">
			<span><lang>Tour Leader's Name</lang>:</span>
			<input autocomplete="off" type="text" required class="text" name="leader_name">
		</div>
		<div class="re">
			<span><lang>Passenger's Cell Number</lang>:</span>
			<input autocomplete="off" type="text" required class="text" name="passenger_cell">
		</div>



		<?if( in_array( $_REQUEST['direction'], ['roundtrip','arrival'] ) ):?>
		<div class="sub-head cl_l1"><lang>Arrival Detail</lang></div>
		
		<div class="re">
			<span><lang>Airline / Cruise / Boat / Train Name</lang>:</span>
			<input autocomplete="off" type="text" required class="text" name="arrival_acbt">
		</div>
		<div class="re">
			<span><lang>Code</lang>:</span>
			<input autocomplete="off" type="text" required class="text" name="arrival_code">
		</div>
		<div class="re">
			<span><lang>Arrival Time</lang>:</span>
			<input autocomplete="off" type="text" required class="clockpicker" name="arrival_time">
		</div>
		<div class="re">
			<span><lang>Drop Off Location/Hotel Name</lang>:</span>
			<input autocomplete="off" type="text" required class="text" name="arrival_dropofflocation">
		</div>
		<div class="re">
			<span><lang>Additional Requests</lang>:</span>
			<input autocomplete="off" type="text" class="text" name="arrival_additional_requests">
		</div>
		<?endif?>

		
		<?if( in_array( $_REQUEST['direction'], ['roundtrip','departure'] ) ):?>
		<div class="sub-head"><lang>Departure Detail</lang></div>
		
		<div class="re">
			<span><lang>Pick Up Location/Hotel Name</lang>:</span>
			<input autocomplete="off" type="text" required class="text" name="departure_pickuplocation">
		</div>
		<div class="re">
			<span><lang>Airline / Cruise / Boat / Train Name</lang>:</span>
			<input autocomplete="off" type="text" required class="text" name="departure_acbt">
		</div>
		<div class="re">
			<span><lang>Code</lang>:</span>
			<input autocomplete="off" type="text" required class="text" name="departure_code">
		</div>
		<div class="re">
			<span><lang>Departure Time</lang>:</span>
			<input autocomplete="off" type="text" required class="clockpicker" name="departure_time">
		</div>
		<div class="re">
			<span><lang>What time do you wish to be picked up from your address/hotel ?</lang></span>
			<input autocomplete="off" type="text" required class="clockpicker" name="departure_pickuptime">
		</div>
		<div class="re">
			<span><lang>Additional Requests</lang>:</span>
			<input autocomplete="off" type="text" class="text" name="departure_additional_requests">
		</div>
		<?endif?>


		<div class="re submit">
			<label>
				<input type="checkbox" required id="terms_n_conditions">
				<span class="noselect">
					<lang>I have read and accept the</lang> <a class="cl_l1_i" href="{_URL}/terms" target="_blank" ><lang>terms and conditions</lang></a>.
				</span>
			</label>
			<input type="submit" class="btn btn-primary btn-lg cl_l1r cl_l1r_hover" disabled value="<lang>Book Now</lang>" />
		</div>

	</div><!-- right -->

</form>


