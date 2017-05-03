
<form name="mg_searchbox" class="mg_searchbox cl_l1r" method="POST" action="{_FULL_URL}">


	<div class="type">
		<select name="service">
			<option value="">SERIVCE</option>
			<option value="dailytour">DAILY TOUR</option>
			<option value="transfer">TRANSFER</option>
		</select>
		<script>mg_searchbox.service.value = "{service}";</script>
	</div><!--


 --><div class="date">
		<label><!--
		 --><div class="cal_w" title="Date (From)"><!--
			 --><icon class="fa fa-calendar cl_l2_t"></icon><!--
			 --><input autocomplete="off" value="{date_from}" required type="text" name="date_from">
			</div>
		</label>
		<label><!--
		 --><div class="cal_w" title="Date (To)"><!--
			 --><span>:</span><!--
			 --><icon class="fa fa-calendar cl_l2_t"></icon>
				<input autocomplete="off" value="{date_to}" required type="text" name="date_to">
			</div>
		</label>
		<input type="hidden" name="date_result">
	</div><!--


 --><div class="position">
		<input title="City / Country" autocomplete="off" type="richbox" name="position_id" feed="{feed}" list_limit="20" char_limit="2" value="{position_id}" class="cl_l2_before" >
	</div><!--
 --><input type="submit" value="GO!" class="cl_l2r cl_l1r_hover">


</form>



