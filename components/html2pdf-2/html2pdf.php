<?

# jalal7h@gmail.com
# 2017/04/30
# 1.0

add_action('html2pdf');

function html2pdf(){ 

	$apikey = 'b79a34d0-3943-4f09-afa4-d374f688296a';

	if(! $url = urldecode($_REQUEST['url']) ){
		e();

	} else {
		
		if( substr($url,0,4) != 'http' ){
			$url = _URL .'/'. $url;
		}
		
		// a url starting with http or an HTML string.  see example #5 if you have a long HTML string
		$url = "http://api.html2pdfrocket.com/pdf?apikey=".urlencode($apikey)."&value=".urlencode($url);

		header("Content-type:application/pdf");
		echo file_get_contents( $url );

	}

}





