<?php

# jalal7h@gmail.com
# 2017/05/25
# 1.0

function visa_invoiceLink( $visa_id ){
	
	$rw_invoice = billing_invoiceDetail_byOrderDetail( "mg_visa", $visa_id );
	return billing_invoiceLink( $rw_invoice['id'] );

}

