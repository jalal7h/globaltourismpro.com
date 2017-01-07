<?php

# jalal7h@gmail.com
# 2017/01/06
# 1.0

function slideshow_mg_list(){
	
	###################################################################################
	# the list
	#
	
	$table = 'slideshow';
	$list['name'] = __FUNCTION__;
	$list['query'] = " SELECT * FROM `$table` WHERE 1 ORDER BY `id` DESC ";
	
	#
	# base url is needed in version upper 1.2 
	# ** address base e in list
	$list['base_url'] = '_URL."/?page=admin&cp='.$_REQUEST['cp'].'"';
	
	#
	# target // maghsad e click ruye har row
	$list['target_url'] = '_URL."/admin/slideshow/edit/".$rw["id"]';
	
	$list['addnew_url'] = '_URL."/admin/slideshow/new"';
	$list['remove_url'] = true; // link dokme hazf
	$list['setflag_url'] = true; // link active / inactive
	
	#
	// $list['addnew_prompt'] = __('ارسال پیام پشتیبانی جدید');
	
	#
	# list array // list e sotun haye list
	$list['list_array'] = [
		[ "head"=>lmtc($table.":image") , "tag"=>"th", "picture" => '_URL."/".$rw["image"]' ] ,
		[ "head"=>lmtc($table.":name"), "content" => '$rw["name"]' ] ,
	];

	#
	# search columns // az in field ha tu table search mikone
	$list['search'] = [ "name", "desc" ];
	
	#
	# echo result
	echo listmaker_list( $list );
	#
	########################################################################################
	
}

