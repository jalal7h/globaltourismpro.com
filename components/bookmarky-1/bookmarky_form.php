<?

# taghipoor.meysam@gmail.com
# 2016/11/27
# 1.0
$GLOBALS['block_layers']['bookmarky'] = 'bookmarky';
function bookmarky(){
	$_SESSION['uid']="1";
	session_unset();
	echo bookmarky_form( "news", "3" );
	echo "<br><br>".bookmarky_form( "news", "8" );
}
function bookmarky_form( $table_name, $table_id ){
	
	#
	# تعداد مورد علاقه قرار گرفته
	$count = bookmarky_result($table_name,$table_id);
   	
   	#
   	# تا اگه برای اولین بار میخواد کلیک کنه عملیات ثبت انجام بشه
    $flag = 0;
	
	if( $user_id = user_logged() ){ 
		#
		#تغییر روش نمایش موس
		$cursor="cursor";

		#		
		# اگر این آیتم توسط این کاربر انتخواب شده بود کلاس active میگیره
		$query = " SELECT * FROM `bookmarky` WHERE `table_name`='".$table_name."' AND `table_id`='".$table_id."'AND `user_id`='".$user_id."' ";
	    
	    if(! $rs = dbq($query) ){
			e();
		
		} else if( dbn($rs) ){
			# دادن کلاس اکتیو در صورت کلیک کردن از قبل
			$active = "active";
		}

    }else{
    	#
    	#کار بر لوگین نکرده=> نمایش بالن
    	$text2="text2";
    }

  $bookmarky='
    <span class="favorite-button">
	    <button class="simplefavorite-button '.$active.' '.$cursor.' '.$text2.'" table_name="'.$table_name.'" table_id="'.$table_id.'" user_id="'.$user_id.'" id="'.$table_name.'-'.$table_id.'">
	        <div class="loader">
	        	<i class="fa fa-star-o" aria-hidden="true"></i>
	        </div>
		    <span class="baleen">'.__('Please first login to be').'</span>
		    <span class="simplefavorite-button-count">'.$count.'</span>
		    <i class="fa fa-star-o" aria-hidden="true"></i>
	    </button>
    </span>';

    return $bookmarky;

}










