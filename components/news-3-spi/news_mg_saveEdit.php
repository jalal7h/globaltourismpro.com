<?

# jalal7h@gmail.com
# 2016/11/17
# 1.0

function news_mg_saveEdit(){
	
	#
	# insert
	$id = dbs( 'news', [ 'name','cat','text'], ['id'] );
	#

	#
	# upload photo
	listmaker_fileupload( 'news',$id, "*");
	#

}


