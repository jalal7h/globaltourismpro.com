<?php

# jalal7h@gmail.com
# 2017/06/15
# 1.0

function tket_Done( $list ){
	
	if(! $list['done'] ){
		return false;
	
	} else {
		listmaker_flag( 'tket', null , $_REQUEST['tket_id'] , 'done' );
	}

}

