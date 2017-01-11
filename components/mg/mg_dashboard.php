<?php

# jalal7h@gmail.com
# 2017/01/11
# 1.0

add_userpanel_item( 'mg_dashboard', 'Dashboard', '0e4', 11, true );

function mg_dashboard(){
	
	mg_searchbox();
	
	switch( $_REQUEST['service'] ){
		
		case 'transfer':
			mg_transfer_list();
			break;
		
		case 'dailytour':
			mg_dailytour_list();
			break;
		
		default:
			mg_toptours();
			break;

	}

}







