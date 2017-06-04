
<div class="type">
	<div class="tnit"><lang>نوع پست</lang></div>
	<div class="element">
		<select name="postlist_type">
			<?foreach( $GLOBALS['postlist_type'] as $func => $name ):?>
				<option value="<?=$func?>"><?=$name?></option>
			<?endforeach?>
		</select>
		<script> postlist_extra_form.postlist_type.value = '<?=$type?>'; </script>
	</div>
</div>

<div class="cats">
	<div class="tnit"><lang>دسته‌بندی ها</lang></div>
	<div class="element">
	<?foreach( $cats as $cat ):?>
		<label><input <?=$cat['checked']?> type="checkbox" name="cat[<?=$cat['id']?>]"/> <?=$cat['name']?></label>
	<?endforeach?>
	</div>
</div>


