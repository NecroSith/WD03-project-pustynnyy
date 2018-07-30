<?php 

require "config.php";
require ROOT . "db.php";
require ROOT . "libs/functions.php";

$errors = [];
$success = [];

session_start();

// Router

$uri = $_SERVER['REQUEST_URI'];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ($uri[0]) {
	case '':
		include ROOT . "modules/main/index.php";
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

	//  categories

	case 'blog/categories':
		include ROOT . "modules/categories/all.php";
		break;	

	case 'blog/category-new':
		include ROOT . "modules/categories/new.php";
		break;	

	case 'blog/category-edit':
		include ROOT . "modules/categories/edit.php";
		break;

	case 'blog/category-delete':
		include ROOT . "modules/categories/delete.php";
		break;		

	//  end categories


	//  blog section

	case 'blog':
		include ROOT . "modules/blog/index.php";
		break;

	case 'blog/post-new':
		include ROOT . "modules/blog/post-new.php";
		break;

	case 'blog/post-edit':
		include ROOT . "modules/blog/post-edit.php";
		break;

	case 'blog/post-delete':
		include ROOT . "modules/blog/post-delete.php";
		break;

	case 'blog/post':
		include ROOT . "modules/blog/post.php";
		break;

	//  end blog section

	// About

	case 'about':
		include ROOT . "modules/about/index.php";
		break;

	case 'about-edit':
		include ROOT . "modules/about/about-edit.php";
		break;

	case 'skills-edit':
		include ROOT . "modules/about/skills-edit.php";
		break;

	case 'experience-edit':
		include ROOT . "modules/about/experience-edit.php";
		break;

	// end about

	//  Contacts

	case 'contacts':
		include ROOT . "modules/contacts/index.php";
		break;

	case 'contacts-edit':
		include ROOT . "modules/contacts/edit.php";
		break;

	case 'messages':
		include ROOT . "modules/contacts/messages.php";
		break;

	//  End contacts

	default:
		include ROOT . "modules/main/page-not-found.php";
		break;
}

// End Router




// ?>