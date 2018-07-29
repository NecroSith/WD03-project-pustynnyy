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
						<span class="blog__comments"> <a href="#"><?=commentNumber(count($comments))?></a></span></div>

					<?php if ($post['post_image'] != '') { ?>
						<div class="blog__image"> 
							<img class="card-post__img" src="<?=HOST?>usercontent/blog/<?=$post['post_image']?>" alt="<?=$post->title?>" />
						</div>
					<?php } ?>

					<div class="user-content">
						<?=$post['text']?>
					</div>

					<div class="flex-container-button mt-30">
						<a class="button " href="#">
							<i class="fas fa-arrow-left icon-style icon-style--back"></i>Предыдущий пост
						</a>
						<a class="button" href="#">Следующий пост
							<i class="fas fa-arrow-right icon-style"></i>
						</a>
					</div>

					<?php if(count($comments) > 0) { ?>
						<h3 class="user-comment-header"><?=commentNumber(count($comments))?>
						</h3>
					<?php
					 	include ROOT . "templates/blog/_comment-card.tpl";
					 } else { ?>
						<h3 class="user-comment-header">Комментариев пока нет</h3>
					<?php } ?>

					<div class="title-2 mb-15">Оставить комментарий</div>

					<?php include ROOT . "templates/blog/_add-comment-form.tpl"; ?>
				</div>
			</div>
		</div>
	</div>