<?php

# jalal7h@gmail.com
# 2017/02/08
# 1.1

function transfer_order(){

	if(! $id = intval($_REQUEST['transfer_id']) ){
		dg();
		jsgo( _URL . '/' . Slug::getSlugByName('userpanel') );

	} else if(! $rw_transfer = table('mg_transfer', $id) ){
		e();

	} else if(! $adult = intval($_REQUEST['adult']) ){
		e();		

	} else {

		# 
		# the rw
		$v['rw_transfer'] = $rw_transfer;

		#
		# the slider
		$slides = transfer_image( $id );
		$v['the_slider'] = slideit( $slides , $the_time=4000, $thumb=true, $display_name=0, $display_desc=0, $size='400x220' );

		#
		# adult n total_purchase
		if(! $rw_mgPrice = table( 'mg_price', $_REQUEST['vehicle'] ) ){
			e();
		} else if(! $total_purchase = $rw_mgPrice['price'] ){
			e();
		} else {
			$total_purchase = mg_cost_after_offrate( $total_purchase );
			if( $_REQUEST['direction'] == 'roundtrip' ){
				$total_purchase*= 2;
			}
			$v['total_purchase'] = billing_format($total_purchase);
		}

		#
		# direction
		switch ($_REQUEST['direction']) {
			case 'arrival':
				$v['direction_name'] = __('Arrival');
				if(! $_REQUEST['date_arrival'] ){
					ed();
				}
				break;
			case 'departure':
				$v['direction_name'] = __('Departure');
				if(! $_REQUEST['date_departure'] ){
					ed();
				}
				break;
			case 'roundtrip':
				$v['direction_name'] = __('Round Trip');
				if(! $_REQUEST['date_arrival'] ){
					ed();
				}
				if(! $_REQUEST['date_departure'] ){
					ed();
				}
				break;
			default:
				ed();
				break;
		}

		#
		# the template
		echo template_engine('transfer_order', $v);

	}
	
}

