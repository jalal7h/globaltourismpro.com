<?

$GLOBALS['cmp']['ezTicket_management'] = 'تیکت های پشتیبانی';
$GLOBALS['cmp-icon']['ezTicket_management'] = '0e6';

function ezTicket_management(){
	
	switch($_REQUEST['do']){
		case 'ezTicket_management_save':
			ezTicket_management_save();
			break;
	}

	$url = "./?page=admin&cp=".$_REQUEST['cp'];
	$menu = array(
		$_REQUEST['cp']."_waiting" => __("تیکت های منتظر پاسخ") ,
		$_REQUEST['cp']."_archive" => __("آرشیو تیکت ها") ,
	);

	listmaker_tabmenu( $menu , $url );

}

