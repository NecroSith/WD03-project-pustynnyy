<?php 

// DB settings
define('DB_HOST', 'localhost');
define('DB_NAME', 'WD03-project-pustynnyy');
define('DB_USER', 'root');
define('DB_PASS', '');

// Site settings for email
define('SITE_NAME', 'Сайт портфолио - WebDev02');
define('SITE_EMAIL', 'info@webdev03.com');
define('ADMIN_EMAIL', 'info@yanpustynnyy.ru');

// Site host
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

// Physical path to the main site directory
define('ROOT', dirname(__FILE__).'/');

?>