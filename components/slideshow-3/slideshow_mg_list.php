<?php

# jalal7h@gmail.com
# 2017/01/06
# 1.0

function slideshow_mg_list(){
	
	# --------------------------------------------
	echo listmaker_list([
		'head' => __('لیست %%', [ lmtc('slideshow')[1] ] ),
		'table' => 'slideshow',
		'order' => [ 'id' => 'desc' ],
		'limit' => 10,
		'url' => [
			'base' => '_URL."/?page=admin&cp='.$_REQUEST['cp'].'"', // *
			'target' => '_URL."/admin/slideshow/edit/".$rw["id"]',
			'add' => '_URL."/admin/slideshow/new"',
			'remove' => true,
			'flag' => true,	
		],
		'item' => [
			[ "head"=>lmtc($table.":image") , "tag"=>"th", "picture" => '_URL."/".$rw["image"]' ] ,
			[ "head"=>lmtc($table.":name"), '$rw["name"]' ] ,
		],
		'search' => [ 'name', 'desc' ],
	]);
	# --------------------------------------------

}

