<?php  if(isLoggedIn()) { ?>
	<form id="commentForm" class="comment-add-wrapper" method="POST" action="<?=HOST?>blog/post?id=<?=$post['id']?>">
		<div class="comment-add__avatar float-left">
			<div class="avatar--small">
				<?php if ($_SESSION['logged-user']['avatar_small'] != '') { ?>
					<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged-user']['avatar_small']?>" alt="avatar-small" />
				<?php }  else { ?>
					<img src="<?=HOST?>www/templates/assets/img/noavatar.png" alt="avatar-small" />
				<?php	} ?>
			</div>
		</div>
		<div class="comment-add-block">
			<div class="comment-add-block__name"><?=$_SESSION['logged-user']['name']?> <?=$_SESSION['logged-user']['surname']?></div>
			<div class="error" style="display: none" data-error-comment-empty >Комментарий не может быть пустым.</div>
			<div class="comment-add-block__text mt-10">
				<textarea name="commentText" class="textarea" rows="5" placeholder="Введите текст сообщения"></textarea>
			</div>
		</div>
		<div class="comment-add__button mt-10">
			<input type="hidden" value="newComment" name="addComment">
			<input name="addComment" class="button button--tp-0" type="submit" value="Опубликовать" data-add-comment>
		</div>
	</form>
<?php } else { ?>
	<div class="block-registration">
		<p>
			<a href="<?=HOST?>login">Войдите</a> или <a href="<?=HOST?>registration">зарегистрируйтесь</a><br>чтобы оставить комментарий
		</p>
	</div>
<?php } ?>