<?php

# jalal7h@gmail.com
# 2016/12/24
# 1.0

function transfer_mg_saveNew(){

    #
    # update the database
    $id = dbs( 'mg_transfer', ['name','position_id','transferBasis_id','tariff','vehicle_id','date_start','date_end','deathline','itinerary','conditions','notes','flag'=>1] );

	# 
	# set kword
	kwordusage_set( $_REQUEST['kword'], "mg_transfer", $id );

    #
    # set price
    mg_price( 'mg_transfer', $id, $_REQUEST['price'] );
    
    #
    # take care of files
    listmaker_fileupload( 'mg_transfer', $id );
    #

}


