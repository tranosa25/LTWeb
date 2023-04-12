<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<spring:htmlEscape defaultHtmlEscape="true" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Security-Policy" content="form-action 'self';">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resource/common/authen.css">
<link rel="stylesheet" type="text/css"
	href="resource/common/background.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<!-- added script for google capth api -->
<script src="https://www.google.com/recaptcha/api.js"></script>
</head>
<body>

	<!-- style="background-image: url(resource/client/images/bg.jpg);" -->
	<!-- Authen form -->
	
		<div class="auth-form" style="background-color: rgba(0, 0, 0, 0.5);">
		<form action="login" method="post" htmlEscape="true">
			<div class="auth-form-container">
				<div class="auth-form-header">
					<h3 class="auth-form-title">
						<s:message code="login.name" />
					</h3>
					<a href="register" class="auth-form-subtitle">Register</a>
				</div>
				<p class="auth-form-form"
					style="color: red; margin-top: -15px; margin-left: 3x; margin-bottom: 5px;">${err}</p>
				<div class="auth-form-form" style="margin-top: 15px;">
					<div class="auth-form-group">
						<input class="auth-form-input" type="text" name="account"
							placeholder="Email or Phone" required="required" />
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="password" name="password"
							placeholder="Password" required="required" />
					</div>
					<div class="auth-form-group"
						style="display: flex; justify-content: space-between; margin-top: -10px; margin-bottom: 15px; color: white;">
						<div>
							<input type="checkbox" name="remember" style="cursor: pointer;" />
							Remember me
						</div>
						<div>
							<a class="forgot" href="">Forgot password?</a>
						</div>

					</div>

					<div class="auth-form-controls">
						<a href="client/home" class="btn">Back</a>
						<button type="submit" class="btn" style="cursor: pointer;">Login</button>
					</div>
				</div></div>
				</form>
				<div class="auth-form-social">
					<a href="#" class="btn-social-fb"> <img class="a"
						style="width: 20px; height: 20px;"
						src="resource/client/images/facebook.svg">
						<div class="b">Login Facebook</div>
					</a> <a href="#" class="btn-social-gg"> <img class="a"
						style="width: 20px; height: 20px;"
						src="resource/client/images/google.svg">
						<div class="b">Login Google</div>
					</a>
				</div>
			</div>
		
	
</body>
</html>