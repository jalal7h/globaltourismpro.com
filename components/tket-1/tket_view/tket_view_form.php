<?php

# jalal7h@gmail.com
# 2017/06/15
# 1.0

function tket_view_form( $que_key ){
	
	# -------------------------------------------------
	return listmaker_form('
		[!
			"table" => "tket" ,
			"action" => "#",
			"class" => "'.__FUNCTION__.'" ,
		!]
			[!"hidden:tket_id"=>"'.$_REQUEST['id'].'"!]
			[!"hidden:que_key"=>"'.$que_key.'"!]
			[!"textarea:text/user_id=\"'.who_logged().'\""!]
			
		<div class="submit_div">
			[!"submit:'.__('ثبت').'","notInDiv"!]
			<div class="prompt">'.__('اختلال در ثبت.').'</div>
			
			<?=tket_view_form_foreignProfiles( $rw )?>

		</div>
	');
	# -------------------------------------------------

}


function tket_view_form_foreignProfiles( $rw_tket ){
	
	$user_list = tket_userList( $rw_tket );
	$who_logged = who_logged();

	foreach( $user_list as $user_id ){
		
		if( $who_logged == $user_id ){
			continue;
		
		} else {
			$c.= '<a href="'.( is_admin() ? user_mg_detailLink($user_id) : userprofile_link($user_id) ).'" target="_blank" class="foreign">'.user_detail($user_id)['name'].'</a>';
		}

	}

	return $c;

}










