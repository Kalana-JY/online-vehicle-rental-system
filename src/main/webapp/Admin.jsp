<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
</head>
<body>
	
<table class="table">
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
  					<button type="submit">Data</button>
  				</form>
  			</td>
  			<td>
  				<form action="deleteCustomer" method="post">
  					<input type="hidden" name="email" value="${customer.email}">
  					<button type="submit">Delete</button>
  				</form>
  			</td>
  		</tr>
  	</c:forEach>
  </tbody>
</table>
	
</body>
</html>