<?php

# jalal7h@gmail.com
# 2017/04/14
# 1.1

function dailytour_link( $rw ){
	
	if(! $_REQUEST['date_from'] ){
		$_REQUEST['date_from'] = $rw['date_from'];
	}
	if(! $_REQUEST['date_to'] ){
		$_REQUEST['date_to'] = $rw['date_to'];
	}

	$date_from = var_control( $_REQUEST['date_from'] , '0-9/' );
	$date_from = str_replace( '/', '-', $date_from );
	$date_to = var_control( $_REQUEST['date_to'] , '0-9/' );
	$date_to = str_replace( '/', '-', $date_to );

	$name = var_control($rw['name'],'0-9a-zA-Z ');
	$name = sub_string( $name, 0, 60 );
	$name = trim($name);
	$name = str_replace( " ", "-", $name );

	return _URL."/dailytour_detail/$date_from/$date_to/".$rw['id']."-".$name;

}

function mg_dailytour_link( $rw ){
	return dailytour_link($rw);
}

