<?php foreach ($comments as $comment) { ?>
	<div class="user-comment">
		<div class="user-comment-avatar">
			<div class="avatar--small"><img src="<?=HOST?>usercontent/avatar/<?=$comment['avatar_small']?>" alt="avatar-small" /></div>
		</div>
		<div class="user-comment-wrap">
			<div class="comment-wrap">
				<div class="user-name"><?=$comment['name']?> <?=$comment['surname']?></div>
				<div class="user-date">
					<i class="far fa-clock"></i>
					<span class="user-date--dat"><?=$comment['date_time']?></span></div>
			</div>
			<p class="user-text"><?=$comment['text']?></p>
		</div>
	</div>

<?php } ?>