<?

# jalal7h@gmail.com
# 2016/12/26
# 1.0

function mg_transfer_mg_list(){

	#
	# some actions
	switch ($_REQUEST['do']) {
		
		case 'form':
			return mg_transfer_mg_form();

		case 'saveNew':
			mg_transfer_mg_saveNew();
			break;
		
		case 'saveEdit':
			mg_transfer_mg_saveEdit();
			break;
		
		case 'remove':
			dbrm( 'mg_transfer', null, true );
			break;
		
		case 'flag':
			listmaker_flag('mg_transfer');
			break;
	
	}


	#
	# the list

	###################################################################################
	# the list
	#
	
	$table = 'mg_transfer';
	$list['name'] = __FUNCTION__;
	$list['query'] = " SELECT * FROM `$table` WHERE 1 ORDER BY `id` DESC ";
	$list['tdd'] = 5; // tedad dar safhe
	
	#
	# base url is needed in version upper 1.2 
	# ** address base e in list
	$list['base_url'] = '_URL."/?".query_string_set(["do","id"])';
	
	#
	# target // maghsad e click ruye har row
	$list['target_url'] = '_URL."/?".query_string_set(["do","id"])."&do=form&id=".$rw["id"]';
	
	#
	# actions 
	# ** mitunim link ham bedim bejaye 'true'
	# ** ama age base_url ro dashte bashim az hamun estefade mikone
	#
	// $list['modify_url'] = true; // link icon modify 
	// or $list['modify_url_inBlank'] = true; // this will open in new tab
	
	$list['addnew_url'] = true; // [true/false/url] default is false
	$list['remove_url'] = true; // link dokme hazf
	$list['setflag_url'] = true; // link active / inactive
	$list['paging_url'] = true; // not needed when we have 'tdd'
	
	#
	// $list['addnew_prompt'] = __('ارسال پیام پشتیبانی جدید');
	
	#
	# list array // list e sotun haye list
	$list['list_array'][] = array( "head"=>lmtc("mg_transfer_image:image") , "tag"=>"th", "picture" => 'mg_transfer_image($rw["id"])[0]');
	$list['list_array'][] = array("head"=>lmtc($table.":name"), "content" => '( strlen($rw["name"]) > 80 ? sub_string( $rw["name"] , 0 , 80 )." .." : $rw["name"] )');
	$list['list_array'][] = array("head"=>lmtc($table.":position_id"), "content" => 'position_translate($rw["position_id"])');
	
	// $list['height'] = 100;
	
	#
	# search columns // az in field ha tu table search mikone
	$list['search'] = [ "name", "position(position_id)[name]" ]; // jai ke name moshabehe q hast, id sho az user miare beyne user_id haye table ma peyda mikone
	
	#
	# paging select
	// $list['paging_select'] = array(
		// 'position_id' => "<option value=''>City</option>".position_options( 'city' , $array=false ),
		// 'maghta' => "<option value=''>مقطع تحصیلی</option>".cat_display('maghta',$is_array=false,$parent=0,$optionPreStr=""),
		// 'group' => "<option value=''>گروه شغلی</option>".cat_display('group',$is_array=false,$parent=0,$optionPreStr=""),
		// 'jensiat' => "<option value=''>جنسیت</option>".cat_display('jensiat',$is_array=false,$parent=0,$optionPreStr=""),
	// );
	
	#
	# echo result
	echo listmaker_list( $list );
	#
	########################################################################################
	
	

}




