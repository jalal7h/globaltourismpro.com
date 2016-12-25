<?
$GLOBALS['cmp']['mgvechicle_mg'] = 'مدیریت وسایل نقلیه';
$GLOBALS['cmp-icon']['mgvechicle_mg'] = '1b9';

function mgvechicle_mg(){

	listmaker_tabmenu([
		
		__FUNCTION__.'_list' => "لیست خودروها",
		__FUNCTION__.'_form' => "ثبت خودرو",
		
		
	], "./?page=admin&cp=".$_REQUEST['cp'] );

}