<?

# jalal7h@gmail.com
# 2017/01/21
# 1.2

function billing_management_stat_dailychart(){

	#
	# vaqt
	$U = U();
	$Date = UDate($U);

	# 
	# number of month
	$numb_of_month = explode("/", $Date);
	$numb_of_month = $numb_of_month[1];

	#
	# day of month
	$day_of_month = explode("/", $Date);
	$day_of_month = $day_of_month[2];
	$day_of_month = explode(" ", $day_of_month);
	$day_of_month = $day_of_month[0];
	
	# 
	# list of days
	for( $i=1; $i<=Date_MaxOfMonthDays()[intval($numb_of_month)]; $i++ ){
		# 
		# list of days
		$list_of_days_str[] = '"'.$i.'"';
		#
		# list of costs
		$list = array (
			"skipwallet" => true ,
			"date" => array ( "day" => substr($Date, 0, 8).($i<10?"0".$i:$i) ) ,
		);
		$list_of_days_str_cost[] = round(billing_stat_payment( $list ) / _billng_unit_rate );
	}

	if( sizeof($list_of_days_str) ){
		$list_of_days_str = implode(",", $list_of_days_str);
	}
	if( sizeof($list_of_days_str_cost) ){
		$list_of_days_str_cost = implode(",", $list_of_days_str_cost);
	}

	#
	# costs in months
	for( $i=1; $i<=12; $i++ ){
		$list = array (
			"skipwallet" => true ,
			"date" => array ( "monthIn" => substr($Date, 0, 5).($i<10?"0".$i:$i) ) ,
		);
		$list_of_months_str_cost[] = round(billing_stat_payment( $list ) / _billng_unit_rate );
	}
	$list_of_months_str_cost = implode(",", $list_of_months_str_cost);

	#
	# list of years
	$year = explode("/", $Date);
	$year = $year[0];

	for( $i=$year-4; $i<=$year; $i++ ){
		# 
		# list of years
		$list_of_years_str[] = '"'.substr($i,2).'"';
		#
		# list of costs
		$list = array (
			"skipwallet" => true ,
			"date" => array ( "yearIn" => $i ) ,
		);
		$list_of_years_str_cost[] = round(billing_stat_payment( $list ) / _billng_unit_rate );
	}
	$list_of_years_str = implode(",", $list_of_years_str);
	$list_of_years_str_cost = implode(",", $list_of_years_str_cost);


	#
	# echo the charts
	echo '
	<script src="http://parsunix.com/cdn/js/chartjs/Chart.min.js" ></script>
	<script>
		var rdscftr = function(){ return Math.round(Math.random()*100000)};
	</script>
	
	<div style="border-bottom: 0px dotted #ddd; width: 80%; margin: 30px 0 0px 0;" ></div>

	<div style="width: 98%" dir='._rtl.' >
		<div style="98%; text-align: right; margin: 20px 20px 10px 0; ">'.__('آمار روزانه پرداخت ها (ضریب ۱۰۰۰)').'</div>
		<canvas id="canvas_daily" height="250" width="1000"></canvas>
	</div>
	<div style="border-bottom: 1px dotted #ddd; width: 80%; margin: 50px 0 50px 0;" ></div>
	';

	billing_management_stat_total();

	echo '
	<div style="border-bottom: 1px dotted #ddd; width: 80%; margin: 50px 0 50px 0;" ></div>

	<div style="width: 98%; " dir='._rtl.' >
		<div style="width: 47%; margin: 0 5px 0 5px; display:inline-block;">
			<div style="98%; text-align: right; margin: 20px 20px 10px 0; ">'.__('آمار ماهیانه پرداخت ها (ضریب ۱۰۰۰)').'</div>
			<canvas id="canvas_monthly" height="250" width="500"></canvas>
		</div>
		<div style="width: 47%; margin: 0 5px 0 5px; display:inline-block;">
			<div style="98%; text-align: right; margin: 20px 20px 10px 0; ">'.__('آمار سالیانه پرداخت ها (ضریب ۱۰۰۰)').'</div>
			<canvas id="canvas_annually" height="250" width="500"></canvas>
		</div>
	</div>

	<div style="height: 80px; " ></div>
	
	<script>
		var barChartData_daily = {
			labels : ['.$list_of_days_str.'],
			datasets : [
				{
					fillColor : "rgba(151,187,205,0.5)",
					strokeColor : "rgba(151,187,205,0.8)",
					highlightFill : "rgba(151,187,205,0.75)",
					highlightStroke : "rgba(151,187,205,1)",
					data : ['.$list_of_days_str_cost.']
				}
			]
		}
	</script>

	<script>
		var barChartData_monthly = {
			labels : ["'.implode('","', Date_listOfMonths() ).'"],
			datasets : [
				{
					fillColor : "rgba(151,187,205,0.5)",
					strokeColor : "rgba(151,187,205,0.8)",
					highlightFill : "rgba(151,187,205,0.75)",
					highlightStroke : "rgba(151,187,205,1)",
					data : ['.$list_of_months_str_cost.']
				}
			]
		}
	</script>

	<script>
		var barChartData_annually = {
			labels : ['.$list_of_years_str.'],
			datasets : [
				{
					fillColor : "rgba(151,187,205,0.5)",
					strokeColor : "rgba(151,187,205,0.8)",
					highlightFill : "rgba(151,187,205,0.75)",
					highlightStroke : "rgba(151,187,205,1)",
					data : ['.$list_of_years_str_cost.']
				}
			]
		}
	</script>

	<script>
		window.onload = function(){
			
			var ctx_daily = document.getElementById("canvas_daily").getContext("2d");
			window.myBar = new Chart(ctx_daily).Bar(barChartData_daily, {
				responsive : true
			});
			
			var ctx_monthly = document.getElementById("canvas_monthly").getContext("2d");
			window.myBar = new Chart(ctx_monthly).Bar(barChartData_monthly, {
				responsive : true
			});
			
			var ctx_annually = document.getElementById("canvas_annually").getContext("2d");
			window.myBar = new Chart(ctx_annually).Bar(barChartData_annually, {
				responsive : true
			});
		}
	</script>
	';

}
