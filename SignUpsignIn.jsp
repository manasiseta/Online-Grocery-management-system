<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/64d58efce2.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css" />
<link href="images/favicon.png" rel="shortcut icon" type="image/x-icon">
<link href="images/webclip.png" rel="apple-touch-icon">
<title>The Local Grocery</title>
</head>

<body>
	<div class="container">
		<div class="forms-container">
			<div class="signin-signup">
				<form
					action="${pageContext.request.contextPath}/UserHandler?action=authenticate"
					class="sign-in-form" method="post">
					<h2 class="title">Sign in</h2>
					<%
						String errorMessage2 = (String) request.getSession().getAttribute("errorMessage2");
						if (errorMessage2 != null) {
							out.print("<p class='error'>" + errorMessage2 + "</p>");
						}
						request.getSession().removeAttribute("errorMessage2");
						%>
					<div class="input-field">
						<i class="fas fa-user"></i> <input type="text"
							placeholder="Username" name="username" required />
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password"
							placeholder="Password" name="password" required />
					</div>
					<input type="submit" value="Login" class="btn solid" />


				</form>
				<form
					action="${pageContext.request.contextPath}/UserHandler?action=addUser"
					class="sign-up-form" method="post">
					<h2 class="title">Sign up</h2>
					<div class="input-field">
						<i class="fas fa-user"></i> <input type="text"
							placeholder="Username" name="username" required />
					</div>
						<%
						String errorMessage = (String) request.getSession().getAttribute("errorMessage");
						if (errorMessage != null) {
							out.print("<p class='error'>" + errorMessage + "</p>");
						}
						%>
					<div class="input-field">
						<i class="fas fa-envelope"></i> <input type="email"
							placeholder="Email" name="email" required />
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password"
							placeholder="Password" name="password" required  />
					</div>
					<div class="input-field">
						<i class="fas fa-phone"></i> <input type="text"
							placeholder="Phone no." name="phone_no" required />
					</div>
					<input type="submit" class="btn" value="Sign up" />

				</form>
			</div>
		</div>

		<div class="panels-container">
			<div class="panel left-panel">
				<div class="content">
					<h3>New here ?</h3>
					<p>Join our family and save like never before!</p>
					<button class="btn transparent" id="sign-up-btn">Sign up</button>
				</div>
				<img src="img/shopping.svg" class="image" alt="" />
			</div>
			<div class="panel right-panel">
				<div class="content">
					<h3>One of us ?</h3>
					<p>Welcome back!Log in with your email and password.</p>
					<button class="btn transparent" id="sign-in-btn">Sign in</button>
				</div>
				<img src="img/grocery.svg" class="image" alt="" />
			</div>
		</div>
	</div>

	<script src="app.js"></script>
</body>

</html>