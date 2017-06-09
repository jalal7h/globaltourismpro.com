<?

# jalal7h@gmail.com
# 2017/06/08
# 1.2

$GLOBALS['billing_method']['paypal'] = 'Paypal';

function billing_userpanel_payment_paypal( $invoice_id ){
	
	if(! $rw_invoice = table("billing_invoice", $invoice_id) ){
		e();

	} else switch( $_REQUEST['do3'] ){
		
		case 'verify':
			return billing_userpanel_payment_paypal_verify($rw_invoice);
			
		default:
			return billing_userpanel_payment_paypal_redirect($rw_invoice);

	}

	return false;

}

