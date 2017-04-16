<?

# jalal7h@gmail.com
# 2017/01/7
# 1.1

function litesponsor_mg_list(){

	###################################################################################
	# the list
	#
	
	$table = 'litesponsor';
	$list['name'] = __FUNCTION__;
	$list['query'] = " SELECT * FROM `$table` WHERE 1 ORDER BY `id` DESC ";
	$list['tdd'] = 10; // tedad dar safhe
	
	#
	# base url is needed in version upper 1.2 
	# ** address base e in list
	$list['base_url'] = '_URL."/admin/listesponsor"';
	
	#
	# target // maghsad e click ruye har row
	$list['target_url'] = '_URL."/admin/litesponsor/edit/".$rw["id"]';
	
	$list['addnew_url'] = '_URL."/admin/litesponsor/new"';
	$list['remove_url'] = true; // link dokme hazf
	$list['setflag_url'] = '_URL."/?page=admin&cp=".$_REQUEST["cp"]."&do=flag&id=".$rw["id"]';
	$list['paging_url'] = true; // not needed when we have 'tdd'
	
	$list['tr_color_identifier'] = '$rw["flag"]';

	#
	# list array // list e sotun haye list
	$list['list_array'][] = ["head"=>lmtc($table.":image") , "tag"=>"th", "picture" => '$rw["image"]'];
	$list['list_array'][] = ["head"=>lmtc($table.":name"), "content" => '$rw["name"]'];
		
	#
	# search columns // az in field ha tu table search mikone
	$list['search'] = ['name'];
	if( litesponsor_url_flag === true ){
		$list['search'][] = 'url';
	}

	#
	# echo result
	echo listmaker_list( $list );
	#
	########################################################################################
	
}


