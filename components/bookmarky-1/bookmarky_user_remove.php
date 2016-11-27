<?

# taghipoor.meysam@gmail.com
# 2016/11/27
# 1.0

function bookmarky_user_remove()
{
	$id=$_REQUEST["id"];
	dbq(" DELETE FROM `bookmarky` WHERE `id`='".$id."'");
}