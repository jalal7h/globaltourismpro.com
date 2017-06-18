<?php

# jalal7h@gmail.com
# 2017/06/18
# 2.1

function tket_View( $list ){
	
	if(! $id = intval($_REQUEST['id']) ){
		e();

	} else if(! $rw_tket = table('tket', $id) ){
		echo convbox( __('%% با شناسه #%% ثبت نشده است.',[ tket_name('ticketbox')[0], $id ] ), 'transparent' );

	} else {

		# 
		# auth
		if(! tket_isAccessibleFor( $id, who_logged() ) ){
			echo convbox( __('شما دسترسی لازم برای مشاهده این صفحه را ندارید.'), 'transparent' );
			return false;
		}

		#
		# tanzim ticket be onvan e dide shode, flag e view dar tket_user
		tket_setAsViewed( $id, who_logged(), 'viewed' );

		#
		# post list
		$posts = [];	
		
		if(! $rs = dbq(" SELECT * FROM `tket_post` WHERE `tket_id`='$id' ORDER BY `date_created` DESC ") ){
			e();

		} else if(! dbn($rs) ){
			e();

		} else while( $rw = dbf($rs) ){
			$rw['text'] = nl2br($rw['text']);
			$posts[] = $rw;
		}
		
		#
		# list -> que
		$que_key = que::push($list);

		#
		# echo template
		echo template_engine( 'tket_view', [ 

			'tket' => (object) $rw_tket, 
			'posts' => $posts, 
			'que_key' => $que_key, 
			'remove_flag' => ( $list['remove'] ? 'remove_flag' : '' ),
			'list_base' => $list['base'],

		]);

	}

}



