<?php

# jalal7h@gmail.com
# 2017/06/18
# 1.0

# ticketbox_user_saveNew -> ticketbox_CreateNew_byUser
# ticketbox_mg_saveNew -> ticketbox_CreateNew_byAdmin

function ticketbox_CreateNew_trailerTask( $list, $rw_tket ){
	
	$vars['ticket_id'] = $rw_tket['id'];
	$vars['ticket_name'] = $rw_tket['name'];
	$vars['ticket_link'] = ticketbox_link( $rw_tket );
	$vars['ticket_adminlink'] = ticketbox_mg_link( $rw_tket );

	if(! $vars['ticket_cat'] = cat_translate($rw_tket['cat']) ){
		$vars['ticket_cat'] = __('نامشخص');
	}

	$foreign_id = tket_foreignList($rw_tket)[0];


	if( is_admin() ){
		$vars['user_name'] = user_detail($foreign_id)['name'];
		echo texty( 'ticketbox_CreateNew_byAdmin', $vars, [ 0, $foreign_id ] );

	} else {
		echo texty( 'ticketbox_CreateNew_byUser', $vars, [ who_logged(), 0 ] );
	}

}

