<div class="container mb-100">
	<form action="edit-skills" method="POST" class="form">
		<div class="col-10 offset-2">
	<div class="title-3 mt-50">Технологии</div>
	<?php include ROOT . "templates/_parts/_error.tpl"; ?>
	<div class="row mb-40">
		

		<?php function skillItem($name, $title) { 
			global $skills; ?>
			<div class="col-xl-2 col-md-2">
			<div class="fieldset__title technology__item-title"><?=$title?><input class="input technology__item-input" name="<?=$name?>" placeholder="50" value="<?=$skills[$name]?>" /></div>
			</div>
		<?php } ?>
		

		<?php skillItem('html', 'HTML5'); ?>
		<?php skillItem('css', 'CSS3'); ?>
		<?php skillItem('js', 'Javascript'); ?>
		<?php skillItem('jquery', 'jQuery'); ?>

	</div>
	<div class="row mb-40">

		<?php skillItem('php', 'PHP'); ?>
		<?php skillItem('mysql', 'MySQL'); ?>
		
	</div>
	<div class="row">

		<?php skillItem('git', 'Git'); ?>
		<?php skillItem('gulp', 'Gulp'); ?>
		<?php skillItem('bower', 'Bower'); ?>
		<?php skillItem('npm', 'NPM'); ?>

	</div>
	<input name="skillsUpdate" type="submit" class="button mt-15 button--save button--tp-0" value="Сохранить">
</div>
</form>
</div>