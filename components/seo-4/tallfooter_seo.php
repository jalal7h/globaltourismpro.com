<?

# jalal7h@gmail.com
# 2017/01/09
# 1.1

$GLOBALS['tallfooter_element']['seo'] = 'sitemap و rss';

function tallfooter_seo( $rw_tf ){

	$c = template_engine( 'tallfooter_seo', [ 'rss_array' => seo_rss_array() ] );

	$grid = $rw_tf['grid'] ? " grid".$rw_tf['grid'] : "";
	$c = "<div class=\"this".$grid." ".$rw_tf['type']."\" >" . $c . "</div>";

	return $c;

}


