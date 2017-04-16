
<div class="dailytour_list">
<? foreach( $list as $rw ): ?>
	
	<a href="<?=dailytour_link($rw)?>" class="re">
		
		<img class="isss" src="<?=$rw['image']?>"/><!--
		
	 --><div class="detail">
			<div class="name"><?=$rw['name']?></div>
			<div class="departure"><memo>Departure point:</memo> <?=position_translate($rw['position_id'])?></div>
			<div class="basis_n_duration">
				<span class="basis"><memo>Tour Basis:</memo> <?=cat_translate($rw['serviceBasis_id'])?></span>
				<span class="duration"><memo>Duration:</memo> <?=$rw['duration']?></span>
			</div>
			<? if( $rw['highlights'] ){ ?>
			<div class="highlights"><memo>Highlights:</memo> <?=$rw['highlights']?></div>
			<? } ?>
			<? if( $rw['lang'] ){ ?>
			<div class="lang"><memo>Available Guiding Language(s):</memo> <?=$rw['lang']?></div>
			<? } ?>

		</div><!--
		
	 --><div class="price">
			<span class="memo">Price from in USD</span>
			<span class="cost">$<?=$rw['cost']?></span>
			<span class="see_details cl_l2r">See Details</span>
		</div>

	</a>

<? endforeach ?>
	
	{paging}

</div>

