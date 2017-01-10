<?php

# jalal7h@gmail.com
# 2017/01/10
# 1.0

function mg_searchbox(){

	?>
	<form class="<?=__FUNCTION__?> cl_l2r" method="GET" action="<?=_FULL_URL?>">
		
		<div class="date">
			<label>From: <input type="date" name="date_from"></label>
			<label>To: <input type="date" name="date_to"></label>
		</div>

		<div class="type">
			<label><input type="radio" name="service" value="transfer"> Transfer</label>
			<label><input type="radio" name="service" value="dailytour"> Daily Tour</label>
		</div>

		<div class="position">
			<input type="richbox" name="city" feed="<?=str_enc('position(name)[id]/type:city')?>" list_limit="20" char_limit="2" >
		</div>

	</form>
	<?

}

