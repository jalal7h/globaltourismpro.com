<?

function billing_management_user_activity( $user_id ){
	
	if(! $rw = table("user", $user_id) ){
		e();
	
	} else {
		echo "
		<div class='billing_management_user_activity' >
			<div class='name' >
				<span>".__("نام")." : </span>
				<span>".$rw['name']." &lt;".$rw['username']."&gt;</span>
			</div>
			<div class='credit' >
				<span>".__("اعتبار")." : </span>
				<span>".billing_format( billing_userCredit($user_id) )."</span>
			</div>
		</div>";
	}

}

