<?

# taghipoor.meysam@gmail.com
# 2016/11/27
# 1.0

function bookmarky_form( $table_name, $table_id ){
	
	#
	# تعداد مورد علاقه قرار گرفته
	$cont = bookmarky_result($table_name,$table_id);
   	
   	#
   	# تا اگه برای اولین بار میخواد کلیک کنه عملیات ثبت انجام بشه
    $flag = 0;
	
	if( $user_id = user_logged() ){ 
		
		#		
		# اگر این آیتم توسط این کاربر انتخواب شده بود کلاس active میگیره
		$query = " SELECT * FROM `bookmarky` WHERE `table_name`='".$table_name."' AND `table_id`='".$table_id."'AND `user_id`='".$user_id."' ";
	    
	    if(! $rs = dbq($query) ){
			e();
		
		} else if( dbn($rs) ){
			# دادن کلاس اکتیو در صورت کلیک کردن از قبل
			$active = "active";
			# فلگش مقدار میگیره تا در صورت کلیک دباره ،عملیات دلیت انجام بشه
			$flag = dbn($rs);
		}

    }

  $bookmarky='
    <span class="favorite-button">
	    <button class="simplefavorite-button '.$active.'" table_name="'.$table_name.'" table_id="'.$table_id.'" flag="'.$flag.'" user_id="'.$user_id.'" id="'.$table_name.'-'.$table_id.'">
	        <div class="loader">
	        	<i class="fa fa-star-o" aria-hidden="true"></i>
	        </div>
		    <span class="baleen">Please first login to be</span>
		    <span class="simplefavorite-button-count">'.$cont.'</span>
		    <i class="fa fa-star-o" aria-hidden="true"></i>
	    </button>
    </span>';

    return $bookmarky;

}










