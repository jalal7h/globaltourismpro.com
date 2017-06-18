<?php

# jalal7h@gmail.com
# 2017/06/16
# 1.0

/*
tket_NewPostSave([
	'tket_id'	=> 123, 
	'user_id'	=> 11,
	'text'		=> 'Some post content',
]);
*/

function tket_NewPostSave( $list ){
	
	# text e dorost darim?
	if(! $list['text'] = tket_text_clean($list['text']) ){
		ed();

	} else if(! $id = dbs('tket_post', [ 'tket_id'=>$list['tket_id'], 'user_id'=>$list['user_id'], 'text'=>$list['text'] ] ) ){
		return e();

	} else {

		# 
		# date_updated on tket
		tket_justUpdatedByMe( $list['tket_id'] );

		return $id;

	} 

}



