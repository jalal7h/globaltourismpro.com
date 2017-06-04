<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.0

add_userpanel_item( 'dailytourorder_user', 'dailytour_booking', 'DailyTour Bookings', '0f2', 1 );

function dailytourorder_user(){
	
	#
	# actions
	switch( $_REQUEST['do'] ){
		
		case 'view':
			return dailytourorder_user_view();
			
	}

	#
	# the list
	dailytourorder_user_list();

}

