<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Staff</title>
</head>
<body>
	
				<form action="staffUpdate" method="post">
			<div class="mb-3">
				<label for="signupEmail" class="form-label">Email:</label>
				<input type="email" class="form-control" id="signupEmail" name="email" value="${param.email}">
			</div>
			<div class="mb-3">
				<label for="fullName" class="form-label">Full Name:</label>
				<input type="text" class="form-control" id="fullName" name="name" value="${param.name}">
			</div>
			<div class="mb-3">
				<label for="signupPassword" class="form-label">Password</label>
				<input type="text" class="form-control" id="signupPassword" name="password" value="${param.password}">
			</div>

			<div class="d-grid gap-2">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
			
			</form>
	
</body>
</html>