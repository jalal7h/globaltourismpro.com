<?php

# jalal7h@gmail.com
# 2016/11/17
# 1.2

$GLOBALS['block_layers']['news_display'] = 'نمایش خبر';

function news_display(){
	
	# 
	# news display section
	// code here

	#
	# comment section
	$table_name = 'news';
	$table_id = $_REQUEST['id'];
	echo fbcm( $table_name , $table_id );

}



