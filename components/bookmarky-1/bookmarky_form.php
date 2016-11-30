<?

# taghipoor.meysam@gmail.com
# 2016/11/27
# 1.0

$GLOBALS['block_layers']['bookmarky'] = 'bookmarky';

function bookmarky(){
	$_SESSION['uid']="19";
	//session_unset();
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
		# اگر این آیتم توسط این کاربر انتخواب شده بود کلاس active میگیره
		$query = " SELECT * FROM `bookmarky` WHERE `table_name`='".$table_name."' AND `table_id`='".$table_id."'AND `user_id`='".$user_id."' ";
	    
	    if(! $rs = dbq($query) ){
			e();
		
		} else if( dbn($rs) ){
			# دادن کلاس اکتیو در صورت کلیک کردن از قبل
			$active = "active";
		}

    }

  $bookmarky = '
    <span class="favorite-button ">
	    <button class = "simplefavorite-button '.( user_logged() ? 'logged' : 'logout' ).' '.$active.'" table_name = "'.$table_name.'" table_id = "'.$table_id.'" id = "'.$table_name.'-'.$table_id.'">

	        <span class = "baleen">'.__('Please first login to be').'</span>
		    <span class = "simplefavorite-button-count">'.$count.'</span>    

	    </button>
    </span>';

    return $bookmarky;

}










