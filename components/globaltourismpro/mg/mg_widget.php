<?php

# jalal7h@gmail.com
# 2017/05/29
# 1.1

add_adminwidget([ 
	'func'	=> 'mg_widget',
	'grid'	=> 6,
	'cover'	=> true,
]);

function mg_widget(){

	$dailytours = number_format( dbqc( 'mg_dailytour_order', [ 'state'=>'CONFIRM' ] ) );
	$transfers = number_format( dbqc( 'mg_transfer_order', [ 'state'=>'CONFIRM' ] ) );
	$visa = number_format( dbqc( 'mg_visa', [ 'flag'=>1, 'done'=>0 ] ) );

	$dailytours = 0;

	if( !$dailytours and !$transfers and !$visa ){
		return false;

	} else {
		echo template_engine( 'mg_widget', [ 'dailytours'=>$dailytours, 'transfers'=>$transfers, 'visa'=>$visa ] );
	}

}

