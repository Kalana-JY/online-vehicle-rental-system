<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Rental - Search Results</title>
 
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
 	<link rel="stylesheet" href="CSS/home.css">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 	
    <style>
       
        .vehicle-item:hover {
            transform: translateY(-5px);
            transition: transform 0.3s ease;
        }
        .book-button:hover {
            background-color: #d97706; 
        }
        .see-more-button:hover {
            background-color: #ea580c; 
        }
    </style>
</head>
<body class="bg-gray-50">
    <!-- Header 
    <header class="bg-red-400 text-white px-4 py-3 flex justify-between items-center">
        <div class="flex items-center">
            <i class="fas fa-car text-2xl mr-2"></i>
            <span class="text-xl font-bold">KRCS</span>
        </div>
        <button class="bg-white text-orange-500 px-4 py-2 rounded-lg font-medium hover:bg-orange-50 transition-colors">
            <i class="fas fa-coins mr-2"></i>0 $
        </button>
    </header>-->
    
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
        <a href="searchResult.jsp" class="text-red-400 font-medium flex items-center">
            <i class="fas fa-search mr-2"></i>Search Result
        </a>
        <a href="driverDetails.jsp" class="text-gray-600 hover:text-orange-500 flex items-center">
            <i class="fas fa-id-card mr-2"></i>Driver Details
        </a>
        <a href="payment.jsp" class="text-gray-600 hover:text-orange-500 flex items-center">
            <i class="fas fa-credit-card mr-2"></i>Payment
        </a>
        
     </div>
