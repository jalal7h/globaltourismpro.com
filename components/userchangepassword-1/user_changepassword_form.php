<?

# jalal7h@gmail.com
# 2017/01/23
# 1.0

add_userpanel_item( 'user_changepassword_form', 'password', 'تغییر رمز عبور', '13e', 95 );

function user_changepassword_form(){
	
	echo "<div class=".__FUNCTION__."_container >
		<div class=d01>".__('تغییر %%',[lmtc('user:password')])."</div>";

	switch( $_REQUEST['do'] ){
		
		case 'save':
			return user_changepassword_save();

		default :
			echo "<form id=".__FUNCTION__." method=post action='"._URL."/?page=".$_REQUEST['page']."&do_slug=".$_REQUEST['do_slug']."&do=save' onsubmit='return checkform_uchform();' name=uchform >
			<input type='hidden' name='email' value='$email'>
			<input type='hidden' name='h' value='".$_REQUEST['h']."'>

					<div>
						<span>".__('کلمه عبور فعلی')."</span>
						<input type='password' name='old_password' />
					</div>
					
					<div>
						<span>".__('کلمه عبور جدید')."</span>
						<input type='password' id='password1' />
					</div>
					
					<div>
						<span>".__('تکرار کلمه عبور')."</span>
						<input type='password' id='password2' name='password' />
					</div>
					
					<div>
						<span></span>
						<input type='submit' class='btn btn-primary' value='".__('تغییر کلمه عبور')."' />
					</div>
					
			</form>";
			?>
			<script>
			function checkform_uchform(){
				
				if( uchform.old_password.value=='' ){
					alert("<?=__('لطفا کلمه عبور قبلی را وارد کنید')?>");
				
				} else if( document.getElementById("password1").value == '' ){
					alert("<?=__('لطفا کلمه عبور جدید را وارد کنید.')?>");
				
				} else if( document.getElementById("password1").value!=document.getElementById("password2").value){
					alert("<?=__('کلمه عبور مطابقت ندارد!')?>");
				
				} else {
					return true;
				}

				return false;

			}
			</script>
			<?

	}

	echo "</div>";

}

