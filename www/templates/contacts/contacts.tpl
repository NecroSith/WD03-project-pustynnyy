<div class="container mt-50">

	<?php if (isAdmin()) { ?>
		<div class="flex-wrap-button">
			<div class="mr-20"><a class="button button--edit" href="<?=HOST?>contacts-edit"> Редактировать</a></div><a class="button" href="<?=HOST?>messages">Сообщения</a>
		</div>
	<?php } ?>

	<div class="row mb-80">
		<div class="col-md-10">
			<div class="row justify-content-between">
				<div class="col-md-6">
					<h2 class="title-2 extrabold">Контакты</h2>

					<?php function showContactItem($name, $title) {
							global $contacts;
							if (@$contacts[$name] != '') { ?>
								<div class="row mb-15">
									<div class="col">
										<strong>
											<?=$title?>
										</strong>
									</div>
									<div class="col">
										<?php if ($name == 'email') {?>
										<a class="contacts-block-info__item-link" target="__blank" href="mailto:<?=$contacts[$name]?>"><?=$contacts[$name]?></a>
										<?php } else if ($name == 'phone') { ?>
											<a class="contacts-block-info__item-link" target="__blank" href="tel:<?=$contacts[$name]?>"><?=$contacts[$name]?></a>
										<?php } else if ($name == 'skype') { ?>
											<a class="contacts-block-info__item-link" target="__blank" href="skype:<?=$contacts[$name]?>?chat"><?=$contacts[$name]?></a>
										<?php } else if ($name == 'github') { ?>
											<a class="contacts-block-info__item-link" target="__blank" href="https://github.com/<?=$contacts[$name]?>"><?=$contacts[$name]?></a>
										<?php } else if ($name == 'bitbucket') { ?>
											<a class="contacts-block-info__item-link" target="__blank" href="https://bitbucket.org/<?=$contacts[$name]?>/"><?=$contacts[$name]?></a>
										<?php } else if ($name == 'address') { ?>
											<a class="contacts-block-info__item-link" target="__blank" href=""><?=$contacts[$name]?></a>
										<?php } else { ?>
											<a class="contacts-block-info__item-link" target="__blank" href="<?=$contacts[$name]?>"><?=$contacts[$name]?></a>
										<?php }  ?>

									</div>
								</div>
						<?php  }}?>

						<?php showContactItem('name', 'Имя') ?>
						<?php showContactItem('surname', 'Фамилия') ?>
						<?php showContactItem('email', 'Email') ?>
						<?php showContactItem('skype', 'Skype') ?>

						<?php if (@$contacts['vk'] != '' && @$contacts['fb'] != '' && @$contacts['twitter'] != '') { ?>
							<div class="row mb-15">
								<div class="col">
									<strong>
										Социальные сети
									</strong>
								</div>
								<div class="col p-0">
									<?php if (@$contacts['vk'] != '') { ?>
										<a class="contact-social-link"  target="__blank" href="<?=$contacts['vk']?>">Профиль ВКонтакте</a>
									<?php } ?>
									<?php if (@$contacts['fb'] != '') { ?>
										<a class="contact-social-link" target="__blank" href="<?=$contacts['fb']?>">Профиль на Facebook</a>
									<?php } ?>
									<?php if (@$contacts['twitter'] != '') { ?>
										<a class="contact-social-link" target="__blank" href="<?=$contacts['twitter']?>">Профиль в Twitter</a>
									<?php } ?>
									<?php if (@$contacts['linkedin'] != '') { ?>
										<a class="contact-social-link" target="__blank" href="<?=$contacts['linkedin']?>">Профиль в LinkedIn</a>
									<?php } ?>
								</div>
							</div>
						<?php } ?>

						<?php showContactItem('github', 'Github') ?>
						<?php showContactItem('bitbucket', 'Bitbucket') ?>
						<?php showContactItem('phone', 'Телефон') ?>
						<?php showContactItem('address', 'Адрес') ?>


					<div class="row justify-content-between mt-minus-8">

						<div class="col-md-6 ">

								
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="title-2 extrabold">Связаться со мной</div>

					<?php 
					include ROOT . "templates/_parts/_error.tpl"; 
					include ROOT . "templates/_parts/_success.tpl";
					?>

					<form class="form" action="<?=HOST?>contacts" method="POST" enctype="multipart/form-data">
						<input name="name" class="input mb-10" placeholder="Введите имя" />

						<input name="email" class="input mb-10" placeholder="Email" />

						<textarea name="text" class="textarea" rows="5" placeholder="Сообщение"></textarea>
						<div class="fieldset__title mt-20">Прикрепить файл</div>

						<div class="comment-row">jpg, png, pdf, doc, весом до 2Мб.</div>
						<div class="control-row mb-20">
							<div class="file">
								<label class="file__label">
									<input name="file" class="file__input" type="file" name="file3"/>
									<span class="file__inner-label file__inner-label--large-radius">Выбрать файл</span>
								</label>
								<span class="file__inner-caption">Файлы не выбран</span>
							</div>
						</div>
						<input type="submit" name="newMessage" class="button button--save button--tp-0" value="Отправить">
					</form>
				</div>
			</div>
		</div>
	</div>
</div>