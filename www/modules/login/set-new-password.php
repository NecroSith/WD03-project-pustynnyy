<?php 

$errors = [];
$success = [];
$recovery_code = false;
$newPasswordReady = false;

// echo "test";

if (!empty($_GET['email'])) {
	$user = R::findOne('users', 'email = ?', array($_GET['email']));

	if ($user) {
		$user->recovery_code_times--;
		R::Store($user);

		// if ($user->revovery_code == $_GET['code']) {

			if ($user->recovery_code_times < 1) {
				echo "Превышен лимит попыток восстановления пароля";
				echo "<br><br>";
				echo "<a href='" . HOST . "'>Вернуться на главную</a>";
				die();
			}
		// } 

		if ($user->recovery_code == $_GET['code']) {
			$revovery_code = true;

		}
		else {
			$revovery_code = false;
		}
	
	}
	else {
		echo "Пользователь с таким email е найден";
		die();
	}
} else if (isset($_POST['set-new-password'])) {
echo "test";
	
	$user = R::findOne('users', 'email = ?', array($_POST['resetemail']));
	$user->recovery_code_times--;
	R::store($user);

	$user = R::findOne('users', 'email = ?', array($_POST['resetemail']));
	if ($user) {
		if ($user->recovery_code_times < 1) {
			die();
		}
	}

	if ($user->recovery_code == $_POST['onetimecode']) {
		$user->password = password_hash($_POST['resetpassword'], PASSWORD_DEFAULT);

		$user->recovery_code_times = 0;
		R::store($user);
		$success[] = ['title' => "Пароль был успешно изменен"];
		$newPasswordReady = true;
	}
}
else {
	header("Location: " . HOST . "lost-password");
	die();
}

ob_start();
include ROOT . "templates/login/form-set-new-password.tpl";

$content = ob_get_contents();

ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";


 ?>