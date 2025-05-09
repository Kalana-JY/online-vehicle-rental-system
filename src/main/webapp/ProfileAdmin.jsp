<!-- Profile Modal -->
<div class="modal fade" id="profileModal" tabindex="-1" aria-labelledby="profileModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="profileModalLabel">Admin Profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="text-center mb-3">
                    <img src="uploads/${admin.fileName}" alt="Profile" class="rounded-circle" width="150" height="150" onerror="if (!this.dataset.errored) { this.dataset.errored = true; this.src='images/default.png'; }">
                </div>
                <div class="mb-3">
                    <label class="form-label">Name:</label>
                    <p class="form-control-static">${admin.name}</p>
                </div>
                <div class="mb-3">
                    <label class="form-label">Email:</label>
                    <p class="form-control-static">${admin.email}</p>
                </div>	 
                <div class="mb-3">
                    <label class="form-label">Address:</label>
                    <p class="form-control-static">${admin.address}</p>
                </div>
                <div class="mb-3">
                    <label class="form-label">Phone Number:</label>
                    <p class="form-control-static">${admin.phoneNumber}</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editProfileModal">Edit Profile</button>
            </div>
        </div>
    </div>
</div>

<!-- Edit Profile Modal (optional) -->
<div class="modal fade" id="editProfileModal" tabindex="-1" aria-labelledby="editProfileModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editProfileModalLabel">Edit Profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="UpdateAdmin" method="post" enctype="multipart/form-data">
                	<input type="hidden" name="id" value="${admin.id}">
    				<input type="hidden" name="existingFileName" value="${admin.fileName}">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name" value="${admin.name}" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" value="${admin.email}" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" value="${admin.password}" required>
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" class="form-control" id="address" name="address" value="${admin.address}">
                    </div>
                    <div class="mb-3">
                        <label for="phoneNumber" class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" value="${admin.phoneNumber}">
                    </div>
                    <div class="mb-3">
                        <label for="profileImage" class="form-label">Profile Image</label>
                        <input class="form-control" type="file" id="profileImage" name="profileImage">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<%-- <div class="modal fade" id="profileModal" tabindex="-1" aria-labelledby="profileModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="profileModalLabel">Profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body d-flex">
            	<div class="sidebar d-flex flex-column flex-shrink-0 p-3" style="width: 140px; height: 500px; background-color: white;">
                	<img src="${pageContext.request.contextPath}/${admin.fileName}" alt="" width="100" height="100" class="rounded-circle me-2">
                </div>
                <div>
                	<div>
                    	<h6>Name</h6>
                    	<p class="text-muted"><strong>${admin.name}</strong></p>
                	</div>
                	<div>
                		<h6>Email</h6>
                    	<p class="text-muted"><strong>${admin.email}</strong></p>
                	</div>
                	<div>
                		<h6>Password</h6>
                    	<p class="text-muted"><strong>${admin.password}</strong></p>
                	</div>
                	<div>
                		<h6>Address</h6>
                    	<p class="text-muted"><strong>${admin.address}</strong></p>
                	</div>
                	<div>
                		<h6>Phone Number</h6>
                    	<p class="text-muted"><strong>${admin.phoneNumber}</strong></p>
                	</div>
                	<button type="button" class="btn btn-success m-1" data-bs-toggle="modal" data-bs-target="#editAdminModal" onclick="setEditFormData('${admin.id}', '${admin.name}', '${admin.email}', '${admin.password}', '${admin.address}', '${admin.phoneNumber}', '${admin.fileName}')">Edit</button>
                </div>
            </div>
    	</div>
	</div> --%>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile - Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<!-- Profile View Modal -->
<div class="d-flex min-vh-100">
<nav class="sidebar d-flex flex-column flex-shrink-0 p-3" style="width: 280px; background-color: #1f2937;">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
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
    		<p class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
        		<img src="${pageContext.request.contextPath}/${admin.fileName}" alt="" width="32" height="32" class="rounded-circle me-2"><strong>${admin.name}</strong>
        	</p>
        		
    		<ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
        		<li><a class="dropdown-item" href="#">Settings</a></li>
        		<li><a class="dropdown-item" href="#profileModal">Profile</a></li>
        		<li><hr class="dropdown-divider"></li>
        		<li><a class="dropdown-item" href="adminLogin.jsp">Sign out</a></li>
    		</ul>
