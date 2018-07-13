<?php 


// If the form is submitted - make registration
if (isset($_POST['register'])) {
	echo "<pre>";
	print_r($_POST);
	echo "</pre>";
}



// Preparing the content for the central block
ob_start();
include ROOT . "templates/login/form-registration.tpl";

$content = ob_get_contents();

ob_end_clean();

include ROOT . "templates/login/login-page.tpl";


?>