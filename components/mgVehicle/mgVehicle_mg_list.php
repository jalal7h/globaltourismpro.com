<?
function mgvechicle_mg_list(){

	#
	# action
	switch($_REQUEST['do']){
		
		case 'saveNew' : 
			mgvehicle_mg_saveNew();
			break;
		
		case 'saveEdit' : 
			mgvehicle_mg_saveEdit();
			break;

		case 'form' : 
		 	return mgvechicle_mg_form();

			break;
		
		case 'prio' :
			listmaker_prio([ 
				'mg_vehicle' , 
				'up_or_down'=>$_REQUEST['up_or_down'], 
			]);
			break;

		case 'remove' : 
			listmaker_remove('mg_vehicle');
			break;

		case 'flag' : 
			listmaker_flag('mg_vehicle');
			break;
	}
	
	###################################################################################
	# the new version 1.2

	# 
	# the list
	$list['name'] = __FUNCTION__;
	$list['query'] = " SELECT * FROM `mg_vehicle` WHERE 1 ORDER BY `prio` ASC , `id` DESC ";
	$list['tdd'] = 5; // tedad dar safhe
	
	#
	# base url is needed in version upper 1.2 
	# ** address base e in list
	$list['base_url'] = '"./?page=admin&cp='.$_REQUEST['cp'].'&func='.$_REQUEST['func'].'"';
	
	#
	# target // maghsad e click ruye har row
	$list['target_url'] = '"./?page=admin&cp='.$_REQUEST['cp'].'&func'.$_REQUEST['func'].'&id=".$rw["id"]';
	
	#
	# actions 
	# ** mitunim link ham bedim bejaye 'true'
	# ** ama age base_url ro dashte bashim az hamun estefade mikone
	#
	$list['modify_url'] = false; // link icon modify
	$list['addnew_url'] = true; // link icon "new" vaghti ke list khali hast dide mishe
	$list['remove_url'] = true; // link dokme hazf
	$list['up_or_down'] = true; // link priority
	$list['setflag_url'] = true; // link active / inactive
	$list['modify_url'] = true;
	$list['paging_url'] = true; // not needed when we have 'tdd'
	$list['tr_color_identifier'] = '$rw["flag"]';

	#
	# list array // list e sotun haye list
	$list['list_array'][] = array("head"=>lmtc("mg_vehicle:name"), "content" => '($rw[\'name\'])');
	$list['list_array'][] = array("head"=>lmtc("mg_vehicle:pax"), "content" => '($rw[\'pax\'])');

	#
	# search columns // az in field ha tu table search mikone
	$list['search'] = ['name'];

	#
	# paging select
	



	#
	# echo result
	echo listmaker_list( $list );

	#
	########################################################################################

}
