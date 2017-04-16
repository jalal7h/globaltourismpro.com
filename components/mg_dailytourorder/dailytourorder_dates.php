<?php

# jalal7h@gmail.com
# 2017/04/16
# 1.0

function dailytourorder_dates( $rw ){

	return "Book Date : " . substr(UDate($rw["date_created"]),0,10) . "<br>" .
		"Service Date : " . $rw["date"];

}

