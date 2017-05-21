
<div class="head">New bookings</div>

<div>
	
	<i class="fa fa-bell fa-blink" aria-hidden="true"></i> &nbsp; 
	
	There is 
	
	<?if( $dailytours ):?>
		<a href="{_URL}/?page=admin&cp=dailytourorder_mg&state=CONFIRM" target="_blank"><b>{dailytours}</b> new daily tour booking<?=( $dailytours>1 ? 's' : '' )?></a>
	<?endif?>

	<?if( $dailytours and $transfers ):?>
		and
	<?endif?>

	<?if( $transfers ):?>
		<a href="{_URL}/?page=admin&cp=transferorder_mg&state=CONFIRM" target="_blank"><b>{transfers}</b> new transfer booking<?=( $transfers>1 ? 's' : '' )?></a>
	<?endif?>

	waiting for finalise.

</div>

