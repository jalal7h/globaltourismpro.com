
<div class="tabmenu default">
	
	<div class="name {class_prefix}r_border">
	<?foreach( $names as $slug => $name ):?>
		<a class="{class_prefix} {class_prefix}r {class_prefix}_hover" href="#<?=$slug?>"><?=$name?></a>
	<?endforeach?>
	</div>
	
	<div class="text">
	<?foreach( $texts as $text ):?>
		<div><?=$text?></div>
	<?endforeach?>
	</div>

</div>

