<?php 

if (!isAdmin()) {
	header("Location: " . HOST);
}

$title = "Контакты";

$contacts = R::load('contacts', 1);


if (isset($_POST['contactsUpdate'])) {

	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email'];
	}

	if (trim($_POST['phone']) == '') {
		$errors[] = ['title' => 'Введите телефон'];
	}

	if (trim($_POST['address']) == '') {
		$errors[] = ['title' => 'Введите адрес'];
	}

	if (empty($errors)) {
		$contacts->email = htmlentities($_POST['email']);
		$contacts->phone = htmlentities($_POST['phone']);
		$contacts->address = htmlentities($_POST['address']);

		$contacts->name = htmlentities($_POST['name']);
		$contacts->surname = htmlentities($_POST['surname']);

		$contacts->skype = htmlentities($_POST['skype']);
		$contacts->vk = htmlentities($_POST['vk']);
		$contacts->fb = htmlentities($_POST['fb']);
		$contacts->twitter = htmlentities($_POST['twitter']);
		$contacts->telegram = htmlentities($_POST['telegram']);
		$contacts->linkedin = htmlentities($_POST['linkedin']);
		$contacts->github = htmlentities($_POST['github']);
		$contacts->bitbucket = htmlentities($_POST['bitbucket']);

		R::store($contacts);
		header("Location: " . HOST . "contacts");
		exit();


	}
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/edit.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>