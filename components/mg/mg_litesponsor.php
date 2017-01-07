<?php

# jalal7h@gmail.com
# 2017/01/07
# 1.0

function mg_litesponsor(){
	
	if( _PAGE != 1 ){
		return '';
	}

	return litesponsor_view();

}

