<?

# jalal7h@gmail.com
# 2017/01/22
# 1.0

add_component( 'transfer_mg', 'Transfers', '018' );

function transfer_mg(){

	listmaker_tabmenu([
		
		'transfer_mg_list' => "List of ".lmtc('mg_transfer')[1],
		"cat_mg&l=transferType" => cat_detail('transferType')['name'],
		"cat_mg&l=transferBasis" => cat_detail('transferBasis')['name'],
		
	], _URL."/?page=admin&cp=".$_REQUEST['cp'] );

}

