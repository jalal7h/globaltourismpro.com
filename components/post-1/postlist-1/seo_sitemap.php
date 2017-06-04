<?

$GLOBALS['seo_sitemap']['post'] = array( 
	
	"query" => " SELECT *, `date_created` as `date` FROM `post` WHERE 1 ORDER BY `date_created` ASC ",
	"link" => 'postlist_link( $rw )'
	
);
	
