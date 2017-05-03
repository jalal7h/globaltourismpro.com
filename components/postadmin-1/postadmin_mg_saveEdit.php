<?php

# jalal7h@gmail.com
# 2017/04/29
# 1.1

function postadmin_mg_saveEdit(){

	#
	# fix slug
	$_REQUEST['slug'] = strtolower($_REQUEST['slug']);
	$_REQUEST['slug'] = str_replace( [" ", ",", "."], "-", $_REQUEST['slug']);
	$_REQUEST['slug'] = var_control( $_REQUEST['slug'], 'a-zA-Z0-9\-~آ-ی' );
	while( strstr( $_REQUEST['slug'], '--' ) ){
		$_REQUEST['slug'] = str_replace( "--", "-", $_REQUEST['slug']);
	}

	#
	# insert
	$id = dbs( 'post', [ 'name' ,'slug', 'text', 'cat' ], ['id'] );
	#

	#
	# upload photo
	listmaker_fileupload( 'post', $id );
	#

}

