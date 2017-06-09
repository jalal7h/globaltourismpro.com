
<div class="dailytour_top">
<? foreach ($list as $rw): ?><!--
	
 --><div class="quarter">
		
		<a href="<?=$rw['link']?>" class="re">
			<img src="<?=$rw['image']?>" class="isss">
			<div class="name"><?=$rw['name']?></div>
			<div class="text"><?=$rw['inclusions']?></div>
			<center><div class="explore_now cl_l1r">Explore Now!</div></center>
		</a>

	</div><!--

--><? endforeach ?>
</div>

