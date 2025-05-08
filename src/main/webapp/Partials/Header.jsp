<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/home.css">
</head>
<body>
<nav class="navbar navbar-light">
  		<div class="container-fluid" style="background-color: #e3f2fd;">
    		<a class="navbar-brand" href="#"><img src="Images\svg (1).svg" class="img-fluid" alt="" width="100" height="50" class="d-inline-block align-text-top"></a>
    	<div>
      		<ul class="navbar-nav d-flex flex-row mx-auto gap-5">
        		<li class="nav-item">
          		<a class="nav-link active text-dark" aria-current="page" href="Home.jsp">Home</a>
        		</li>
        		<li class="nav-item dropdown">
          		<a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
             		Pages
          		</a>
          		<ul class="dropdown-menu" style="position: absolute;">
            		<li><a class="dropdown-item" href="#">Action</a></li>
            		<li><a class="dropdown-item" href="#">Another action</a></li>
            		<li><a class="dropdown-item" href="#">Something else here</a></li>
          		</ul>
        		</li>
        		<li class="nav-item">
          		<a class="nav-link text-dark" href="#">Features</a>
        		</li>
        		<li class="nav-item">
          		<a class="nav-link text-dark" href="#">Pricing</a>
        		</li>
      		</ul>
    	</div>
    <% if (session.getAttribute("customer") != null) { %>
          <div class="btn-group">
          	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Profile</a>
          	<ul class="dropdown-menu">
          	<li><a class="dropdown-item" href="Profile.jsp">View Profile</a></li>
          	<li><a class="dropdown-item" href="Logout">Logout</a></li>
          	</ul>
          </div>
    <% } else { %>
    	  <div>
    	  	<ul class="nav justify-content-center">
    	  		<li class="nav-item">
    	  			<a class="nav-link active" aria-current="page" href="Login.jsp">Login</a>
    	  		</li>
    	  		<li class="nav-item">
    	  			<a class="nav-link active" aria-current="page" href="Register.jsp">Register</a>
    	  		</li>
          </ul>
        </div>  
    <% } %>
  	</div>
		</nav>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		
</body>		
</html>