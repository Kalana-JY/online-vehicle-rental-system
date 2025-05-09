<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/admin.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</head>
<body style='background-color: #bbd0ff;'>
<div class="d-flex min-vh-100">
	
	<nav class="sidebar d-flex flex-column flex-shrink-0 p-3" style="width: 280px; background-color: #1f2937;">
        <a href="Admin.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
            <img src="Images/svg (1).svg" alt="Logo" class="img-fluid me-2" width="50">
            <span class="fs-4">Admin Panel</span>
        </a>
        <hr>
        <ul class="nav nav-pills flex-column mb-auto">
            <li><a href="#" class="nav-link active text-white">Dashboard</a></li>
            <li><a href="#cm" class="nav-link text-white">Customer Management</a></li>
            <li><a href="#vom" class="nav-link text-white">Vehicle Owner Management</a></li>
            <li><a href="#sm" class="nav-link text-white">Staff Management</a></li>
            <li><a href="#vm" class="nav-link text-white">Vehicle Management</a></li>
        </ul>
        <hr>
        <div class="dropdown">
    		<p class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdown" data-bs-toggle="dropdown" aria-expanded="false">
        		<img src="uploads/${admin.fileName}" alt="Profile" class="rounded-circle me-2" width="32" height="32" onerror="if (!this.dataset.errored) { this.dataset.errored = true; this.src='images/default.png'; }'"><strong>${admin.name}</strong>
        	</p>
        		
    		<ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdown">
        		<li><a class="dropdown-item" href="#">Settings</a></li>
        		<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#profileModal">Profile</a></li>
        		<li><hr class="dropdown-divider"></li>
        		<li><a class="dropdown-item" href="LogoutAdmin">Sign out</a></li>
    		</ul>
		</div>
    </nav>
    
    <div class="container-fluid m-5">
  
  	<div class="container border rounded p-2" style='background-color: #a8b6cd;'>
  		<h2>Dashboard</h2>
  	</div>
    
    <div class="row mb-4 p-3">
    	<div class="col-md-3">
    		<div class="card text-white h-100" style='background-color: #4ea8de;'>
    			<div class="card-body">
    				<h5 class="card-title">Total Revenue</h5>
    				<p class="card-text">View and manage customers</p>
    			</div>
    		</div>
    	</div>
    	<div class="col-md-3">
    		<div class="card text-white h-100" style='background-color: #4ea8de;'>
    			<div class="card-body">
    				<h5 class="card-title">Total Bookings</h5>
    				<p class="card-text">View and manage customers</p>
    			</div>
    		</div>
    	</div>
    	<div class="col-md-3">
    		<div class="card text-white h-100" style='background-color: #4ea8de;'>
    			<div class="card-body">
    				<h5 class="card-title">Rented Cars</h5>
    				<p class="card-text">View and manage customers</p>
    			</div>
    		</div>
    	</div>
    	<div class="col-md-3">
    		<div class="card text-white h-100" style='background-color: #4ea8de;'>
    			<div class="card-body">
    				<h5 class="card-title">Available Cars</h5>
    				<p class="card-text">View and manage customers</p>
    			</div>
    		</div>
    	</div>
		</div>
		
  
  
<div id="cm" class="container p-3 my-3 border rounded" style='background-color: #a8b6cd;'>
	<div class="d-flex justify-content-between align-items-center mb-2">
		<h3>Customer Management</h3>
		<button type="button" class="btn btn-success m-1" data-bs-toggle="collapse" data-bs-target="#customerTableSection" aria-expanded="false" aria-controls="customerTableSection"> Show All Customer</button>
	</div>
	<div class="collapse" id="customerTableSection">
		<div class="m-2">
			<form action="customerController" method="get">
				<input type="hidden" name="action" value="search">
				<div class="input-group">
					<input type="text" name="query" class="form-control" placeholder="Search" required>
					<button type="submit" class="btn btn-primary"><i class="bi bi-search"></i></button>
				</div>
			</form>
		</div>
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

