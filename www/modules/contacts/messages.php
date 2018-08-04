<?php 


$title = "Сообщения";

$messages = R::find('messages', 'ORDER BY id ASC');

$currentMessage = R::load('messages', @$_GET['id']); 

if (!empty($_GET['id'])) {

	$messageImgFolderLocation = ROOT . 'usercontent/upload_files/';
	$messageImg = $currentMessage->message_file;
	if ( $messageImg != '' ) {
		$imgURL = $messageImgFolderLocation . $messageImg;
		if ( file_exists($imgURL) ) { 
			unlink($imgURL); 
		}
	}
	R::trash($currentMessage);
	header("Location: " . HOST . "messages?result=messageDeleted");
	exit();

}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/messages.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>