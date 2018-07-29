<?php 

// $currentUser = $_SESSION['logged-user'];

// $posts = R::find('posts', 'ORDER BY id DESC');
// $post = R::findOne('posts', 'id = ?', array($_GET['id']));

$sqlPost = "
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

$post = R::getAll($sqlPost);
$post = $post[0];

$sqlComments = 'SELECT
			comments.text, comments.date_time, comments.user_id,
			users.name, users.surname, users.avatar_small
		FROM comments
		INNER JOIN users ON users.id = comments.user_id
		WHERE comments.post_id = ' . $_GET['id'];

$comments = R::getAll($sqlComments);

$title = $post['title'];

if (isset($_POST['addComment'])) {
	if (trim($_POST['commentText']) == '') {
		$errors[] = ['title' => 'Введите текст комментария'];
	}

	if (empty($errors)) {
		$comment = R::dispense('comments');
		$comment->postId = htmlentities($_GET['id']);
		$comment->userId = htmlentities($_SESSION['logged-user']['id']);
		$comment->text = htmlentities($_POST['commentText']);
		$comment->dateTime = R::isoDateTime();
		R::store($comment);
		$comments = R::getAll($sqlComments);
		// header("Location: " . HOST . "blog/post?id=" . $_GET['id']);
		// exit();
	}
}

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