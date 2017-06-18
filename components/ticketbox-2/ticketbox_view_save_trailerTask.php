<?php

# jalal7h@gmail.com
# 2017/06/18
# 1.0

# ticketbox_view_save_byUser
# ticketbox_view_save_byAdmin

function ticketbox_view_save_trailerTask( $list, $rw_tket ){

	$vars['ticket_id'] = $rw_tket['id'];
	$vars['ticket_name'] = $rw_tket['name'];
	$vars['ticket_link'] = ticketbox_link( $rw_tket );
	$vars['ticket_adminlink'] = ticketbox_mg_link( $rw_tket );

	$foreign_id = tket_foreignList($rw_tket)[0];

	if( is_admin() ){
		texty( "ticketbox_view_save_byAdmin", $vars, [ 0, $foreign_id ] );

	} else {
		texty( "ticketbox_view_save_byUser", $vars, [ who_logged(), 0 ] );
	}

}

