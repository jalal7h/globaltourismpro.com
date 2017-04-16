
jQuery(document).ready(function($) {
	$('.transferorder_user_list a[name="booking_voucher"]').on('click', function(e){

		t = $(this);
		id = t.attr('href');

		hitbox( '<iframe src="'+_URL+'/?do_action=transferorder_voucher&id='+id+'"></iframe>' );

		e.preventDefault();
		return false;
	});
});

