<?

# taghipoor.meysam@gmail.com
# 2016/11/27
# 1.0

function news_display_sharing( $rw ){
	
	$link = news_link($rw);
    
	$socials = seo_share_link( $link , $rw['name'] );
	
	if( $socials ){
		$socials = '
		<div class="socials">
			'.$socials.'
		</div>';
	}
		
	$c.= '
	<div class="sharing2">
		
		<!-- socials -->
		'.$socials.'
	</div>';

	return $c;
}

