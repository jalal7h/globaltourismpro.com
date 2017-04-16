<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

add_component( 'dailytourorder_mg', 'DailyTour Bookings', '0f2' );

function dailytourorder_mg(){
	
	#
	# actions
	switch ($_REQUEST['do']) {
		
		case 'remove':
			listmaker_remove('mg_dailytour_order');
			break;

		case 'finilize':
			dbs( 'mg_dailytour_order', ['state_finz'=>1], ['id'] );
			mg_order_state( 'mg_dailytour_order', $_REQUEST['id'] );
			break;

	}

	#
	# the list
	dailytourorder_mg_list();

}

