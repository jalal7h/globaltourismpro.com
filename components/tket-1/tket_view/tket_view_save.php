<?php

# jalal7h@gmail.com
# 2017/06/16
# 1.1

add_action('tket_view_save');

function tket_view_save(){

	if(! $que_key = $_REQUEST['que_key'] ){
		ed();

	} else if(! $list = que::get($que_key) ){
		ed();
	}

	# tket id ro darim?
	if(! $tket_id = intval($_REQUEST['tket_id']) ){
		ed();

	# kesi login shode?
	} else if(! $user_id = who_logged() ){
		ed();

	# text darim?
	} else if(! $text = $_REQUEST['text'] ){
		ed();
	
	# ini k login shode, tu user_list hast aslan?
	} else if(! tket_isAccessibleFor( $tket_id, $user_id ) ){
		ed();

	# in tket id k onvan shode, aslan vojud dare?
	} else if(! $rw_tket = table('tket', $tket_id) ){
		ed();

	# ok, sabt ro anjam dadim, sabt shod?
	} else if(! $tket_post_id = tket_NewPostSave([ 'tket_id'=>$tket_id, 'user_id'=>$user_id, 'text'=>$text ]) ){
		ed();
	
	# task done
	} else {
		
		#
		# remove the que
		// que::remove($que_key); shaiad az ye form 2bar ersal pasokh anjam beshe!

		# 
		# signal
		echo "OK";

		#
		# congratulate, prompts / emails/ etc..
		if( function_exists( $tket_tt_func = $list['type'].'_view_save_trailerTask' ) ){
			$tket_tt_func( $list, $rw_tket );
		}

		#
		# display the new post
		echo tket_view_post( table( 'tket_post' , $tket_post_id ) );

		# 
		# die
		die();

	}
	
}


function tket_text_clean( $text ){

	$text = strip_tags($text);
	$text = str_replace("'", "", $text );
	$text = trim($text);

	return $text;

}










