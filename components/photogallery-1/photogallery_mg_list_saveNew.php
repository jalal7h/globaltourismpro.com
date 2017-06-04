<?php

# jalal7h@gmail.com
# 2017/05/02
# 1.0

function photogallery_mg_list_saveNew(){
	
	#
	# database insert
	
	$array_set = [ 'flag' => 1 ];
	$signle_form = true;

	if( photogallery_name ){
		$array_set[] = 'name';
		$signle_form = false;
	}
	if( photogallery_desc ){
		$array_set[] = 'desc';
		$signle_form = false;
	}
	if( photogallery_cat ){
		$array_set[] = 'cat';
		$signle_form = false;
	}

	#
	# file upload
	if( $signle_form ){
		foreach( $_FILES['image']['name'] as $i => $name ){
			$id = dbs( 'photogallery', $array_set );
			$tmp_name = $_FILES['image']['tmp_name'][$i];
			$new_path = 'data/photogallery_image/' . $id . '/';
			if(! file_exists($new_path) ){
				mkdir($new_path);
			}
			$new_name = date('U') . rand(100,999) . var_control($name, 'a-zA-Z0-9.');
			$fullpath = $new_path . $new_name;
			copy( $tmp_name, $fullpath );
			dbs( 'photogallery', [ 'image'=>$fullpath ], [ 'id'=>$id ] );
		}
	
	} else {
		$id = dbs( 'photogallery', $array_set );
		listmaker_fileupload( 'photogallery', $id );
	}


}

