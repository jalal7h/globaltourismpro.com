
<link rel="stylesheet" href="{lib_path}/nivo-slider/themes/default/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="{lib_path}/nivo-slider/nivo-slider.css" type="text/css" media="screen" />

<div id="wrapper">
	<div class="slider-wrapper theme-default">
		<div id="slider" class="nivoSlider">
		<?foreach( $slides as $slide ):?>
			<?if( $slide->url ):?><a href="<?= $slide->url ?>"><?endif?>
				<img src="<?= $slide->image ?>" data-thumb="<?= $slide->image ?>" skiptooltip title="<?= $slide->title ?>"/>
			<?if( $slide->url ):?></a><?endif?>
		<?endforeach?>
		</div>
	</div>
</div>

<script type="text/javascript" src="http://hammerjs.github.io/dist/hammer.min.js"></script>
<script type="text/javascript" src="{lib_path}/nivo-slider/jquery.nivo.slider.js"></script> 

<script type="text/javascript">
	$(document).ready(function($) {

		if ("ontouchstart" in document.documentElement) {
	 
			$('#slider').nivoSlider({
				controlNav: false,
				pauseTime: {the_time},
			});

			$('a.nivo-nextNav').css('visibility', 'hidden');
			$('a.nivo-prevNav').css('visibility', 'hidden');
			
			var element = document.getElementById('slider');
			
			var hammertime = Hammer(element).on("swipeleft", function(event) {
				$('#slider img').attr("data-transition","slideInLeft");
				$('a.nivo-nextNav').trigger('click');
				$('#slider img').attr("data-transition","");
				return false; 
			});
					
			var hammertime = Hammer(element).on("swiperight", function(event) {
				$('#slider img').attr("data-transition","slideInRight");
                $('a.nivo-prevNav').trigger('click');
                $('#slider img').attr("data-transition","");
                return false;
			});
	 
		} else {
	  
			$('#slider').nivoSlider({
				controlNav: false,
				pauseTime: {the_time},
			});
	    
	    }

	});

</script> 

