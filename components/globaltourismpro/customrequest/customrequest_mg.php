<?php

# jalal7h@gmail.com
# 2017/06/18
# 1.0

add_component( 'customrequest_mg', 'Custom Requests', '277' );
add_tket( 'customrequest', 'Custom Request/Custom Requests' );

function customrequest_mg(){
	
	tket([
	
		'base'		=> _URL.'/?page=admin&cp=customrequest_mg',
	
		'type'		=> 'customrequest',
		'user_list'	=> admin_logged(),
	
		'remove'	=> true,
		'done'		=> true,
	
	]);

}


