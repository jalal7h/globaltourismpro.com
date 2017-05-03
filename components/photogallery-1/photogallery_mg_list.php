<?php

# jalal7h@gmail.com
# 2017/05/02
# 1.0

function photogallery_mg_list(){
	
	#
	# actions
	switch ($_REQUEST['do']) {

		case 'form':
			return photogallery_mg_list_form();
				
		case 'saveNew':
			photogallery_mg_list_saveNew();
			break;

		case 'saveEdit':
			photogallery_mg_list_saveEdit();
			break;

		case 'flag':
			listmaker_flag( 'photogallery' );
			break;

		case 'remove':
			dbrm( 'photogallery' );
			break;
	}

	#
	# the list
	# --------------------------------------------
	$list = [
		'head' => __('گالری تصاویر'),
		'table' => 'photogallery',
		'order' => [ 'id' => 'desc' ], // default: asc. default: prio, date_updated, date_created, date
		'limit' => 10,
		'url' => [
			'base' => '_URL."/?page=admin&cp=".$_REQUEST["cp"]."&func=".$_REQUEST["func"]', // *
			'target' => true,
			'add' => true,
			'remove' => true,
			'flag' => true,
		],
		'item' => [
			[ 'picture'=>'$rw["image"]' ],
		],
	];
	
	if( photogallery_name === true ){
		$additional_items[] = [ '$rw["name"]' ];
		$list['search'][] = 'name';
	}
	if( photogallery_desc === true ){
		$list['search'][] = 'desc';
	}
	if( photogallery_cat === true ){
		$additional_items[] = [ 'cat_translate($rw["cat"])' ];
		$list['filter']['cat'] = [ cat_detail('photogallery')['name'], cat_display('photogallery') ];
	}

	if( sizeof($additional_items) ){
		$list['item'] = array_merge( $list['item'], $additional_items );
	}

	if( photogallery_name!==true and photogallery_desc!==true and photogallery_cat!==true ){
		$list['url']['target'] = false;
		$list['item'] = array_merge( $list['item'], [ '"..."' ] );
	}

	echo listmaker_list( $list );

	# --------------------------------------------

}

