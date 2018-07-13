<form method="POST" action="<?=HOST?>login" class="login-page-form">
	<div class="login-page-form__header">Вход на сайт</div>
	<!-- <div class="login-page-form__row">
		<div class="error">Введите email</div>
	</div> -->

	<?php 


	require ROOT . "templates/_parts/_error.tpl";

	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";

	?>
	
	<div class="login-page-form__row">
		<input name="email" class="input" type="email" placeholder="E-mail" /></div>
	<div class="login-page-form__row">
		<input name="password" class="input" type="password" placeholder="Пароль" /></div>
	<div class="login-page-form__row">
		<div class="login-page-form__col">
			<div class="checkbox">
				<label class="checkbox__label">
					<input class="checkbox__input" type="checkbox" checked="checked"/>
					<span class="checkbox__check-inner"></span>
					<span class="checkbox__check-inner-label">Запомнить меня</span>
				</label>
			</div>
		</div>
		<div class="login-page-form__col float-right">
			<a class="login-page__links" href="#">Забыл пароль</a>
		</div>
	</div>
	<div class="login-page-form__footer">
		<input type="submit" name="login" class="button button--enter" href="#" value="Войти" />
	</div>
</form>