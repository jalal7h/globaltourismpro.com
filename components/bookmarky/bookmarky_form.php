<?
function bookmarky_form($table_name,$table_id){
	// تعداد مورد علاقه قرار گرفته
	$cont=bookmarky_result($table_name,$table_id);
   	
    $flag=0;//تا اگه برای اولین بار میخواد کلیک کنه عملیات ثبت انجام بشه
	if( user_logged() ){ 

		$user_id=$_SESSION['uid'];
		// اگر این آیتم توسط این کاربر انتخواب شده بود کلاس active میگیره
		$query2 = " SELECT * FROM `bookmarky` WHERE `table_name`='".$table_name."' AND `table_id`='".$table_id."'AND `user_id`='".$user_id."' ";
	    if(! $rs2 = dbq($query2) ){
			e(__FUNCTION__,__LINE__);
		
		} else if(dbn($rs2) != 0){ 

			$active="active";//دادن کلاس اکتیو در صورت کلیک کردن از قبل
			$flag=dbn($rs2);// فلگش مقدار میگیره تا در صورت کلیک دباره ،عملیات دلیت انجام بشه
		}
    }
    ?>
    <span class="favorite-button">
	    <button class="simplefavorite-button <?=$active?>" table_name="<?=$table_name?>" table_id="<?=$table_id?>" flag="<?=$flag?>" user_id="<?=$user_id?>" id="<?=$table_name."-".$table_id?>">
	        <div class="loader">
	        	<i class="fa fa-star-o" aria-hidden="true"></i>
	        </div>
		    <span class="baleen">Please first login to be</span>
		    <span class="simplefavorite-button-count"><?=$cont?></span>
		    <i class="fa fa-star-o" aria-hidden="true"></i>
		    
	    </button>
    </span>
    
    <?
}