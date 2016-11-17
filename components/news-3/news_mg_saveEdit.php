<?

# jalal7h@gmail.com
# 2016/11/17
# 1.0

function news_mg_saveEdit(){
	
	#
	# upload photo
	$f = fileupload_upload( array("input"=>"news") );
	if( $f[0] ){
		dbs( 'news', [ 'pic'=>$f[0] ], ['id'] );
	}

	# 
	# update db
	dbs( 'news', [ 'name','text','tag' ], ['id'] );

}


