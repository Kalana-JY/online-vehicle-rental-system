<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Customer Login</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-image: url('Images/bground.png');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      height: 100vh;
      margin: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
    }
    .card {
      border-radius: 10px;
    }
  </style>
</head>
<body>
  <!-- Logo -->
  <div class="position-absolute top-0 start-0 m-3">
      <img src="Images\svg (1).svg" alt="On The Go Rentals Logo" class="img-fluid" style="max-width: 200px;">
  </div>

  <div class="container">
    <div class="row justify-content-center mt-5">
      <div class="col-md-6 col-lg-4">
        <div class="card">
          <div class="card-body">
            <!-- Title and Tagline -->
            <h2 class="card-title h4 text-center">Login to On The Go Rentals.</h2>
            <div class="text-center mb-3">
              <p>Ready to ride with On The Go Rentals!</p>
            </div>
            <!-- Login Form -->
            <form method="post" action="customerServlet">
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
              </div>
             
              <div class="d-grid">
                <button type="submit" class="btn btn-warning">Log In</button>
              </div>
            </form>
            <!-- Sign Up link -->
            <div class="text-center mt-3">
              <p>Don't have an account? <a href="customerInsert.jsp" class="text-decoration-none">Sign Up</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
