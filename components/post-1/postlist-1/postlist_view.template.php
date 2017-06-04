
<div class="postlist_view">
	
	<div class="name"><?=$post['name']?></div>
	
	<?if( sizeof($images) ):?>
		<img class="top" src="<?=$images[0]?>"/>
	<?endif?>
	
	<div class="text"><?=$post['text']?></div>
	
	<?if( sizeof($images) > 1 ):?>
	<?for( $i=1; $i<=sizeof($images); $i++ ):?>
		<img class="bottom" src="<?=$images[$i]?>"/>
	<?endfor?>
	<?endif?>

	<?=fbcomment( 'post' , $post['id'] )?>

</div>

