<?

# jalal7h@gmail.com
# 2016/11/17
# 1.0

function news_mg_saveNew(){
	
	#
	# insert
	$id = dbs( 'news', ['name','cat','text','pic'] );
	#

	# 
	# set kword
	if( trim($_REQUEST['tag']) ){
		kwordusage_set( $_REQUEST['tag'], "news", $id );
	}

	#
	# upload photo
	listmaker_fileupload( 'news', $id, "*" );
	#


	
}


