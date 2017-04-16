<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.1

/**
* output : some text
*/
function dailytour_confirm(){
	
	if(! $user_id = user_logged() ){
	} else if(! $_REQUEST['dailytour_id'] = var_control($_REQUEST['dailytour_id'], '0-9') ){
	} else if(! $rw_dailytour = table('mg_dailytour', $_REQUEST['dailytour_id']) ){
	} else if(! $_REQUEST['date'] = var_control($_REQUEST['date'], '0-9/') ){
	} else if(! $_REQUEST['leader_name'] = var_control($_REQUEST['leader_name'], 'a-zA-Z .') ){
	} else if(! $_REQUEST['guiding_language'] = var_control($_REQUEST['guiding_language'], '0-9') ){
	} else if(! $_REQUEST['passenger_cell'] = var_control($_REQUEST['passenger_cell'], '0-9\+\-') ){
	} else if(! sizeof($_REQUEST['order']) ){
	} else if(! $order_id = dbs( 'mg_dailytour_order', [ 'dailytour_id', 'user_id'=>$user_id, 'date', 'leader_name', 'guiding_language', 'additional_requests', 'passenger_cell' ] ) ){
		e();
		
	} else {

		foreach ($_REQUEST['order'] as $priceper_id => $count) {

			if(! $unitcost = table('mg_price', ['table_name'=>'mg_dailytour', 'table_id'=>$_REQUEST['dailytour_id'], 'priceper_id'=>$priceper_id ])[0]['price'] ){
				e();
			
			} else if(! dbs( 'mg_dailytour_order_item', [ 'order_id'=>$order_id, 'priceper_id'=>$priceper_id, 'count'=>$count, 'unitcost'=>$unitcost ] ) ){
				e();
			
			}

			$total_cost+= $unitcost * $count;

		}

		#
		# make invoice
		ob_start();
		$invoice_id = billing_invoiceMake( $total_cost, 'mg_dailytour_order', $order_id );
		$invoice_texty_prompt = ob_get_contents();
		ob_end_clean();

		if(! $invoice_id ){
			ed();

		} else {
			
			mg_order_code( 'mg_dailytour_order', $order_id );
			mg_order_state( 'mg_dailytour_order', $order_id );

			$admin_order_link = _URL . '/admin/order/dailytour/' . $order_id;

			echo texty( 'dailytour_confirm', [
				'dailytour_name' => $rw_dailytour['name'],
				'admin_order_link' => $admin_order_link,
			]);

			echo $invoice_texty_prompt;
			return true;

		}

	}

	echo convbox( __('Please fill the form correctly').'<br><a href="javascript:history.go(-1);">'.__('Back').'</a>');

}

