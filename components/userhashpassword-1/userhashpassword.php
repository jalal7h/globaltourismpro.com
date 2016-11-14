<?

function userhashpassword( $password ){

	$password.= uhp_salt;
	$password = md5x( $password, 32 );

	return $password;

}

