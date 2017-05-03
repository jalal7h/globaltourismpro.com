
<div class="transfer_list">
<? foreach( $list as $rw ): ?>
	
	<a href="<?=transfer_link($rw)?>" class="re">
		
		<img class="isss" src="<?=$rw['image']?>"/><!--
		
	 --><div class="detail">
			
			<div class="name"><?=$rw['name']?></div>
			
			<div class="half vehicle">
				<memo>Vehicle:</memo>
				<?=$rw['vehicle']?>
			</div>
			
			<div class="half priceper">
				<memo>Price Per:</memo>
				<?=$rw['priceper']?>
			</div>

			<div class="half basis">
				<memo>Basis:</memo>
				<?=$rw['basis']?>
			</div>

			<div class="half tariff">
				<memo>Tariff:</memo>
				<?=$rw['tariff']?>
			</div>

			
		</div><!--
		
	 --><div class="price">
			<span class="memo">Price from in USD</span>
			<span class="cost">$<?=$rw['cost']?></span>
			<span class="see_details cl_l2r cl_l1_i">See Details</span>
		</div>

	</a>

<? endforeach ?>
	
	{paging}

</div>

