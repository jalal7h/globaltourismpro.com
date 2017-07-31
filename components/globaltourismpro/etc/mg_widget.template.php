
<div class="head">New bookings</div>

<div>
	
	<i class="fa fa-bell fa-blink" aria-hidden="true"></i> &nbsp; 
	
	There is 
	
	<?if( $dailytours ):?>
		<a href="{_URL}/?page=admin&cp=dailytourorder_mg&state=CONFIRM" target="_blank"><b>{dailytours}</b> new daily tour booking<?=( $dailytours>1 ? 's' : '' )?></a>
	<?endif?>

	<?if( $transfers ):?>
		<?if( $dailytours ):?>and<?endif?>
		<a href="{_URL}/?page=admin&cp=transferorder_mg&state=CONFIRM" target="_blank"><b>{transfers}</b> new transfer booking<?=( $transfers>1 ? 's' : '' )?></a>
	<?endif?>

	<?if( $visa ):?>
		<?if( $dailytours or $transfers ):?>and<?endif?>
		<a href="{_URL}/admin/visa" target="_blank"><b>{visa}</b> new visa request<?=( $visa>1 ? 's' : '' )?></a>
	<?endif?>

	<?if( $customrequest ):?>
		<?if( $dailytours or $transfers or $visa ):?>and<?endif?>
		<a href="{_URL}/admin/customrequest" target="_blank"><b>{customrequest}</b> new custom request<?=( $customrequest>1 ? 's' : '' )?></a>
	<?endif?>

	waiting for finalise.

</div>

