<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff Dashboard</title>

<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link rel="stylesheet" href="CSS/StaffDashboard.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>

	<div class="dashboard-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2><i class="fas fa-dashboard">Staff Dashboard</i></h2>
				</div>
			</div>
		</div>
	</div>

	
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="sidebar">
					<div class="card">
						<div class="card-header">
							<i class="fas fa-user"></i>profile
						</div>
						<div class="card-body">
							<div class="profile-section">
								<div class="profile-info">
								<c:set var="staff" value="${staff}"></c:set>
									<span class="profile-label">Name:</span><div class="mb-3">
									<label for="fullName" class="form-label"></label>
									<input type="text" class="form-control" id="fullName" name="name" value="${staff.name }" required>
									</div>
								</div>
								<div class="profile-label">
									<span class="profile-label">Email:</span><div class="mb-3">
									<label for="signupEmail" class="form-label"></label>
									<input type="email" class="form-control" id="signupEmail" name="email" value="${staff.email }" required>
									</div>
								</div>
								<div class="profile-info">
									<span class="profile-label">Password:</span><div class="mb-3">
									<label for="signupPassword" class="form-label"></label>
									<input type="password" class="form-control" id="signupPassword" name="password" value="${staff.password }" required>
									</div>
								</div>
								
							</div>
							
							<div class="divider"></div>
							
							<div class="profile-section">
								<form action="StaffUpdate.jsp" method="post">
								<input type="hidden" name="name" value="${staff.name }">
								<input type="hidden" name="email" value="${staff.email }">
								<input type="hidden" name="password" value="${staff.password }">
								
								<input type="submit" value="update">
								</form>
								<button class="btn btn-logout btn" onclick="window.location.href='staffLogin.jsp'">
								<i class="fas fa-sign-out-alt"></i>Log Out
								</button>
							</div>
							
						</div>					
					</div>
					
					<div class="card">
						<div class="card-header">
						<i class="fas fa-user"></i>View Customer
						</div>
						<div class="card-body">
						
							<div class="d-grid gap-2">
							<button id="viewVehiclesBtn" class="btn btn-outline-primary view-vehicle" onclick="toggleTables('vehicles')">
							<i class="fas fa-car"></i>View Vehicles
							</button>
							<form action="displayMessage" method="post">
							<button type="submit" id="viewInquriesBtn" class="btn btn-outline-primary btn-sm btn-active" >
							View Inquiries
							</button>
							</form>
							</div>
						</div>
						
					</div>
					
				</div>
			</div>
			
			<div class="col-md-8">
				<div class="main-content">
					<div class="card inquiries-table">
						<div class="card-header">
							<i class="fas fa-question-circle"></i>Customer Inquiries
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover" border="5">
								
								<thead>
									<tr>
										<th>Email</th>
										<th>Name</th>
										<th>Phone no</th>
										<th>Message</th>
										<th>Action</th>
										<th>Reply</th>
									</tr>
								</thead>
								
								<tbody>
							
									
										<c:forEach var="msg" items="${cusMessages}">
										<tr>
											<td>${msg.email}</td>
											<td>${msg.name}</td>
											<td>${msg.phone}</td>
											<td>${msg.message}</td>
											<td>
											<button class="btn btn-primary btn-sm btn-reply" onclick="openReplyModal('${msg.email}','${msg.message}')">
											<i class="fas fa-reply"></i>Reply
											</button>
											</td>
										</tr>
										
										</c:forEach>
										

									
								</tbody>
								</table>
							</div>
						</div>
						
					</div>
					
					<div class="card vehicles-table">
						<div class="card-header">
							<i class="fas fa-car"></i>Vehicle Details
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover" border="5">
									<thead>
										<tr>
											<th>Vehicle Type</th>
											<th>Transmission</th>
											<th>Vehicle Number</th>
											<th>Color</th>
											<th>Engine no</th>
											<th>Seating</th>
											<th>Fuel Type</th>
											<th>Image</th>
										</tr>
									</thead>
									<tbody>
									
										<tr>
											<td>Sedan</td>
											<td>Automatic</td>
											<td>CAA-8150</td>
											<td>White</td>
											<td>ENG3343</td>
											<td>5</td>
											<td>Petrol</td>
											<td><img src="https://via.placeholder.com/80x60" class="vehicle-image" alt="Vehicle"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	
	<div id="replyModal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closeReplyModal()">&times;</span>
			<h4><i class="fas fa-reply"></i>Reply to Customer</h4>
			<div class="reply-form">
				<div class="mb-3">
					<label for="customerEmail" class="form-label">To:</label>
					<input type="text" class="form-control" id="customerEmail" readonly>
					
				</div>
				<div class="mb-3">
					<label for="originalMessage" class="form-label">Original Message:</label>
					<textarea class="form-control" id="originalMessage" rows="3" readonly> </textarea>
				</div>
				<div class="mb-3">
					<label for="replyMessage" class="form-label">Reply:</label>
					<textarea  class="form-control reply-textarea" id="replyMessage" rows="5" placeholder="type your reply here....." ></textarea>
					
				</div>
				<button type="button" class="btn btn-reply" onclick="sendReply()">
				<i class="fas fa-paper-plane"></i>Send Reply
				</button>
				<button type="button" class="btn btn-reply btn-reply-cancel" onclick="closeReplyModal()">
				<i class="fas fa-times"></i>Cancel
				</button>
			</div>
		</div>
	</div>
	
<script >

document.addEventListener('DOMContentLoaded', function() {
    toggleTables('inquiries');
});

	function openReplyModal(email="johnwick@gmail.com",message="are there any vans available?"){
		document.getElementById('customerEmail').value = email;
		document.getElementById('originalMessage').value = message;
		document.getElementById('replyMessage').value='';
		document.getElementById('replyModal').style.display='block';
	}
	
	function closeReplyModal(){
		document.getElementById('replyModal').style.display='none';
	}
	
	function sendReply(){
		const email=document.getElementById('customerEmail').value;
		const reply=document.getElementById('replyMessage').value
		
		if(!reply){
			alert('Plase enter your reply before sending...')
		}
		
		alert(`Reply to ${email}:\n\n${reply}`);
		closeReplyModal();
	}
	
	function toggleTables(tableToShow){
		const inquiriesTable=document.querySelector('.inquiries-table');
		const vehiclesTable=document.querySelector('.vehicles-table');
		const inquiriesBtn=document.getElementById('viewInquiriesBtn');
		const vehiclesBtn=document.getElementById('viewVehiclesBtn');
		
		if(tableToShow=='vehicles'){
			inquiriesTable.style.display='none';
			vehiclesTable.style.display='block';
			inquiriesBtn.classList.remove('btn-active');
			vehiclesBtn.classList.add('btn-active');
		}else{
			inquiriesTable.style.display='block';
			vehiclesTable.style.display='none';
			vehiclesBtn.classList.remove('btn-active');
			inquiriesBtn.classList.add('btn-active');
		}
		
	}
	
	window.onclick=function(event){
		const modal = document.getElementById('replyModal');
		if(event.target==modal){
			closeReplyModal();
		}
	}

</script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	

</body>
</html>