<?php

# jalal7h@gmail.com
# 2017/06/02
# 1.2

// <input type="richbox" name="city" feed="<?=str_enc('position(name)[id]/type:city')>" list_limit="20" char_limit="2" action="alert" value="15" >

// position(name)[id]/type:city
// str_enc('position(name)[id]/type:city')
// str_enc('some_func_name()')

add_action( 'richbox_feed' );

function richbox_feed(){
	
	#
	$id = $_REQUEST['id'];
	$id = intval($id);

	#
	$text = $_REQUEST['text'];
	$text = mb_ereg_replace('[^A-Za-z0-9آ-ی\.\-\_, ]+','',$text);
	$text = trim($text);

	if( !$id and !$text ){
		ed();
	
	} else if(! $feed = $_REQUEST['feed'] ){
		ed();
		
	} else {
		
		if(! strstr( $feed, '(' ) ){
			$feed = str_dec($feed);
		}

		if( substr($feed,-2) == '()' ){
			$func = substr($feed,0,-2);
			if(! function_exists($func) ){
				ed();	
			} else {
				return $func( ( $id ? $id : $text ) );				
			}

		}

		$feed_arr = explode( '/', $feed );
		$feed = trim($feed_arr[0]);
		$feed_where = trim($feed_arr[1]);

		$feed = str_replace( ['(',')','[',']'], ' ', $feed);
		$feed = explode(' ', $feed);
		

		$feed_table = $feed[0];
		$feed_table = mb_ereg_replace('[^A-Za-z0-9\_]+','',$feed_table);
		
		$feed_title_column = $feed[1];
		$feed_title_column = mb_ereg_replace('[^A-Za-z0-9\_]+','',$feed_title_column);
		
		$feed_id_column = $feed[3];
		$feed_id_column = mb_ereg_replace('[^A-Za-z0-9\_]+','',$feed_id_column);


		if( $feed_where ){
			$feed_where_arr = explode(';', $feed_where );
			if( sizeof($feed_where_arr) ){
				foreach( $feed_where_arr as $i => $feed_where_this ){
					$fwta = explode(':', $feed_where_this );
					$fwta_column = $fwta[0];
					$fwta_value = $fwta[1];
					$fwta_query.= " AND `$fwta_column`='$fwta_value' ";
				}
			}
		}

		if(! $list_limit = $_REQUEST['list_limit'] ){
			$list_limit = 15;
		}

		if( $id ){
			$extra_query = " AND `id`='$id' LIMIT 1 ";
		} else {
			$extra_query = " $fwta_query AND `$feed_title_column` LIKE '$text%' LIMIT $list_limit ";
		}

		if(! $rs = dbq(" SELECT * FROM `$feed_table` WHERE 1 $extra_query ") ){
			e();

		} else if(! dbn($rs) ){
			// e();

		} else if( $id ){
			echo dbr( $rs, 0, $feed_title_column );

		} else while( $rw = dbf($rs) ){
			echo "<div ".( $notfirst ? '' : 'class="hover"' )." the_id=\"".$rw[ $feed_id_column ]."\">".$rw[ $feed_title_column ]."</div>";
			$notfirst = true;
		}

	}

}

