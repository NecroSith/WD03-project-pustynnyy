<?php 

	foreach (@$success as $item) {
		if (count($item) == 1){ ?>
			<div class="error success"><?=$item['title']?></div>
	<?php
		}
		else if (count($item) == 2) { ?>
			<div class="error-with-desc"><?=$item['title']?></div>
			<div class="error-with-desc-bottom">
				<?=$item['desc']?>
			</div>
	<?php
		}
	}

?>