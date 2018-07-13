<?php 

	foreach ($errors as $error) {
		if (count($error) == 1){ ?>
			<div class="error"><?=$error['title']?></div>
	<?php
		}
		else if (count($error) == 2) { ?>
			<div class="error-with-desc"><?=$error['title']?></div>
			<div class="error-with-desc-bottom">
				<?=$error['desc']?>
			</div>
	<?php
		}
	}

?>