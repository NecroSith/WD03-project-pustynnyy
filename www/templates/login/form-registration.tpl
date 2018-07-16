<form method="POST" action="<?=HOST?>registration" class="registration-page-form">
	<div class="registration-page-form__header">Регистрация</div>

	<?php 


	require ROOT . "templates/_parts/_error.tpl";

	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";

	?>


	
	<!-- <div class="registration-page-form__row">
		<div class="error">Введите email</div>
	</div> -->
	<!-- <div class="registration-page-form__row error-busy-email-password">
		<div class="error-with-desc">Данный email уже занят</div>
		<div class="error-with-desc-bottom">
			<div class="error-with-desc-text">
				<div class="p">Используйте другой email, чтобы создать новый аккаун </div>
				<div class="p mt-15">Или воспользуйтесь <a class="error-with-desc__link" href="#">восстановлением пароля</a> , чтобы войти на сайт.</div>
			</div>
		</div>
	</div> -->
	<div class="registration-page-form__row">
		<input name="email" class="input" type="email" placeholder="E-mail" />
	</div>
	<div class="registration-page-form__row">
		<input name="password" class="input" type="password" placeholder="Пароль" />
	</div>
	<div class="registration-page-form__footer">
		<input type="submit" name="register" class="button button--registration button--reg" href="<?=HOST?>profile-edit" value="Регистрация" />
	</div>
</form>