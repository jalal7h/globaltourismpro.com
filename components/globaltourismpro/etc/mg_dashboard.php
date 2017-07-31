<?php

# jalal7h@gmail.com
# 2017/02/07
# 1.2

add_userpanel_item( 'mg_dashboard', 'dashboard', 'Dashboard', '0e4', 0, true );

function mg_dashboard(){
	
	switch( $_REQUEST['do2'] ){
		

		case 'transfer_list':
			mg_searchbox();
			transfer_list();
			break;

		case 'transfer': 
			return transfer_view();
		
		case 'transfer_order': 
			return transfer_order();
		
		case 'transfer_confirm':
			return transfer_confirm();


		case 'dailytour': 
			return dailytour_view();

		case 'dailytour_order': 
			return dailytour_order();
			
		case 'dailytour_list':
			mg_searchbox();
			dailytour_list();
			break;

		case 'dailytour_confirm':
			return dailytour_confirm();


		default:
			mg_searchbox();
			dailytour_top();
			break;


	}

}


