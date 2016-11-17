<?
$GLOBALS['cmp']['nl_mg'] = 'خبرنامه';

function nl_mg(){

	$url = "./?page=admin&cp=".$_REQUEST['cp'];
	$menu = array(
		__FUNCTION__."_send_form" => __("ارسال خبرنامه"),
		__FUNCTION__."_emailList" => __("لیست ایمیل ها"),
	);
	
	listmaker_tabmenu($menu,$url);

}

