<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>On The Go Rentals</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="CSS/home.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</head>

<body>
	
<%@ include file="\Partials\Header.jsp" %>
	
	<section class="section">
        <div class="container p-3 my-3" style="background-color: #ffd0b2">
            <div class="row align-items-center">
                <!-- Text Content on the Left -->
                <div class="col-md-6">
                    <h1>Find Your Best<br>Dream Vehicle for Rental</h1>
                    <p>
                        Indulge in luxury, performance, and elegance with our premium car rentals. Whether you prefer a sleek sedan, a stylish coupe, a spacious SUV, or a sophisticated convertible, we have the perfect vehicle to match your lifestyle and preferences.
                    </p>
                    <a href="#" class="btn btn-warning">Explore Vehicles</a>
                </div>
                <!-- Image on the Right -->
                <div class="col-md-6 text-center">
                    <img src="Images/carplus.png" alt="Dream Vehicle" class="img-fluid">
                </div>
            </div>
        </div>
    </section>
	
	<div class="container mt-4">
	<div class="form-container mt-4 bg-light p-3 rounded">
	<form class="row g-2">
		<div class="col-md-3">
			<lable for="location" class="form-lable">Pickup Location</lable>
			<div class="input-group">
			<span class="input-group-text"><i class="bi bi-geo-alt"></i></span>
			<input type="text" class="form-control" id="location" value="Location" required>
			</div>
		</div>
		<div class="col-md-2">
			<lable for="pDate" class="form-lable">Pickup Date</lable>
			<div class="input-group">
			<span class="input-group-text"><i class="bi bi-calendar"></i></span>
			<input type="date" class="form-control" id="pDate" placeholder="" onfocus="this.showPicker()" required>
			</div>
		</div>
		<div class="col-md-2">
			<lable for="pTime" class="form-lable">Pickup Time</lable>
			<div class="input-group">
			<span class="input-group-text"><i class="bi bi-clock"></i></span>
			<input type="time" class="form-control" id="pTime" placeholder="" onfocus="this.showPicker()" required>
			</div>
		</div>
		<div class="col-md-2">
			<lable for="rDate" class="form-lable">Return Date</lable>
			<div class="input-group">
			<span class="input-group-text"><i class="bi bi-calendar"></i></span>
			<input type="date" class="form-control" id="rDate" placeholder="" onfocus="this.showPicker()" required>
			</div>
		</div>
		<div class="col-md-2">
			<lable for="rTime" class="form-lable">Return Time</lable>
			<div class="input-group">
			<span class="input-group-text"><i class="bi bi-clock"></i></span>
			<input type="time" class="form-control" id="rTime" placeholder="" onfocus="this.showPicker()" required>
			</div>
		</div>
		<div class="col -md 1 d-flex align-items-end">
			<button type="submit" class="btn btn-warning fw-bold ms-3"><i class="bi bi-search"></i></button>
		</div>
	</form>
	</div>
	</div>
	
	<div>
		<h4 class="fw-default text-dark mb-1" style="padding: 10px 50px;">Vehicle Categories</h4>
		<section class="bg-light py-1">
		<div class="catCard">
		<div class="row g-2">
		<div class="card1">
			<h6 class="catTopic">Sedan</h6>
  			<img src="Images\sedan.svg" class="img-fluid" class="card-img-top" alt="...">
		</div>
		<div class="card1">
			<h6 class="catTopic">Hatchback</h6>
  			<img src="Images\compact.svg" class="img-fluid" class="card-img-top" alt="...">
		</div>
		<div class="card1">
			<h6 class="catTopic">Van</h6>
  			<img src="Images\van.svg" class="img-fluid" class="card-img-top" alt="...">
		</div>
		<div class="card1">
			<h6 class="catTopic">Pickup Truck</h6>
  			<img src="Images\pickup.svg" class="img-fluid" class="card-img-top" alt="...">
		</div>
		<div class="card1">
			<h6 class="catTopic">SUV</h6>
  			<img src="Images\suv.svg" class="img-fluid" class="card-img-top" alt="...">
		</div>
		</div>
		</div>
		</section>
	</div>
	
	<div>
	<h4 class="fw-default text-dark mb-1" style="padding: 10px 50px;">Popular Vehicles</h4>
	<section class="bg-light py-1">
	<div class="pmCard">
	<div class="row g-2">	
	<div class="card1" style="width: 18rem;">
  		<img src="Images\camryex.png" class="img-fluid" class="card-img-top" style="padding: 10px;">
  	<div class="card-body">
    	<h5 class="card-title">Toyota Camry SE 350</h5>
    	<div class="pCard">
    	<div class="row g-2">
    	<div class="col-4">
    		<img src="Images\gear.png" class="img-fluid icon-img">
    		<p>Auto</p>
    	</div>
    	<div class="col-4">
    		<img src="Images\petrol.png" class="img-fluid icon-img">
    		<p>Petrol</p>
    	</div>
    	<div class="col-4">
    		<img src="Images\seat.png" class="img-fluid icon-img">
    		<p>5</p>
    	</div>
    	</div>
    	</div>
  	</div>
	</div>
	<div class="card1" style="width: 18rem;">
  		<img src="Images\hiaceex.png" class="img-fluid" class="card-img-top" style="padding: 10px;">
  	<div class="card-body">
    	<h5 class="card-title">Toyota Hiace</h5>
    	<div class="pCard">
    	<div class="row g-2">
    	<div class="col-4">
    		<img src="Images\gear.png" class="img-fluid icon-img">
    		<p>Auto</p>
    	</div>
    	<div class="col-4">
    		<img src="Images\petrol.png" class="img-fluid icon-img">
    		<p>Petrol</p>
    	</div>
    	<div class="col-4">
    		<img src="Images\seat.png" class="img-fluid icon-img">
    		<p>12</p>
    	</div>
    	</div>
    	</div>
  	</div>
	</div>
	<div class="card1" style="width: 18rem;">
  		<img src="Images\raptorex.png" class="img-fluid" class="card-img-top" style="padding: 10px;">
  	<div class="card-body">
    	<h5 class="card-title">Ford Raptor Crewmax 4X4</h5>
    	<div class="pCard">
    	<div class="row g-2">
    	<div class="col-4">
    		<img src="Images\gear.png" class="img-fluid icon-img">
    		<p>Auto</p>
    	</div>
    	<div class="col-4">
    		<img src="Images\petrol.png" class="img-fluid icon-img">
    		<p>Petrol</p>
    	</div>
    	<div class="col-4">
    		<img src="Images\seat.png" class="img-fluid icon-img">
    		<p>5</p>
    	</div>
    	</div>
    	</div>
  	</div>
	</div>
	</div>
	</div>
	</section>
	</div>	
	
	<div>
		<h4 class="fw-default text-dark mb-1" style="padding: 10px 50px;">Why Rent With Us?</h4>
		<section class="bg-light py-1">
    		<div class="container">
        		<div class="row">
            		<div class="col-4">
                		<div class="card border-0 bg-transparent">
                    		<div class="card-body">
                        		<img src="Images\booking.svg" class="img-fluid" alt="Booking Icon" class="mb-1" width="60">
                        		<h5 class="fw-semibold">Easy & Fast Booking</h5>
                        		<p class="text-muted">Reserve your vehicle in just a few clicks. Our hassle-free process ensures quick and easy bookings.</p>
                    		</div>
                		</div>
            		</div>
            
            		<div class="col-4">
                		<div class="card border-0 bg-transparent">
                    		<div class="card-body">
                        		<img src="Images\location.svg" class="img-fluid" alt="Pickup Icon" class="mb-1" width="60">
                        		<h5 class="fw-semibold">Many Pickup Locations</h5>
                        		<p class="text-muted">Convenient pickup points across multiple locations, making it easier for you to start your ride.</p>
                    		</div>
                		</div>
            		</div>
            
            		<div class="col-4">
                		<div class="card border-0 bg-transparent">
                    		<div class="card-body">
                        		<img src="Images\satisfaction.svg" class="img-fluid" alt="Support Icon" class="mb-1" width="60">
                        		<h5 class="fw-semibold">Customer Satisfaction</h5>
                        		<p class="text-muted">Our 24/7 support team ensures a seamless rental experience with top-notch service.</p>
                    		</div>
                		</div>
            		</div>
        		</div>
    		</div>
		</section>
	</div>
	
	<div>
    <section class="bg-light py-3">
        <div class="container p-3 my-3" style="background-color: #ffd0b2">
            <div class="row align-items-center">
            	<div class="col-md-5 offset-md-2 text-center text-md-start">
                    <img src="Images/eperson.png" class="img-fluid" alt="Car Image" style="max-height: 200px;"> 
                </div>
                <div class="col-md-5 text-center text-md-start mt-3 mt-md-0">
                    <div class="card border-0 bg-transparent">
                        <div class="card-body">
                            <h2 class="fw-default text-dark mb-3">Turn Your Car into Earnings!</h4>
                            <h3 class="fw-semibold mb-3">Rent It Out Today!</h5>
                            <p class="text-muted mb-4">List your vehicle on our platform and start making money effortlessly. Secure, reliable, and hassle-free!</p>
                            
                            <button class="btn btn-warning">Register Your Vehicle Now</button>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<%@ include file="\Partials\Footer.jsp" %>
	
	<%--
	<form action="adminCustomers" method="post">
	<button type="submit">All Customers</button>
	</form>--%>

</body>
</html>