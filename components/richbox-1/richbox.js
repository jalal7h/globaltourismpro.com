/*footer*/

jQuery(document).ready(function($) {
	


	/* ** * ** * ** * ** * ** * ** * ** * ** * ** * ** * ** * 
	** arayesh e avalie form
	**/
	$('input[type="richbox"]').each(function(index, el) {
		
		t = $(this);

		t.attr('autocomplete', 'off');

		r = rand(6);
		t.attr('r',r);

		t.attr('id', 'richbox_'+r);

		tW_id = 'richbox_w_'+r;
		t.wrap('<div class="richbox_w" id="'+tW_id+'"></div>');

		tH_id = 'richbox_hidden_'+r;
		t.before('<input type="hidden" id="'+tH_id+'"/>');
		
		tH = $('#'+tH_id);
		tH.attr('name', t.attr('name') );
		t.removeAttr('name');
		
		if( (t.val() != '') && (!isNaN( t.val() )) ){

			tH.val( t.val() );
			t.val('');

			$.ajax({
				url: _URL+"/?do_action=richbox_feed",
				method: "POST",
				data: { 'feed' : t.attr('feed') , 'id' : tH.val() },
				dataType: "html"
			
			}).done(function( city_name ){
				t.val(city_name);
			}); 
		}

		t.removeAttr('value');

		tL_id = 'richbox_list_'+r;
		// t.after('<div class="richbox_list" nav="0" id="'+tL_id+'" >000</div>');
		$('body > *:nth-child(1)').before('<div class="richbox_list" nav="0" id="'+tL_id+'" >000</div>');
		tL = $('#'+tL_id );

		t.after('<icon></icon>');

		t.show();
		
	});
	/*
	** ** * ** * ** * ** * ** * ** * ** * ** * ** * ** * ** */


	// open list , type something , and load options
	$('input[type="richbox"]').on('keyup',function(e){

		t = $(this);
		r = t.attr('r');
		tH = $('#richbox_hidden_'+r);
		tL = $('#richbox_list_'+r);

		navigator_i = tL.attr('nav');


		if( e.keyCode == 37 || e.keyCode == 38 || e.keyCode == 39 || e.keyCode == 40 || e.keyCode == 13 || e.keyCode == 27 ){

			if( tL.html() == '<div>' + text_loading + '</div>' ){
				return false;
			}

			if( e.keyCode == 38 ){
				if( navigator_i > 1 ){
					navigator_i--;
				}
			
			} else if( e.keyCode == 40 ){
				count_of_result = tL.find('div').length;
				if( navigator_i < count_of_result ){
					navigator_i++;
				}
			}

			tL.attr('nav',navigator_i);

			tL.find('div').removeClass('hover');
			nv = tL.find('div:nth-child('+navigator_i+')');
			nv.addClass('hover');

			return false;
		
		}
		
		// if its not navigation, forget the old nav
		tL.find('div').removeClass('hover');
		tL.attr('nav','0');

		char_limit = 3;
		if( typeof t.attr('char_limit') !== undefined ){
			char_limit = t.attr('char_limit');
		}

		list_limit = 15;
		if( typeof t.attr('list_limit') !== undefined ){
			list_limit = t.attr('list_limit');
		}

		if( t.val().length < char_limit ){
			tL.hide();

		} else {

			fix_tL_pos( t );    

			tL.show();
			// tL.find('div').css({'padding': t.css('padding'), 'font': t.css('font') });
			tL.html( '<div>' + text_loading + '</div>' );
			tL.find('div').css({'padding':t.css('padding'), 'font': t.css('font')});

			$.ajax({
				url: _URL+"/?do_action=richbox_feed",
				method: "POST",
				data: { 'feed' : t.attr('feed') , 'text' : t.val(), 'list_limit' : list_limit },
				dataType: "html"
			
			}).done(function( html ){
				tL.html(html);
				tL.find('div').css({'padding': t.css('padding'), 'font': t.css('font') });
			}); 

		}

	});




	// click on an option
	$('body').delegate('.richbox_list > div', 'click touchstart', function() {

		sl = $(this);
		tL = sl.parent();
		r = t.attr('r');

		tH = $('#richbox_hidden_'+r);
		tH.val( sl.attr('the_id') );
		t.val( sl.html() );
		t.addClass('completed');

		richbox_action_exec(t);

		tL.hide();

	});

	

	// select from list by submitting
	$('input[type="richbox"]').on('keydown',function(e){

		t = $(this);
		r = t.attr('r');
		tH = $('#richbox_hidden_'+r);
		tL = $('#richbox_list_'+r);
		hv = tL.find('div.hover');

		if( e.keyCode == 13 ){
			
			if( hv.length && tL.css('display') == 'block' ){

				t.addClass('completed');
				
				tH.val( hv.attr('the_id') );
				t.val( hv.html() );

				hv.remove();
				tL.hide();

				richbox_action_exec(t);
				
				e.preventDefault();
				return false; // for firefox

			}
	
		} else if( e.keyCode == 27 ){
			hv.remove();
			tL.hide();

		} else {
			tH.val('');
			t.removeClass('completed');
		}

	});

	$(window).on('resize', function(){
		$('input[type="richbox"]').each(function(index, el) {
			fix_tL_pos( $(this) );
		});
	});

});


function richbox_action_exec( t ){
jQuery(document).ready(function($) {
	
	the_action = t.attr('action');

	if (typeof the_action !== typeof undefined && the_action !== false && the_action !== '' ) {
		eval(the_action)( t.attr('id') );
	}

});
}

function fix_tL_pos( t ){
jQuery(document).ready(function($) {
	
	r = t.attr('r');
	cl( r);
	tL = $('#richbox_list_'+r);

	var ofs = t.offset();
	tL_top = ofs.top + t.outerHeight(true);
	tL_left = ofs.left;
	tL_width = t.outerWidth(true);
	tL.css({ top: tL_top, left: tL_left, width: tL_width });

});
}










