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
										<li class="active"><a href="#"><span>Noticias</span></a>
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
		</header>
		<main class="page-content section-41 section-sm-66">
		<div class="shell">
			<div class="range range-xs-center">
				<div class="cell-md-8">
					<section>
						<c:forEach var="noticia" items="${noticias}">
							<div class="offset-top-30 offset-sm-top-30">
								<!-- Post Event-->
								<article class="post post-event">
									<!-- Post media-->
									<header class="post-media">
										<div data-photo-swipe="gallery">
											<a class="thumbnail-classic"
												href="events-list-single-left-sidebar.html" target="_self">
												<figure>
													<img width="570" height="321"
														src="<c:url value="/resources/images/noticias/${noticia.imagen}" />"
														alt="">
												</figure>
											</a>
										</div>
									</header>
									<!-- Post content-->
									<section class="post-content text-left offset-top-41">
										<!-- Post Title-->
										<h3 class="offset-top-10">
											<a href="events-list-single-left-sidebar.html">${noticia.titulo}</a>
										</h3>
										<!-- Post Body-->
										<div class="post-body">
											<div class="inset-md-right-115">
												<p>${noticia.desc1}</p>
											</div>
										</div>
										<a href="events-list-single-left-sidebar.html"
											class="btn btn-anis-effect btn-sm btn-primary offset-top-30">Read
											More</a>
										<!-- Post meta-->
										<div class="post-meta context-dark">
											<time datetime="${noticia.fecha}">
												<span class="post-meta-day">${noticia.day}</span><span
													class="big text-uppercase post-meta-month">${noticia.month}</span>
											</time>
										</div>
									</section>
								</article>
							</div>
							<hr class="hr bg-lighter offset-top-41 offset-sm-top-66">
						</c:forEach>
					</section>
				</div>
			</div>
		</div>
		</main>
	</div>
	<script src="<c:url value="/resources/js/core.min.js" />"></script>
	<script src="<c:url value="/resources/js/script.js" />"></script>
</body>
</html>