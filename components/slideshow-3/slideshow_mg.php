<?

# jalal7h@gmail.com
# 2017/01/06
# 1.1

$GLOBALS['cmp']['slideshow_mg'] = 'اسلایدشو';

function slideshow_mg(){

	#
	# actions
	switch( $_REQUEST['do'] ){
		case 'saveNew': slideshow_mg_saveNew(); break;
		case 'saveEdit': slideshow_mg_saveEdit(); break;
		case 'flag': listmaker_flag( 'slideshow' ); break;
		case 'remove': dbrm( 'slideshow' ); break;
		case 'form': return slideshow_mg_form();
	}

	#
	# the list
	slideshow_mg_list();


}


