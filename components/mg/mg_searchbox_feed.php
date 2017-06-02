<?php

# jalal7h@gmail.com
# 2017/06/02
# 1.2

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


	#
	# city
	if(! $rs = dbq(" SELECT * FROM `position` WHERE `name` LIKE '$text%' AND `type`='city' ") ){
		ed();

	} else if( dbn($rs) ){
		while( $rw = dbf($rs) ){
			echo "<div ".( $notfirst ? '' : 'class="hover"' )." the_id=\"".$rw['id']."\">".$rw['name'].", ".table('position', ['id'=>$rw['parent'] ] )[0]['name']."</div>";
			$notfirst = true;
		}
	
	
	#
	# country
	} else if(! $rs = dbq(" SELECT * FROM `position` WHERE `name` LIKE '$text%' AND `type`='country' ") ){
		ed();

	} else if( dbn($rs) ){
		while( $rw = dbf($rs) ){
			if( $list_of_cities = table( 'position', [ 'parent'=>$rw['id'] ], ['name'=>'asc'], null ) ){
				foreach( $list_of_cities as $rw_city ) {
					echo "<div ".( $notfirst ? '' : 'class="hover"' )." the_id=\"".$rw_city['id']."\">".$rw_city['name'].", ".$rw['name']."</div>";
					$notfirst = true;
				}
			}
		}
	}


}

