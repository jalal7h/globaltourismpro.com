<?php

# jalal7h@gmail.com
# 2017/05/01
# 1.0

add_action('tallfooter_nl_save');

function tallfooter_nl_save(){
	
	if(! $email = $_REQUEST['email'] ){
		echo "<font color=\"orangered\">No email found!</font>";

	} else if(! is_email_correct_or_not($email) ){
		echo "<font color=\"orangered\">Invalid email address!</font>";

	} else if( table('newsletter', [ 'email'=>$email ] ) ){
		echo "<font color=\"yellow\">Already Exists!</font>";

	} else if(! dbs('newsletter', [ 'email'=>$email ] ) ){
		echo "<font color=\"orangered\">Something wrong!</font>";
	
	} else {
		echo "<font color=\"#3af766\">Saved!</font>";
	} 

}

