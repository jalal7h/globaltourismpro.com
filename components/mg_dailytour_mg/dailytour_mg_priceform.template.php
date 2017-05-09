
<div class="dailytour_mg_priceform"><!-- start pp -->
	<?foreach( $cats as $cat_id => $cat ):?>
	<div class="cat_re">
		
		<div class="head"><?=$cat['name']?> : </div>
		
		<?if( sizeof($cat['prices']) ):?>
		<?foreach( $cat['prices'] as $i => $rw_price ):?>
		<div class="re">
			<input type="text" class="numeric" name="price_<?=$cat_id?>[]" value="<?=$rw_price['price']?>"/>
			<span>For more than</span>
			<select name="more_than_<?=$cat_id?>[]" id="mt<?=$cat_id."_".$i?>" >{cat_ops}</select>
			<script>$('#mt<?=$cat_id."_".$i?>').val('<?=$rw_price['more_than']?>')</script>
			<icon class="fa fa-remove"></icon>
		</div>
		<?endforeach?>
		<?endif?>

		<div class="re">
			<input type="text" class="numeric" name="price_<?=$cat_id?>[]" value=""/>
			<span>For more than</span>
			<select name="more_than_<?=$cat_id?>[]" >
			<?for( $i=0; $i<=40; $i++ ):?>
				<option value="<?=$i?>"><?=$i?></option>
			<?endfor?>
			</select>
			<icon class="fa fa-plus"></icon>
		</div>

	</div>
	<?endforeach?>
</div><!-- end pp -->
