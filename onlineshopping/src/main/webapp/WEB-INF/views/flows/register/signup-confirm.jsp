<%@include file="../shared/flows-header.jsp"%>

<div class="container">

	<div class="row">
	
		<div class="col-md-6">
			<div class="card">
			
				<div class="card-header bg-primary text-white">
					Personal Details
				</div>
				
				<div class="card-body bg-white">
					<!-- display personal details -->
					
					<div class="text-center">
						<h4>${registerModel.user.firstName} ${registerModel.user.lastName}</h4>
						<h5>Email: ${registerModel.user.email}</h5>
						<h5>Contact Number: ${registerModel.user.contactNumber}</h5>
						<h5>Role: ${registerModel.user.role}</h5>
					</div>
					
				</div>
				
				<div class="card-footer">
					<!-- anchor to move to the edit of personal details -->
					<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary">Edit</a>
				</div>
			
			</div>
		</div>
		
		<div class="col-md-6">
			<div class="card">
			
				<div class="card-header bg-primary text-white">
					Billing Address
				</div>
				
				<div class="card-body bg-white">
					<div class="text-center">
						<!-- display address details -->
						<h4>${registerModel.billing.addressLineOne}</h4>
						<h4>${registerModel.billing.addressLineTwo}</h4>
						<h4>${registerModel.billing.city} - ${registerModel.billing.postalCode}</h4>
						<h4>${registerModel.billing.state} - ${registerModel.billing.country}</h4>
					</div>
				</div>
				
				<div class="card-footer">
					<!-- anchor to move to the edit of address details -->
					<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary">Edit</a>
				</div>
			
			</div>
		</div>
		
	</div> <!-- end of row -->
	
	<div class="row mt-3 mb-3">
	
		<div class="offset-md-4 col-md-4">
			<div class="text-center">
				<!-- move to success page -->
				
				<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-primary">Confirm</a>
				
			</div>
		</div>
		
	</div>

	

</div>

<%@include file="../shared/flows-footer.jsp"%>