<?

# jalal7h@gmail.com
# 2017/01/11
# 1.0

add_component( 'mgvechicle_mg', 'مدیریت وسایل نقلیه', '1b9' );

function mgvechicle_mg(){

	listmaker_tabmenu([
		
		__FUNCTION__.'_list' => "لیست خودروها",
		__FUNCTION__.'_form' => "ثبت خودرو",
		
	], "./?page=admin&cp=".$_REQUEST['cp'] );

}