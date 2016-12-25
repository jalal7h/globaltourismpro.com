<?
function mgvechicle_mg_form(){

	echo 
	listmaker_form([
		
		[
			'table' => 'mg_vehicle' ,
			'name' => __FUNCTION__ , // if not define , it will be some random name
			'class' => __FUNCTION__ , // if define , it will be
			'method' => 'post' , // if not method define , it will be 'post'
			'action' => './?page=admin&cp='.$_REQUEST['cp'].'&func=mgvechicle_mg_list', // must define
			'save_switch' => 'do', // if define , it will be saveNew/saveEdit
			'title_in_span'=> true, // if define , it will be in ff
			'rw'=>$rw, // if not defined , it will be table( $table, $_REQUEST['id'] );
		],

		"<div>",
		
		[ 'name:'=>$rw, 't:text', 'n:name*'=>$rw,'title_in_span'=> false ],
	
		"</div>",
		"<div>",
		
		[ 'pax:'=>$rw, 't:text', 'n:pax*'=>$rw,'title_in_span'=> false ],

		"</div>",

		'clear',
		'hr',
		

		['t:submit','class'=>'submit_button','n:submit'=>'ثبت','inDiv'],
	
	]);

}