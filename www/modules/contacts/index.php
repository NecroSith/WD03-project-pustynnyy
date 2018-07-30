<?php 


$title = "Контакты";

$contacts = R::load('contacts', 1);

if (isset($_POST['newMessage'])) {

	if(trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email'];
	}

	if(trim($_POST['text']) == '') {
		$errors[] = ['title' => 'Введите текст сообщения'];
	}


	if (empty($errors)) {
		$message = R::dispense('messages');
		$message->email = htmlentities($_POST['email']);
		$message->dateTime = R::isoDateTime();
		$message->name = htmlentities($_POST['name']);
		$message->text = htmlentities($_POST['text']);

		R::store($message);

		if (isset($_FILES['file']['name']) && $_FILES['file']['tmp_name'] != '') {

				$fileName = $_FILES['file']['name'];
				$fileTempLoc = $_FILES['file']['tmp_name'];
				$fileType = $_FILES['file']['type'];
				$fileSize = $_FILES['file']['size'];
				$fileErrorMsg = $_FILES['file']['error'];

				$kaboom = explode(".", $fileName);
				$fileExt = end($kaboom);

				$db_fileName = rand(1000000, 9999999) . "." . $fileExt;

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

				$imgFolderLocation = ROOT . "usercontent/upload_files/";

				$uploadFile = $imgFolderLocation . $db_fileName;
				$moveResult = move_uploaded_file($fileTempLoc, $uploadFile);

				if ($moveResult == false) {
					$errors[] = ['title' => "Ошибка загрузки файла"];
				}

				$message->message_file_name_original = $fileName;
				$message->message_file = $db_fileName;

				R::store($message);

				$success[] = ['title' => 'Сообщение успешно отправлено!'];
				}
			}
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/contacts.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>