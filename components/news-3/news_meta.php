<?

# jalal7h@gmail.com
# 2016/11/17
# 1.0

# title / kw / desc
# echo news_meta('kw');

function news_meta( $type ){

	if(! $id = $_REQUEST['id'] ){
		e();

	} else if(! $rw = table("news", $id) ){
		e();

	} else {

		switch ( $type ) {

			case 'title':
				return $rw['name'];
			
			case 'kw':
				return $rw['tag'];
			
			case 'desc':
				$desc = $rw['text'];
				$desc = strip_tags( $desc );
				$desc = sub_string( $desc, 0, 1000 );
				$desc = trim( $desc );
				return $desc;
				
		}
		
	}

}









