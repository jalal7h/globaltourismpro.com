<?php

# jalal7h@gmail.com
# 2017/06/15
# 1.0

function tket_Remove( $list ){
	
	if(! $list['remove'] ){
		return false;

	} else {
		dbrm( 'tket', $_REQUEST['tket_id'], true );
	}

}

