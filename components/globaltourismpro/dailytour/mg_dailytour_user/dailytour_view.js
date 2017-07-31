/*index*/

jQuery(document).ready(function($) {
	
	if( $('.dailytour_view').length ){

		$('.dailytour_view .orderbox').on('submit', function(e){
			
			count_of_filled_select = 0;

			$(this).find('select.order_item').each(function(index, el) {
				if( $(this).val() != '' ){
					count_of_filled_select++;
				}
			});
			
			if( count_of_filled_select == 0 ){
				e.preventDefault();
				return false;
			}

		});

		var date_from = $('.dailytour_view').attr('date_from');
		var date_to = $('.dailytour_view').attr('date_to');
		date_numb = 1;
		if( date_from.substr(0,7) != date_to.substr(0,7) ){
			date_numb++;
		}

		date_from = str_replace( '-', '/', date_from );
		date_to = str_replace( '-', '/', date_to );
		
		$('.dailytour_view .orderbox .date').datepicker({
	        dateFormat: 'yy/mm/dd',
	        minDate: date_from,
	        maxDate: date_to,
			numberOfMonths: date_numb,
	    });

	}

});


