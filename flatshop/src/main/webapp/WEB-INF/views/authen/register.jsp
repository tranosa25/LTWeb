<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://www.google.com/recaptcha/api.js"></script>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to 5-SPORT</title>
<link rel="stylesheet" type="text/css" href="resource/common/authen.css">
<link rel="stylesheet" type="text/css" href="resource/common/background.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body ><!-- style="background-image: url(resource/client/images/bg.jpg);" -->
	<!-- Authen form -->
	<div class="auth-form" style="background-color: rgba(0,0,0,0.4);"><!-- style="background-color: white;" -->
		<form action="register" method="post" >
			<div class="auth-form-container">
				<div class="auth-form-header">
					<h3 class="auth-form-title">Register</h3>
					<a href="login" class="auth-form-subtitle">Login</a>
				</div>
				<p style="color: red; margin-top: -20px; margin-left: 3x; margin-bottom: 5px;">${error}</p>

				<div class="auth-form-form">
					<div class="auth-form-group">
						<input class="auth-form-input" type="text" name="fullname"
							placeholder="Full Name" required="required" />
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="tel" name="phone"  pattern="[0-9]{10}" placeholder="Phone Number"
						 required="required" />
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="email" name="email"
							placeholder="Email" required="required" value="${email}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
							title="example : xxx@gmail.com"/>
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="password" id="password" name="password"
							placeholder="Password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"/>
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="password" name="repassword" id="confirm_password"
							placeholder="Re-password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"/>
					</div>
					<div class="g-recaptcha input-group" data-sitekey="6LdO2lwjAAAAAHv-cges_Ow5UpDoDqAO4hqeV08e"></div>
				</div>

				<div class="auth-form-controls">
					<a href="client/home" class="btn">Back</a> <button type="submit" style="cursor: pointer;"
						class="btn">Register</button>
				</div>
			</div>
		</form>
		<div class="auth-form-social">
			<a href="#" class="btn-social-fb"><i class='fab'
				style="font-size: 20px;">&#xf09a;</i> Login with Facebook </a> <a
				href="#" class="btn-social-gg"><i class='fab'
				style='font-size: 20px; color: tomato'>&#xf2b3;</i> Login with
				Google </a>
		</div>
		<script>
		var password = document.getElementById("password")
		  , confirm_password = document.getElementById("confirm_password");

		function validatePassword(){
		  if(password.value != confirm_password.value) {
		    confirm_password.setCustomValidity("Passwords Don't Match");
		  } else {
		    confirm_password.setCustomValidity('');
		  }
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
		</script>
	</div>
</body>
</html>