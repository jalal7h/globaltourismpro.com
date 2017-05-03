
<div class="slideit" the_time="{the_time}" >
	<div class="list">
	<?foreach( $slides as $i => $slide ):?>

		<a <?=( $slide['url'] ? 'href="'.$slide['url'].'"' : '' )?> >
			<img src="<?=$slide['image']?>" class="isss">
		
			<?if( $display_name or $display_desc ):?>

				<div class="info ef<?=($i%$effect_count+1)?>">
				
				<?if( $display_name ):?>
					<span class="name"><?=$slide['name']?></span>
				<?endif?>

				<?if( $display_desc ):?>
					<span class="desc"><?=$slide['desc']?></span>
				<?endif?>

				</div>

			<?endif?>

		</a>

	<?endforeach?>
	</div>
</div>



