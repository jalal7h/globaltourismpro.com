<?php

# jalal7h@gmail.com
# 2016/11/17
# 1.2

$GLOBALS['block_layers']['news_display'] = 'نمایش خبر';

function news_display(){
	
	# 
	# news display section
	// code here

	?>
<div class="news">
	
<?	
	$query1 = " SELECT * FROM `news` WHERE `id`= '".$_REQUEST['id']."' ";
    if(! $rs1 = dbq($query1) ){
		e(__FUNCTION__,__LINE__);
	
	} else if(! dbn($rs1) ){
	
	?>
		<div class="errors"><h1>موردی برای درخواست شما یافت نشد.</h1></div>
	<?
	
	} else if( $rw1 = dbf($rs1) ){
		// آبدیت تعداد  بازدید
		$visit=$rw1['visit'];
		$visit=$visit+1;
		$query1 = " UPDATE `news` SET `visit`='".$visit."' WHERE `id`= '".$_REQUEST['id']."' ";
	    if(! $rs1 = dbq($query1) ){
			e(__FUNCTION__,__LINE__);
		
		}

		$cat = cat_translate($rw1['cat']) ;				
		$image = $rw1['pic']; 
		$name = $rw1['name'];
		$id=$rw1['id'];
		$Year=date("d , Y", $rw1['date_created']);
		$month= getdate($rw1['date_created']);
		$text= $rw1['text'];

		?>
		<div class="Newsroom">
			<a href="<?=_URL.'/page-51.html';?>">Newsroom</a>
		</div>
		<section>
			<div class="section-news">
				
				<div class="component-hed">
					<span class="category-eyebrow__cat">
						<?=$cat;?>
					</span>
					<span class="category-eyebrow__date">
						<?
						echo $month['month']." ".$Year;
						?>
					</span>
					<span class="category-eyebrow__visit">
						Views:<?=$visit;?>
					</span>
				</div>
				<div class="section-news-h1">	
					<h1>
						<?=$name;?>							
					</h1>
				</div>
				<div class="social-disply">
					<?=news_sharing($rw1);?>
				</div>	
			</div>	
			<?
			if ($image) { //اگه تصویر داشت ،نمایش بده
			?>	
			<div class="news-img">
				<img class="isss" src="<?=_URL.'/'.$image;?>">
			</div>
			<?}?>
			<div class="section-news">
			<div class="text">
				<?=$text;?>
			</div>

			</div>
		</section>   
		    
	
	<?
	
	}	 
	
?>
</div>
<?

	#
	# comment section
	$table_name = 'news';
	$table_id = $_REQUEST['id'];
	echo fbcm( $table_name , $table_id );

}



