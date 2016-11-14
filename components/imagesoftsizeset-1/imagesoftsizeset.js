
// 2016/09/11

jQuery(document).ready(function($) {
	$("img.isss, img.imagesoftsizeset").one("load", function(){

		var t = $(this);
		var isss_w = t.width();
		var isss_h = t.height();

		t.css({'width':'auto','height':'auto'});

		var or_w = t.width();
		var or_h = t.height();


		var t_padding = t.css('padding');
		var t_border = t.css('border');
		var t_margin = t.css('margin');
		var t_margin_bottom = t.css('margin-bottom');
		var t_radius = t.css('border-radius');
		var t_float = t.css('float');

		t.wrap("<div class=\"isss_wrapper\"><div class=\"inner\"></div></div>");

		t.css({'padding':0});
		t.parent().parent().css({'padding' : t_padding});
		t.css({'border':0});
		t.parent().parent().css({'border' : t_border});
		t.css({'margin':0});
		t.parent().parent().css({'margin' : t_margin});

		if( parseInt(t_margin_bottom) < 0 ){
			t.parent().css({'margin-bottom' : t_margin_bottom});			
			t.parent().parent().css({'margin-bottom':0});
		}

		t.css({'border-radius':0});
		t.parent().css({'border-radius' : t_radius});
		t.parent().parent().css({'border-radius' : t_radius});

		t.css({'float':'none'});
		t.parent().parent().css({'float' : t_float});

		t.parent().width(isss_w);
		t.parent().height(isss_h);


		z_w = isss_w / or_w;
		z_h = isss_h / or_h;


		if( or_w > or_h ){
			// cl('its a wide pic');
			t.width('auto');
			t.height(isss_h);
			t_new_width = t.width();
			move_right = (t_new_width - isss_w) / 2;
			move_right = Math.round( move_right );
			t.css({'position':'relative', 'right' : -1 * move_right });
		
		} else if( or_w < or_h ){
			// cl('its a tall pic');
			t.width(isss_w);
			t.height('auto');
			t_new_height = t.height();
			move_top = (t_new_height - isss_h) / 2;
			move_top = Math.round( move_top );
			t.css({'position':'relative', 'top' : -1 * move_top });
		
		} else {
			// cl('its just same');
			t.width(isss_w);
			t.height(isss_h);
		}
		
	});

});




