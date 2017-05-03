<?php

# jalal7h@gmail.com
# 2017/04/21
# 1.0

function postadmin_mg_list(){
	
	#
	# actions
	switch ($_REQUEST['do']) {
		
		case 'form':
			return postadmin_mg_form();

		case 'saveNew':
			postadmin_mg_saveNew();
			break;
			
		case 'saveEdit':
			postadmin_mg_saveEdit();
			break;

		case 'flag':
			listmaker_flag('post');
			break;

		case 'remove':
			dbrm('post', null, true);
			break;

	}

	#
	# the list
	# --------------------------------------------
	echo listmaker_list([
		'head' => 'List of posts',
		'table' => 'post',
		'order' => [ 'id'=>'desc' ], // default: asc. default: prio, date_updated, date_created, date
		'limit' => 10,
		'url' => [
			'base' => '_URL."/?page=admin&cp=".$_REQUEST["cp"]."&func=".$_REQUEST["func"]', // *
			'target' => true,
			'add' => true,
			'remove' => true,
			'flag' => true,
		],
		'filter' => [
			'cat' => [ __( lmtc('post:cat') ), cat_display('post') ],
		],
		'item' => [
			[ 'picture' => '_URL."/resize/200x200/".postadmin_image($rw["id"])[0]' ],
			[ '$rw["name"]', 'head'=>lmtc("post:name") ],
			[ 'cat_translate($rw["cat"])', 'head'=>lmtc("post:cat") ],
		],
		'search' => [ 'name', 'text' ],
	]);
	# --------------------------------------------

}


