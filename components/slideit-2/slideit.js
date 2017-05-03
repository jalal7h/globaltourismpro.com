
jQuery(document).ready(function($) {
	
	the_time = $('.slideit').attr('the_time');
	fade_time = the_time / 6;

	slideit_i = 1;

	slideit_numb = $('.slideit .list > a').length

	if( slideit_numb > 1 ){
		setInterval( function(){

			all_node = $('.slideit .list > a');
			old_node = $('.slideit .list > a:nth-child('+slideit_i+')');

			slideit_i = (slideit_i % slideit_numb); 
			slideit_i++;
			
			new_node = $('.slideit .list > a:nth-child('+slideit_i+')');

			new_node.css({ 'z-index' : 30 });
			old_node.animate({ 'opacity' : '0' }, fade_time );
			new_node.animate({ 'opacity' : '1' }, fade_time );
			all_node.css({ 'z-index' : 1 });
			new_node.css({ 'z-index' : 2 });

		}, the_time );
	}

});


