<?php

# jalal7h@gmail.com
# 2017/01/30
# 1.0

function tabmenu( $list, $class_prefix="cl_l1" ){
	
	foreach ($list as $name => $text) {
		
		$slug = strtolower($name);
		$slug = var_control($slug, 'a-z0-9');
		$slug = trim($slug);
		
		$names[ $slug ] = $name;
		$texts[ $slug ] = $text;

	}

	$c = template_engine( 'tabmenu', [
		'names' => $names ,
		'texts' => $texts ,
		'class_prefix' => $class_prefix ,
	]);

	$c = trim($c);

	return $c;
}

