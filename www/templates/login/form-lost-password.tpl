<form id="passwordLost" method="POST" action="<?=HOST?>lost-password" class="login-page-form">
	<div class="login-page-form__header">Форма восстановления пароля</div>
	<!-- <div class="login-page-form__row">
		<div class="error">Введите email</div>
	</div> -->

	<?php 


	require ROOT . "templates/_parts/_error.tpl";
	require ROOT . "templates/_parts/_success.tpl";



	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";

	?>

	<!-- <div class="registration-page-form__row">
		<div class="error error--success">Все отлично!</div>
	</div> -->

	<div class="registration-page-form__row">
		<div class="error d-none">Введите email</div>
	</div>
	
	<div class="login-page-form__row text-center">
		<input name="email" class="input" type="email" placeholder="E-mail" /></div>
	<div class="login-page-form__row">
		<div class="login-page-form__col text-center">
			<a class="login-page__links" href="<?=HOST?>login">Вернуться на страницу входа</a>
		</div>
	</div>
	<div class="login-page-form__footer">
		<input type="submit" name="lost-password" class="button button--lost-pass" href="#" value="Восстановить пароль" />
	</div>
</form>