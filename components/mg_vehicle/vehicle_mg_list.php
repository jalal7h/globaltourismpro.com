<?

# jalal7h@gmail.com
# 2017/01/22
# 1.1

function vehicle_mg_list(){

	# --------------------------------------------
	echo listmaker_list([
		'table' => 'mg_vehicle',
		'url' => [
			'base' => '_URL."/?page=admin&cp='.$_REQUEST['cp'].'"', // *
			'target' => '_URL."/admin/vehicle/edit/".$rw["id"]',
			'add' => '_URL."/admin/vehicle/new"',
			'remove' => true,
			'prio' => true,
			'flag' => true,
		],
		'item' => [
			[ '($rw[\'name\'])', "head"=>lmtc("mg_vehicle:name") ],
			[ '($rw[\'pax\'])', "head"=>lmtc("mg_vehicle:pax") ],
		],
		'search' => [ 'name' ],
		'sort' => 'mg_vehicle/admin',
	]);
	# --------------------------------------------
	
}



