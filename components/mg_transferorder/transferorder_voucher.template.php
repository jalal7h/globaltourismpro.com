
<link href="{_URL}/templates/Default/font/font.css" rel="stylesheet" type="text/css">
<style>
	* {
		font-family: DefaultFont;
		font-size: 14px;
		box-sizing: border-box;
	}
	#v {
		margin: 10px;
		padding-bottom: 30px;
	}
	.firsthead {
		text-align: center;
		padding: 20px 0;
		font-size: 18px;
	}
	.download {
		text-align: right;
		border-bottom: 1px solid #999;
		padding: 0 0 10px 0;
		margin: 0 0 10px 0;
	}
	.download a {
		text-decoration: none;
		margin: 0 5px;
		display: inline-block;
	}
	.download img {
		max-width: 30px;
	}
	
	.secondhead {
		margin-bottom: 30px;
	}
	.secondhead .meta {
		text-align: center;
		margin-bottom: 40px;
	}
	.secondhead .client_info {
		display: inline-block;
		width: calc( 100% - 304px );
	}
	.secondhead .client_info .title {
		font-size: 16px;
		font-weight: bold;
	}
	.secondhead .booking_id {
		width: 304px;
		display: inline-block;
		text-align: center;
	}
	.secondhead .booking_id img {
		max-height: 50px;
	}

	.passenger_info {

	}
	.tour_info {

	}
	.notice {
		margin: 40px 0;
	}
	.notice .head {
		font-size: 16px;
		font-weight: bold;
	}
	.print_please {
		text-align: center;
	}

	.ticket_sign {
		vertical-align: top;
	}
	.ticket_sign .supplier {
		border-right: 1px solid #999;
		display: inline-block;
		width: calc( 50% - 1px ); 
		padding: 10px;
		vertical-align: top;
	}
	.ticket_sign .sign {
		display: inline-block;
		width: 50%;
		padding: 10px;
		vertical-align: top;
		text-align: center;
	}

	.website_info {
		margin-top: 40px;
		border: 1px solid #999;
	}
	.website_info .logo {
		float: left;
		margin-right: 40px;
	}
	.website_info .address {

	}
	.website_info .phone {

	}

	.bordered {
		margin-top: 40px;
		border: 1px solid #999;
		border-radius: 3px;
	}
	.bordered .head {
		background-color: #eee;
		padding: 25px;
		font-size: 16px;
		font-weight: bold;
	}
	.bordered .text {
		padding: 10px 15px;
	}
	.bordered .text .gridspan {
		display: inline-block;
		width: 30%;
		min-width: 200px;
	}

	.service_detail hr {
		display: block;
	    height: 1px;
	    border: 0;
	    border-top: 1px solid #ddd;
	    margin: 1em 0;
	    padding: 0; 
	}

</style>

