<?

# jalal7h@gmail.com
# 2017/05/09
# 1.2

function transfer_mg_saveEdit(){

	#
	# update the database
	$id = dbs( 'mg_transfer', ['name','position_id','transferBasis_id','drivernumber','tariff','date_from','date_to','deathline','reservation','itinerary','conditions','notes'], ['id'] );

	# 
	# set kword
	kwordusage_set( $_REQUEST['kword'], "mg_transfer", $id );

    #
    # set price
    mg_priceform_save( 'mg_transfer:' . $id );

	#
	# take care of files
	listmaker_fileupload( 'mg_transfer', $id );
	#

}



