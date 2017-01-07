<?php

# jalal7h@gmail.com
# 2017/01/07
# 1.0

// add_layer( 'mg_flapper', 'Flapp Counter' );

function mg_flapper(){

	if( _PAGE != 1 ){
		return '';
	}

	$countries = dbqc( 'position', ['type'=>'country'] );
	$destinations = dbqc( 'position', ['type'=>'city'] );
	$products = dbqc('mg_transfer') + dbqc('mg_dailytour');
	$agents = dbqc('user');

	if( strlen($countries) < 6 ){
		$countries = str_repeat( "0", 6-strlen($countries) ).$countries;
	}

	if( strlen($destinations) < 5 ){
		$destinations = str_repeat( "0", 5-strlen($destinations) ).$destinations;
		$destinations = substr($destinations,0,2).".".substr($destinations,2);
	}
	
	if( strlen($products) < 5 ){
		$products = str_repeat( "0", 5-strlen($products) ).$products;
		$products = substr($products,0,2).".".substr($products,2);
	}

	if( strlen($agents) < 5 ){
		$agents = str_repeat( "0", 5-strlen($agents) ).$agents;
		$agents = substr($agents,0,2).".".substr($agents,2);
	}
	
	return flapper([
	    $countries." COUNTRIES",
	    $destinations." DESTINATIONS",
	    $products." PRODUCTS",
	    $agents." AGENTS",
	]);

}

