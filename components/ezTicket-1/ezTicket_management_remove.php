<?

function ezTicket_management_remove(){
	
	if(! $id = $_REQUEST['id'] ){
		e();
	
	} else if(! dbq(" DELETE FROM `ezticket_reply` WHERE `tid`='$id' ") ){
		e();
	
	} else if(! dbrm("ezticket_ticket") ){
		e();
	
	} else {
		return true;
	}

}
