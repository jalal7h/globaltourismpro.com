<?

# jalal7h@gmail.com
# 2016/00/00
# 1.0

$GLOBALS['cmp']['mg_transfer_mg'] = 'Transfers';
$GLOBALS['cmp-icon']['mg_transfer_mg'] = '1b2';

function mg_transfer_mg(){

	listmaker_tabmenu([
		
		__FUNCTION__.'_list' => "List of ".lmtc('mg_transfer')[1],
		__FUNCTION__.'_form' => "New ".lmtc('mg_transfer')[0],
		"cat_mg&l=transferType" => cat_detail('transferType')['name'],
		"cat_mg&l=transferBasis" => cat_detail('transferBasis')['name'],
		
	], "./?page=admin&cp=".$_REQUEST['cp'] );

}

