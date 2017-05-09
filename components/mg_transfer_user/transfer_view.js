/*print*/

jQuery(document).ready(function($) {
	
	// 
	// adult_max
	$('.transfer_view select[name="vehicle"]').on('change', function(){
		t = $(this);
		am_w = $('.transfer_view div.adult_w');
		if( t.val() == '' ){
			am_w.html('');
		} else {
			adult_max = t.find(":selected").attr('adult_max');
			adult_html = '<select required name=\"adult\">';
			for( i=1; i<=adult_max; i++ ){
				adult_html+= '<option value="'+i+'">'+i+' Person(s)</option>';				
			}
			adult_html+= '</select>';
			am_w.html( adult_html );
		}

	});



	//
	// select the direction
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