<?

function slideshow_mg_form(){
	
	if(! $id = $_REQUEST['id'] ){
		//
	
	} else if(! $tSlideshow = table("slideshow",$id) ){
		echo "err - ".__LINE__;
	}

	?>
	<div id="slideshow_mg_form">
	<form method=post enctype="multipart/form-data" action="./?page=admin&cp=<?=$_REQUEST['cp']?>&func=slideshow_mg_list&do=<?=($tSlideshow?'saveEdit&id='.$id:'saveNew')?>">
	<?
	
	$GLOBALS['formName'] = "sForm";
	
	echo
	'<div class=devider ></div>'.
	ff(array( __("عنوان اسلاید") ,'n:name*'=>$tSlideshow,'inDiv')).
	ff(array("http://",'etc'=>'dir=ltr','n:link'=>$tSlideshow,'inDiv')).
	ff(array( __("توضیحات"),'n:description'=>$tSlideshow,'inDiv')).
	ff(array('عکس','n:slideshow[]'=>'','accept'=>'image/*','inDiv')).
	'<div class=devider ></div>'.
	ff(array( __("ثبت"),'n:submit'=>__('ثبت'),'class'=>'submit_button','t:submit','inDiv'));
	
	?>
	</form>
	</div>
	<?
}


