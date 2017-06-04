<?php

# jalal7h@gmail.com
# 2017/05/07
# 1.1

function postadmin_mg_saveNew(){

	#
	# fix the slug
	if(! $_REQUEST['slug'] ){
		$_REQUEST['slug'] = $_REQUEST['name'];
		$_REQUEST['slug'] = strtolower($_REQUEST['slug']);
		$_REQUEST['slug'] = str_replace( [" ", ",", "."], "-", $_REQUEST['slug']);
	}
	$_REQUEST['slug'] = var_control( $_REQUEST['slug'], 'a-zA-Z0-9\-~آ-ی' );
	while( strstr( $_REQUEST['slug'], '--' ) ){
		$_REQUEST['slug'] = str_replace( "--", "-", $_REQUEST['slug']);
	}

	#
	# insert
	$id = dbs( 'post', [ 'name', 'slug', 'text', 'kw', 'cat', 'flag'=>1 ] );
	#
 
	#
	# upload photo
	listmaker_fileupload( 'post', $id );
	#

}

