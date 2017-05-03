<?php

# jalal7h@gmail.com
# 2017/01/11
# 1.0

add_layer( 'mg_searchbox', 'Search box', 'center', $repeat='N' );

function mg_searchbox(){
	
	echo template_engine('mg_searchbox', [

		'feed' => str_enc('mg_searchbox_feed()'),
		'date_from' => str_replace( '-', '/', $_REQUEST['date_from'] ) ,
		'date_to' => str_replace( '-', '/', $_REQUEST['date_to'] ) ,

	] );

}


