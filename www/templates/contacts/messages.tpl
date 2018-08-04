<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60 mb-50">Сообщения от пользователей</div>

			<?php include ROOT . "templates/contacts/results.tpl"; ?>

			<?php foreach ($messages as $message) { 
					include ROOT . "templates/contacts/message-card.tpl";
				 } ?>
		</div>
	</div>
</div>