</div>
    </nav>
	<div class="container p-3 my-5 border rounded">
                <div class="text-center mb-4">
                    <img src="${not empty admin.fileName ? pageContext.request.contextPath.concat('/').concat(admin.fileName) : 'https://via.placeholder.com/100'}" 
                         alt="Profile Image" 
                         width="100" 
                         height="100" 
                         class="rounded-circle">
                </div>
                
                <div class="profile-details">
                	<div class="detail-item mb-3">
                        <h6>ID</h6>
                        <p class="text-muted"><strong>${not empty admin.id ? admin.id : 'N/A'}</strong></p>
                    </div>
                    <div class="detail-item mb-3">
                        <h6>Name</h6>
                        <p class="text-muted"><strong>${not empty admin.name ? admin.name : 'N/A'}</strong></p>
                    </div>
                    
                    <div class="detail-item mb-3">
                        <h6>Email</h6>
                        <p class="text-muted"><strong>${not empty admin.email ? admin.email : 'N/A'}</strong></p>
                    </div>
                    
                    <div class="detail-item mb-3">
                        <h6>Password</h6>
                        <p class="text-muted"><strong>••••••••</strong></p>
                    </div>
                    
                    <div class="detail-item mb-3">
                        <h6>Address</h6>
                        <p class="text-muted"><strong>${not empty admin.address ? admin.address : 'N/A'}</strong></p>
                    </div>
                    
                    <div class="detail-item mb-3">
                        <h6>Phone Number</h6>
                        <p class="text-muted"><strong>${not empty admin.phoneNumber ? admin.phoneNumber : 'N/A'}</strong></p>
                    </div>
                    
                    <div class="text-center">
                        <button type="button" 
                                class="btn btn-success" 
                                data-bs-toggle="modal" 
                                data-bs-target="#editAdminModal" 
                                onclick="setEditFormData(
                                    '${admin.id}', 
                                    '${admin.name}', 
                                    '${admin.email}', 
                                    '${admin.password}', 
                                    '${admin.address}', 
                                    '${admin.phoneNumber}', 
                                    '${admin.fileName}'
                                )">
                            Edit Profile
                        </button>
                    </div>
                </div>
          </div>
          
          <div>
          
          <script>
			    function setEditFormData(id, name, email, password, address, phoneNumber, fileName) {
			        document.getElementById('editId').value = id || '';
			        document.getElementById('editName').value = name || '';
			        document.getElementById('editEmail').value = email || '';
			        document.getElementById('editPassword').value = '';
			        document.getElementById('editAddress').value = address || '';
			        document.getElementById('editPhNumber').value = phoneNumber || '';
			        document.getElementById('editCurrentFileName').value = fileName || '';
			    }
		</script>
          
          	<div class="modal fade" id="editAdminModal" tabindex="-1" aria-labelledby="editAdminModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editAdminModalLabel">Edit Admin Profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="adminEditForm" method="post" action="UpdateAdmin" enctype="multipart/form-data">
                    <input type="text" id="editId" name="id">
                    <input type="text" id="editCurrentFileName" name="currentFileName">
                    
                    <div class="mb-3">
                        <label for="editName" class="form-label">Name *</label>
                        <input type="text" class="form-control" id="editName" name="name" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="editEmail" class="form-label">Email *</label>
                        <input type="email" class="form-control" id="editEmail" name="email" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="editPassword" class="form-label">Password *</label>
                        <input type="password" class="form-control" id="editPassword" name="password" required>
                        <div class="form-text">Leave blank to keep current password</div>
                    </div>
                    
                    <div class="mb-3">
                        <label for="editAddress" class="form-label">Address</label>
                        <input type="text" class="form-control" id="editAddress" name="address">
                    </div>
                    
                    <div class="mb-3">
                        <label for="editPhNumber" class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" id="editPhNumber" name="phoneNumber">
                    </div>
                    
                    <div class="mb-3">
                        <label for="editFileName" class="form-label">Profile Image</label>
                        <input type="file" class="form-control" id="editFileName" name="file" accept="image/*">
                        <div class="form-text">Max size 2MB. Leave blank to keep current image.</div>
                    </div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

          </div>
</div> 

</body>
</html>
 --%>