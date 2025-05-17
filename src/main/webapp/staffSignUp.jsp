<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link rel="stylesheet" href="staffSignUp.css">
</head>
<body>

	<div class="signup-container">
		<div class="signup-form">
			<h2 class="form-title">Create Account</h2>
			<form action="addStaff" method="post">
			<div class="mb-3">
				<label for="fullName" class="form-label">Full Name:</label>
				<input type="text" class="form-control" id="fullName" name="name" required>
			</div>
			<div class="mb-3">
				<label for="signupEmail" class="form-label">Email:</label>
				<input type="email" class="form-control" id="signupEmail" name="email" required>
			</div>
			<div class="mb-3">
				<label for="signupPassword" class="form-label">Password</label>
				<input type="password" class="form-control" id="signupPassword" name="password" required>
			</div>

			<div class="d-grid gap-2">
				<button type="submit" class="btn btn-primary">Sign Up</button>
			</div>
			
			</form>
			
			<div class="login-link">
				<span>Already have an account?</span>
				<a href="staffLogin.jsp" class="btn btn-link">Log In</a>
			</div>
		</div>
	</div>


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>