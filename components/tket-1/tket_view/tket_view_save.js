
jQuery(document).ready(function($) {
	
	// save new post
	$('.tket_view_form').on('submit', function(e){

		ti = $(this).find('input[name="tket_id"]');
		qk = $(this).find('input[name="que_key"]');
		ta = $(this).find('textarea');
		sb = $(this).find('input[type="submit"]');
		pt = $(this).find('.prompt');

		tket_id = ti.val();
		que_key = qk.val();
		the_text = ta.val().trim();
		user_id = ta.attr('user_id');

		if( the_text == '' ){
			e.preventDefault();
			return false;
		}

		ta.attr('disabled',true);
		sb.addClass('gray');
		sb.attr('disabled',true);

		$.ajax({
			url: _URL+"/?do_action=tket_view_save&user_id="+user_id+"&tket_id="+tket_id+'&que_key='+que_key ,
			method: "POST",
			data: { 'text' : the_text },
			dataType: "html"
		
		}).done(function( html ) {
cl(html)
			new_post_stat = html.substr(0,2);
			new_post_content = html.substr(2);

			if( new_post_stat == "OK" ){
				ta.attr( 'disabled', false );
				ta.val('');
				sb.removeClass('gray');
				sb.attr( 'disabled', false );
				pt.css( 'opacity', '0.0' );
				$('.tket_view .post_list').prepend( new_post_content );
				$('.tket_view .post_list .post:first-child').css({'opacity':'0.0'});
				$('.tket_view .post_list .post:first-child').animate({'opacity':'1.0'}, 400);

			} else {
				ta.attr( 'disabled', false );
				sb.removeClass('gray');
				sb.attr( 'disabled', false );
				pt.css( 'opacity', '1.0' );
			}

		});

		e.preventDefault();
	});

});

