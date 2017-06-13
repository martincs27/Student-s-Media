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
	<div class="page text-center">
		<header class="page-head">
			<div class="rd-navbar-wrap">
				<nav data-md-device-layout="rd-navbar-fixed"
					data-lg-device-layout="rd-navbar-static"
					class="rd-navbar rd-navbar-default rd-navbar-dark"
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
								<a href="/studentsmedia/index"><img
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
										<a href="/studentsmedia/index"><img
											style='margin-top: -5px; margin-left: -15px;' width='138'
											height='31'
											src='/studentsmedia/resources/images/intense/student-logo.png'
											alt='' /></a>
									</div>
									<!-- RD Navbar Nav-->
									<ul class="rd-navbar-nav">
										<li><a href="/studentsmedia/index"><span>Inicio</span></a>
										</li>
										<li><a href="/studentsmedia/noticias"><span>Noticias</span></a>
										</li>
										<li class="active"><a href="#"><span>Beneficios</span></a>
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
		</header>
		<main class="page-content">
		<section class="section-20 section-sm-20">
			<div class="shell">
				<div class="offset-top-10">
					<div class="isotope-wrap">
						<div class="row">
							<!-- Isotope Content-->
							<div class="col-lg-12 offset-top-34">
								<div data-isotope-layout="fitRows" data-isotope-group="gallery"
									class="isotope">
									<c:forEach var="beneficio" items="${beneficios}">
										<div data-photo-swipe-gallery="gallery" class="row">
										<div data-filter="Gallery 2"
											class="col-xs-12 col-sm-6 isotope-item">
											<!-- Thumbnail Janes-->
											<figure class="thumbnail-janes">
												<div>
													<a data-photo-swipe-item="" data-size="1170x600"
														href="images/portfolio/portfolio-02-1170x600.jpg"><img
														width="570" height="420"
														src="<c:url value="/resources/images/beneficios/${beneficio.imagen}" />" alt=""></a>
												</div>
												<figcaption>
													<div>
														<h4 class="thumbnail-janes-title">${beneficio.entidad}</h4>
													</div>
													<p>${beneficio.descripcion}</p>
													<p>Fecha Fin ${beneficio.fechafin}</p>
												</figcaption>
											</figure>
										</div>
									</div>									
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		</main>
	</div>
	<script src="<c:url value="/resources/js/core.min.js" />"></script>
	<script src="<c:url value="/resources/js/script.js" />"></script>
</body>
</html>