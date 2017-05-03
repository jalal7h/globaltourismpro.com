
	<div class="postlist_list_blog">
	<?foreach( $posts as $post ):?>
		<div class="re">
			<a class="name" href="<?=postlist_link($post)?>"><?=$post['name']?></a>
			<div class="date"><?=UDate($post['date_created'], 'text')?></div>
			<div class="text"><?=$post['text-memo']?></div>
			<a class="more" href="<?=postlist_link($post)?>"><lang>بیشتر</lang></a>
		</div>
	<?endforeach?>
	</div>

