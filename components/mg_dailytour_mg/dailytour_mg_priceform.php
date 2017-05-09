<?php

# jalal7h@gmail.com
# 2017/05/05
# 1.0

function dailytour_mg_priceform(){

	foreach( cat_display('priceper') as $cat_id => $cat_name ) {
		$cats[ $cat_id ]['name'] = $cat_name;
		
		if( $id = intval($_REQUEST['id']) and $rw_s_price = mg_pricelist_get('mg_dailytour:'.$id, $cat_id) ){
			foreach( $rw_s_price as $rw_price ){
				$cats[ $cat_id ]['prices'][] = $rw_price;
			}
		}

	}

	return template_engine( 'dailytour_mg_priceform', [ 'cats' => $cats ] );
	
}

