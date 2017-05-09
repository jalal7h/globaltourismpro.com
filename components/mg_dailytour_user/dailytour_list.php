<?php

# jalal7h@gmail.com
# 2017/01/30
# 1.0

function dailytour_list(){
	
	$limit = 5;
	$start = $limit * intval($_REQUEST['p']);

	#
	# date from
	$_REQUEST['date_from'] = str_replace( '-', '/', $_REQUEST['date_from'] );
	if( $date_from = var_control($_REQUEST['date_from'], '0-9/') ){
		$date_from_q = " AND `date_from`<='$date_from' ";
	}

	#
	# date to
	$_REQUEST['date_to'] = str_replace( '-', '/', $_REQUEST['date_to'] );
	if( $date_to = var_control($_REQUEST['date_to'], '0-9/') ){
		$date_to_q = " AND `date_to`>='$date_to' ";
	}

	#
	# position
	if( $position_id = intval($_REQUEST['position_id']) ){

		if(  $childs = position_get_childs($position_id)  and  sizeof($childs)  ){
			foreach ($childs as $child) {
				$child_id[] = $child['id'];
			}
			$child_id = implode(',', $child_id);
			$position_q = " AND ( `position_id`='$position_id' or `position_id` IN ($child_id) ) ";
		
		} else {
			$position_q = " AND `position_id`='$position_id' ";
		}

	}

	#
	# the query
	$query = " SELECT * FROM `mg_dailytour` WHERE 1 $date_from_q $date_to_q $position_q ORDER BY `id` DESC LIMIT $start, $limit ";

	#
	# exec
	if(! $rs = dbq($query) ) {
		e( dbe() );

	#
	# nothing found
	} else if(! dbn($rs) ){
		echo convbox( __('No record found.') );
	
	#
	# fetch rows
	} else {
		
		while( $rw = dbf($rs) ){

			#
			# image
			$rw['image'] = dailytour_image($rw['id'], "600x400")[0];
			
			# 
			# price
			$rw['cost'] = mg_price_get( 'mg_dailytour:'.$rw['id'] );
			$rw['cost'] = mg_cost_after_offrate( $rw['cost'] );

			#
			# languages
			if( $lang = dailytour_languages( $rw['id'] ) ){
				$lang = implode( ', ', $lang);
				$rw['lang'] = $lang;
			}
			
			$list[] = $rw;

		}

		$ps = $position_id;
		$df = str_replace('/', '-', $date_from);
		$dt = str_replace('/', '-', $date_to);

		if( $df ){
			$page_slug = _URL."/dailytour/%%/$ps/$df/$dt";
		} else if( $ps ){
			$page_slug = _URL."/dailytour/%%/$ps";
		} else {
			$page_slug = _URL."/dailytour/%%";
		}

		$paging = listmaker_paging( $query , $page_slug, $limit );

		echo template_engine( 'dailytour_list', [ 'list'=>$list, 'paging'=>$paging ] );

	}

}






