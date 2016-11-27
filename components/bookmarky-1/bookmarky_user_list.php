<?

# taghipoor.meysam@gmail.com
# 2016/11/27
# 1.0

function bookmarky_user_list()
{	
	#
	# action
	switch ($_REQUEST['do1']) {
		
		case 'remove':
			bookmarky_user_remove();
			break;			
		

		default:
			# code...
			break;
	}

	#
	# list

	$list['name'] = __FUNCTION__;
	$list['query'] = " SELECT * FROM `bookmarky` WHERE `user_id`='".$_SESSION['uid']."' ORDER BY  `id` ASC";
	$list['tdd'] = 12;

	#
	# base url is needed in version upper 1.2 
	# ** address base e in list
	$list['base_url'] = '"./?page='.$_REQUEST['page'].'&do=bookmarky_user_list"';

	#
	# actions 
	# ** mitunim link ham bedim bejaye 'true'
	# ** ama age base_url ro dashte bashim az hamun estefade mikone
	#
	
	$list['addnew_url'] = false;
	$list['remove_url'] = true; // link dokme hazf
	
	

	$list['list_array'] = array (
		array("content" => 'bookmarky_name($rw)'),
	);
	
	
	$list['search'] = array("name");

	echo listmaker_list($list);


}
function bookmarky_name($rw){
 return	table( $rw['table_name'], $rw['table_id'] ,"name");
}


