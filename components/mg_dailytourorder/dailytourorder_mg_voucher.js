
jQuery(document).ready(function($) {
	$('.dailytourorder_mg_list a[name="booking_voucher"]').on('click', function(e){

		t = $(this);
		voucher_id = t.attr('href');

		hitbox( '<iframe src="'+_URL+'/voucher/dailytour/'+voucher_id+'"></iframe>' );

		e.preventDefault();
		return false;
	});
});

