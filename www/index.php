<?php 

require "config.php";
require "db.php";


// Router

$uri = $_SERVER['REQUEST_URI'];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ($uri[0]) {
	case '':
		includeROOT . "modules/main/index.php";
		break;

	// users
	case 'login':
		include ROOT . "modules/login/login.php";
		break;

	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;

	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;

	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		include ROOT . "modules/login/set-new-password.php";
		break;

	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;

	case 'profile-edit':
		include ROOT . "modules/profile/profile-edit.php";
		break;

	//  end users

	case 'about':
		include ROOT . "modules/about/index.php";
		break;

	case 'blog':
		include ROOT . "modules/blog/index.php";
		break;

	case 'contacts':
		include ROOT . "modules/contacts/index.php";
		break;

	// default:
	// 	include ROOT . "modules/main/index.php";
	// 	break;
}

// End Router

// print_r($uri);


// ?>