<div id="vom" class="container p-3 my-3 border rounded" style='background-color: #a8b6cd;'>
<div class="d-flex justify-content-between align-items-center mb-2">
<h3>Vehicle Owner Management</h3>
<button type="button" class="btn btn-success m-1" data-bs-toggle="collapse" data-bs-target="#voTableSection" aria-expanded="false" aria-controls="voTableSection"> Show All Owners</button>
</div>
<div class="collapse" id="voTableSection">
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

<div id="vm" class="container p-3 my-3 border rounded" style='background-color: #a8b6cd;'>
<div class="d-flex justify-content-between align-items-center mb-2">
<h3>Vehicle Management</h3>
<button type="button" class="btn btn-success m-1" data-bs-toggle="collapse" data-bs-target="#vehiTableSection" aria-expanded="false" aria-controls="vehiTableSection"> Show All Vehicles</button>
</div>
<div class="collapse" id="vehiTableSection">
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

<div id="sm" class="container p-3 my-3 border rounded" style='background-color: #a8b6cd;'>
<div class="d-flex justify-content-between align-items-center mb-2">
<h3>Staff Management</h3>
<div class="d-flex">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="collapse" data-bs-target="#staffTableSection" aria-expanded="false" aria-controls="staffTableSection"></button>
	</div>

</div>
<div class="collapse" id="staffTableSection">
<div class="d-flex justify-content-end align-items-center mb-2">
	<button type="submit" class="btn btn-success m-1" data-bs-toggle="modal" data-bs-target="#addStaffModal">Add +</button>
	<form action="ReadStaff" method="post">
		<button type="submit" class="btn btn-success m-1">Load Staff</button>
	</form>
</div>
<div class="scrollable-table">
<table class="table table-bordered text center">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">File Name</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="staff" items="${cus}">
  		<tr>
  			<td>${staff.id}</td>
  			<td>${staff.name}</td>
  			<td>${staff.email}</td>
  			<td>${staff.password}</td>
  			<td>${staff.fileName}</td>
  			<td class="d-flex">
  			
  				<button type="button" class="btn btn-success m-1" data-bs-toggle="modal" data-bs-target="#editAdminModal" onclick="setEditFormData('${staff.id}', '${staff.name}', '${staff.email}', '${staff.password}', '${staff.fileName}')">Edit</button>
  			
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

<section id="am" class="container p-3 my-3 border rounded" style='background-color: #a8b6cd;'>
<div class="d-flex justify-content-between align-items-center mb-2">
	
	<h3>Admin Management</h3>
	
	<div class="d-flex">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="collapse" data-bs-target="#adminTableSection" aria-expanded="false" aria-controls="adminTableSection"></button>
	</div>

</div>
<div class="collapse" id="adminTableSection">
<div class="d-flex justify-content-end align-items-center mb-2">
	<button type="submit" class="btn btn-success m-1" data-bs-toggle="modal" data-bs-target="#addAdminModal">Add +</button>
	<form action="ReadAdmin" method="post">
		<button type="submit" class="btn btn-success m-1">Load Admins</button>
	</form>
</div>
  
<div class="card-body table-responsive scrollable-table">
	<table class="table table-hover text-center table-bordered">
	<thead class="table-light">  
    	<tr>
      	<th>ID</th>
      	<th>Name</th>
      	<th>Email</th>
      	<th>Password</th>
      	<th>Address</th>
      	<th>Phone Number</th>
      	<th>FileName</th>
      	<th>Actions</th>
    	</tr>
    </thead>
  <tbody>
  	<c:forEach var="admin" items="${admDetails}">
  		<tr class="">
  			<td>${admin.id}</td>
  			<td>${admin.name}</td>
  			<td>${admin.email}</td>
  			<td>${admin.password}</td>
  			<td>${admin.address}</td>
  			<td>${admin.phoneNumber}</td>
  			<td>${admin.fileName}</td>
  			<td class="d-flex">
  			
  				<form action="DeleteAdmin" method="post">
  					<input type="hidden" name="email" value="${admin.email}">
  					<button type="submit" class="btn btn-danger m-1">Delete</button>
  				</form>
  			</td>
  		</tr>
  	</c:forEach>
  </tbody>
</table>
</div>
</div>
</section>

<%@ include file="AddAdmin.jsp" %>
<%@ include file="AddStaff.jsp" %>
<%@ include file="ProfileAdmin.jsp" %>


</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>