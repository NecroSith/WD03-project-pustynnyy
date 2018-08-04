<div class="container mb-100">
	<?php include ROOT . "templates/_parts/_error.tpl"; ?>
	<div class="title-3 pt-30">Опыт работы</div>

		<?php foreach($jobs as $job) { 

			include ROOT . "templates/about/_card-job-edit.tpl";
		 } ?>

		<form action="<?=HOST?>edit-jobs" method="POST">
		<div class="title-3">Добавить новое место работы</div>
		<div class="user-message">
			<div class="fieldset__title">Период</div>
			<input name="period" class="input mb-15" placeholder="Введите даты начала и окончания работы" />
			<div class="fieldset__title">Название должности</div>
			<input name="title" class="input mb-15" placeholder="Введите название должности" />
			<div class="fieldset__title">Описание работы, должностные обязанности, достигнутые результаты</div>
			<textarea name="description" class="textarea mb-20" rows="5" placeholder="Напишите интересное краткое содержательное описание"></textarea>
			<input name="newJob" class="button button--save button--tp-0" type="submit" value="Добавить">
		</form>
</div>