<?php

# jalal7h@gmail.com
# 2017/06/02
# 1.0

function billing_userpanel_payment_paypal_verify( $rw_invoice ){
	
	// invoice variables
	$invoice_id = $rw_invoice['id'];
	$productPrice = $rw_invoice['cost'];

	if( $rw_invoice['transaction'] ){
        ed();
    }

	//Get payment information from PayPal
	$item_number = $_GET['item_number']; 
	$transaction = $_GET['tx'];
	$payment_gross = $_GET['amt'];
	$currency_code = $_GET['cc'];
	$payment_status = $_GET['st'];

	if( !empty($transaction) && $payment_gross == $productPrice ){
	    
	    //Check if payment data exists with the same TXN ID.
	    if(! $rw_s = table( 'billing_invoice', [ 'method'=>'paypal', 'transaction'=>$transaction ] ) ){
	    	billing_settle( $invoice_id , $transaction );
	    }

	}

}

