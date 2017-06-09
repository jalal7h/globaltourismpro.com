
jQuery(document).ready(function($) {
	
	$('.tabmenu .name > a').on('click', function(){
		$(this).siblings().removeClass('current');
		$(this).addClass('current');
		curr = $(this).index();
		$(this).parent().parent().find('div.text > div').hide();
		$(this).parent().parent().find('div.text > div:eq('+curr+')').show();
	});

	if(  hash != ''  &&  $('.tabmenu .name > a[href="#'+hash+'"]').length > 0  ){
		$('.tabmenu .name > a[href="#'+hash+'"]').trigger('click');

	} else {
		$('.tabmenu .name > a:eq(0)').trigger('click');
	}
	
});

