<?php

# jalal7h@gmail.com
# 2017/04/24
# 1.0

add_slug([

	Slug::getSlugByName('post').'/$/$' => './?page=8&do=view_post&post_slug=$2' ,
	Slug::getSlugByName('post').'/$' => './?page=8&cat_slug=$1' ,

]);

