<?
function bookmarky_user_remove()
{
	$id=$_REQUEST["id"];
	dbq(" DELETE FROM `bookmarky` WHERE `id`='".$id."'");
}