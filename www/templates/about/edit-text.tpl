<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-1">
				<div class="title-1 m-0 pt-60">Редактировать обо мне</div>
				<form action="edit-text" method="POST" enctype="multipart/fprm-data" class="form mb-100 pb-20 pt-35">
					<div class="fieldset__title">Имя, Фамилия</div><input name="name" class="input" placeholder="Введите имя и фамилию" />
					<div class="fieldset__title pt-30">Фотография</div>
					<div class="comment-row">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
					<div class="control-row">
						<div class="file"><label class="file__label"><input class="file__input" type="file" name="photo"/><span class="file__inner-label">Выбрать файл</span></label><span class="file__inner-caption">Файл не выбран</span></div>
					</div>
					<div class="about-editing-avatar">
						<div class="avatar--small"><img src="../img/avatars/photo-big.jpg" alt="avatar-small" /></div>
					</div>
					<div class="fieldset__title">Информация на главной</div><textarea name="text" class="textarea" rows="5" placeholder="Введите текст сообщения">Я веб разработчик из Казани. Мне 28 лет.
Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.</textarea>
					<input name="textUpdate" type="submit" class="button mt-15 button--save button--tp-0" value="Сохранить">
			</form>
		</div>
	</div>
</div>