
jQuery(document).ready(function($) {
	
	$('.dailytour_order #terms_n_conditions').on('click', function(e){
		var sb = $('.dailytour_order input[type="submit"]');
		
		if( sb.prop('disabled') == true ){
			sb.prop('disabled',false);
		} else {
			sb.prop('disabled',true);
		}
	});

});

