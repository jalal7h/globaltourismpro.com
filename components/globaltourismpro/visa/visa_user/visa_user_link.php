<?php

# jalal7h@gmail.com
# 2017/05/25
# 1.0

function visa_user_link( $visa_id ){
	
	return _URL . '/' . Slug::getSlugByName('userpanel') . '/visa/' . $visa_id;

}

