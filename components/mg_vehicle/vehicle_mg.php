<?

# jalal7h@gmail.com
# 2017/01/22
# 1.0

add_component( 'vehicle_mg', 'Transfer Vehicles', '207' );

function vehicle_mg(){

	#
	# action
	switch($_REQUEST['do']){
		
		case 'saveNew' : 
			vehicle_mg_saveNew();
			break;
		
		case 'saveEdit' : 
			vehicle_mg_saveEdit();
			break;

		case 'form' : 
		 	return vehicle_mg_form();
		
		case 'prio' :
			listmaker_prio('mg_vehicle');
			break;

		case 'remove' : 
			listmaker_remove('mg_vehicle');
			break;

		case 'flag' : 
			listmaker_flag('mg_vehicle');
			break;
	}
	
	#
	# the list
	vehicle_mg_list();

}




