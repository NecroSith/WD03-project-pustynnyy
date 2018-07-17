<form id="setNewPasswordForm" method="POST" action="<?=HOST?>set-new-password" class="login-page-form">
	<?php if ( $newPasswordReady == false ): ?>
		<div class="login-page-form__header">Введите новый пароль</div>
	<?php endif ?>
	
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

	<!-- <div class="registration-page-form__row">
		<div class="error d-none">Введите email</div>
	</div> -->
	
	<div class="login-page-form__row text-center">
		<input name="password" class="input" type="password" placeholder="Новый пароль" /></div>
	<div class="login-page-form__row">
		<div class="login-page-form__col text-center">
			<a class="login-page__links" href="<?=HOST?>login">Вернуться на страницу входа</a>
		</div>
	</div>
	<div class="login-page-form__footer">
		<?php if ( $newPasswordReady == false ) {?>
			<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
			<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
			<input name="set-new-password" type="hidden" value="set-new-password" />
			<a class="button button--set-new-password">Установить новый пароль</a>
		<?php } ?>
	</div>
</form>