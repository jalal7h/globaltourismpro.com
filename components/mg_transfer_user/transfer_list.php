<?php

# jalal7h@gmail.com
# 2017/05/09
# 1.2

function transfer_list(){

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
	$query = " SELECT * FROM `mg_transfer` WHERE 1 $date_from_q $date_to_q $position_q ORDER BY `id` DESC LIMIT $start, $limit ";

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
			$rw['image'] = transfer_image($rw['id'], "600x400")[0];
			
			# 
			# price
			$rw['cost'] = mg_price_get( 'mg_transfer:'.$rw['id'] );
			$rw['cost'] = mg_cost_after_offrate( $rw['cost'] );

			#
			# basis
			$rw['basis'] = cat_translate($rw['transferBasis_id']);

			#
			# list of vehicles
			$list_of_vehicles = [];
			foreach( cat_display('transfer_vehicle') as $cat_id => $cat_name ){
				if( $rw_s_price = mg_pricelist_get( 'mg_transfer:'.$rw['id'], $cat_id ) ){
					foreach( $rw_s_price as $rw_price ){
						$thisVehicle = cat_translate( $rw_price['priceper_id'] );
						$thisVehicle = trim( explode( '(', $thisVehicle )[0] );
						$list_of_vehicles[] = $thisVehicle;
					}
				}
			}
			$rw['list_of_vehicles'] = implode( ', ', $list_of_vehicles );

			#
			# merge all
			$list[] = $rw;

		}

		$ps = $position_id;
		$df = str_replace('/', '-', $date_from);
		$dt = str_replace('/', '-', $date_to);
		$paging = listmaker_paging( $query , _URL."/transfer/$ps/$df/$dt/%%", $limit );

		echo template_engine( 'transfer_list', [ 'list'=>$list, 'paging'=>$paging ] );

	}

}






