<?php 

$errors = [];

if (isset($_POST['login'])) {

	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email'];
	}
	if (trim($_POST['password']) == '') {
		$errors[] = ['title' => 'Введите пароль'];
	}


	if(empty($errors)) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']));

		if($user) {
			if(password_verify($_POST['password'], $user->password)) {
				$_SESSION['logged-user'] = $user;
				$_SESSION['login'] = '1';
				$_SESSION['role'] = $user->role;
				header('Location: ' . HOST . '/');
				exit();
			}
			else {
				$errors[] = ['title' => 'Неверный пароль'];
			}
		}

		
	}

}

ob_start();
include ROOT . "templates/login/form-login.tpl";

$content = ob_get_contents();

ob_end_clean();

include ROOT . "templates/login/login-page.tpl";

?>