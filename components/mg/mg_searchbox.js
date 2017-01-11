/*footer*/
/*index*/

jQuery(document).ready(function($) {
	
	$('form.mg_searchbox').on('submit', function(e){

		rd = $(this).find('input[type="radio"]:checked').val();
		
		// service not selected	
		if( typeof rd === typeof undefined ){
			alert('Please at first select a service');
			$(this).find('input[type="radio"]:nth-child(1)').focus();

		} else if( $(this).find('input[name="city"]').val() == '' ){
			alert('Please find a destionation for your service.');
			$(this).find('input[type="richbox"]').focus();
		
		} else {
			return true;
		}
		
		e.preventDefault();
		return false;
	});

});

