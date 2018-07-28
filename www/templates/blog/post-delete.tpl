<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-1">
				<div class="title-1 m-0 pt-60">Удалить пост в блоге</div>
				<?php include ROOT . "templates/_parts/_error.tpl" ?>
				<form enctype="multipart/form-data" action="<?=HOST?>blog/post-delete?id=<?=$post['id']?>" method="POST" class="form mb-100 pb-20 pt-35">
					<div class="fieldset">
						<label>
							<p>Вы действительно хотите удалить пост <strong><?=$post['title']?></strong>?</p>
						</label>
					</div>
					<div class="row">
						<div class="col-md-auto pr-10">
							<input type="submit" name="postDelete" class="button button--del button--tp-0" value="Удалить" />
						</div>
						<div class="col-md-auto pl-10">
							<a class="button" href="<?=HOST?>blog">Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>