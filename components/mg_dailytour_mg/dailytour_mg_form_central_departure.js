
jQuery(document).ready(function($) {	

	$('#lmfe_forma5d624_departure_central_flag').on('change', function(){

		if( $(this).is(':checked') ){
			$('.dailytour_mg_form .departure_central').show('fast');

		} else {
			$('.dailytour_mg_form .departure_central').hide('fast');
		}

	});
});

