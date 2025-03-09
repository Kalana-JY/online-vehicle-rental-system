<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Profile</h1>
	
	<c:set var = "customer" value="${customer}"/>
	
	<fieldset disabled>
	
	<div class="form-floating mb-3">
    <input type="text" class="form-control" id="floatingInput" name="name" value="${customer.name}" placeholder="John Dutton">
    <label for="floatingInput">Name</label>
    </div>
    
    <div class="form-floating mb-3">
    <input type="text" class="form-control" id="floatingInput" name="age" value="${customer.age}" placeholder="22">
    <label for="floatingInput">Age</label>
    </div>
    
    <div class="form-floating mb-3">
    <input type="email" class="form-control" id="floatingInput" name="email" value="${customer.email}" placeholder="name@example.com">
    <label for="floatingInput">Email address</label>
    </div>
    
	<div class="form-floating">
    <input type="password" class="form-control" id="floatingPassword" name="password" value="${customer.password}" placeholder="Password">
    <label for="floatingPassword">Password</label>
    </div>
    
    </fieldset>
    
    <form method="post" action="Update.jsp">
    
    	<input type="hidden" name="name" value="${customer.name}">
    	<input type="hidden" name="age" value="${customer.age}">
    	<input type="hidden" name="email" value="${customer.email}">
    	<input type="hidden" name="password" value="${customer.password}">
    
    	<input type="submit" value="Update">
    	<a href="Home.jsp"><button type="button" class="btn btn-secondary">Home</button></a>
    
    </form>
	
</body>
</html>