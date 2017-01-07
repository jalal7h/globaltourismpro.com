<?php

# jalal7h@gmail.com
# 2016/12/27
# 1.0

function mg_vehicle_get( $id=null ){
	
	if( $id ){
		return [ $id, "Minivan", "1-6" ];
	
	} else {
		return [
			[ 'id'=>1, 'name'=>'Minivan', 'pax'=>'1-6' ], 
			[ 'id'=>4, 'name'=>'Luxury Car', 'pax'=>'1-3' ], 
			[ 'id'=>3, 'name'=>'Bus', 'pax'=>'1-12' ], 
		];
	}

}

