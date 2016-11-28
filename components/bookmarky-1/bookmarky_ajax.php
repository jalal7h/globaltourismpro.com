<?

# taghipoor.meysam@gmail.com
# 2016/11/27
# 1.0

$GLOBALS['do_action'][] = 'bookmarky_ajax';

function bookmarky_ajax(){
	
	$table_name=$_POST['table_name'];
	$table_id=$_POST['table_id'];
	$user_id=$_POST['user_id'];
	$flag=$_POST['flag'];
	
	if ($flag==0) {
	    # یعنی کاربر قبلا کلیک نکرده
		bookmarky_insert($table_name,$table_id,$user_id);
	} else {
		# یعنی کاربر کلیک مجدد داشته
		bookmarky_delete($table_name,$table_id,$user_id);
	}
	
}


function bookmarky_insert( $table_name,$table_id,$user_id ){

	#
	# insert
	dbq("INSERT INTO bookmarky (table_name,table_id,user_id) VALUES('{$table_name}','{$table_id}','{$user_id}')");
	$result=bookmarky_result($table_name,$table_id);
	echo "$result";
	#

}

function bookmarky_delete($table_name,$table_id,$user_id){
	
	#
	# DELETE
	dbq(" DELETE FROM `bookmarky` WHERE `table_name`='".$table_name."' AND `table_id`='".$table_id."'AND `user_id`='".$user_id."'");
	$result=bookmarky_result($table_name,$table_id);
	echo $result;
	#

}

#
# تعداد مورد علاقه قرار گرفتن این آیتم
function bookmarky_result($table_name,$table_id){
	
	$query = " SELECT COUNT(*) FROM bookmarky WHERE `table_name`='$table_name' AND `table_id`='$table_id'";
   
    if(! $rs = dbq($query) ){
		e();
	
	} else if(! $count = dbr($rs,0,0) ){    
    	$count=0;
    }
    
    return $count;

}









