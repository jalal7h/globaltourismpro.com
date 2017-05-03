
jQuery(document).ready(function($) {

	clock_margin = 500

	$('.slideit').each(function(index, el) {

		t0 = $(this)
		the_time = t0.attr('the_time')
		the_start_time = clock_margin
		the_end_time = the_time - clock_margin

		setTimeout(function(){
			t0.find('.info').addClass('fired')
			setInterval(function(){
				t0.find('.info').addClass('fired')
			}, the_time );
		}, the_start_time );

		setTimeout(function(){
			t0.find('.info').removeClass('fired')
			setInterval(function(){
				t0.find('.info').removeClass('fired')
			}, the_time );

		}, the_end_time );

	});

});


