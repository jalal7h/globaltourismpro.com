/*footer*/
/*index*/

jQuery(document).ready(function($) {
    
    dd = $('.mg_searchbox > div.date');
    df = dd.find('input[name="date_from"]');
    dt = dd.find('input[name="date_to"]');
    dr = dd.find('input[name="date_result"]');

    if( dt.val() == '' ){
        dt.prop('disabled', true);
    }

    df.datepicker({
        dateFormat: 'yy/mm/dd',
        minDate: 0,
        maxDate: '+1Y+6M',
        onSelect: function (dateStr) {
            dt.prop('disabled', false);
            var min = $(this).datepicker('getDate'); // Get selected date
            dt.datepicker('option', 'minDate', min || '0'); // Set other min, default to today
        }
    });

    dt.datepicker({
        dateFormat: 'yy/mm/dd',
        minDate: '0',
        // maxDate: '+1Y+6M',
        // maxDate:'+30D',
        numberOfMonths: 2,
        onSelect: function (dateStr) {
            var max = $(this).datepicker('getDate'); // Get selected date
            $('#datepicker').datepicker('option', 'maxDate', max || '+1Y+6M'); // Set other max, default to +18 months
            var start = df.datepicker("getDate");
            var end = dt.datepicker("getDate");
            var days = (end - start) / (1000 * 60 * 60 * 24);
            dr.val(days);
        }
    });

});
