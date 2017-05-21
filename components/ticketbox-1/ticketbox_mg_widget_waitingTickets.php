<?

# jalal7h@gmail.com
# 2016/12/21
# 1.0

add_adminwidget([ 
	'func'	=> 'ticketbox_mg_widget_waitingTickets',
	'grid'	=> 6,
	'cover'	=> true,
	'prio'	=> 2,
]);

function ticketbox_mg_widget_waitingTickets(){
		
	echo template_engine( 'ticketbox_mg_widget_waitingTickets' );

}


