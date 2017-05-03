<?php

# jalal7h@gmail.com
# 2017/05/02
# 1.0

function photogallery_mg_list_saveEdit(){

	if( photogallery_name ){
		$array_set[] = 'name';
	}
	if( photogallery_desc ){
		$array_set[] = 'desc';
	}
	if( photogallery_cat ){
		$array_set[] = 'cat';
	}
	if(! sizeof($array_set) ){
		ed();
	}

	if( $id = $_REQUEST['id'] ){

		#
		# database insert
		$id = dbs( 'photogallery', $array_set, [ 'id' ] );

		#
		# file upload
		listmaker_fileupload( 'photogallery', $id );

	}


}

