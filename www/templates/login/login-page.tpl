<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8" />
	<title>Регистрация нового пользователя</title>
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"/><![endif]-->
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<!-- build:cssVendor css/vendor.css -->
	<link rel="stylesheet" href="<?=HOST?>templates/assets/libs/normalize-css/normalize.css" />
	<link rel="stylesheet" href="<?=HOST?>templates/assets/libs/bootstrap-4-grid/grid.min.css" />
	<link rel="stylesheet" href="<?=HOST?>templates/assets/libs/jquery-custom-scrollbar/jquery.custom-scrollbar.css" />
	<!-- endbuild -->
	<!-- build:cssCustom css/main.css -->
	<link rel="stylesheet" href="<?=HOST?>templates/assets/css/main.css" />
	<!-- endbuild -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
	<!--[if lt IE 9]><script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
</head>

<body class="registration-page">
	<div class="registration-page-content">
		<div class="registration-page__container">
			<div class="registration-page-header">
				<div class="header__logo ml-100"><a class="header__logo-icon-link" href="#"><i class="far fa-paper-plane"></i></a>
					<div class="header__general">
						<p class="header__title mb-0"><a class="header__title" href="index.html">Супер Сайт</a></p>
					</div>
				</div>
				<div class="header-user mt-45 mr-45"><a class="login-page__links" href="login.html">Вход</a></div>
			</div>
			<?=$content?>
			<div class="registration-page-footer">
				<div class="footer__copyright">
					<p>© Юрий Ключевский</p>
					<p>Создано c <i class="fas fa-heart"> </i> в <a class="link-bold" href="http://webcademy.ru/">WebCademy.ru</a> в 2017 году </p>
				</div>
			</div>
		</div>
	</div>
	<!-- build:jsLibs js/libs.js -->
	<script src="<?=HOST?>templates/assets/libs/jquery/jquery.min.js"></script>
	<!-- endbuild -->
	<!-- build:jsVendor js/vendor.js -->
	<script src="<?=HOST?>templates/assets/libs/jquery-custom-scrollbar/jquery.custom-scrollbar.js"></script>
	<!-- endbuild -->
	<!-- google maps-->
	<script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAm799yaN1ZBAnyf6PT3Y_iXSZLkG5w1oE&amp;callback=initMap"></script>
	<script src="<?=HOST?>templates/assets/js/map.js"></script>
	<!-- //google maps-->
	<!-- build:jsMain js/main.js -->
	<script src="<?=HOST?>templates/assets/js/main.js"></script>
	<!-- endbuild -->
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>

</html>