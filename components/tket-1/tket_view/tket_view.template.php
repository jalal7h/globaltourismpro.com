
<div class="{template_name} {remove_flag}" que_key="{que_key}" list_base="{list_base}">


	<div class="name">
		<div class="the_name">#<?=$tket->id?> <?=$tket->name?>
		<div class="etc">
			<?if( $tket->cat ):?>
				<div class="category"><?=cat_translate($tket->cat)?></div>
				<span></span>
			<?endif?>
			<div class="the_date" title="<?=UDateNClock($tket->date_created)?>"><?=time_inword($tket->date_created)?></div>
		</div>
	</div>


	<?= tket_view_form($que_key) ?>


	<div class="post_list">
	<?foreach( $posts as $rw_post ):?>	
		<?= tket_view_post($rw_post) ?>
	<?endforeach?>
	</div>


</div>

