<div class="container">
	<div class="row">
		<div class="col-xl-12">
			<div class="title-1 m-0 pt-60">Редактировать данные</div>
			<?php include ROOT . "templates/_parts/_error.tpl"; ?>
			<form action="<?=HOST?>contacts-edit" method="POST" class="form mb-100 pb-20 pt-35">
				<div class="row fieldset">
					<div class="col-3">
						<label>
							<div class="fieldset__title">Имя</div>
							<input name="name" class="input" placeholder="Введите имя" 
							value="<?= @$_POST['name'] != '' ? @$_POST['name'] : $contacts['name']; ?>" />
						</label>
					</div>
					<div class="col-3">
						<label>
							<div class="fieldset__title">Фамилия</div>
							<input name="surname" class="input" placeholder="Введите фамилию" value="<?= @$_POST['surname'] != '' ? @$_POST['surname'] : $contacts['surname']; ?>"/>
						</label>
					</div>
				</div>
				<div class="row fieldset">
					<div class="col-3">
						<label>
							<div class="fieldset__title">Email</div>
							<input name="email" class="input" type="email" placeholder="Введите email" value="<?= @$_POST['email'] != '' ? @$_POST['email'] : $contacts['email']; ?>"/>
						</label>
					</div>
					<div class="col-3">
						<label>
							<div class="fieldset__title">Skype</div>
							<input name="skype" class="input" placeholder="Введите skype" value="<?= @$_POST['skype'] != '' ? @$_POST['skype'] : $contacts['skype']; ?>"/>
						</label>
					</div>
				</div>
				<div class="row fieldset">
					<div class="col-3">
						<label>
							<div class="fieldset__title">Вконтакте</div>
							<input name="vk" class="input" placeholder="Введите ссылку на профиль" value="<?= @$_POST['vk'] != '' ? @$_POST['vk'] : $contacts['vk']; ?>"/>
						</label>
					</div>
					<div class="col-3">
						<label>
							<div class="fieldset__title">Facebook</div>
							<input name="fb" class="input" placeholder="Введите ссылку на профиль" value="<?= @$_POST['fb'] != '' ? @$_POST['fb'] : $contacts['fb']; ?>"/>
						</label>
					</div>
					<div class="col-3">
						<label>
							<div class="fieldset__title">LinkedIn</div>
							<input name="linkedin" class="input" placeholder="Введите ссылку на профиль" value="<?= @$_POST['linkedin'] != '' ? @$_POST['linkedin'] : $contacts['linkedin']; ?>"/>
						</label>
					</div>
					<div class="col-3">
						<label>
							<div class="fieldset__title">Telegram</div>
							<input name="telegram" class="input" placeholder="Введите ссылку на профиль" value="<?= @$_POST['telegram'] != '' ? @$_POST['telegram'] : $contacts['telegram']; ?>"/>
						</label>
					</div>
					<div class="col-3">
						<label>
							<div class="fieldset__title">GitHub</div>
							<input name="github" class="input" placeholder="Введите ссылку на профиль" value="<?= @$_POST['github'] != '' ? @$_POST['github'] : $contacts['github']; ?>"/>
						</label>
					</div>
					<div class="col-3">
						<label>
							<div class="fieldset__title">Bitbucket</div>
							<input name="bitbucket" class="input" placeholder="Введите ссылку на профиль" value="<?= @$_POST['bitbucket'] != '' ? @$_POST['bitbucket'] : $contacts['bitbucket']; ?>"/>
						</label>
					</div>
					<div class="col-3">
						<label>
							<div class="fieldset__title">Twitter</div>
							<input name="twitter" class="input" placeholder="Введите ссылку на профиль" value="<?= @$_POST['twitter'] != '' ? @$_POST['twitter'] : $contacts['twitter']; ?>"/>
						</label>
					</div>
				</div>
				<div class="row fieldset mb-30">
					<div class="col-3">
						<label>
							<div class="fieldset__title">Телефон</div>
							<input name="phone" class="input" placeholder="Введите телефон" value="<?= @$_POST['phone'] != '' ? @$_POST['phone'] : $contacts['phone']; ?>"/>
						</label>
					</div>
					<div class="col-3">
						<label>
							<div class="fieldset__title">Адрес</div>
							<input name="address" class="input" placeholder="Введите адрес" value="<?= @$_POST['address'] != '' ? @$_POST['address'] : $contacts['address']; ?>"/>
						</label>
					</div>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input class="button button--save button--tp-0" type="submit" name="contactsUpdate" value="Сохранить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>contacts">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>