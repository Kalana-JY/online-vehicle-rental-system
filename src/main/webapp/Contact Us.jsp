<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Contact Us</title>
<link rel="stylesheet" href="CSS/ContactUs.css">
</head>
<body>

	<div class="contact-container">
		<h1>Contact Us</h1>
		<p>Have questions? Fill out the form below and we'll get back to you soon.</p>
		
		<form action="addMessage" method="post" class="contact-form">
		
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="email" id="email" name="email" required placeholder="Enter your Email">
			</div>
		
			<div class="form-group">
				<label for="name">Full Name:</label>
				<input type="text" id="name" name="name" required placeholder="Enter your full name">
			
			</div>
			

			
			<div class="form-group">
				<label for="phone">Phone Number:</label>
				<input type="tel" id="phone" name="phone" required placeholder="Enter your phone number">
			</div>
			
			<div class="form-group">
				<label for="message">Message:</label>
				<input type="text" id="message" name="message" rows="5" required placeholder="Type your message here">
			</div>
			<button type="submit" class="submit-btn">Submit</button>
			
		</form>
		
	</div>

</body>
</html>