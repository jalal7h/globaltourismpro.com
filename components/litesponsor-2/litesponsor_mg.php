<?

# jalal7h@gmail.com
# 2017/01/07
# 1.1

add_component( 'litesponsor_mg', 'اسپانسرها', '2b5' );

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

		case 'flag':
		echo "00";
			listmaker_flag('litesponsor');
			break;
			
	}

	#
	# the list
	litesponsor_mg_list();

}


