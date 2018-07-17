<?php 

include ROOT . "libs/functions.php";

$errors = [];
$success = [];

if (isset($_POST['lost-password'])) {

	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => "Введите email"];
	}

	if (empty($errors)) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']));

		if ($user) {

			// recovry code
			function randomString($num = 30) {
				return substr(str_shuffle('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, $num);
			}

			$recovery_code = randomString(25);
			$user->recovery_code = $recovery_code;
			$user->recovery_code_times = 3;
			R::store($user);

			$recoveryMsg = "<p>Ваш код для сброса пароля: <b>" . $recovery_code . "</b></p>";
			$recoveryMsg .= "<p>Для сброса пароля пройдите по сылке ниже и установите новый пароль</p>";
			$recoveryMsg .= "<p><a href=" . HOST ."set-new-password?email=" . $_POST['email'] . "&code=" . $recovery_code;
			$recoveryMsg .= '" target="_blank">';
			$recoveryMsg .= "Установить новый пароль</a></p>";


			$headers = "MIME-Version: 1.0" . PHP_EOL  .
						"Content-Type: text/html; charset=utf-8" . PHP_EOL  . 
						"From: " . adopt(SITE_NAME) . "<" . SITE_EMAIL . ">" . PHP_EOL .
						"Reply-to: " . ADMIN_EMAIL;

			mail($_POST['email'], "Восстановление доступа", $recoveryMsg, $headers);

			$success[] = ['title' => "Отлично!",
				'desc' => "Инструкции по восстановлениею пароля высланы на " . $_POST['email']];
		}
		else {
			$errors[] = ['title' => "Пользователя с таким email не существует"];
		}
	}
}

ob_start();
include ROOT . "templates/login/form-lost-password.tpl";

$content = ob_get_contents();

ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>