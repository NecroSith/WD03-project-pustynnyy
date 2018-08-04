

<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-1">
				<div class="title-1 m-0 pt-60">Добавить пост</div>
				<?php include ROOT . "templates/_parts/_error.tpl" ?>
				<form enctype="multipart/form-data" action="<?=HOST?>blog/post-new" method="POST" class="form mb-100 pb-20 pt-35">
					<div class="fieldset">
						<label>
							<div class="fieldset__title">Название</div>
							<input name="postTitle" class="input" placeholder="Введите название"/>
						</label>
					</div>
					<div class="fieldset">
						<label>
							<div class="fieldset__title">Категория</div>
							<select name="postCat">
								<?php foreach ($cats as $cat) { ?>
									<option value="<?=$cat['id']?>"><?=$cat['cat_title']?></option>
								<?php } ?>
							</select>
						</label>
					</div>
					<div class="fieldset">
						<div class="fieldset__title">Изображение</div>
						<div class="comment-row">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</div>
						<div class="control-row">
							<div class="file">
								<label class="file__label">
									<input class="file__input" type="file" name="postImage"/>
									<span class="file__inner-label">Выбрать файл</span>
								</label>
								<span class="file__inner-caption">Файл не выбран</span>
							</div>
						</div>
					</div>
					<div class="fieldset">
						<label>
							<div class="fieldset__title">Содержание</div>
							<textarea id="ckeditor" name="postText" class="textarea height-200" rows="7" placeholder="Введите описание"></textarea>
							<?php 
							include_once ROOT . "templates/_parts/_ckeditor-connect.tpl";
							 ?>
						</label>
					</div>
					<div class="row">
						<div class="col-md-auto pr-10">
							<input type="submit" name="postNew" class="button button--save button--tp-0" value="Сохранить" />
						</div>
						<div class="col-md-auto pl-10">
							<a class="button" href="<?=HOST?>blog">Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
