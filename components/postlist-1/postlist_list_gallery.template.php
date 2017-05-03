
	<div class="postlist_list_gallery"><!--
 --><?foreach( $posts as $post ):?><!--
	 --><a href="<?=postlist_link($post)?>" class="re" >
			<img class="isss" src="<?=$post['image']?>"/>
			<div class="info">
				<div class="name"><?=$post['name']?></div>
				<div class="text"><?=$post['text-memo']?></div>
				<div class="text">...</div>
				<div class="more cl_l1r"><lang>بیشتر</lang></div>
			</div>
		</a><!--
 --><?endforeach?>
	</div>

