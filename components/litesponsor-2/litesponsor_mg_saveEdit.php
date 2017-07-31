<?

# jalal7h@gmail.com
# 2017/01/07
# 1.1

function litesponsor_mg_saveEdit(){

	#
	# update db
	$set_array = ['name'];
	if( litesponsor_url_flag === true ){
		$set_array[] = 'url';
	}
	$id = dbs( 'litesponsor', $set_array, ['id'] );

	#
	# upload photo
	listmaker_fileupload( 'litesponsor', $id );

}


