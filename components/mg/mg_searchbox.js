/*footer*/
/*index*/

jQuery(document).ready(function($) {
	
	$('form.mg_searchbox').on('submit', function(e){

		rd = $(this).find('input[type="radio"]:checked').val();
		
		// service not selected	
		if( typeof rd === typeof undefined ){
			alert('Please at first select a service');
			$(this).find('input[type="radio"]:nth-child(1)').focus();

		} else if( $(this).find('input[name="position_id"]').val() == '' ){
			alert('Please find a destionation for your service.');
			$(this).find('input[type="richbox"]').focus();
		
		} else {
			srv = mg_searchbox.service.value
			pos = mg_searchbox.position_id.value
			dfr = mg_searchbox.date_from.value
			dfr = str_replace('/', '-', dfr)
			dto = mg_searchbox.date_to.value
			dto = str_replace('/', '-', dto)
			pg = 0
			the_url = _URL+'/'+srv+'/'+pg+'/'+pos+'/'+dfr+'/'+dto
			location.href = the_url;
		}
		
		e.preventDefault();
		return false;

	});

});

