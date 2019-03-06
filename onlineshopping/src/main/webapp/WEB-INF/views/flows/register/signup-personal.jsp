<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../shared/flows-header.jsp"%>

<div class="container">

	<div class="row">
	
		<div class="offset-md-3 col-md-6">
			<div class="card">
			
				<div class="card-header bg-primary text-white">
					Sign Up - Personal
				</div>
				
				<div class="card-body bg-white">
				
					<sf:form
						method="POST"
						class="form-horizontal"
						id="registerForm"
						modelAttribute="user">
						
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">First Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="firstName" class="form-control"
									placeholder="First Name"/>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">Last Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="lastName" class="form-control"
									placeholder="Last Name"/>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">Email</label>
							<div class="col-md-8">
								<sf:input type="text" path="email" class="form-control"
									placeholder="Email"/>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">Contact Number</label>
							<div class="col-md-8">
								<sf:input type="text" path="contactNumber" class="form-control"
									placeholder="Contact Number" max-length="10"/>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">Password</label>
							<div class="col-md-8">
								<sf:input type="password" path="password" class="form-control"
									placeholder="Password"/>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">Select Role</label>
							<div class="col-md-8">
							
								<div class="form-check form-check-inline">
									<sf:radiobutton cssClass="form-check-input" path="role" value="USER" checked="checked"/> 
									<label class="form-check-label">User</label>
								</div>
								
								<div class="form-check form-check-inline">
									<sf:radiobutton cssClass="form-check-input" path="role" value="SUPPLIER"/>
									<label class="form-check-label">Supplier</label>
								</div>
								
							</div>
						</div>
						
						<div class="form-group row">
							<div class="offset-md-4 col-md-8">

								<button type="submit" name="_eventId_billing"
									class="btn btn-primary">
									Next - Billing <span class="fa fa-chevron-right"></span>	
								</button>
							</div>
						</div>
						
					</sf:form>
						
				
				</div>
				
			</div>
		</div>
	
	</div>

</div>

<%@include file="../shared/flows-footer.jsp"%>


