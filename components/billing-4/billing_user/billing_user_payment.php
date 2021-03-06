<?

# jalal7h@gmail.com
# 2017/06/03
# 1.4

# action e form e pardakht
# form e pardakht

function billing_userpanel_payment(){

	# 
	# verify
	if(! $user_id = user_logged() ){
		die();
	}

	#
	# action switch
	switch($_REQUEST['do2']){
		
		case 'submit':
			return billing_userpanel_payment_submit();

		case 'redirect':
			return billing_userpanel_payment_redirectToMethod();
	}
	
	#
	# invoice id
	if( $invoice_id = $_REQUEST['invoice_id'] ){
		
		if(! $rw_invoice = table('billing_invoice', $invoice_id) ){
			e();
		
		} else {
			$order_id = $rw_invoice['order_id'];
			$order_table = $rw_invoice['order_table'];
			$cost = $rw_invoice['cost'];
		}

	}

	#
	# wallet png
	if( lang_code ){
		$png_name = 'billing_wallet-'.lang_code.'.png';
		if(! image_list( $png_name ) ){
			$png_name = 'billing_wallet-en.png';
		}
	}

	#
	# online methods
	asort($GLOBALS['billing_method']);

	foreach( $GLOBALS['billing_method'] as $method => $method_title ){
		
		if( $method == "wallet" ){
			continue;
		
		} else {
			$method_str.= "<div class='r'><label><input title='$method_title' type='radio' name='method' value='$method' /><img src='"._URL."/image_list/billing_".$method.".png'/>".($method=='wallet'?$wallet_credit:"")."</label></div>";
		}

	}


	# 
	# if its an invoice, wallet method is available
	if( $rw_invoice and $rw_invoice['order_table'] != '' ){
		$method_str.= "
			<div class='r'>
			<label>
			<input title='".__('کیف پول')."' type=radio name='method' value='wallet' />
			<img src='"._URL."/image_list/".$png_name."'/>
			<span class='wallet_credit'>".billing_format( billing_userCredit($user_id) )." ".__('اعتبار')."</span>
			</label>
			</div>";
	}

	$method_str.= "<input style=\"display:none;\" type=radio name='method' value='null' />";

	#
	# offline
	if( is_component('billing_offline') ){
		$method_str_offline = billing_userpanel_offline_form_listofpaymentmethods();
	}


	$content = "
	<script> var billing_userCredit='".billing_userCredit( $user_id )."';</script>
	<form method='post' action='"._URL."/?page=".$_REQUEST['page']."&do_slug=".$_REQUEST['do_slug']."&do2=submit".( $invoice_id ? "&invoice_id=".$invoice_id : "" )."' class='billing_userpanel_payment' name='blngpf'>
		<div class='text' >".__("نحوه پرداخت").":</div>
		<div class='method_list'>
			<h1>".__("آنلاین")."</h1>
			".$method_str."
			".$method_str_offline."
		</div>
		<div class='cost-container'>
			<span>".__("مبلغ قابل پرداخت")."</span>
			
			".( $cost 
				? '<span class="fixed_cost">'.billing_format($cost).'</span>'
				: '<input type="text" name="cost" class="numeric" id="billing_cost" value="'.$cost.'" /> &nbsp; '.billing_unit()['code']
			)."

			<input type=\"submit\" value=\"".__("پرداخت")."\" />

			".convbox( __('با کلیک روی پرداخت به درگاه بانک می روید<br/>شما می توانید پرداخت خود را با کلیه کارت عضو شتاب انجام دهید') )."

		</div>
		".token_make()."
	</form>
	";

	layout_post_box( __("شارژ حساب"), $content, $allow_eval=false, $framed=1 );

}




