<?php

# jalal7h@gmail.com
# 2017/01/00
# 1.0

function dailytour_top(){
	
	if(! $list = table('mg_dailytour', ['flag'=>1], ['top_flag'=>'desc','id'=>'desc'], 4 ) ){
		e();

	} else {

		#
		# clean up the list
		foreach ($list as $i => $rw) {
			
			$rw['image'] = dailytour_image($rw['id'],"600x400")[0];
			$rw['link'] = dailytour_link($rw);
			$rw['inclusions'] = strip_tags($rw['inclusions']);
			$rw['inclusions'] = mb_substr( $rw['inclusions'] , 0, 200 );

			$list[$i] = $rw;
		}

		#
		# template export
		echo template_engine( 'dailytour_top', [ 'list'=>$list ] );

	}

}

