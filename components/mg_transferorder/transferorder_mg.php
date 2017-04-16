<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

add_component( 'transferorder_mg', 'Transfer Bookings', '018' );

function transferorder_mg(){
	
	#
	# actions
	switch ($_REQUEST['do']) {
		
		case 'remove':
			listmaker_remove('mg_transfer_order');
			break;

		case 'finilize':
			dbs( 'mg_transfer_order', ['state_finz'=>1], ['id'] );
			mg_order_state( 'mg_transfer_order', $_REQUEST['id'] );
			break;

	}

	#
	# the list
	transferorder_mg_list();

}

