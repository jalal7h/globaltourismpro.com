<?php

# jalal7h@gmail.com
# 2017/01/06
# 1.0

function slideshow_mg_saveEdit(){

	#
	# insert
	$id = dbs( 'slideshow', [ 'name', 'url', 'desc', 'flag'=>1 ], ['id'] );

	#
	# file upload
	listmaker_fileupload( 'slideshow', $id );

	
}

