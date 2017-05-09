
jQuery(document).ready(function($) {
	
	//
	// remove button
	$("body").delegate('.dailytour_mg_priceform .re icon.fa-remove', 'click', function( e ) {
		$(this).parent().remove();
		cl('remove button');
	});

	//
	// remove button
	$("body").delegate('.dailytour_mg_priceform .re icon.fa-plus', 'click', function( e ) {
		t = $(this);
		tp = t.parent();
		tp.after( '<div class="re">' + tp.html() + '</div>' );
		tp.find('icon').removeClass('fa-plus').addClass('fa-remove');
	});

});

