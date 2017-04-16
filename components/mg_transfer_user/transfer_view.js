/*print*/

jQuery(document).ready(function($) {
	
	var tdir = $('.transfer_view .direction input');
	tdir.on('click', function(){
		
		direction = $(this).val();
		
		switch (direction) {

			case 'arrival':
				da.prop('disabled',false);
				da.show();
				da.prev().show();
				da_is = true;
				dd.prop('disabled',true);
				dd.hide();
				dd.prev().hide();
				dd_is = false;
				break;

			case 'departure':
				da.prop('disabled',true);
				da.hide();
				da.prev().hide();
				da_is = false;
				dd.prop('disabled',false);
				dd.show();
				dd.prev().show();
				dd_is = true;
				break;

			default:
				da.prop('disabled',false);
				da.show();
				da.prev().show();
				da_is = true;
				dd.prop('disabled',false);
				dd.show();
				dd.prev().show();
				dd_is = true;
				break;
		}

	});

	///////////////////////////////////////////////////////////
	var date_from = $('.transfer_view').attr('date_from');
	var date_to = $('.transfer_view').attr('date_to');
	date_numb = 1;
	if( date_from.substr(0,7) != date_to.substr(0,7) ){
		date_numb++;
	}

	date_from = str_replace( '-', '/', date_from );
	date_to = str_replace( '-', '/', date_to );

	var da = $('.transfer_view .orderbox .date_arrival');
	var dd = $('.transfer_view .orderbox .date_departure');
	da_is = true;
	dd_is = true;

	da.datepicker({
        dateFormat: 'yy/mm/dd',
        minDate: date_from,
        maxDate: date_to,
		numberOfMonths: date_numb,
		onSelect: function (dateStr) {
			if( dd_is ){
				dd.datepicker( "option", "minDate", da.datepicker("getDate") );
			}
		}
    });
    dd.datepicker({
        dateFormat: 'yy/mm/dd',
        minDate: date_from,
        maxDate: date_to,
		numberOfMonths: date_numb,
		onSelect: function (dateStr) {
			//            
		}
    });

});