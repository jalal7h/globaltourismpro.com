<?php

# jalal7h@gmail.com
# 2017/05/28
# 1.0

function visa_mg_approve(){
	
	if(! $id = intval($_REQUEST['id']) ){
		e();

	} else if(! $rw_visa = table( 'mg_visa', $id ) ){
		e();

	} else if( $rw_visa['done'] == 1 ){
		echo convbox( 'This visa request is already approved.', 'red' );

	} else {

		$f = fileupload_upload([ 'visa_file'=>'visa_file', 'id'=>$id, 'ext'=>'*' ]);

		if(! $visa_file = $f[0] ){
			e();

		} else if(! dbs( 'mg_visa', [ 'visa_file'=>$visa_file, 'done'=>1 ], [ 'id'=>$id ] ) ){
			e();

		} else {
			// echo texty( 'visa_mg_approve',  );
			echo convbox( 'The visa approved successfuly.', 'green' );
		}
	
	}

}

