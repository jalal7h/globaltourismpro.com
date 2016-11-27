<?

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

