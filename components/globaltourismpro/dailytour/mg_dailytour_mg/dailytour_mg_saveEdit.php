<?php

# jalal7h@gmail.com
# 2017/07/31
# 1.2

function dailytour_mg_saveEdit(){

	if( !is_master() and (table('mg_dailytour', $_REQUEST['id'])['owner'] != admin_logged()) ){
		echo convbox_back('Access denied');
		return true;
	}

	#
	# remove repeaty languages
	if( sizeof($_REQUEST['language']) ){
		foreach ($_REQUEST['language'] as $i => $lang) {
			if( sizeof($list_of_langs) and in_array($lang, $list_of_langs) ){
				$_REQUEST['language'][$i] = '';
			} else {
				$list_of_langs[] = $lang;
			}

		}
	}

	#
	# update the database
	$id = dbs( 'mg_dailytour', ['name','position_id','serviceBasis_id','departs_id','duration','highlights','language','itinerary','inclusions','conditions','notes','date_from','date_to','departure_central_flag','departure_central_point','departure_central_time','deathline','reservation'], ['id'] );

	# 
	# set kword
	kwordusage_set( $_REQUEST['kword'], "mg_dailytour", $id );

	#
	# set price
	mg_priceform_save( 'mg_dailytour:' . $id );

	#
	# take care of files
	listmaker_fileupload( 'mg_dailytour', $id );
	#
	
}



