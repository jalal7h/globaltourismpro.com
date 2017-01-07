<?

# jalal7h@gmail.com
# 2016/12/26
# 1.0

$GLOBALS['cmp']['mg_dailytour_mg'] = 'Daily Tours';
$GLOBALS['cmp-icon']['mg_dailytour_mg'] = '0f2';

function mg_dailytour_mg(){

	listmaker_tabmenu([
		
		__FUNCTION__.'_list' => "List of ".lmtc('mg_dailytour')[1],
		"cat_mg&l=serviceBasis" => cat_detail('serviceBasis')['name'],
		"cat_mg&l=departs" => cat_detail('departs')['name'],
		"cat_mg&l=guidingLanguages" => cat_detail('guidingLanguages')['name'],
		
	], "./?page=admin&cp=".$_REQUEST['cp'] );

}

