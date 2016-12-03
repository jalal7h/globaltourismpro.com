<?

# taghipoor.meysam@gmail.com
# 2016/11/27
# 1.0

function news_list_sharing( $rw ){
	
	$link = news_link($rw);
    
	$share = seo_share( '18' , $link );
	
	return $share;
}

