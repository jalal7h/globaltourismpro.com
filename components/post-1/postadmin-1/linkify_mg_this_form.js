
$(document).ready(function(){
	$('.linkify_mg_this_form select[name="list_of_posts_in_select"]').on('change', function(){
		
		var this_page = $(this).val();
		this_page_arr = this_page.split("::");
		
		console.log(this_page_arr[0]);
		if( this_page_arr[0]!='' ){
			$('.linkify_mg_this_form input[name="name"]').val( this_page_arr[1] );
			$('.linkify_mg_this_form input[name="url"]').val( this_page_arr[0] );
		}
	})
});
