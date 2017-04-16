<?php

# jalal7h@gmail.com
# 2017/01/22
# 1.1

function vehicle_get( $id=null, $column=null ){
	
	if(! $id ){
		return table( 'mg_vehicle', ['flag'=>'1'] );

	} else if(! $rw = table( 'mg_vehicle', $id ) ){
		return false;

	} else if( $column == null ) {
		return $rw['name']." (".$rw['pax'].")";

	} else {
		return $rw[ $column ];
	}

}

