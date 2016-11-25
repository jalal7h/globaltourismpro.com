<?

# jalal7h@gmail.com
# 2016/11/17
# 1.0

$GLOBALS['block_layers']['news_list'] = 'لیست خبر‌ها';

function news_list( $table_name=null , $page_id=null ){
	// در صورت انتخواب گروه خبری در سلکت استفاده میشه
	if ($cat_id = $_REQUEST['cat_id']) {
		
		$q_cat="AND `cat`='$cat_id'";
		$link = _URL."/news&cat_id=".$cat_id."&p=".$_REQUEST['p'];
		
	}else{
		$link = _URL."/news&p=".$_REQUEST['p'];
	}
	
?>
<div class="news">
	<div class="Newsroom">
		<a href="<?=_URL.'/news';?>">Newsroom</a>
	</div>

	<span><?=__('Category')?></span>
	<select id="mySelect" onchange="myFunction()">
		<option>-Any-</option>
		<? echo cat_display('news', $array=false );?>
	</select>
	<script>
		function myFunction() {
		    var x = document.getElementById("mySelect").value;		 
		    location.href='./?page=51&cat_id='+x;
		}
	</script>

	
<?	
	$i=1;  //برای کنترل تعداد ستون ها استفاده میشه
	$j=0;  // برای تنظیم دو ستونی شدن به کار میره

	$tdd = 10;
	$stt = $tdd * intval($_REQUEST['p']); 
	$query1 = " SELECT * FROM `news` WHERE 1 $q_cat ORDER BY `id` DESC LIMIT $stt , $tdd ";
    if(! $rs1 = dbq($query1) ){
		e(__FUNCTION__,__LINE__);
	
	} else if(! dbn($rs1) ){
	
	?>
		<div class="errors"><h1><?=__('موردی برای درخواست شما یافت نشد.')?></h1></div>
	<?
	
	} else while( $rw1 = dbf($rs1) ){
		$cat = cat_translate($rw1['cat']) ;				
		$image = $rw1['pic']; 
		$name = $rw1['name'];
		$id=$rw1['id'];
		$Year=date("d , Y", $rw1['date_created']);
		$month= getdate($rw1['date_created']);

		// بررسی تصویر
		if (!$image) {
			$i=2;
			$j=0;
			noimg($rw1);
		}elseif ($i==1) {
			$i=2;
		?>
			<!-- اگر تصویر باشد و تکی نمایش دهد -->
		<div class="component-content">
			<a href="<?=news_link($rw1);?>" class="tile-link">
				<div class="tile-content-text">
					<div class="top-tile">
						<span class="category-eyebrow__cat">
							<?=$cat;?>
						</span>
						<span class="category-eyebrow__date">
							<?
							echo $month['month']." ".$Year;
							?>
						</span>			
						<p>
							<?=$name ;?>							
						</p>
					</div>
				</div>
				<div class="tile-content-img" style="width: 70%">
					<img class="isss" src="<?=_URL.'/'.$image;?>">
				</div>
				<div class="social2">
					<?=news_sharing($rw1);?>
				</div>
			</a>
		</div>
<?	
		}elseif ($i==2) { // نمایش خبر ها در دو ستون
			$j++;
			if($j==2){
				$i=1;
				$j=0;
			}
			twonews($rw1);
		}
		
	}	 

	echo listmaker_paging($query1, $link, $tdd, $debug=true);
?>
</div>
<?
}


//  در صورت نداشتن تصویر این اجرا میشه
function noimg($rw1){

    $cat = cat_translate($rw1['cat']) ;				
	$image = $rw1['pic']; 
	$name = $rw1['name'];
	$id=$rw1['id'];
	$Year=date("d , Y", $rw1['date_created']);
	$month= getdate($rw1['date_created']);
	?>
	<div class="noimg">
	<a href="<?=news_link($rw1);?>" class="tile-link">
		<div class="left">
			<span class="category-eyebrow__cat">
				<?=$cat;?>
			</span>
			<span class="category-eyebrow__date">
				<?
				echo $month['month']." ".$Year;
				?>
			</span>
		</div>
		<div class="right">
			<p>
				<?=$name ;?>							
			</p>
		</div>
	</a>	
	<div class="social3">
			<?=news_sharing($rw1);?>
	</div>
	</div>
	<?


}

//  خبرها در دو ستون نشان داده میشه
function twonews($rw1){

    $cat = cat_translate($rw1['cat']) ;				
	$image = $rw1['pic']; 
	$name = $rw1['name'];
	$id=$rw1['id'];
	$Year=date("d , Y", $rw1['date_created']);
	$month= getdate($rw1['date_created']);
	?>
	<div class="twonews">
		<a href="<?=news_link($rw1);?>" class="tile-link">
			<div class="left">
				<span class="category-eyebrow__cat">
					<?=$cat;?>
				</span>
				<span class="category-eyebrow__date">
					<?
					echo $month['month']." ".$Year;
					?>
				</span>
				<p>
					<?=$name ;?>							
				</p>
			</div>
			<div class="tile-content-img" style="width: 50%">
					<img class="isss" src="<?=_URL.'/'.$image;?>">
			</div>
			<div class="social2">
				<?=news_sharing($rw1);?>
			</div>
		</a>			
	</div>
	<?
}





