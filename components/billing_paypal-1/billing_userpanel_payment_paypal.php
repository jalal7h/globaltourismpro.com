<?

# jalal7h@gmail.com
# 2017/05/07
# 1.0

$GLOBALS['billing_method']['paypal'] = 'Paypal';

function billing_userpanel_payment_paypal( $invoice_id ){
	
	if(! $rw_invoice = table("billing_invoice", $invoice_id) ){
		e();

	} else {
		switch ($_REQUEST['bp_do']) {

			case 'verify':
				// bpProcess();
				break;
			
			default:
				echo convbox( __('درحال انتقال به درگاه بانک ..') );
				$_REQUEST['ACT'] = "CREATE_FORM";
				$_REQUEST['Amount'] = $rw_invoice['cost'];
				$_REQUEST['invoice_id'] = $invoice_id;
				$_REQUEST['memo'] = $rw_invoice['cost'];
				// bpPayRequest();
				break;
		}
	}
}

