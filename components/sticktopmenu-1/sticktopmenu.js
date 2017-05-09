/*index*/

jQuery(document).ready(function($) {
	
	var wrap = $('.sticktopmenu');
	var offset = wrap.offset();
	var oH = wrap.outerHeight();

	wrap.before("<div class=\"sticktopmenu_space\" style=\"height: "+oH+"px\"></div>");

	var ss = $('.sticktopmenu_space')

	$(window).on("scroll", function(e) {

		if( $(this).scrollTop() > offset.top ){
			wrap.addClass("fixed");
			ss.show();

		} else {
			wrap.removeClass("fixed");
			ss.hide();
		}

	});

});


