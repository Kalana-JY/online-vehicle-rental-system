
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