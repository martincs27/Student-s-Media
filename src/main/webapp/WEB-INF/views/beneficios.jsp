<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="wide wow-animation smoothscroll scrollTo">
<head>
<!-- Site Title-->
<title>Student's Media - Beneficios</title>
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
		<div class="page-loader page-loader-variant-1">
			<div>
				<img class='img-responsive'
					style='margin-top: -20px; margin-left: -18px;' width='330'
					height='67'
					src='/studentsmedia/resources/images/studentsmedia/logo2.png'
					alt='' />
				<div class="offset-top-41 text-center">
					<div class="spinner"></div>
				</div>
			</div>
		</div>
		<header class="page-head">
			<div class="rd-navbar-wrap">
				<nav data-md-device-layout="rd-navbar-fixed"
					data-lg-device-layout="rd-navbar-static"
					class="rd-navbar rd-navbar-default rd-navbar-light"
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
									style='margin-top: -5px; margin-left: -15px;' height='31'
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
											style='margin-top: -5px; margin-left: -15px;' height='31'
											src='/studentsmedia/resources/images/studentsmedia/logo.png'
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
		<section class="breadcrumb-classic">
			<div class="shell section-34 section-sm-50">
				<div class="range range-lg-middle">
					<div class="cell-lg-2 veil reveal-sm-block cell-lg-push-2">
						<span class="mdi mdi-tag-multiple icon icon-white"></span>
					</div>
					<div
						class="cell-lg-5 veil reveal-lg-block cell-lg-push-1 text-lg-left">
						<h2>
							<span class="big">Beneficios</span>
						</h2>
					</div>
					<div
						class="offset-top-0 offset-sm-top-10 cell-lg-5 offset-lg-top-0 small cell-lg-push-3 text-lg-right">
						<ul class="list-inline list-inline-dashed p">
							<li><a href="/studentsmedia/index">Inicio</a></li>
							<li>Beneficios</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
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
												class="col-xs-12 col-sm-4 isotope-item">
												<!-- Thumbnail Janes-->
												<figure class="thumbnail-janes">
													<div>
														<a data-photo-swipe-item="" data-size="1170x600"
															href="images/portfolio/portfolio-02-1170x600.jpg"><img
															width="570" height="420"
															src="<c:url value="/resources/images/beneficios/${beneficio.imagen}" />"
															alt=""> </a>
													</div>
													<figcaption>
														<div>
															<h4 class="thumbnail-janes-title">${beneficio.entidad}</h4>
														</div>
														<p>${beneficio.descripcion}</p>
														<p>Vence: ${beneficio.fechafin}</p>
														<c:if test="${beneficio.estado=='Vencido'}">
															<span class="label-custom label-lg-custom label-danger">${beneficio.estado}</span>
														</c:if>
														<c:if test="${beneficio.estado=='Vigente'}">
															<span class="label-custom label-lg-custom label-primary">${beneficio.estado}</span>
														</c:if>
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