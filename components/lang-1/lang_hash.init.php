<?

# jalal7h@gmail.com
# 2016/11/14
# 1.1

define( lang_hash_length , 8 );

function lang_hash( $the_key ){

	$the_key = trim( $the_key );
	$the_key = nl2br($the_key);
	
	$md5 = md5x( $the_key, lang_hash_length );

	return 	$md5;

}



