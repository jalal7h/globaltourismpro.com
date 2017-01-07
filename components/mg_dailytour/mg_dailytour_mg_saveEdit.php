<?

# jalal7h@gmail.com
# 2016/12/26
# 1.0

function mg_dailytour_mg_saveEdit(){

	#
	# update the database
	$id = dbs( 'mg_dailytour', ['name','position_id','serviceBasis_id','departs_id','duration','itinerary','inclusions','conditions','notes','date_start','date_end','departure_central_flag','departure_central_point','departure_central_time'], ['id'] );
	#

	mg_price( 'mg_dailytour', $id, $_REQUEST['price'] );

	#
	# take care of files
	listmaker_fileupload( 'mg_dailytour', $id );
	#
	
}



