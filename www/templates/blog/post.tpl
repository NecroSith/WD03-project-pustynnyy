<div class="container mt-70 mb-120">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<div class="blog-full-post">
					<?php if (@$_SESSION['logged-user']['role'] == 'admin') {?>
						<div class="blog-full-post__button-edit">
							<a class="button button--edit" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>"> Редактировать</a>
							<a class="button button--del" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>"> Удалить</a>
						</div>

						<h1 class="blog__heading w-70p"><?=$post['title']?></h1>
					<?php } else { ?>
						<h1 class="blog__heading"><?=$post['title']?></h1>
					<?php } ?>
					<div class="blog__info-wrap">
						<span class="blog__name"><?=$post['name']?> <?=$post['surname']?></span>
						<span class="blog__travel"><a href="#"><?=$post['cat_title']?></a></span>
						<span class="blog__name mr-1">Создано</span>
						<span class="blog__date "><?=rus_date("j F Y H:i", strtotime($post['date_time']))?></span>

						<?php if($post['update_time'] != '') { ?>
							<span class="blog__name mr-1">Обновлено</span>
						<span class="blog__date"><?=rus_date("j F Y H:i", strtotime($post['update_time']))?></span>
					<?php } ?>
						<span class="blog__comments"> <a href="#">2 комментария</a></span></div>

					<?php if ($post['post_image'] != '') { ?>
						<div class="blog__image"> 
							<img class="card-post__img" src="<?=HOST?>usercontent/blog/<?=$post['post_image']?>" alt="<?=$post->title?>" />
						</div>
					<?php } ?>

					<div class="user-content">
						<?=$post['text']?>
					</div>
					<div class="flex-container-button mt-30"><a class="button " href="#"><i class="fas fa-arrow-left icon-style icon-style--back"></i>Назад</a><a class="button" href="#">Вперед<i class="fas fa-arrow-right icon-style"></i></a></div>
					<h3 class="user-comment-header">2 комментария</h3>
					<div class="user-comment">
						<div class="user-comment-avatar">
							<div class="avatar--small"><img src="../img/avatars/avatar-2.jpg" alt="avatar-small" /></div>
						</div>
						<div class="user-comment-wrap">
							<div class="comment-wrap">
								<div class="user-name">Джо До</div>
								<div class="user-date"><i class="far fa-clock"></i><span class="user-date--dat">05 Мая 2017 года в 15:45</span></div>
							</div>
							<p class="user-text">Замечательный парк, обязательно отправлюсь туда этим летом.</p>
						</div>
					</div>
					<div class="user-comment">
						<div class="user-comment-avatar">
							<div class="avatar--small"><img src="../img/avatars/avatar-3.jpg" alt="avatar-small" /></div>
						</div>
						<div class="user-comment-wrap">
							<div class="comment-wrap">
								<div class="user-name">Джо До</div>
								<div class="user-date"><i class="far fa-clock"></i><span class="user-date--dat">05 Мая 2017 года в 15:45</span></div>
							</div>
							<p class="user-text">Замечательный парк, обязательно отправлюсь туда этим летом.</p>
						</div>
					</div>
					<div class="title-2 mb-15">Оставить комментарий</div>
					<div class="comment-add-wrapper">
						<div class="comment-add__avatar float-left">
							<div class="avatar--small">
								<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged-user']['avatar_small']?>" alt="avatar-small" />
							</div>
						</div>
						<div class="comment-add-block">
							<div class="comment-add-block__name"><?=$_SESSION['logged-user']['name']?> <?=$_SESSION['logged-user']['surname']?></div>
							<div class="error">Комментарий не может быть пустым.</div>
							<div class="comment-add-block__text mt-10"><textarea class="textarea" rows="5" placeholder="Введите текст сообщения"></textarea></div>
						</div>
						<div class="comment-add__button mt-10"><a class="button" href="#">Опубликовать</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>