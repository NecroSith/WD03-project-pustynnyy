<?php 


if (isAdmin())
{
	include ROOT . "templates/_parts/_admin-panel.tpl";
}


?>

<div class="header">
	<div class="header--vignette">
		<div class="header__top mb-0">
			<?php 

			include ROOT . "templates/_parts/_header-logo.tpl"; 

			if (isset($_SESSION['logged-user']) && $_SESSION['login'] == '1') 
			{
				// User is on site
				//  if it is not admin
				if ($_SESSION['role'] != 'admin') {
					//  do nothing
					include ROOT . "templates/_parts/_header-user-profile.tpl";
				}
			}
			else {
				//  User is not on site
				include ROOT . "templates/_parts/_header-user-links.tpl";
			} ?>
		</div>
		<?php include ROOT . "templates/_parts/_header-nav.tpl";  ?>
	</div>
		
</div>
