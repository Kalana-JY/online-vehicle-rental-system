<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>

<div class="sidebar d-flex flex-column flex-shrink-0 p-3">
    <h3 class="text-center">Admin Panel</h3>
    <ul class="nav nav-pills flex-column mb-auto">
      <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#">Dashboard</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Users</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Vehicles</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Bookings</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Payments</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Settings</a>
      </li>
    </ul>
  </div>
  
  <div class="main-content">
  
  <div class="container p-0 my-0">
  	<h2>Dashboard</h2>
  </div>
    
    <div>
		<section class="bg-light py-1">
		<div class="catCard">
		<div class="row g-2">
		<div class="card1 d-flex justify-content-between align-items-center p-3">
			<div>
			<h6 class="catTopic">Total Revenue</h6>
  			<img src="Images\revenue.svg" class="img-fluid img offset-md-1 card-img-top">
  			</div>
  			<h6 class="mb-0">70000</h6>
		</div>
		<div class="card1 d-flex justify-content-between align-items-center p-3">
			<div>
			<h6 class="catTopic">Total Bookings</h6>
  			<img src="Images\bookmark.svg" class="img-fluid img offset-md-1 card-img-top">
  			</div>
  			<h6 class="mb-0">70</h6>
		</div>
		<div class="card1 d-flex justify-content-between align-items-center p-3">
			<div>
			<h6 class="catTopic">Rented Cars</h6>
  			<img src="Images\key.svg" class="img-fluid img offset-md-1 card-img-top">
  			</div>
  			<h6 class="mb-0">7</h6>
		</div>
		<div class="card1 d-flex justify-content-between align-items-center p-3">
			<div>
			<h6 class="catTopic">Available Cars</h6>
  			<img src="Images\car.svg" class="img-fluid img offset-md-1 card-img-top">
  			</div>
  			<h6 class="mb-0">70</h6>
		</div>
		</div>
		</div>
		</section>
	</div>
  
  
<div class="container p-3 my-3">
<h3>Customer Management</h3>
<div class="scrollable-table">
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="customer" items="${cus}">
  		<tr>
  			<td>${customer.name}</td>
  			<td>${customer.age}</td>
  			<td>${customer.email}</td>
  			<td>${customer.password}</td>
  			<td>
  				<form action="singleData" method="post">
  					<input type="hidden" name="email" value="${customer.email}">
  					<button type="submit">View</button>
  				</form>
  			</td>
  			<td>
  				<form action="deleteCustomer" method="post">
  					<input type="hidden" name="email" value="${customer.email}">
  					<button type="submit" class="btn btn-danger">Delete</button>
  				</form>
  			</td>
  		</tr>
  	</c:forEach>
  </tbody>
</table>
</div>
</div>

<div class="container p-3 my-3">
<h3>Vehicle Owner Management</h3>
<div class="scrollable-table">
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="customer" items="${cus}">
  		<tr>
  			<td>${customer.name}</td>
  			<td>${customer.age}</td>
  			<td>${customer.email}</td>
  			<td>${customer.password}</td>
  			<td>
  				<form action="singleData" method="post">
  					<input type="hidden" name="email" value="${customer.email}">
  					<button type="submit">View</button>
  				</form>
  			</td>
  			<td>
  				<form action="deleteCustomer" method="post">
  					<input type="hidden" name="email" value="${customer.email}">
  					<button type="submit" class="btn btn-danger">Delete</button>
  				</form>
  			</td>
  		</tr>
  	</c:forEach>
  </tbody>
</table>
</div>
</div>

<div class="container p-3 my-3">
<h3>Customer Management</h3>
<div class="scrollable-table">
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="customer" items="${cus}">
  		<tr>
  			<td>${customer.name}</td>
  			<td>${customer.age}</td>
  			<td>${customer.email}</td>
  			<td>${customer.password}</td>
  			<td>
  				<form action="singleData" method="post">
  					<input type="hidden" name="email" value="${customer.email}">
  					<button type="submit">View</button>
  				</form>
  			</td>
  			<td>
  				<form action="deleteCustomer" method="post">
  					<input type="hidden" name="email" value="${customer.email}">
  					<button type="submit" class="btn btn-danger">Delete</button>
  				</form>
  			</td>
  		</tr>
  	</c:forEach>
  </tbody>
</table>
</div>
</div>

<div class="container p-3 my-3">
<h3>Vehicle Management</h3>
<div class="scrollable-table">
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="customer" items="${cus}">
  		<tr>
  			<td>${customer.name}</td>
  			<td>${customer.age}</td>
  			<td>${customer.email}</td>
  			<td>${customer.password}</td>
  			<td>
  				<form action="singleData" method="post">
  					<input type="hidden" name="email" value="${customer.email}">
  					<button type="submit">View</button>
  				</form>
  			</td>
  			<td>
  				<form action="deleteCustomer" method="post">
  					<input type="hidden" name="email" value="${customer.email}">
  					<button type="submit" class="btn btn-danger">Delete</button>
  				</form>
  			</td>
  		</tr>
  	</c:forEach>
  </tbody>
</table>
</div>
</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>	
</body>
</html>