<?php if ($_GET['result'] == 'postCreated') { ?>

	<div class="error error--success w-100p" data-notify-hide>
		Пост успешно добавлен
	</div>

<?php } ?>

<?php if ($_GET['result'] == 'postUpdated') { ?>

	<div class="error error--success w-100p" data-notify-hide>
		Пост успешно изменен
	</div>

<?php } ?>

<?php if ($_GET['result'] == 'postDeleted') { ?>

	<div class="error w-100p" data-notify-hide>
		Пост успешно удален
	</div>

<?php } ?>