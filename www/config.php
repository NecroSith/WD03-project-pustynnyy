<?php 

// DB settings
define('DB_HOST', 'localhost');
define('DB_NAME', 'project');
define('DB_USER', 'root');
define('DB_PASS', '');

// Site host
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

// Physical path to the main site directory
define('ROOT', dirname(__FILE__).'/');

?>