<?php

# jalal7h@gmail.com
# 2017/06/15
# 1.0

function tket_replyStatus( $rw_tket ){
	
	if( $rw_tket['done'] == 1 ){
		return __('بسته شده');

	} else if( tket_isRepliedBy( $rw_tket['id'], who_logged() ) ){
		return __("منتظر پاسخ");

	} else {
		return __("پاسخ‌ داده");
	}

}

