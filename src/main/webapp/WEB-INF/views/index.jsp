<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="wide wow-animation smoothscroll scrollTo">
<head>
<!-- Site Title-->
<title>Student's Media - Noticias</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="keywords"
	content="Student's Media, la app social de tu institución">
<meta name="date" content="Dec 26">
<link rel="icon"
	href="<c:url value="/resources/images/student-favicon.ico" />"
	type="image/x-icon">
<!-- Stylesheets-->
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Montserrat:400,700%7CLato:300,300italic,400,700,900%7CYesteryear">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<!--[if lt IE 10]>
  <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
  <script src="js/html5shiv.min.js"></script>
  <![endif]-->
</head>
<body>
	<!-- Page-->
	<div class="page text-center">
		<div class="page-loader page-loader-variant-1">
			<div>
				<img class='img-responsive'
					style='margin-top: -20px; margin-left: -18px;' width='330'
					height='67'
					src='/studentsmedia/resources/images/studentsmedia/logo.png' alt='' />
				<div class="offset-top-41 text-center">
					<div class="spinner"></div>
				</div>
			</div>
		</div>
		<!-- Page Head-->
		<header class="page-head slider-menu-position">
			<!-- RD Navbar Transparent-->
			<div class="rd-navbar-wrap">
				<nav data-md-device-layout="rd-navbar-fixed"
					data-lg-device-layout="rd-navbar-static"
					class="rd-navbar rd-navbar-default rd-navbar-transparent"
					data-lg-auto-height="true" data-md-layout="rd-navbar-fixed"
					data-lg-layout="rd-navbar-static" data-lg-stick-up="true">
					<div class="rd-navbar-inner">
						<!-- RD Navbar Panel-->
						<div class="rd-navbar-panel">
							<!-- RD Navbar Toggle-->
							<button data-rd-navbar-toggle=".rd-navbar, .rd-navbar-nav-wrap"
								class="rd-navbar-toggle">
								<span></span>
							</button>
							<!--Navbar Brand-->
							<div class="rd-navbar-brand">
								<a href="#"><img
									style='margin-top: -5px; margin-left: -15px;' width='138'
									height='31'
									src='/studentsmedia/resources/images/studentsmedia/logo.png'
									alt='' /></a>
							</div>
						</div>
						<div class="rd-navbar-menu-wrap">
							<div class="rd-navbar-nav-wrap">
								<div class="rd-navbar-mobile-scroll">
									<!--Navbar Brand Mobile-->
									<div class="rd-navbar-mobile-brand">
										<a href="#"><img
											style='margin-top: -5px; margin-left: -15px;' width='138'
											height='31'
											src='/studentsmedia/resources/images/studentsmedia/logo.png'
											alt='' /></a>
									</div>
									<div class="form-search-wrap"></div>
									<!-- RD Navbar Nav-->
									<ul class="rd-navbar-nav">
										<li class="active"><a href="#"><span>Inicio</span></a></li>
										<li><a href="/studentsmedia/noticias"><span>Noticias</span></a>
										</li>
										<li><a href="/studentsmedia/beneficios"><span>Beneficios</span></a>
										</li>
										<li><a href="/studentsmedia/eventos"><span>Eventos</span></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</nav>
			</div>
			<!--Swiper-->
			<div class="rd-parallax rd-parallax-swiper">
				<div data-speed="0.3" data-sm-speed="1" data-type="html"
					class="rd-parallax-layer">
					<div data-loop="true" data-height="100vh" data-dragable="false"
						data-min-height="480px" class="swiper-container swiper-slider">
						<div class="swiper-wrapper text-center">
							<div id="page-loader"
								data-slide-bg="/studentsmedia/resources/images/tecsup.jpg"
								data-preview-bg="/studentsmedia/resources/images/tecsup.jpg"
								class="swiper-slide">
								<div data-speed="0.5" data-fade="true"
									class="swiper-caption swiper-parallax">
									<div class="swiper-slide-caption">
										<div class="shell">
											<div class="range range-lg-center">
												<div class="cell-lg-12">
													<h1>
														<span data-caption-animate="fadeInUp"
															data-caption-delay="700" class="big text-uppercase">Bienvenido
															a Student's Media</span>
													</h1>
												</div>
												<div
													class="cell-lg-4 cell-md-4 cell-sm-4 offset-top-50 offset-xs-top-50">
													<a href="/studentsmedia/noticias"
														data-caption-animate="fadeInUp" data-caption-delay="1200"
														class="btn btn-block btn-danger btn-lg btn-aqil-effect btn-aqil-effect-mod-2"><span
														class="btn-text">Noticias</span></a>

												</div>
												<div
													class="cell-lg-4 cell-md-4 cell-sm-4 offset-top-50 offset-xs-top-50">
													<a href="/studentsmedia/beneficios"
														data-caption-animate="fadeInUp" data-caption-delay="1200"
														class="btn btn-block btn-success btn-lg btn-aqil-effect btn-aqil-effect-mod-2"><span
														class="btn-text">Beneficios</span></a>
												</div>
												<div
													class="cell-lg-4 cell-md-4 cell-sm-4 offset-top-50 offset-xs-top-50">
													<a href="/studentsmedia/eventos"
														data-caption-animate="fadeInUp" data-caption-delay="1200"
														class="btn btn-block btn-warning btn-lg btn-aqil-effect btn-aqil-effect-mod-2"><span
														class="btn-text">Eventos</span></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Page Contents-->
	</div>
	<!-- Java script-->
	<script src="<c:url value="/resources/js/core.min.js" />"></script>
	<script src="<c:url value="/resources/js/script.js" />"></script>
</body>
</html>