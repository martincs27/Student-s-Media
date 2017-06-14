<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en" class="wide wow-animation smoothscroll scrollTo">
<head>
<!-- Site Title-->
<title>Student's Media - Register</title>
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
					src='/studentsmedia/resources/images/studentsmedia/logo2.png'
					alt='' />
				<div class="offset-top-41 text-center">
					<div class="spinner"></div>
				</div>
			</div>
		</div>
		<!-- Page Content-->
		<main class="page-content bg-shark-radio">
		<div class="one-page">
			<div class="one-page-header">
				<!--Navbar Brand-->
				<div class="rd-navbar-brand">
					<a href="#"><img
						style='margin-top: -5px; margin-left: -15px;' height='31'
						src='<c:url value="/resources/images/studentsmedia/logo2.png" />'
						alt='' /></a>
				</div>
			</div>
			<!-- Register-->
			<section>
				<div class="shell">
					<div class="range">
						<div
							class="section-85 section-cover range range-xs-center range-xs-middle">
							<div class="cell-xs-10 cell-sm-8 cell-md-5">
								<div
									class="panel section-34 section-sm-41 inset-left-20 inset-right-20 inset-sm-left-20 inset-sm-right-20 inset-lg-left-30 inset-lg-right-30 bg-white shadow-drop-md">
									<!-- Icon Box Type 4-->
									<span
										class="icon icon-circle icon-bordered icon-lg icon-default mdi mdi-account-multiple-outline"></span>
									<div>
										<div class="offset-top-30 text-darker big text-bold">Crea
											tu cuenta</div>
										<p class="text-extra-small text-dark offset-top-4">Todos
											los campos son requeridos</p>
									</div>
									<!-- RD Mailform-->
									<form:form data-form-output="form-output-global"
										data-form-type="contact" method="post"
										class="text-left offset-top-24" action="register">
										<div class="form-group">
											<div class="input-group input-group-sm">
												<span class="input-group-addon input-group-addon-inverse"><span
													class="input-group-icon mdi mdi-account-outline"></span></span>
												<form:input path="username" placeholder="Usuario"
													type="text" name="user-name" data-constraints="@Required"
													class="form-control" />
											</div>
										</div>
										<div class="form-group offset-top-20">
											<div class="input-group input-group-sm">
												<span class="input-group-addon input-group-addon-inverse"><span
													class="input-group-icon mdi mdi-account-outline"></span></span>
												<form:input path="nombre" id="login-name"
													placeholder="Nombres" type="text" name="name"
													data-constraints="@Required" class="form-control" />
											</div>
										</div>
										<div class="form-group offset-top-20">
											<div class="input-group input-group-sm">
												<span class="input-group-addon input-group-addon-inverse"><span
													class="input-group-icon mdi mdi-account-outline"></span></span>
												<form:input path="apellidos" id="login-last-name"
													placeholder="Apellidos" type="text" name="lastname"
													data-constraints="@Required" class="form-control" />
											</div>
										</div>
										<div class="form-group offset-top-20">
											<div class="input-group input-group-sm">
												<span class="input-group-addon input-group-addon-inverse"><span
													class="input-group-icon mdi mdi-email-outline"></span></span>
												<form:input path="email" id="login-email"
													placeholder="Correo" type="email" name="email"
													data-constraints="@Required @Email" class="form-control" />
											</div>
										</div>
										<div class="form-group offset-top-20">
											<div class="input-group input-group-sm">
												<span class="input-group-addon input-group-addon-inverse"><span
													class="input-group-icon mdi mdi-lock-open-outline"></span></span>
												<form:input path="password" id="login-password"
													placeholder="Contraseña" type="password" name="password"
													data-constraints="@Required" class="form-control" />
											</div>
										</div>
										<div class="form-group offset-top-20">
											<div class="input-group input-group-sm">
												<span class="input-group-addon input-group-addon-inverse"><span
													class="input-group-icon mdi mdi-lock-outline"></span></span> <input
													id="login-repeat-password"
													placeholder="Repita su contraseña" type="password"
													name="repeat-password" data-constraints="@Required"
													class="form-control">
											</div>
										</div>
										<button type="submit" value="register"
											class="btn btn-anis-effect btn-xs btn-icon btn-block btn-primary offset-top-24">
											Registrarse<span
												class="icon mdi mdi-arrow-right-bold-circle-outline"></span>
										</button>
										<a href="<%=request.getContextPath()%>/"
											class="btn btn-anis-effect btn-xs btn-icon btn-block btn-primary offset-top-24">Atrás<span
											class="icon mdi mdi-arrow-left-bold-circle-outline"></span></a>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<div class="one-page-footer">
				<p style="color: rgba(255, 255, 255, 0.3)" class="small">
					Student's Media &copy; <span id="copyright-year"></span>
				</p>
			</div>
		</div>
		</main>
	</div>
	<!-- Java script-->
	<script src="<c:url value="/resources/js/core.min.js" />"></script>
	<script src="<c:url value="/resources/js/script.js" />"></script>
	<script type="text/javascript">
		var password = document.getElementById("login-password"), confirm_password = document
				.getElementById("login-repeat-password");
		function validatePassword() {
			if (password.value != confirm_password.value) {
				confirm_password
						.setCustomValidity("Las contraseñas no coinciden");
			} else {
				confirm_password.setCustomValidity('');
			}
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
	</script>
</body>
</html>
