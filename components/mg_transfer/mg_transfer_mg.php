<?

# jalal7h@gmail.com
# 2016/12/26
# 1.0

$GLOBALS['cmp']['mg_transfer_mg'] = 'Transfers';
$GLOBALS['cmp-icon']['mg_transfer_mg'] = '1ba';

function mg_transfer_mg(){

	listmaker_tabmenu([
		
		__FUNCTION__.'_list' => "List of ".lmtc('mg_transfer')[1],
		"cat_mg&l=transferType" => cat_detail('transferType')['name'],
		"cat_mg&l=transferBasis" => cat_detail('transferBasis')['name'],
		
	], "./?page=admin&cp=".$_REQUEST['cp'] );

}