</nav>
    <!-- Vehicle Listings -->
    <div class="container mx-auto p-6">
        <div id="vehicle-list" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <!-- Vehicle Listing 1 -->
            <div class="vehicle-item bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl">
                <div class="vehicle-image">
                    <img src="Images/CAMRY.jpg" alt="Toyota Camry SE 350" class="w-full h-48 object-cover">
                </div>
                <div class="p-4">
                    <h2 class="text-xl font-bold mb-2">Toyota Camry SE 350</h2>
                    <p class="text-gray-600 mb-2">Similar to Toyota Camry <span class="text-blue-500 font-semibold">Instant Booking</span></p>
                    <p class="text-gray-800"><strong>LKR 12000.00</strong> / Day</p>
                    <p class="text-gray-600">Total Price LKR 12,000.00 + LKR 1,200.00 initial deposit</p>
                    <p class="text-gray-600 text-sm">Security Deposit LKR 12,000.00 is payable in Currency Only at the time of collection.</p>
                    <div class="specs mt-4">
                        <div class="flex space-x-4 text-sm text-gray-600">
                            <span><i class="fas fa-cog mr-1"></i>Automatic</span>
                            <span><i class="fas fa-door-open mr-1"></i>4 Doors</span>
                            <span><i class="fas fa-user-friends mr-1"></i>5 Seats</span>
                            <span><i class="fas fa-suitcase mr-1"></i>2 Bags</span>
                        </div>
                    </div>
                    <button class="book-button bg-orange-500 text-black w-full py-2 mt-4 rounded-lg hover:bg-orange-600">
                        <i class="fas fa-calendar-check mr-2"></i>
                        <a href ="driverDetails.jsp">Book Now</a>
                        
                    </button>
                </div>
            </div>

            <!-- Vehicle Listing 2 -->
            <div class="vehicle-item bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl">
                <div class="vehicle-image">
                    <img src="Images/KDH.jpg" alt="Toyota Hiace" class="w-full h-48 object-cover">
                </div>
                <div class="p-4">
                    <h2 class="text-xl font-bold mb-2">Toyota Hiace</h2>
                    <p class="text-gray-600 mb-2">Similar to Toyota Hiace <span class="text-blue-500 font-semibold">Instant Booking</span></p>
                    <p class="text-gray-800"><strong>LKR 20000.00</strong> / Day</p>
                    <p class="text-gray-600">Total Price LKR 20,000.00 + LKR 2,000.00 initial deposit</p>
                    <p class="text-gray-600 text-sm">Security Deposit LKR 20,000.00 is payable in Currency Only at the time of collection.</p>
                    <div class="specs mt-4">
                        <div class="flex space-x-4 text-sm text-gray-600">
                            <span><i class="fas fa-cog mr-1"></i>Automatic</span>
                            <span><i class="fas fa-door-open mr-1"></i>4 Doors</span>
                            <span><i class="fas fa-user-friends mr-1"></i>9 Seats</span>
                            <span><i class="fas fa-suitcase mr-1"></i>4 Bags</span>
                        </div>
                    </div>
                    <button class="book-button bg-orange-500 text-black w-full py-2 mt-4 rounded-lg hover:bg-orange-600">
                        <i class="fas fa-calendar-check mr-2"></i>
                        <a href ="driverDetails.jsp">Book Now</a>
                    </button>
                </div>
            </div>

            <!-- Vehicle Listing 3 -->
            <div class="vehicle-item bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl">
                <div class="vehicle-image">
                    <img src="Images/RAPTOR.jpg" alt="Ford Raptor Crewmax 4X4" class="w-full h-48 object-cover">
                </div>
                <div class="p-4">
                    <h2 class="text-xl font-bold mb-2">Ford Raptor Crewmax 4X4</h2>
                    <p class="text-gray-600 mb-2">Similar to Ford Raptor <span class="text-blue-500 font-semibold">Instant Booking</span></p>
                    <p class="text-gray-800"><strong>LKR 50000.00</strong> / Day</p>
                    <p class="text-gray-600">Total Price LKR 50,000.00 + LKR 5,000.00 initial deposit</p>
                    <p class="text-gray-600 text-sm">Security Deposit LKR 50,000.00 is payable in Currency Only at the time of collection.</p>
                    <div class="specs mt-4">
                        <div class="flex space-x-4 text-sm text-gray-600">
                            <span><i class="fas fa-cog mr-1"></i>Automatic</span>
                            <span><i class="fas fa-door-open mr-1"></i>4 Doors</span>
                            <span><i class="fas fa-user-friends mr-1"></i>5 Seats</span>
                            <span><i class="fas fa-suitcase mr-1"></i>4 Bags</span>
                        </div>
                    </div>
                    <button class="book-button bg-orange-500 text-black w-full py-2 mt-4 rounded-lg hover:bg-orange-600">
                        <i class="fas fa-calendar-check mr-2"></i>
                        <a href ="driverDetails.jsp">Book Now</a>
                    </button>
                </div>
            </div>
            
            <!-- Vehicle Listing 4 -->
            <div class="vehicle-item bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl">
                <div class="vehicle-image">
                    <img src="Images/PRADO.jpg" alt="Toyota Hiace" class="w-full h-48 object-cover">
                </div>
                <div class="p-4">
                    <h2 class="text-xl font-bold mb-2">Toyota Prado</h2>
                    <p class="text-gray-600 mb-2">Similar to Toyota Prado <span class="text-blue-500 font-semibold">Instant Booking</span></p>
                    <p class="text-gray-800"><strong>LKR 40000.00</strong> / Day</p>
                    <p class="text-gray-600">Total Price LKR 40,000.00 + LKR 4,000.00 initial deposit</p>
                    <p class="text-gray-600 text-sm">Security Deposit LKR 40,000.00 is payable in Currency Only at the time of collection.</p>
                    <div class="specs mt-4">
                        <div class="flex space-x-4 text-sm text-gray-600">
                            <span><i class="fas fa-cog mr-1"></i>Automatic</span>
                            <span><i class="fas fa-door-open mr-1"></i>4 Doors</span>
                            <span><i class="fas fa-user-friends mr-1"></i>5 Seats</span>
                            <span><i class="fas fa-suitcase mr-1"></i>4 Bags</span>
                        </div>
                    </div>
                    <button class="book-button bg-orange-500 text-black w-full py-2 mt-4 rounded-lg hover:bg-orange-600">
                        <i class="fas fa-calendar-check mr-2"></i>
                        <a href ="driverDetails.jsp">Book Now</a>
                    </button>
                </div>
            </div>
            
            <!-- Vehicle Listing 5 -->
            <div class="vehicle-item bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl">
                <div class="vehicle-image">
                    <img src="Images/CIVIC.jpg" alt="Toyota Hiace" class="w-full h-48 object-cover">
                </div>
                <div class="p-4">
                    <h2 class="text-xl font-bold mb-2">Honda Civic</h2>
                    <p class="text-gray-600 mb-2">Similar to Honda Civic <span class="text-blue-500 font-semibold">Instant Booking</span></p>
                    <p class="text-gray-800"><strong>LKR 45000.00</strong> / Day</p>
                    <p class="text-gray-600">Total Price LKR 45,000.00 + LKR 4,500.00 initial deposit</p>
                    <p class="text-gray-600 text-sm">Security Deposit LKR 45,000.00 is payable in Currency Only at the time of collection.</p>
                    <div class="specs mt-4">
                        <div class="flex space-x-4 text-sm text-gray-600">
                            <span><i class="fas fa-cog mr-1"></i>Automatic</span>
                            <span><i class="fas fa-door-open mr-1"></i>4 Doors</span>
                            <span><i class="fas fa-user-friends mr-1"></i>4 Seats</span>
                            <span><i class="fas fa-suitcase mr-1"></i>2 Bags</span>
                        </div>
                    </div>
                    <button class="book-button bg-orange-500 text-black w-full py-2 mt-4 rounded-lg hover:bg-orange-600">
                        <i class="fas fa-calendar-check mr-2"></i>
                        <a href ="driverDetails.jsp">Book Now</a>
                    </button>
                </div>
            </div>
            
            <!-- Vehicle Listing 6 -->
            <div class="vehicle-item bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl">
                <div class="vehicle-image">
                    <img src="Images/BMW.jpg" alt="Toyota Hiace" class="w-full h-48 object-cover">
                </div>
                <div class="p-4">
                    <h2 class="text-xl font-bold mb-2">BMW i8</h2>
                    <p class="text-gray-600 mb-2">Similar to BMW i8 <span class="text-blue-500 font-semibold">Instant Booking</span></p>
                    <p class="text-gray-800"><strong>LKR 65000.00</strong> / Day</p>
                    <p class="text-gray-600">Total Price LKR 65,000.00 + LKR 6,500.00 initial deposit</p>
                    <p class="text-gray-600 text-sm">Security Deposit LKR 65,000.00 is payable in Currency Only at the time of collection.</p>
                    <div class="specs mt-4">
                        <div class="flex space-x-4 text-sm text-gray-600">
                            <span><i class="fas fa-cog mr-1"></i>Automatic</span>
                            <span><i class="fas fa-door-open mr-1"></i>2 Doors</span>
                            <span><i class="fas fa-user-friends mr-1"></i>4 Seats</span>
                            <span><i class="fas fa-suitcase mr-1"></i>2 Bags</span>
                        </div>
                    </div>
                    <button class="book-button bg-orange-500 text-black w-full py-2 mt-4 rounded-lg hover:bg-orange-600">
                        <i class="fas fa-calendar-check mr-2"></i>
                        <a href ="driverDetails.jsp">Book Now</a>
                    </button>
                </div>
            </div>
        </div>

        <!-- "See More" Button -->
        <div class="see-more-button text-center mt-8">
            <button onclick="loadMoreVehicles()" class="bg-orange-500 text-black px-6 py-2 rounded-lg hover:bg-orange-600">
                <i class="fas fa-plus mr-2"></i>See More
            </button>
        </div>
    </div>

    <script>
        // Function to load more vehicles
        function loadMoreVehicles() {
            const vehicleList = document.getElementById('vehicle-list');

            // Example of additional vehicles (you can fetch these from an API or database)
            const additionalVehicles = [
                {
                    image: "Images/CIVIC.jpg",
                    name: "Honda Civic",
                    price: "$120.00",
                    totalPrice: "$480.00",
                    deposit: "$100",
                    securityDeposit: "$800.00",
                    specs: {
                        transmission: "Automatic",
                        doors: "4",
                        seats: "5",
                        baggage: "3"
                    }
                },
                {
                    image: "Images/PRADO.jpg",
                    name: "Toyota Prado",
                    price: "$150.00",
                    totalPrice: "$600.00",
                    deposit: "$100",
                    securityDeposit: "$1000.00",
                    specs: {
                        transmission: "Automatic",
                        doors: "4",
                        seats: "5",
                        baggage: "4"
                    }
                },
                {
                    image: "Images/BMW.jpg",
                    name: "BMW X5",
                    price: "$130.00",
                    totalPrice: "$520.00",
                    deposit: "$100",
                    securityDeposit: "$900.00",
                    specs: {
                        transmission: "Automatic",
                        doors: "4",
                        seats: "5",
                        baggage: "4"
                    }
                }
            ];

            // Append 3 new vehicles to the list
            additionalVehicles.slice(0, 3).forEach(vehicle => {
                const vehicleItem = document.createElement('div');
                vehicleItem.className = 'vehicle-item bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl';
                vehicleItem.innerHTML = `
                    <div class="vehicle-image">
                	<img src="Images/U.jpg" alt="${vehicle.name}" class="w-[200px] h-58 object-cover">
                    </div>
                    <div class="p-4">
                        <h2 class="text-xl font-bold mb-2">${vehicle.name}</h2>
                        <p class="text-gray-600 mb-2">Similar to ${vehicle.name} <span class="text-orange-500 font-semibold">Instant Booking</span></p>
                        <p class="text-gray-800"><strong>${vehicle.price}</strong> / Day</p>
                        <p class="text-gray-600">Total Price ${vehicle.totalPrice} + ${vehicle.deposit} initial deposit</p>
                        <p class="text-gray-600 text-sm">Security Deposit US$ ${vehicle.securityDeposit} is payable in Currency Only at the time of collection.</p>
                        <div class="specs mt-4">
                            <div class="flex space-x-4 text-sm text-gray-600">
                                <span><i class="fas fa-cog mr-1"></i>${vehicle.specs.transmission}</span>
                                <span><i class="fas fa-door-open mr-1"></i>${vehicle.specs.doors} Doors</span>
                                <span><i class="fas fa-user-friends mr-1"></i>${vehicle.specs.seats} Seats</span>
                                <span><i class="fas fa-suitcase mr-1"></i>${vehicle.specs.baggage} Bags</span>
                            </div>
                        </div>
                        <button class="book-button bg-orange-500 text-black w-full py-2 mt-4 rounded-lg hover:bg-orange-600">
                            <i class="fas fa-calendar-check mr-2"></i>Book Now
                        </button>
                    </div>
                `;
                vehicleList.appendChild(vehicleItem);
            });
        }
    </script>
    <!-- Placeholder for the external footer -->
  <div id="footer"></div>

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