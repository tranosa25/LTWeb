<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to 5-SPORT</title>
<link rel="stylesheet" type="text/css" href="resource/common/authen.css">
<link rel="stylesheet" type="text/css"
	href="resource/common/background.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<!-- <script>
	$(function() {
		//Năm tự động điền vào select
		var seYear = $('#year');
		var date = new Date();
		var cur = date.getFullYear();

		seYear.append('<option value="">-- Year --</option>');
		for (i = cur; i >= 1900; i--) {
			seYear.append('<option value="'+i+'">' + i + '</option>');
		}
		;

		//Tháng tự động điền vào select
		var seMonth = $('#month');
		var date = new Date();

		var month = new Array();
		month[1] = "1";
		month[2] = "2";
		month[3] = "3";
		month[4] = "4";
		month[5] = "5";
		month[6] = "6";
		month[7] = "7";
		month[8] = "8";
		month[9] = "9";
		month[10] = "10";
		month[11] = "11";
		month[12] = "12";

		seMonth.append('<option value="">-- Month --</option>');
		for (i = 12; i > 0; i--) {
			seMonth.append('<option value="'+i+'">' + month[i] + '</option>');
		}
		;

		//Ngày tự động điền vào select
		function dayList(month, year) {
			var day = new Date(year, month, 0);
			return day.getDate();
		}

		$('#year, #month').change(
				function() {
					//Đoạn code lấy id không viết bằng jQuery để phù hợp với đoạn code bên dưới
					var y = document.getElementById('year');
					var m = document.getElementById('month');
					var d = document.getElementById('day');

					var year = y.options[y.selectedIndex].value;
					var month = m.options[m.selectedIndex].value;
					var day = d.options[d.selectedIndex].value;
					if (day == ' ') {
						var days = (year == ' ' || month == ' ') ? 31
								: dayList(month, year);
						d.options.length = 0;
						d.options[d.options.length] = new Option('-- Day --',
								' ');
						for (var i = 1; i <= days; i++)
							d.options[d.options.length] = new Option(i, i);
					}
				});
	});
</script> -->
<!-- added script for google capth api -->

</head>
<body>
	<!-- style="background-image: url(resource/client/images/bg.jpg);" -->
	<!-- Authen form -->
	<div class="auth-form" style="background-color: rgba(0, 0, 0, 0.5);">
		<!-- style="background-color: white;" -->
		<form action="register" method="post">
			<div class="auth-form-container">
				<div class="auth-form-header">
					<h3 class="auth-form-title">Register</h3>
					<a href="login" class="auth-form-subtitle">Login</a>
				</div>
				<p
					style="color: red; margin-top: -20px; margin-left: 3x; margin-bottom: 5px;">${error}</p>

				<div class="auth-form-form">
					<div class="auth-form-group">
						<input class="auth-form-input" type="text" name="fullname"
							placeholder="Full Name" required="required" />
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="tel" name="phone"
							pattern="[0-9]{10}" placeholder="Phone Number"
							required="required" />
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="email" name="email"
							placeholder="Email" required="required" value="${email}"
							pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
							title="example : xxx@gmail.com" />
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="password" id="password"
							name="password" placeholder="Password" required="required"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" />
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="password" name="repassword"
							id="confirm_password" placeholder="Re-password"
							required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" />
					</div>
					<div class="auth-form-group">
						<!-- <select class="auth-form-select" name="year" id="year" size="1"></select>
						<select class="auth-form-select" name="month" id="month" size="1"></select>
						<select class="auth-form-select" name="day" id="day" size="1">
							<option value=" " selected="selected">-- Day --</option>
						</select> -->
						<select class="auth-form-select" name="gender">
							<option value="true">Male</option>
							<option value="false">Female</option>
						</select>
					</div>
					<div class="auth-form-group">
						<div class="g-recaptcha input-group	"
						data-sitekey="6LdO2lwjAAAAAHv-cges_Ow5UpDoDqAO4hqeV08e"></div>
					</div>
				</div>

				<div class="auth-form-controls">
					<a href="client/home" class="btn">Back</a>
					<button type="submit" style="cursor: pointer;" class="btn">Register</button>
				</div>
			</div>
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
		<script src="https://www.google.com/recaptcha/api.js"></script>
		<script>
			var password = document.getElementById("password"), confirm_password = document
					.getElementById("confirm_password");

			function validatePassword() {
				if (password.value != confirm_password.value) {
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