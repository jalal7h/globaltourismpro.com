<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

add_userpanel_item( 'transferorder_user', 'transfer_booking', 'Transfer Bookings', '018', 2 );

function transferorder_user(){
	
	#
	# actions
	switch( $_REQUEST['do'] ){
		
		case 'view':
			return transferorder_user_view();
			
	}

	#
	# the list
	transferorder_user_list();

}

