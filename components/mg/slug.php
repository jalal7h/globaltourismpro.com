<?php

# jalal7h@gmail.com
# 2017/01/30
# 1.0

add_slug([



	# list of transfers
	'transfer/$/$/$/$' => _URL.'/?page=14&do=mg_dashboard&do2=transfer_list&service=transfer&p=$1&position_id=$2&date_from=$3&date_to=$4',
	# page/pos
	'transfer/$/$' => _URL.'/?page=14&do=mg_dashboard&do2=transfer_list&service=transfer&p=$1&position_id=$2',
	# page
	'transfer/$' => _URL.'/?page=14&do=mg_dashboard&do2=transfer_list&service=transfer&p=$1',
	'transfer' => _URL.'/?page=14&do=mg_dashboard&do2=transfer_list&service=transfer',

	# single page for transfer
	'transfer_detail/$/$/$-$' => _URL.'/?page=14&do=mg_dashboard&do2=transfer&date_from=$1&date_to=$2&id=$3',
	'transfer_detail/$-$' => _URL.'/?page=14&do=mg_dashboard&do2=transfer&id=$1',

	# order dailytour
	'transfer_order' => _URL.'/?page=14&do=mg_dashboard&do2=transfer_order',

	# confirm dailytour request
	'transfer_confirm' => _URL.'/?page=14&do=mg_dashboard&do2=transfer_confirm',



	# list of dailytours
	# page/pos/from/to
	'dailytour/$/$/$/$' => _URL.'/?page=14&do=mg_dashboard&do2=dailytour_list&service=dailytour&p=$1&position_id=$2&date_from=$3&date_to=$4',
	# page/pos
	'dailytour/$/$' => _URL.'/?page=14&do=mg_dashboard&do2=dailytour_list&service=dailytour&p=$1&position_id=$2',
	# page
	'dailytour/$' => _URL.'/?page=14&do=mg_dashboard&do2=dailytour_list&service=dailytour&p=$1',
	'dailytour' => _URL.'/?page=14&do=mg_dashboard&do2=dailytour_list&service=dailytour',
	
	# single page for dailytour
	# from/to/id
	'dailytour_detail/$/$/$-$' => _URL.'/?page=14&do=mg_dashboard&do2=dailytour&date_from=$1&date_to=$2&id=$3',
	'dailytour_detail/$-$' => _URL.'/?page=14&do=mg_dashboard&do2=dailytour&id=$1',

	# order dailytour
	'dailytour_order' => _URL.'/?page=14&do=mg_dashboard&do2=dailytour_order',

	# confirm dailytour request
	'dailytour_confirm' => _URL.'/?page=14&do=mg_dashboard&do2=dailytour_confirm',



]);




