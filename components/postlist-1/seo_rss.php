<?

$GLOBALS['seo_rss']['post'] = array( 
	
	"query" => " SELECT *, `date_created` as `date` FROM `post` WHERE 1 ORDER BY `date_created` DESC LIMIT 100 ",
	
	"link" => 'postlist_link( $rw )'
	
);
	

