<?

# sends html content only

function mail_utf8( $to, $subject, $text, $header ) {
	$header_ = 'MIME-Version: 1.0' . "\r\n".'Content-type: text/html; charset=utf8' . "\r\n";
	//return true;
	return mail($to, '=?UTF-8?B?'.base64_encode($subject).'?=', $text, $header_ . $header);
}

