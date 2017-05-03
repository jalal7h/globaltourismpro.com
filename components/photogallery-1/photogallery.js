
jQuery(document).ready(function($) {
	
	$('.photogallery img').on('click', function(){

		lg = $(this).attr('large');
		cl( lg );
		hitbox( '<img src=\"'+lg+'\"/>' );

	});

});

