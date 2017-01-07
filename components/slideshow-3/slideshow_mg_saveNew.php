<?php

# jalal7h@gmail.com
# 2017/01/06
# 1.0

function slideshow_mg_saveNew(){

	#
	# insert
	$id = dbs( 'slideshow', [ 'name', 'url', 'desc', 'flag'=>1 ] );

	#
	# file upload
	listmaker_fileupload( 'slideshow', $id );

	
}

