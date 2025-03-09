<nav class="navbar navbar-dark bg-primary-subtle">
  		<div class="container-fluid">
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