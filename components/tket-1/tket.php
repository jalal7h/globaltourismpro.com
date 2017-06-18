<?php

# jalal7h@gmail.com
# 2017/06/18
# 1.1

/*
tket([

	'type'		=> 'support',
	'cat_name'	=> 'ticketboxCat',
	'user_list'	=> [ 11, 2 ] / 11 / ':12:3432:1:'
	'cat'		=> 1239,
	'table_name'=> 'item',
	'table_id'	=>	3984921,

	'limit'		=> '10',

	'remove'	=> true,
	'modify'	=> true,
	'add'		=> true,
	'done'		=> true,


]);
*/

function tket( $list ){
	
	if(! $type = $list['type'] ){
		e();

	} else if(! $user_list = $list['user_list'] ){
		e();

	} else {

		#
		# fix user list
		if( is_array($user_list) ){
			$user_list = ':'.implode(':', $user_list).':';
		
		} else if( is_numeric($user_list) ){
			$user_list = ':'.$user_list.':';
		}

		$where_set = [ 'type'=>$type, " `user_list` LIKE '%$user_list%' " ];

		if( $cat = $list['cat'] ){
			$where_set['cat'] = $cat;
		}
		if( $table_name = $list['table_name'] ){
			$where_set['table_name'] = $table_name;
			if( $table_id = $list['table_id'] ){
				$where_set['table_id'] = $table_id;
			}
		}

		if( $_REQUEST['done'] !== '' ){
			$where_set['done'] = intval($_REQUEST['done']);
			if( $where_set['done'] == 0 ){
				$list_of = 'live';
			} else {
				$list_of = 'closed';
			}
		} else {
			$list_of = 'both';
		}

		if(! $limit = $list['limit'] ){
			$limit = 10;
		}

		#
		# actions
		switch ($_REQUEST['tket_do']) {
			
			case 'remove':
				tket_Remove( $list );
				break;

			case 'view':
				return tket_View( $list );
			
			case 'form':
				return tket_Form( $list );
				
			case 'saveNew':
				tket_saveNew( $list );
				break;
				
			case 'saveEdit':
				tket_saveEdit( $list );
				break;
				
			case 'done':
				tket_Done( $list );
				break;
				
		}
		#

		
		if( $list['add'] ){
			$list['add'] = '"'.$list['base'].'&tket_do=form"';
		}
		if( $list['modify'] ){
			$list['modify'] = '"'.$list['base'].'&tket_do=form&tket_id=".$rw["id"]';
		}
		if( $list['remove'] ){
			$list['remove'] = '"'.$list['base'].'&tket_do=remove&tket_id=".$rw["id"]';
		}
		if( $list['done'] ){
			$list['done'] = '"'.$list['base'].'&tket_do=done&tket_id=".$rw["id"]';
		}

		#
		# filters
		$filters['done'] = [ '.. '.__('وضعیت').' ..' , [ 0=>__('باز'), 1=>__('بسته شده') ] ];
		if( $cat_name = $list['cat_name'] ){
			$filters['cat'] = [ '.. '.cat_detail($cat_name)['name'].' ..', cat_display($cat_name) ];
		}

		#
		# buttons
		if(! $list['done'] ){
			$buttons = [];
		
		} else {

			$buttons['back_from_archive'] = [
				'url'	=> $list['done'],
				'icon'	=> '00c',
				'name'	=> __('خروج از آرشیو'),
				'color'	=> 'gray',
				'confirm' => __('آیا مایل به خارج کردن این %% از آرشیو هستید؟', [ tket_name($type)[0] ]),
				'func'	=> 'tket_list_button_func_backFromArchive',
			];

			$buttons['move_to_archive'] = [
				'url'	=> $list['done'],
				'icon'	=> '00c',
				'name'	=> __('انتقال به آرشیو'),
				'color'	=> '#6c33b7',
				'confirm' => __('آیا مایل به انتقال این %% به آرشیو هستید؟', [ tket_name($type)[0] ]),
				'func'	=> 'tket_list_button_func_moveToArchive',
			];

		}


		#
		# list
		# --------------------------------------------
		echo listmaker_list([
			'head' => __('لیست %%', [ tket_name($type)[1] ] ),
			'table' => 'tket',
			'where' => $where_set,
			'order' => [ 'date_updated'=>'desc' ],
			'limit' => $limit,
			'url' => [
				'base' => '"'.$list['base'].'"',
				'target' => '"'.$list['base'].'&tket_do=view&id=".$rw["id"]',
				'add' => $list['add'] ,
				'modify' => $list['modify'],
				'remove' => $list['remove'],
			],
			'add_prompt' => __('%% جدید', [ tket_name($type)[0] ] ),
			'filter' => $filters,
			'button' => $buttons,
			'item' => [
				[ '"<div ".( tket_isNew($rw["id"]) ? "class=\"tket_isNew\"" : "" )." ><span>#".$rw["id"]."</span> ".$rw["name"]."</div>"', 'head'=>lmtc('tket:name') ],
				( is_admin() ? [ 'user_detail(tket_foreignList($rw)[0])["name"]', 'head'=>__('کاربر') ] : [] ),
				[ 'tket_replyStatus($rw)', 'head'=>__('وضعیت') ],
				[ 'UDateNClock( $rw["date_updated"] )', 'head'=>__('تاریخ') ],
			],
			'search' => [ 'name' ],
		]);
		# --------------------------------------------

	}

}

