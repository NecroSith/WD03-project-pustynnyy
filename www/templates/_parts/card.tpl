<div class="col-4">
	<div class="section-ui">
		<div class="card card-post">
			<?php if ($post->post_image_small != '') { ?>
				<img class="card-post__img" src="<?=HOST?>usercontent/blog/<?=$post->post_image_small?>" alt="<?=$post->title?>" />
			<?php } else { ?>
				<img class="card-post__img" src="<?=HOST?>usercontent/blog/blog-no-image.jpg" alt="<?=$post->title?>" />
			<?php } ?>
			<div class="title-4">

			<?=mbCutString($post->title, 46)?>
				</div><a class="button" href="<?=HOST?>blog/post?id=<?=$post->id?>">Читать</a>
		</div>
	</div>
</div>