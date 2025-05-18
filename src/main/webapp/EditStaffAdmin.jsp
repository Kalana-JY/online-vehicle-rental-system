
<div class="modal fade" id="editStaffModal" tabindex="-1" aria-labelledby="editStaffModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editStaffModalLabel">Edit Staff</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                
                <form action="staffUpdate" method="post">
					<div class="mb-3">
						<label for="signupEmail" class="form-label">Email:</label>
						<input type="email" class="form-control" id="signupEmail" name="email" value="${param.email}">
					</div>
					<div class="mb-3">
						<label for="fullName" class="form-label">Full Name:</label>
						<input type="text" class="form-control" id="fullName" name="name" value="${param.name}">
					</div>
					<div class="mb-3">
						<label for="signupPassword" class="form-label">Password</label>
						<input type="text" class="form-control" id="signupPassword" name="password" value="${param.password}">
					</div>
		
					<div class="d-grid gap-2">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>
            </div>
        </div>
    </div>
</div>