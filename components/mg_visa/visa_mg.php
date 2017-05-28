<?php

# jalal7h@gmail.com
# 2017/05/25
# 1.0

add_component( 'visa_mg', 'Visa Requests', '0a3' );

function visa_mg(){
	
	#
	# actions
	switch($_REQUEST['do']){

		case 'view':
			return visa_mg_view();

		case 'remove':
			dbrm('mg_visa');
			break;

	}

	#
	# the list
	visa_mg_list();

}

