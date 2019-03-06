<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../shared/flows-header.jsp"%>

<div class="container">

	<div class="row">
	
		<div class="offset-md-3 col-md-6">
			<div class="card">
			
				<div class="card-header bg-primary text-white">
					Sign Up - Address
				</div>
				
				<div class="card-body bg-white">
				
					<sf:form
						method="POST"
						class="form-horizontal"
						id="registerForm"
						modelAttribute="billing">
						
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">Address 1st Line</label>
							<div class="col-md-8">
								<sf:input type="text" path="addressLineOne" class="form-control"
									placeholder="Address First Line"/>
								<sf:errors path="addressLineOne" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">Address 2nd Line</label>
							<div class="col-md-8">
								<sf:input type="text" path="addressLineTwo" class="form-control"
									placeholder="Address Second Line"/>
								<sf:errors path="addressLineTwo" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">City</label>
							<div class="col-md-8">
								<sf:input type="text" path="city" class="form-control"
									placeholder="City"/>
								<sf:errors path="city" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">State</label>
							<div class="col-md-8">
								<sf:input type="text" path="state" class="form-control"
									placeholder="state"/>
								<sf:errors path="state" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">Postal Code</label>
							<div class="col-md-8">
								<sf:input type="text" path="postalCode" class="form-control"
									placeholder="Postal Code"/>
								<sf:errors path="postalCode" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">Country</label>
							<div class="col-md-8">
								<sf:input type="text" path="country" class="form-control"
									placeholder="Country"/>
								<sf:errors path="country" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group row">
							<div class="offset-md-4 col-md-8">

								<button type="submit" name="_eventId_personal"
									class="btn btn-primary">
									<span class="fa fa-chevron-left"></span> Personal 	
								</button>
								
								<button type="submit" name="_eventId_confirm"
									class="btn btn-primary">
									Confirm <span class="fa fa-chevron-right"></span>	
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