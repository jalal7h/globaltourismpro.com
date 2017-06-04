<?php

# jalal7h@gmail.com
# 2017/04/16
# 1.0

function transferorder_dates( $rw ){

	return "Book Date : " . substr(UDate($rw["date_created"]),0,10) . "<br>" .
		( $rw['date_arrival'] ? "Arrival Date : " . $rw["date_arrival"] . "<br>" : '' ) .
		( $rw["date_departure"] ? "Departure Date : " . $rw["date_departure"] . "<br>" : '' );

}

