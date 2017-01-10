<?

# jalal7h@gmail.com
# 2016/12/24
# 1.0

function mg_transfer_mg_saveEdit(){

	#
	# update the database
	$id = dbs( 'mg_transfer', ['name','position_id','transferBasis_id','tariff','vehicle_id','date_start','date_end','itinerary','conditions','notes'], ['id'] );
	#

	mg_price( 'mg_transfer', $id, $_REQUEST['price'] );

	#
	# take care of files
	listmaker_fileupload( 'mg_transfer', $id );
	#

}



