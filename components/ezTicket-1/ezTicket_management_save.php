<?

function ezTicket_management_save(){

	$date = U();
	
	if(! $text = $_REQUEST['text'] ){
		ed();

	} else if(! $tid = $_REQUEST['id'] ){
		e();
		return false;
	
	} else {
		// old
		dbs('ezticket_ticket', ['date'=>$date, 'archived'=>'1','view_by_user'=>'0'], ['id'] );
		dbs('ezticket_reply', ['tid'=>$tid,'text','date'=>$date] );
	}

}

