<?php

# jalal7h@gmail.com
# 2017/05/24
# 1.0

function mg_visa_orderSettle( $visa_id ){
	
	// client pul ro rikht
	// modir baiad az in mozu motale beshe
	// client ham baiad taid begire k sefareshesh pardakht khorde

	echo convbox( '<a href="'.visa_user_link( $visa_id ).'" >Back to VISA</a>' );

	dg( __FUNCTION__ . ' settle of ' . $visa_id );

}

