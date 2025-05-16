<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Rental - Driver Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
 	<link rel="stylesheet" href="CSS/home.css">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body class="bg-gray-50">
    
    <!-- Header -->
    <nav class="navbar navbar-dark bg-primary-subtle">
  <div class="container-fluid d-flex align-items-center">
    <!-- Brand on the left -->
    <a class="navbar-brand" href="#">
      <!-- Combine all classes into one attribute -->
      <img src="Images/svg (1).svg" class="img-fluid d-inline-block align-text-top" alt="Brand Logo" width="100" height="50">
    </a>
    
    <!-- Navigation items centered -->
    <div class="d-flex justify-content-center flex-grow-1">
      <ul class="navbar-nav d-flex flex-row align-items-center gap-5">
        <li class="nav-item">
          <a class="nav-link active text-dark" aria-current="page" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Pages
          </a>
          <ul class="dropdown-menu">
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
  </div>
</nav>


    <!-- Navigation -->
    <nav class="bg-white shadow-sm">
        <div class="max-w-6xl mx-auto px-4 py-3 flex justify-around">
            <a href="searchResult.jsp" class="text-gray-600 hover:text-orange-500 flex items-center">
                <i class="fas fa-search mr-2"></i>Search Result
            </a>
            <a href="driverDetails.jsp" class="text-orange-500 font-medium flex items-center">
                <i class="fas fa-id-card mr-2"></i>Driver Details
            </a>
            <a href="payment.jsp" class="text-gray-600 hover:text-orange-500 flex items-center">
                <i class="fas fa-credit-card mr-2"></i>Payment
            </a>
            
        </div>
    </nav>

    <!-- Main Content -->
    <main class="max-w-4xl mx-auto mt-8 px-4">
        <div class="bg-white rounded-xl shadow-md p-6 md:p-8">
            <h2 class="text-2xl font-bold text-gray-800 mb-6">
                <i class="fas fa-user-circle mr-2"></i>Driver Details
            </h2>
            
            <form class="space-y-6" action="DriverInsertServlet" method="post">
                <!-- Title Selection -->
                <div class="space-y-2">
                    <label class="block text-sm font-medium text-gray-700">Title</label>
                    <div class="flex gap-4">
                        <label class="inline-flex items-center">
                            <input type="radio" name="title" value="Dr" required class="h-4 w-4 text-orange-500 border-gray-300">
                            <span class="ml-2 text-gray-700">Dr</span>
                        </label>
                        <label class="inline-flex items-center">
                            <input type="radio" name="title" value="Miss" required class="h-4 w-4 text-orange-500 border-gray-300">
                            <span class="ml-2 text-gray-700">Miss</span>
                        </label>
                        <label class="inline-flex items-center">
                            <input type="radio" name="title" value="Mr" required class="h-4 w-4 text-orange-500 border-gray-300">
                            <span class="ml-2 text-gray-700">Mr</span>
                        </label>
                        <label class="inline-flex items-center">
                            <input type="radio" name="title" value="Mrs" required class="h-4 w-4 text-orange-500 border-gray-300">
                            <span class="ml-2 text-gray-700">Mrs</span>
                        </label>
                        <label class="inline-flex items-center">
                            <input type="radio" name="title" value="Ms" required class="h-4 w-4 text-orange-500 border-gray-300">
                            <span class="ml-2 text-gray-700">Ms</span>
                        </label>
                    </div>
                </div>

                <!-- Form Fields -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-1">First Name</label>
                        <input type="text" name="firstname" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500">
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-1">Last Name</label>
                        <input type="text" name="lastname" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500">
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                        <input type="email" name="email" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500">
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-1">Phone Number</label>
                        <input type="tel" name="phoneno" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500">
                    </div>
                    <div class="md:col-span-2">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Driver's License Number</label>
                        <input type="text" name="licenceno" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500">
                    </div>
                    <div class="md:col-span-2">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Address</label>
                        <input type="text" name="address" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500">
                    </div>
                </div>

                <button type="submit" class="w-full md:w-auto px-6 py-2 bg-orange-500 text-white rounded-lg hover:bg-orange-600 transition-colors font-medium">
                    Next <i class="fas fa-arrow-right ml-2"></i>
                </button>
            </form>
        </div>
    </main>

    <!-- Placeholder for the external footer -->
    <div id="footer" class="mt-8"></div>

    <!-- JavaScript to load the external footer -->
    <script>
        fetch('footer.jsp')
            .then(response => response.text())
            .then(html => {
                document.getElementById('footer').innerHTML = html;
            })
            .catch(error => console.error('Error loading footer:', error));
    </script>
</body>
</html>



