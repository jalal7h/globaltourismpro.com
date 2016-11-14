<?

function ezTicket_management_form(){
	
	if($id = $_REQUEST['id']){
		$rw = table("ezticket_ticket", $id);
	
	} else {
		return false;
	}

	echo "<form class='ezTicket_management_form' method='post' action='./?page=".$_REQUEST['page']."&cp=".$_REQUEST['cp']."&func=ezTicket_management_archive&do=ezTicket_management_save&id=".$id."' >
		<textarea class='text' name='text' placeholder='".lmtc('ezticket_reply:text')." ...' ></textarea>
		<input type='submit' value='".__('ثبت')."' />
	</form>";

	ezTicket_management_form_replies();
	
}

// http://127.0.0.1/PROJ/metan.ir/?page=admin&cp=ezTicket_management&func=ezTicket_management_waiting&do=ezTicket_management_form&id=1&p=0&dept=
