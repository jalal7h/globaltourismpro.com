<?php

# jalal7h@gmail.com
# 2017/05/21
# 1.1

function transferorder_idNameDest( $rw_transfer_order ){

	$rw_transfer = table( 'mg_transfer*', $rw_transfer_order['transfer_id'] );
	$hide = $rw_transfer['hide'];

	$city = position_translate( $rw_transfer['position_id'] );
	$country = position_get_parent( $rw_transfer['position_id'] )['name'];
	$position = strtoupper($country)." | ".strtoupper($city);

	$rw_transfer['name'] = str_summary( $rw_transfer['name'], 60 );

	return "
	<div class=\"text\">
		<div class=\"code\">Booking ID: ".$rw_transfer_order['code']."</div>
		<a target=\"_blank\" ".( $hide ? '' : "href=\"".transfer_link($rw_transfer)."\"" )." class=\"name\">".$rw_transfer['name'].( $hide ? ' <i>(removed)</i>' : '' )."</a>
		<div class=\"position\"><span class=\"location\">".$position."</span> with <span title=\"".lmtc('mg_transfer_order:leader_name')."\" class=\"leader\">".$rw_transfer_order['leader_name']."</span></div>
	</div>";

}
