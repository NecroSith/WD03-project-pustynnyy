<?php 

$title = "Редактирование профиля пользователя";
$errors = [];

$currentUser = $_SESSION['logged-user'];
$user = R::load('users', $currentUser->id);

if (isset($_POST['profile-update'])) {
	if (trim($_POST['email']) == '') {
		$errors[] = "Введите email";
	}
	if (trim($_POST['name']) == '') {
		$errors[] = "Введите имя";
	}
	if (trim($_POST['surname']) == '') {
		$errors[] = "Введите фамилию";
	}

	if (empty($errors)) {
		$user->name = htmlentities($_POST['name']);
		$user->surname = htmlentities($_POST['surname']);
		$user->email = htmlentities($_POST['email']);
		$user->country = htmlentities($_POST['country']);
		$user->city = htmlentities($_POST['city']);

		// print_r($_FILES);

		if (isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != '') {

			$fileName = $_FILES['avatar']['name'];
			$fileTempLoc = $_FILES['avatar']['tmp_name'];
			$fileType = $_FILES['avatar']['type'];
			$fileSize = $_FILES['avatar']['size'];
			$fileErrorMsg = $_FILES['avatar']['error'];

			// Split the string into two by a dot
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			//  Check file properties on different conditions
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

			$avatar = $user['avatar'];
			$avatarFolderLocation = ROOT . "usercontent/avatar/";

			if ($avatar != '') {
				$imgURL = $avatarFolderLocation . $avatar;

				// die($imgURL);

				if (file_exists($imgURL)) {
					unlink($imgURL);
					$resizedFile = $avatarFolderLocation . "48-" . $avatar;
					unlink($resizedFile);
				}
			}

			$db_fileName = rand(1000000, 9999999) . "." . $fileExt;
			$uploadFile = $avatarFolderLocation . $db_fileName;
			$moveResult = move_uploaded_file($fileTempLoc, $uploadFile);

			if ($moveResult == false) {
				$errors[] = ['title' => "Ошибка загрузки файла"];
			}

			include_once ROOT . "/libs/image_resize_imagick.php";

			$targetFile = $avatarFolderLocation . $db_fileName;
			$wmax = 222;
			$hmax = 222;
			$image = createThumbnail($targetFile, $wmax, $hmax);
			$image->writeImage($targetFile);

			$user->avatar = $db_fileName;

			$targetFile = $avatarFolderLocation . $db_fileName;
			$resizedFile = $avatarFolderLocation . "48-" . $db_fileName;
			$wmax = 48;
			$hmax = 48;
			$image = createThumbnail($targetFile, $wmax, $hmax);
			$image->writeImage($resizedFile);

			$user->avatarSmall = "48-" . $db_fileName;



		}

		R::store($user);
		$_SESSION['logged-user'] = $user;
		header('Location: ' . HOST . "profile");
	}
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>