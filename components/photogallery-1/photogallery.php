<?php

# jalal7h@gmail.com
# 2017/05/03
# 1.0

add_layer( 'photogallery', 'گالری تصاویر', 'center', $repeat='0' );

function photogallery( $rw_pl ){
	
	foreach( table('photogallery', [], [ 'id'=>'desc' ] ) as $rw ){
		$images[] = $rw['image'];
	}

	$content = template_engine( 'photogallery', [ 'images'=>$images ] );

	layout_post_box( $rw_pl['name'], $content, $allow_eval=false, $framed=1 );

}