<div id="v">
	
	<div class="firsthead">{website_title} TRANSFER VOUCHER</div>

	<div class="download">
		<a class="html" download href="{voucher_url}">
			<img src="{_URL}/image_list/voucher_html.png"/>
		</a>
		<a class="pdf" download href="{voucher_pdf}">
			<img src="{_URL}/image_list/voucher_pdf.png"/>
		</a>
		<a class="print" href="javascript:window.print()">
			<img src="{_URL}/image_list/voucher_print.png"/>
		</a>
	</div>


	<div class="secondhead">
		<div class="meta">SERVICE VOUCHER</div>
		<div class="client_info">
			<div class="title">{client_title}</div>
			<?if( strlen('{client_phone}') ):?>TEL: {client_phone}<br><?endif?>
			<?if( strlen('{client_cell}') ):?>TEL: {client_cell}<br><?endif?>
			<?if( strlen('{client_email}') ):?>EMAIL: {client_email}<br><?endif?>
		</div><!--
	 --><div class="booking_id">
			<img src="{barcode}" /><br>
			Booking ID: {Booking_ID}
		</div>
	</div>


	<div class="tour_info bordered">
		<div class="head">TRANSFER INFO</div>
		<div class="text">
			<div><span class="gridspan">TRANSFER NAME:</span> {transfer_name}</div>
			<div><span class="gridspan">TRANSFER TYPE:</span> {transfer_type}</div>
			<div><span class="gridspan">BOOKING STATUS:</span> {booking_status}</div>
			<div><span class="gridspan">DESTINATION:</span> {destination}</div>
			<div><span class="gridspan">TARIFF:</span> {tariff}</div>
			<div><span class="gridspan">VEHICLE:</span> {vehicle}</div>
			<div><span class="gridspan">BASIS:</span> {service_basis}</div>
			<div><span class="gridspan">DRIVER NUMBER:</span> {drivernumber}</div>
		</div>
	</div>


	<div class="traveller_info bordered">
		<div class="head">TRAVELLER INFO</div>
		<div class="text">
			<div><span class="gridspan">LEADER NAME:</span> {leader_name}</div>
			<div><span class="gridspan">PASSENGER CELL:</span> {passenger_cell}</div>
			<div><span class="gridspan">TRAVELLERS:</span> {travellers} ADULTS</div>
			<div><span class="gridspan">BOOKING DATE :</span> {booking_date}</div>
			<?if( strlen('{date_arrival}') ):?>
			<div><span class="gridspan">ARRIVAL DATE / TIME :</span> {date_arrival} - {arrival_time}</div>
			<?endif?>
			<?if( strlen('{date_departure}') ):?>
			<div><span class="gridspan">DEPARTURE DATE / TIME :</span> {date_departure} - {departure_time}</div>
			<?endif?>
			
			<?if( strlen('{additional_requests}') ):?>
			<div><span class="gridspan">ADDITIONAL REQUESTS :</span> {additional_requests}</div>
			<?endif?>
		</div>
	</div>

	<?if( strlen('{date_arrival}') ):?>
	<div class="arrival_info bordered">
		<div class="head">ARRIVAL INFO</div>
		<div class="text">
			<div><span class="gridspan">AIRLINE / CRUSE BOAT / TRAIN:</span> {arrival_acbt}</div>
			<div><span class="gridspan">CODE:</span> {arrival_code}</div>
			<div><span class="gridspan">DROP OFF LOCATION:</span> {arrival_dropoff}</div>
			<?if( strlen('{arrival_additional}') ):?>
			<div><span class="gridspan">ADDITIONAL INFO:</span> {arrival_additional}</div>
			<?endif?>
		</div>
	</div>
	<?endif?>


	<?if( strlen('{date_departure}') ):?>
	<div class="departure_info bordered">
		<div class="head">DEPARTURE INFO</div>
		<div class="text">
			<div><span class="gridspan">PICK UP LOCATION:</span> {departure_pickuplocation}</div>
			<div><span class="gridspan">AIRLINE / CRUSE BOAT / TRAIN:</span> {departure_acbt}</div>
			<div><span class="gridspan">CODE:</span> {departure_code}</div>
			<div><span class="gridspan">PICK UP TIME:</span> {departure_pickuptime}</div>
			<?if( strlen('{departure_additional}') ):?>
			<div><span class="gridspan">ADDITIONAL INFO:</span> {departure_additional}</div>
			<?endif?>
		</div>
	</div>
	<?endif?>


	<div class="notice">
		<div class="head">IMPORTANT INFO</div>
		If you informed us your mobile number, you'll receive the contact details of the driver 1 hour before the service so that you can contact if you are having difficulty about meeting. Please turn on your mobile on arrival, if possible.
		<br>
		Please print and sign this ticket<br>
		Bring with you on day of travel, no ticket no admission!<br>
		For round trip transfers clients must print 2 separate voucher and present one for each transfer.<br>
	</div>


	<div class="ticket_sign bordered">
		<div class="supplier">
			<center><b>IMPORTANT NOTE TO SUPPLIER</b></center><br>
			<div>BOOKED AND PAYABLE BY {website_title}</div>
			<div>UNDER NO CIRCUMSTANCES MUST YOU CHARGE THE GUEST FOR THE SERVICES LISTED ON THIS VOUCHER.</div>
			<div>PLEASE CALL FOR ANY ASSISTANCE {website_phone}</div>
			<br>
		</div><!--
	 --><div class="sign">
			<div><b>CLIENT'S SIGNATURE</b></div><br><br>
			<div>I the traveller acknowledge that i have taken the service as described on this voucher.</div>
		</div>
	</div>


	<div class="website_info">
		<img class="logo" src="{website_logo}"/>
		<div class="address">Head Office: {website_address}</div>
		<div class="phone">
			<span>Office:</span> {website_phone} | 
			<span>Fax:</span> {website_fax} | 
			<span>Cell:</span> {website_cell}
		</div>
	</div>


	<div class="service_detail">

		<?if( strlen('{itinerary}') ):?>
		<div class="bordered">
			<div class="head">Itinerary</div>
			<div class="text">{itinerary}</div>
		</div>
		<?endif?>

		<?if( strlen('{conditions}') ):?>
		<div class="bordered">
			<div class="head">Conditions</div>
			<div class="text">{conditions}</div>
		</div>
		<?endif?>

		<?if( strlen('{notes}') ):?>
		<div class="bordered">
			<div class="head">Notes</div>
			<div class="text">{notes}</div>
		</div>
		<?endif?>
		
	</div>


</div>

