<?php 


$title = "Блог - все записи";
// $currentUser = $_SESSION['logged-user'];

// $posts = R::find('posts', 'ORDER BY id DESC');
// $post = R::findOne('posts', 'id = ?', array($_GET['id']));

$sql = "
SELECT 
	posts.id, posts.title, posts.text, posts.post_image, posts.date_time, posts.update_time,
	posts.author_id, posts.category,
	users.name, users.surname,
	categories.cat_title
FROM `posts`
INNER JOIN categories ON posts.category = categories.id
INNER JOIN users ON posts.author_id = users.id
WHERE posts.id = " . $_GET['id'] . " LIMIT 1
";

$post = R::getAll($sql);
$post = $post[0];

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";



?>