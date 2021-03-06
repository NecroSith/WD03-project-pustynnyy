<?php 


$title = "Регистрация";
$errors = array();

// If the form is submitted - make registration
if (isset($_POST['register'])) {

	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email', 'desc' => '<p>Email обязателен для регистрации на сайте</p>'];
	}
	if (trim($_POST['password']) == '') {
		$errors[] = ['title' => 'Введите пароль'];
	}


	//  Check if the user already exists
	if (R::count('users', 'email = ?', array($_POST['email'])) > 0) {
		$errors[] = [
					'title' => 'Пользователь с таким email уже зарегистрирован', 
					'desc' => '<p>Используйте другой email или воспользуйтесь формой восстановления пароля</p>'
					];
	}

	if(empty($errors)) {
		$user = R::dispense('users');
		$user->email = htmlentities($_POST['email']);
		$user->role = 'user';
		$user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		R::store($user);

		$_SESSION['logged-user'] = $user;
		$_SESSION['login'] = '1';
		$_SESSION['role'] = $user->role;

		// header('Location: ' . HOST . 'profile-edit');
		header('Location: ' . HOST . 'profile-edit');

		exit();
	}

}


// Preparing the content for the central block
ob_start();
include ROOT . "templates/login/form-registration.tpl";

$content = ob_get_contents();

ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>