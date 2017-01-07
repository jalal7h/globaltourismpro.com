<?

# jalal7h@gmail.com
# 2017/01/07
# 1.1

add_component( 'litesponsor_mg', 'اسپانسرها' );

function litesponsor_mg(){
	
	#
	# action
	switch($_REQUEST['do']){
		
		case 'form':
			return litesponsor_mg_form();			

		case 'saveNew' : 
			litesponsor_mg_saveNew();
			break;
		
		case 'saveEdit' : 
			litesponsor_mg_saveEdit();
			break;
		
		case 'remove' : 
			listmaker_remove('litesponsor');
			break;
	}

	#
	# the list
	litesponsor_mg_list();

}


