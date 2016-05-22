<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
			'upload_blacklist' => '/\\.(?:php[34567s]?|phtml)$/i',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'admin-path' => 'symphony',
			'pagination_maximum_rows' => '20',
			'association_maximum_rows' => '5',
			'lang' => 'en',
			'pages_table_nest_children' => 'no',
			'version' => '2.6.7',
			'cookie_prefix' => 'sym-',
			'session_gc_divisor' => '10',
			'cell_truncation_length' => '75',
			'enable_xsrf' => 'yes',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### DATABASE ######
		'database' => array(
			'host' => 'localhost',
			'port' => '3306',
			'user' => null,
			'password' => null,
			'db' => null,
			'tbl_prefix' => 'sym_',
			'query_caching' => 'on',
			'query_logging' => 'on',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'no',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'Symphony Vue',
			'useragent' => 'Symphony/2.6.7',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0644',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0755',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'g:i a',
			'date_format' => 'm/d/Y',
			'datetime_separator' => ' ',
			'timezone' => 'Europe/Paris',
		),
		########


		###### CACHE_DRIVER ######
		'cache_driver' => array(
			'default' => 'database',
		),
		########


		###### HTTP-RESPONSE-HEADER-MAPPINGS ######
		'http-response-header-mappings' => array(
			'alloworigins' => 'Access-Control-Allow-Origin: *',
			'503' => 'HTTP/1.1 503 Service Unavailable',
			'ra1h' => 'Retry-After: 3600',
			'ra1d' => 'Retry-After: 86400',
			'ra1w' => 'Retry-After: 604800',
			'xml' => 'Content-Type: text/xml; charset=utf-8',
			'txt' => 'Content-Type: text/plain; charset=utf-8',
			'js' => 'Content-Type: application/x-javascript; charset=utf-8',
			'json' => 'Content-Type: application/json; charset=utf-8',
			'css' => 'Content-Type: text/css; charset=utf-8',
			'csv' => 'Content-Type: text/comma-separated-values; charset=utf-16',
			'xls' => 'Content-Type: application/msexcel',
			'rss' => 'Content-Type: application/rss+xml',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########
	);
