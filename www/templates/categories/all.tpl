<div class="container pt-50">
	<div class="row mt-10">
		<?php 
		// print_r($cats);
			if (isset($_GET['result'])) {
				include ROOT . "templates/categories/results.tpl";
			}
		?>
	</div>
	<div class="row justify-content-between align-items-center">
		<div class="title-1">Категории блога</div>
		<div class="section-ui">
			<a class="button button--edit" href="<?=HOST?>blog/category-new"> Добавить категорию</a>
		</div>	
	</div>

	<table class="table">
		<thead class="thead-light">
			<tr>
				<th scope="col">id</th>
				<th scope="col">Название</th>
				<th scope="col">Редактировать</th>
				<th scope="col">Удалить</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($cats as $cat) { ?>
				<tr>
					<th scope="row"><?=$cat['id']?></th>
					<th scope="row"><?=$cat['cat_title']?></th>
					<td>
						<a href="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>">Редактировать</a>
					</td>
					<td>
						<a href="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>">Удалить</a>
					</td>
				</tr>
			<?php } ?>
		</tbody>

	</table>
</div>
