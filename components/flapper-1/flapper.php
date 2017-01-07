<?php

# jalal7h@gmail.com
# 2017/01/07
# 1.0

function flapper( $code, $max=null ){
	
	if( is_array($code) ){
		foreach( $code as $i => $this_code ){
			$max = max( $max, strlen($this_code) );
		}
		foreach( $code as $i => $this_code ){
			$c.= flapper($this_code, $max);
		}
		$c = "\n<div class=\"".__FUNCTION__."_w\">\n".$c."\n</div>\n";
		return $c;
	}

	if(! $max ){
		$max = strlen($code);
	}

	if( strlen($code) < $max ){
		$code.= str_repeat( " ", $max - strlen($code) );
	}

	$id = "flapper_".mb_ereg_replace( '[^a-z0-9]+', '', strtolower($code) );
	$c = '
	<!-- flapper - start -->
	<input class="header dark S" id="'.$id.'" />
	<script>
		var $'.$id.' = $("#'.$id.'");
		$'.$id.'.flapper({
		    width: '.$max.',
		    chars_preset: "alpha"
		});
		setTimeout(function(){
		    $'.$id.'.val("'.$code.'").change();
		}, 1000);
	</script>
	<!-- flapper - end -->
	';

	return $c;

}

