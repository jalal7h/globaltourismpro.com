<?

# jalal7h@gmail.com
# 2017/01/07
# 1.1

function litesponsor_mg_saveNew(){
	
	#
	# insert
	$set_array = ['name'];
	if( litesponsor_url_flag === true ){
		$set_array[] = 'url';
	}
	$id = dbs( 'litesponsor', $set_array );


	#
	# upload photo
	listmaker_fileupload( 'litesponsor', $id );
	
	
}


