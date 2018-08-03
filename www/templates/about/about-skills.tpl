<?php 

function showIndicator($title, $value, $color) { 

	$circleWidth = 120;
	$radius = ($circleWidth - 20)/2;
	$perimeter = 2 * pi() * $radius;
	$offset = $perimeter * (1 - intval($value)/100);

	?>
	
	<div class="col-xl-2">
		<div class="indicator">
			<svg class="circle" viewbox="0 0 <?=$circleWidth?> <?=$circleWidth?>">
				<circle width="<?=$circleWidth?>" height="<?=$circleWidth?>"
				class="circle__bg" cx="56" cy="56" r="<?=$radius?>"></circle>
				<circle	
				<?php if ($color == '') { ?>
					class="circle__indicator"
				<?php } else { ?>
					class="circle__indicator circle__indicator--<?=$color?>"
				<?php } ?>
				stroke-dasharray="289";
				stroke-dashoffset="<?=$offset?>"
				cx="56" cy="56" r="<?=$radius?>"></circle>
			</svg>
			<div class="indicator__value"><?=$title?></div>
		</div>
	</div>


<?php } ?>



<div class="section-ui section section-technologi p-0">
	<div class="container pb-55 pt-55">
		<div class="row">
			<div class="col-xl-4 offset-3 mb-30 pl-30">
				<h2 class="title-1 mb-10 mt-0">Технологии</h2><span class="title-medium">Которые использую в работе</span></div>
				<?php if (isAdmin()) { ?>
				<div class="col text-right"><a class="button button--edit" href="<?=HOST?>edit-skills"> Редактировать</a></div>
				<?php } ?>
		</div>
		<div class="row stack">
			<div class="col-xl-3 text-center pr-0">
				<div class="title-3">Frontend</div>
			</div>

				<?php showIndicator('HTML', $skills['html'], 'green'); ?>
				<?php showIndicator('CSS', $skills['css'], 'green'); ?>
				<?php showIndicator('JS', $skills['js'], 'green'); ?>
				<?php showIndicator('jQuery', $skills['jquery'], 'green'); ?>
			
		</div>
		<div class="row stack">
			<div class="col-xl-3 text-center pr-0">
				<div class="title-3">Backend</div>
			</div>
			<?php showIndicator('PHP', $skills['php'], 'blue'); ?>
			<?php showIndicator('MySQL', $skills['mysql'], 'blue'); ?>
		</div>
		<div class="row stack">
			<div class="col-xl-3 text-center pr-0">
				<div class="title-3">Workflow</div>
			</div>
			<?php showIndicator('Git', $skills['git'], 'yellow'); ?>
			<?php showIndicator('Gulp', $skills['gulp'], 'yellow'); ?>
			<?php showIndicator('NPM', $skills['npm'], 'yellow'); ?>
			<?php showIndicator('Bower', $skills['bower'], 'yellow'); ?>
		</div>
	</div>
</div>