<?php

# jalal7h@gmail.com
# 2017/06/16
# 1.0

function tket_view_post( $rw ){
	
	$rw['user_name'] = user_detail( $rw['user_id'] )['name'];
	$rw['user_avatar'] = is_component('useravatar') ? useravatar( $rw['user_id'] ) : '';
	$rw['user_type'] = is_adminUser($rw['user_id']) ? 'admin' : 'user';

	$post = (object) $rw;
	return template_engine( 'tket_view_post', [ 'post'=>$post ] );

}

