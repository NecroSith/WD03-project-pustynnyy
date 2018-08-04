<div class="section-ui section section-experience user-medium">
	<div class="container">

		<div class="row mt-25">
			<div class="col-xl-6 offset-3">
				<div class="title-1 experience_title">Опыт работы</div>
			</div>
			<div class="col-xl-3">
				<?php if (isAdmin()) { ?>
				<div class="col-xl-3 offset-3"><a class="button button--edit" href="<?=HOST?>edit-jobs"> Редактировать</a></div>
				<?php } ?>
			</div>
		</div>
		<div class="row">
			<div class="col-xl-9 offset-3 mb-100">
				<?php foreach($jobs as $job) { 

					include ROOT . "templates/about/_card-job.tpl";
		 		} ?>
				
			</div>
		</div>
	</div>
</div>