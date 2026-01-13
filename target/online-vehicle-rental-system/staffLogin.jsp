<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff Login</title>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link rel="stylesheet" href="CSS/staffLogin.css">
</head>
<body>

	<div class="login-container">
	<div class="login-form">
		<h2 class="text-center mb-4"> Login</h2>
		<form action="staffLogin" method="post">
			<div class="mb-3">
				<label for="inputEmail" class="form-label">Email Address</label>
				<input type="email" class="form-control" id="inputEmail" name="email">
			</div>
			<div class="mb-3">
				<label for="inputPassword" class="form-label">Password</label>
				<input type="password" class="form-control" id="inputPassword" name="password">
			</div>
			<div class="d-grid gap-2">
				<button type="submit" class="btn btn-primary">Login</button>
			</div>
		</form>
			<div class="signup-section">
		<span>Don't have an account ?</span>
		<a href="staffSignUp.jsp" class=" btn btn-outline-primary signop-btn">Sign Up</a>
	</div>
	</div>
		
	</div>



</body>
</html>