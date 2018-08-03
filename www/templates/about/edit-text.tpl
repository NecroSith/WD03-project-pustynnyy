<?php 
	function getData($fieldName) {
		global $about;
		echo @$_POST[$fieldName] != '' ? @$_POST[$fieldName] : $about[$fieldName];
	}
?>

<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-1">
				<div class="title-1 m-0 pt-60">Редактировать обо мне</div>
				<?php include ROOT . "templates/_parts/_error.tpl"; ?>
				<form action="edit-text" method="POST" enctype="multipart/form-data" class="form mb-100 pb-20 pt-35">
					<div class="fieldset__title">Имя, Фамилия</div><input name="name" class="input" placeholder="Введите имя и фамилию" value="<?php getData('name')?>" />
					<div class="fieldset__title pt-30">Фотография</div>
					<div class="comment-row">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
					<div class="control-row">
						<div class="file"><label class="file__label"><input class="file__input" type="file" name="photo"/><span class="file__inner-label">Выбрать файл</span></label><span class="file__inner-caption">Файл не выбран</span></div>
					</div>
					<div class="about-editing-avatar">
						<img src="<?=HOST?>usercontent/about/<?=$about['photo']?>" alt="<?=$about['photo']?>" />
					</div>
					<div class="fieldset__title">Информация на главной</div>
					<textarea id="ckeditor" name="text" class="textarea height-200" rows="17" placeholder="Введите описание"><?php getData('description')?></textarea>
							<?php 
							include_once ROOT . "templates/_parts/_ckeditor-connect.tpl";
							 ?>
					<input name="textUpdate" type="submit" class="button mt-15 button--save button--tp-0" value="Сохранить">
			</form>
		</div>
	</div>
</div>