<?

# jalal7h@gmail.com
# 2016/11/17
# 1.0

function news_mg_saveNew(){
	
	#
	# file upload
	$f = fileupload_upload( array("input"=>"news") );
	
	#
	# insert
	dbs( 'news', ['name','cat','text','pic'=>$f[0],'tag'] );
	
}


