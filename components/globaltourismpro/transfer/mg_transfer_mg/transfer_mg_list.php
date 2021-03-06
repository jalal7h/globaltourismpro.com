<?php

# jalal7h@gmail.com
# 2017/07/31
# 1.1

function transfer_mg_list(){

	#
	# some actions
	switch ($_REQUEST['do']) {
		
		case 'form':
			return transfer_mg_form();

		case 'saveNew':
			transfer_mg_saveNew();
			break;
		
		case 'saveEdit':
			transfer_mg_saveEdit();
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
	# --------------------------------------------
	echo listmaker_list([
		'head' => 'List of transfers',
		'table' => 'mg_transfer',
		'where' => ( is_master() ? [] : [ 'owner'=>admin_logged() ] ),
		'order' => [ 'id' => 'desc' ],
		'limit' => 5,
		'url' => [
			'base' => '_URL."/?page=admin&cp='.$_REQUEST['cp'].'"',
			'target' => true,
			'add' => '_URL."/admin/transfer/new"' ,
			'remove' => true,
			'flag' => true,
		],
		'filter' => [ 'position_id' => [ 'City', position_options('city') ] ],
		'item' => [
			[ "picture" => 'transfer_image($rw["id"])[0]', "head"=>lmtc("mg_transfer_image:image") , "tag"=>"th"],
			[ '( strlen($rw["name"]) > 80 ? sub_string( $rw["name"] , 0 , 80 )." .." : $rw["name"] )', "head"=>lmtc("mg_transfer:name") ],
			[ 'position_translate($rw["position_id"])' , "head"=>lmtc("mg_transfer:position_id") ],
		],
		'search' => [ "name", "position(position_id)[name]" ],
	]);
	# --------------------------------------------

}




