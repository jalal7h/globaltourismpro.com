
jQuery(document).ready(function($) {
	
	$('.transfer_order #terms_n_conditions').on('click', function(e){
		var sb = $('.transfer_order input[type="submit"]');
		
		if( sb.prop('disabled') == true ){
			sb.prop('disabled',false);
		} else {
			sb.prop('disabled',true);
		}
	});

});

