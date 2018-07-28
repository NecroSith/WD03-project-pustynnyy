<?php 

if (!isAdmin()) {
	header("Location: " . HOST);
}


$title = "Удалить пост";
// $currentUser = $_SESSION['logged-user'];
$post = R::load('posts', $_GET['id']);

if (isset($_POST['postDelete'])) {

	$postImageFolderLocation = ROOT . "usercontent/blog/";
	$postImg = $post->post_image;

	$imgURL = $postImageFolderLocation . $postImg;


	if ($postImg != '') {
		
		if (file_exists($imgURL)) {
			unlink($imgURL);
		}

		$resizedFile = $postImageFolderLocation . "320-" . $postImg;

		if (file_exists($resizedFile)) {
			unlink($resizedFile);
		}

		$originalFile = $postImageFolderLocation . "orig-" . $postImg;

		if (file_exists($originalFile)) {
			unlink($originalFile);
		}
	}
	R::trash($post);
	header("Location: " . HOST . "blog?result=postDeleted");
	exit();
}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-delete.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>