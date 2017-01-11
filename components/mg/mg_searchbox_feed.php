<?php

# jalal7h@gmail.com
# 2017/01/11
# 1.0

function mg_searchbox_feed( $text ){

	$text = trim( explode(',', $text )[0] );

	if( is_numeric($text) ){
		$id = $text;
		$rw_city = table( 'position', $id );
		$city = $rw_city['name'];
		$country = table( 'position', $rw_city['parent'] )['name'];
		echo "$city, $country";
		die();
	}

	if(! $rs = dbq(" SELECT * FROM `position` WHERE `name` LIKE '$text%' AND `type`='city' ") ){
		ed();

	} else if( dbn($rs) ){
		while( $rw = dbf($rs) ){
			echo "<div the_id=\"".$rw['id']."\">".$rw['name'].", ".table('position', ['id'=>$rw['parent'] ] )['name']."</div>";
		}
	
	} else if(! $rs = dbq(" SELECT * FROM `position` WHERE `name` LIKE '$text%' AND `type`='country' ") ){
		ed();

	} else if( dbn($rs) ){
		while( $rw = dbf($rs) ){
			if( $list_of_cities = table( 'position', [ 'parent'=>$rw['id'] ], ['name'=>'asc'], null ) ){
				foreach( $list_of_cities as $rw_city ) {
					echo "<div the_id=\"".$rw_city['id']."\">".$rw_city['name'].", ".$rw['name']."</div>";
				}
			}
		}
	}

}

