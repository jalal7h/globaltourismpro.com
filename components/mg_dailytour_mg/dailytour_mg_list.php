<?

# jalal7h@gmail.com
# 2017/01/22
# 1.1

function dailytour_mg_list(){

	#
	# some actions
	switch ($_REQUEST['do']) {
		
		case 'form':
			return dailytour_mg_form();

		case 'saveNew':
			dailytour_mg_saveNew();
			break;
		
		case 'saveEdit':
			dailytour_mg_saveEdit();
			break;
		
		case 'remove':
			dbrm( 'mg_dailytour', null, true );
			break;
		
		case 'flag':
			listmaker_flag('mg_dailytour');
			break;
	
	}


	#
	# the list
	# --------------------------------------------
	echo listmaker_list([
		'head' => 'List of Daily Tours',
		'table' => 'mg_dailytour',
		'order' => [ 'id' => 'desc' ],
		'limit' => 5,
		'url' => [
			'base' => '_URL."/?page=admin&cp='.$_REQUEST['cp'].'"',
			'target' => true,
			'add' => '_URL."/admin/dailytour/new"' ,
			'remove' => true,
			'flag' => true,
		],
		'filter' => [ 'position_id' => [ 'City', position_options('city') ] ],
		'item' => [
			[ "picture" => 'dailytour_image($rw["id"])[0]', "head"=>lmtc("mg_dailytour_image:image") , "tag"=>"th"],
			[ '( strlen($rw["name"]) > 80 ? sub_string( $rw["name"] , 0 , 80 )." .." : $rw["name"] )', "head"=>lmtc("mg_dailytour:name") ],
			[ 'position_translate($rw["position_id"])' , "head"=>lmtc("mg_dailytour:position_id") ],
		],
		'search' => [ "name", "position(position_id)[name]" ],
	]);
	# --------------------------------------------
	
}




