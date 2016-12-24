<?

# jalal7h@gmail.com
# 2016/00/00
# 1.0

$GLOBALS['cmp']['mgDailytour_mg'] = 'Daily Tours';
$GLOBALS['cmp-icon']['mgDailytour_mg'] = '1b2';

function mgDailytour_mg(){

	listmaker_tabmenu([
		
		__FUNCTION__.'_list' => "List of ".lmtc('mg_dailytour')[1],
		__FUNCTION__.'_form' => "New ".lmtc('mg_dailytour')[0],
		"cat_mg&l=serviceBasis" => cat_detail('serviceBasis')['name'],
		"cat_mg&l=depart" => cat_detail('depart')['name'],
		"cat_mg&l=guidingLanguages" => cat_detail('guidingLanguages')['name'],
		
	], "./?page=admin&cp=".$_REQUEST['cp'] );

}

