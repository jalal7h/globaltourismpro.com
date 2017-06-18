<?php

# jalal7h@gmail.com
# 2017/06/15
# 1.0

function tket_Form( $list ){
	
	if( $tket_id = $_REQUEST['tket_id'] ){
		if(! $list['modify'] ){
			ed();
		}

	} else {
		if(! $list['add'] ){
			ed();
		}
	}

	$cat_name = $list['cat_name'];
	$type = $list['type'];	

	# -------------------------------------------------
	echo listmaker_form('
		[!
			"table" => "tket" ,
			"action" => "'.$list['base'].'",
			"name" => "'.__FUNCTION__.'" ,
			"class" => "'.__FUNCTION__.' '.$type.'" ,
			"switch" => "tket_do",
			"rw" => table("tket", $_REQUEST["tket_id"]),
		!]
			
			<div>'.__('%% جدید', [ tket_name($list['type'])[0] ]).'</div>
			<hr>

			'.( $cat_name ? '[!"select:cat*", "option"=>cat_display("'.$cat_name.'")!]' : '' ).'			
			
			'.( is_numeric($list['add']) 
				? '[!"hidden:user_id"=>"'.$list['add'].'"!]' 
				: '[!"searchbox:user_id*"=>tket_foreignList($rw)[0],"feed"=>"user(name)[id]","'.__('ارسال به').'"!]' ).'
			[!"text:name*"!]
			
			'.( $_REQUEST["tket_id"] ? '' : '[!"textarea:text*","'.__('متن %%', [ tket_name($type)[0] ]  ).'"!]' ).'
			
			<hr>

		[!submit!]
	');
	# -------------------------------------------------


}

