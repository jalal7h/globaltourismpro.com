
<form method="post" action="{_URL}/dailytour_confirm" class="dailytour_order" >
<input type="hidden" name="dailytour_id" value="{dailytour_id}">

	<div class="left">
		
		<div class="head cl_l1r"><lang>Booking Info</lang></div>
		
		<div class="slider">
			{the_slider}
		</div>
		
		<div class="order_items">
			<div class="dailytour_name cl_l1r"><?=$rw_dailytour['name']?></div>
			<div class="service_date">
				<span class="memo"><lang>Service Date</lang>:</span>
				<span class="data">{date}</span>
				<input type="hidden" name="date" value="{date}">
			</div>
			<div class="traveller_summary">
				<span class="memo"><lang>Traveller(s)</lang>:</span>
				<span class="data">{traveller_summary}</span>
			</div>
			<div class="table">
				
				<?foreach( $order_items as $order_id => $order_info ):?>
				<div class="re">
					<span class="priceper">
						<span class="numb"><?=$order_info['numb']?></span>
						<?=$order_info['priceper']?>
					</span>
					<span class="cost"><?=$order_info['cost']?></span>
					<input type="hidden" name="order[<?=$order_id?>]" value="<?=$order_info['numb']?>">
				</div>
				<?endforeach?>
				
				<div class="re total">
					<span class="priceper"><lang>Total Purchase</lang></span>
					<span class="cost">{total_purchase}</span>
				</div>

			</div>
		</div>

	</div><!--


 --><div class="right">
		
		<div class="head clNeu"><lang>Daily Tour's Info</lang></div>
		
		<div class="re">
			<span><lang>Tour Leader's Name</lang>:</span>
			<input type="text" autocomplete="off" required class="text" name="leader_name">
		</div>

		<?if( '{departure_flag}' === '1' ):?>
		<div class="re">
			<span><lang>Departure Time</lang>:</span>
			<select class="departure_time" >
				<option value="{departure_time}">{departure_time}</option>
			</select>
		</div>
		<div class="re">
			<span><lang>Departure Point</lang>:</span>
			<span><lang>A centrally located meeting point.</lang> <br><lang>(!Detailed address information will be provided on your confirmation voucher)</lang></span>
		</div>
		
		<?else:?>
		<div class="re">
			<span><lang>Departure Time</lang>:</span>
			<input type="text" autocomplete="off" required class="clockpicker" name="departure_time">
		</div>
		<div class="re">
			<span><lang>Departure Point</lang>:</span>
			<input type="text" autocomplete="off" required class="text" name="departure_point">
		</div>
		<?endif?>
		
		<div class="re">
			<span><lang>Guiding Language</lang>:</span>
			<select required name="guiding_language">
				<option value=""><lang>Select Language</lang></option>
				<?foreach( $langs as $lang_id => $lang_name ):?>
				<option value="<?=$lang_id?>"><?=$lang_name?></option>
				<?endforeach?>
			</select>
		</div>
		
		<div class="re">
			<span><lang>Additional Requests</lang>:</span>
			<input type="text" autocomplete="off" class="text" name="additional_requests">
		</div>

		<div class="re">
			<span><lang>Passenger's Cell Number</lang>:</span>
			<input type="text" autocomplete="off" required class="text" name="passenger_cell">
		</div>

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


