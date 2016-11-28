
// taghipoor.meysam@gmail.com
// 2016/11/27
// 1.0

jQuery(document).ready(function($) {

    //عملیات کلیک 
	$('.simplefavorite-button').on('click', function(e){

		// $(this).toggleClass('active');
		id=$(this).attr('id');//آیدی آیتمی که روش کلیک شده ، تا نتیجه در اون دیو قرار بگیره
						
		// متغییر های مورد تیاز
		table_name=$(this).attr('table_name');
		table_id=$(this).attr('table_id');

		// ارسال به تابع ایجکس
		call_ajax(table_name,table_id,id);

	});
	
});

function call_ajax(table_name,table_id,id){
    div='#'+id;
    loader='#'+id+'>.loader';
    

	$.ajax({
			url:'./?do_action=bookmarky_ajax',
			data:{table_name:table_name,table_id:table_id},
			type:'post',
			success:function(data){
				$(div).fadeOut(1000);
	            $(loader).fadeIn(1000);
	            $(loader).fadeOut(1000).delay(1000);
				span='#'+id+">.simplefavorite-button-count";			
				$(span).text(data).delay(1000);;
				$(div).fadeIn(500);
		    },
	});

}