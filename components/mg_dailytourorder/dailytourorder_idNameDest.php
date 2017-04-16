<?php

# jalal7h@gmail.com
# 2017/04/15
# 1.0

function dailytourorder_idNameDest( $rw_dailytour_order ){

	$rw_dailytour = table( 'mg_dailytour', $rw_dailytour_order['dailytour_id'] );

	$city = position_translate( $rw_dailytour['position_id'] );
	$country = position_get_parent( $rw_dailytour['position_id'] )['name'];
	$position = strtoupper($country)." | ".strtoupper($city);

	$rw_dailytour['name'] = str_summary( $rw_dailytour['name'], 60 );

	return "
	<div class=\"text\">
		<div class=\"code\">Booking ID: ".$rw_dailytour_order['code']."</div>
		<a target=\"_blank\" href=\"".dailytour_link($rw_dailytour)."\" class=\"name\">".$rw_dailytour['name']."</a>
		<div class=\"position\"><span class=\"location\">".$position."</span> with <span title=\"".lmtc('mg_dailytour_order:leader_name')."\" class=\"leader\">".$rw_dailytour_order['leader_name']."</span></div>
	</div>";

}
