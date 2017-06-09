
<link href="{_URL}/templates/Default/font/font.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
		max-height: 40px;
		padding: 4px;
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
	
	<div class="firsthead">{website_title} DAILY TOUR VOUCHER</div>

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

	<div class="print_area">

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
			<div class="head">TOUR INFO</div>
			<div class="text">
				<div><span class="gridspan">TOUR NAME:</span> {tour_name}</div>
				<div><span class="gridspan">DESTINATION:</span> {destination}</div>
				<div><span class="gridspan">DURATION:</span> {duration}</div>
				<?if( strlen('{highlights}') ):?>
				<div><span class="gridspan">HIGHLIGHTS:</span> {highlights}</div>
				<?endif?>
				<div><span class="gridspan">SERVICE BASIS:</span> {service_basis}</div>
				<div><span class="gridspan">DEPARTS:</span> {departs}</div>
			</div>
		</div>


		<div class="passenger_info bordered">
			<div class="head">PASSENGER INFO</div>
			<div class="text">
				<div><span class="gridspan">LEADER NAME:</span> {leader_name}</div>
				<div><span class="gridspan">PASSENGER CELL:</span> {passenger_cell}</div>
				<div><span class="gridspan">TRAVELLER(S) :</span> {travellers}</div>
				<div><span class="gridspan">BOOKING DATE :</span> {booking_date}</div>
				<div><span class="gridspan">SERVICE DATE :</span> {service_date}</div>
				<div><span class="gridspan">DEPARTURE POINT:</span> {departure_point}</div>
				<div><span class="gridspan">DEPARTURE TIME:</span> {departure_time}</div>
				<div><span class="gridspan">GUIDING LANGUAGE:</span> {guiding_language}</div>
				<?if( strlen('{additional_requests}') ):?>
				<div><span class="gridspan">ADDITIONAL REQUESTS :</span> {additional_requests}</div>
				<?endif?>
			</div>
		</div>



		<div class="notice">
			<div class="head">IMPORTANT INFO</div>
			If you informed us your mobile number, you'll receive the contact details of the driver 1 hour before the service so that you can contact if you are having difficulty about meeting. Please turn on your mobile on arrival, if possible.
			<br>
			Please print and sign this ticket<br>
			Bring with you on day of travel, no ticket no admission!<br>
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
			<div class="address">{website_address}</div>
			<div class="phone">
				<span>Office:</span> {website_phone} | 
				<span>Fax:</span> {website_fax} | 
				<span>Cell:</span> <icon class="fa fa-whatsapp"></icon> {website_cell}
			</div>
		</div>


		<div class="service_detail">
			
			<?if( strlen('{inclusions}') ):?>	
			<div class="bordered">
				<div class="head">Inclusions</div>
				<div class="text">{inclusions}</div>
			</div>
			<?endif?>

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

</div>

