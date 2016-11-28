<?

# taghipoor.meysam@gmail.com
# 2016/11/27
# 1.0

$GLOBALS['block_layers']['news_list'] = 'لیست خبر‌ها';

function news_list( $table_name=null , $page_id=null ){

	$title = $rw_pagelayer['name'];
	
	# در صورت انتخواب گروه خبری در سلکت استفاده میشه
	if ($cat_id = $_REQUEST['cat_id']) {
	
		# اگر Any انتخواب شده بود
		if ($cat_id=="Any") {
			$q_cat="";
			$link = _URL."/?page=51&p=".$_REQUEST['p'];

		} else {
			$q_cat="AND `cat`='$cat_id'";
			$link = _URL."/?page=51&cat_id=".$cat_id."&p=".$_REQUEST['p'];
		}
	
	} else {
		$link = _URL."/?page=51&p=".$_REQUEST['p'];
	}

	# دسته خبری را از دیتابیس گرفته و در optionقرار میدهیم
    $rw = cat_display('news');
    foreach ($rw as $id => $name) {
		$list_of_options_for_news.= "<option ".( $cat_id==$id? "selected" : "" )." value=\"".$id."\">".$name."</option>\n";
	}	
	
	$content = '<div class="news">

			<span>'.__('Category').'</span>
			<select id = "mySelect" onchange="Categorylist()">
				<option value = "Any">'.__('-Any-').'</option>
				'.$list_of_options_for_news.'
			</select>';
	
	# برای کنترل تعداد ستون ها استفاده میشه
	$i=1; 
	
	# برای تنظیم دو ستونی شدن به کار میره
	$j=0; 

	$tdd = 10;
	$stt = $tdd * intval($_REQUEST['p']); 
	$query1 = " SELECT * FROM `news` WHERE 1 $q_cat ORDER BY `id` DESC LIMIT $stt , $tdd ";
    
    if(! $rs1 = dbq($query1) ){
		e();
	
	} else if(! dbn($rs1) ){
	
	$content.= '<div class="convbox">'.__('there are no results.').'</div>';
	
	} else while( $rw1 = dbf($rs1) ){
		
		$cat = cat_translate($rw1['cat']) ;				
		$image = $rw1['pic']; 
		$name = $rw1['name'];
		$id = $rw1['id'];
		$Year = date("d , Y", $rw1['date_created']);
		$month = getdate($rw1['date_created']);

		# بررسی تصویر
		if (! $image ) {
			if ($i==1) {
				$i=2;
				$j=0;
				# نمایش خبر بدون تصویر در یک ستون
				$content.= noimg1($rw1);

			} else {
				$j++;
				$margin="0";
				if($j==2){
					$i=1;
					$j=0;
					$margin="9px";
				}
				# نمایش خبر بدون تصویر در ستون دوم
				$content.= noimg2($rw1,$margin);
			}

		} elseif ($i==1) {
			# اگر تصویر باشد و تکی نمایش دهد
			$i=2;
		
		$content.= '<div class="component-content">
			<a href="'.news_link($rw1).'" class="tile-link">
				<div class="tile-content-text">
					<div class="top-tile">
						<span class="category-eyebrow__cat">
							'.$cat.'
						</span>
						<span class="category-eyebrow__date">
							'.$month['month']." ".$Year.'
						</span>			
						<p>
							'.$name.'							
						</p>
					</div>
				</div>
				<div class="tile-content-img">
					<img class="isss" src="'._URL.'/'.$image.'">
				</div>
				<div class="social2">
					'.news_sharing($rw1).'
				</div>
			</a>
		</div>';
				
		} elseif ($i==2) { // نمایش خبر ها در دو ستون
			$j++;
			$margin="0";
			if($j==2){
				$i=1;
				$j=0;
				$margin="9px";
			}
			$content.= twonews($rw1,$margin);
		}
		
	}	 

	$content.= listmaker_paging($query1, $link, $tdd, $debug=true);
	
    $content.= '</div>';

    layout_post_box( $title , $content, $allow_eval=false, $framed=true, $position="center");

}


# در صورت نداشتن تصویر این اجرا میشه
function noimg1($rw1){

    $cat = cat_translate($rw1['cat']) ;				
	$image = $rw1['pic']; 
	$name = $rw1['name'];
	$id=$rw1['id'];
	$Year=date("d , Y", $rw1['date_created']);
	$month= getdate($rw1['date_created']);
	
$noimg1.= '<div class="noimg">
	<a href="'.news_link($rw1).'" class="tile-link">
		<div class="left">
			<span class="category-eyebrow__cat">
				'.$cat.'
			</span>
			<span class="category-eyebrow__date">
				'.$month['month']." ".$Year.'
			</span>
		</div>
		<div class="right">
			<p>
				'.$name.'							
			</p>
		</div>
	</a>	
	<div class="social3">
			'.news_sharing($rw1).'
	</div>
	</div>';
	return $noimg1;
	
}

# در صورت نداشتن تصویر و نمایش خبر در ستون دوم
function noimg2($rw1,$margin){

    $cat = cat_translate($rw1['cat']) ;				
	$image = $rw1['pic']; 
	$name = $rw1['name'];
	$id=$rw1['id'];
	$Year=date("d , Y", $rw1['date_created']);
	$month= getdate($rw1['date_created']);
		
$noimg2.= '<div class="twonews-noimg" style="margin-left:'.$margin.'">
		<a href="'.news_link($rw1).'" class="tile-link">
			<div class="left">
				<span class="category-eyebrow__cat">
					'.$cat.'
				</span>
				<span class="category-eyebrow__date">
					'.$month['month']." ".$Year.'
				</span>
				<p>
					'.$name.'							
				</p>
			</div>
			
			<div class="social2">
				'.news_sharing($rw1).'
			</div>
		</a>			
	</div>';
	return $noimg2;
}

# خبرها در دو ستون نشان داده میشه
function twonews($rw1,$margin){

    $cat = cat_translate($rw1['cat']) ;				
	$image = $rw1['pic']; 
	$name = $rw1['name'];
	$id=$rw1['id'];
	$Year=date("d , Y", $rw1['date_created']);
	$month= getdate($rw1['date_created']);

$twonews.= '<div class="twonews" style="margin-left:'.$margin.'">
		<a href="'.news_link($rw1).'" class="tile-link">
			<div class="left">
				<span class="category-eyebrow__cat">
					'.$cat.'
				</span>
				<span class="category-eyebrow__date">
					'.$month['month']." ".$Year.'
				</span>
				<p>
					'.$name.'							
				</p>
			</div>
			<div class="tile-content-2img">
					<img class="isss" src="'._URL.'/resize/250x390/'.$image.'">
			</div>
			<div class="social2">
				'.news_sharing($rw1).'
			</div>
		</a>			
	</div>';
	return $twonews;
	
}
