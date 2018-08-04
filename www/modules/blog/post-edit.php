<?php 

if (!isAdmin()) {
	header("Location: " . HOST);
}

$title = "Блог - редактировать пост";
// $currentUser = $_SESSION['logged-user'];
$post = R::load('posts', $_GET['id']);
$cats = R::find('categories', 'ORDER BY cat_title ASC');


if(isset($_POST['postUpdate'])) {
	if (trim($_POST['postTitle']) == '') {
		$errors[] = ['title' => 'Введите название поста'];
	}

	if (trim($_POST['postText']) == '') {
		$errors[] = ['title' => 'Введите текст поста'];
	}

	if(empty($errors)) {
		$post->title = htmlentities($_POST['postTitle']);
		$post->text = $_POST['postText'];
		$post->authorId = $_SESSION['logged-user']['id'];
		$post->updateTime = R::isoDateTime();
		$post->category = htmlentities($_POST['postCat']);

		if(isset($_FILES['postImage']['name']) && $_FILES['postImage']['tmp_name'] != '') {

			$fileName = $_FILES['postImage']['name'];
			$fileTempLoc = $_FILES['postImage']['tmp_name'];
			$fileType = $_FILES['postImage']['type'];
			$fileSize = $_FILES['postImage']['size'];
			$fileErrorMsg = $_FILES['postImage']['error'];
			$kaboom = explode(".", $fileName);

			$fileExt = end($kaboom);

			list($width, $height) = getimagesize($fileTempLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' => "Изображение слишком маленькое"];
			}

			if ($fileSize > 3145728) {
				$errors[] = ['title' => "Слишком большой размер изображения. Изображение должно быть не более 3 Мб"];
			}

			if (!preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName)) {
				$errors[] = ['title' => "Неверный формат изображения",
				'desc' => "Допускаются форматы gif, jpg, jpeg и png"];
			}

			if ($fileErrorMsg == 1) {
				$errors[] = ['title' => "Произошла обшика при загрузке изображения. Повторите попытку"];
			}

			$postImageFolderLocation = ROOT . "usercontent/blog/";
			$postImg = $post->post_image;

			$db_fileName = rand(1000000, 9999999) . "." . $fileExt;
			$imgURL = $postImageFolderLocation . $postImg;
			$uploadFile = $postImageFolderLocation . $db_fileName;
			$moveResult = move_uploaded_file($fileTempLoc, $uploadFile);


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

			if ($moveResult == false) {
				$errors[] = ['title' => "Ошибка загрузки файла"];
			}

			include_once ROOT . "/libs/image_resize_imagick.php";

			$targetFile = $postImageFolderLocation . $db_fileName;
			$wmax = $width;
			$hmax = $height;
			$originalFile = $postImageFolderLocation . "orig-" . $db_fileName;
			$image = createFullSizeImage($targetFile);
			$image->writeImage($originalFile);

			$post->postImageOriginal = "orig-" . $db_fileName;

			$targetFile = $postImageFolderLocation . $db_fileName;
			$wmax = 920;
			$hmax = 620;
			$image = createThumbnailCrop($targetFile, $wmax, $hmax);
			$image->writeImage($targetFile);

			$post->postImage = $db_fileName;

			$targetFile = $postImageFolderLocation . $db_fileName;
			$resizedFile = $postImageFolderLocation . "320-" . $db_fileName;
			$wmax = 320;
			$hmax = 140;
			$image = createThumbnailCrop($targetFile, $wmax, $hmax);
			$image->writeImage($resizedFile);

			$post->postImageSmall = "320-" . $db_fileName;

		}

		R::store($post);
		header('Location: ' . HOST . "blog?result=postUpdated");
		exit();
	}
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-edit.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>