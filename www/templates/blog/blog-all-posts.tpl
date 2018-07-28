
<div class="main-wrapper">
		<div class="container container--center">
			<?php if (isset($_GET['result'])) {
				include ROOT . "templates/blog/_results.tpl";
			} ?>
			<div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
				<div class="title-1">Блог об АйТи и не только</div>
				<?php if (isAdmin()) { ?>
					<div class="section-ui">
						<a class="button button--edit" href="<?=HOST?>blog/post-new"> Добавить пост</a>
					</div>
				<?php } ?>
			</div>
			<div class="row pb-100">

				<?php 

				foreach ($posts as $post) { 

					include ROOT . "templates/_parts/card.tpl";

				} ?>
			</div>
		</div>
	</div>