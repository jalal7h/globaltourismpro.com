<?php

# jalal7h@gmail.com
# 2017/01/10
# 1.0

function dailytour_order(){

	if(! $id = intval($_REQUEST['dailytour_id']) ){
		dg();
		jsgo( _URL . '/' . Slug::getSlugByName('userpanel') );

	} else if(! $rw_dailytour = table('mg_dailytour', $id) ){
		e();

	} else if(! $langs_row = table('mg_dailytour_language', ['mg_dailytour_id'=>$id]) ){
		e();

	} else if(! sizeof($_REQUEST['order']) ){
		e();		

	} else {

		# 
		# the rw
		$v['rw_dailytour'] = $rw_dailytour;
		$v['departure_flag'] = $rw_dailytour['departure_central_flag'];
		$v['departure_time'] = $rw_dailytour['departure_central_time'];
		
		# langs
		foreach ($langs_row as $this_lang) {
			$lang_id = $this_lang['language'];
			$lang_name = cat_translate($lang_id);
			$langs[$lang_id] = $lang_name;
		}
		$v['langs'] = $langs;

		#
		# the slider
		// $slides = dailytour_image( $id, "800x440" );
		// $v['the_slider'] = slideit( $slides , 4000, true );
		$slides = dailytour_image( $id );
		$v['the_slider'] = slideit( $slides , $the_time=4000, $thumb=true, $display_name=0, $display_desc=0, $size='400x220' );

		#
		# order_items n total_purchase
		foreach ($_REQUEST['order'] as $priceper_id => $numb) {
			if(! $numb = intval($numb) ){
				continue;
			}
			$dailytour_cost = mg_price_get( 'mg_dailytour:'.$id, $priceper_id, $numb );
			$dailytour_cost = mg_cost_after_offrate( $dailytour_cost );
			$dailytour_cost*= $numb;
			$cost = billing_format($dailytour_cost);
			$order_items[ $priceper_id ] = [
				'numb' => $numb,
				'priceper' => cat_translate($priceper_id),
				'cost' => $cost,
			];
			#
			$total_purchase+= $dailytour_cost;
		}
		$v['order_items'] = $order_items;
		$v['total_purchase'] = billing_format($total_purchase);

		#
		# traveller_summary
		foreach ($v['order_items'] as $item) {
			$traveller_summary[] = $item['numb'].' '.$item['priceper'];
		}
		$v['traveller_summary'] = implode( ' | ' , $traveller_summary);

		#
		# the template
		echo template_engine('dailytour_order', $v);

	}
	
}

