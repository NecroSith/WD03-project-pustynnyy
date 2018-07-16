<?php 

$title = "Редактирование профиля пользователя";
$errors = [];

$currentUser = $_SESSION['logged-user'];
$user = R::load('users', $currentUser->id);

if (isset($_POST['profile-update'])) {
	if (trim($_POST['email']) == '') {
		$errors[] = "Введите email";
	}
	if (trim($_POST['name']) == '') {
		$errors[] = "Введите имя";
	}
	if (trim($_POST['surname']) == '') {
		$errors[] = "Введите фамилию";
	}

	if (empty($errors)) {
		$user->name = htmlentities($_POST['name']);
		$user->surname = htmlentities($_POST['surname']);
		$user->email = htmlentities($_POST['email']);
		$user->country = htmlentities($_POST['country']);
		$user->city = htmlentities($_POST['city']);

		R::store($user);
		$_SESSION['logged-user'] = $user;
		header('Location: ' . HOST . "profile");
	}
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>