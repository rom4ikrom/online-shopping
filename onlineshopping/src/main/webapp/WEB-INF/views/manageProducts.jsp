<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="container">

	<div class="row">

		<c:if test="${not empty message}">

			<div class="col-xs-12">

				<div class="alert alert-success alert-dismissible">

					<button type="button" class="close" data-dismiss="alert">&times;</button>

					${message}

				</div>

			</div>

		</c:if>



		<div class="offset-md-2 col-md-8">

			<div class="card">

				<div class="card-header bg-primary text-white">Product
					Management</div>

				<div class="card-body bg-white">

					<!-- Form elements -->

					<sf:form modelAttribute="product"
						action="${contextRoot}/manage/products" method="POST"
						enctype="multipart/form-data">

						<div class="form-group row">
							<label class="col-form-label col-md-4" for="name">Enter
								Product Name:</label>

							<div class="col-md-8">

								<sf:input type="text" path="name" id="name"
									placeholder="Product Name" class="form-control" />
								<sf:errors path="name" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4" for="brand">Enter
								Brand Name:</label>

							<div class="col-md-8">

								<sf:input type="text" path="brand" id="brand"
									placeholder="Brand Name" class="form-control" />
								<sf:errors path="brand" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4" for="description">Product
								Description:</label>

							<div class="col-md-8">

								<sf:textarea path="description"
									placeholder="Write a Description" rows="4" cols="1"
									class="form-control"></sf:textarea>
								<sf:errors path="description" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4" for="unitPrice">Enter
								Unit Price:</label>

							<div class="col-md-8">

								<sf:input type="number" path="unitPrice" id="unitPrice"
									placeholder="Unit Price in &#8377;" class="form-control" />
								<sf:errors path="unitPrice" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4" for="quantity">Enter
								Quantity:</label>

							<div class="col-md-8">

								<sf:input type="number" path="quantity" id="quantity"
									placeholder="Quantity Available" class="form-control" />
							</div>
						</div>

						<!-- File element for image upload -->
						<div class="form-group row">
							<label class="col-form-label col-md-4" for="file">Select
								an Image:</label>

							<div class="col-md-8">

								<sf:input type="file" path="file" id="quantity"
									class="form-control" />
								<sf:errors path="file" cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4" for="categoryId">Select
								Category: </label>

							<div class="col-md-8">

								<sf:select path="categoryId" id="categoryId"
									class="form-control" items="${categories}" itemLabel="name"
									itemValue="id">
								</sf:select>

								<c:if test="${product.id == 0}">

									<div class="text-right">
										<br />
										<button type="button" data-toggle="modal"
											data-target="#myCategoryModal" class="btn btn-warning btn-sm">Add
											Category</button>
									</div>


								</c:if>

							</div>
						</div>

						<div class="form-group row">
							<div class="offset-md-4 col-md-8">

								<input type="submit" name="submit" id="submit" value="Submit"
									class="btn btn-primary" />

								<!-- Hidden fields for product -->
								<sf:hidden path="id" />
								<sf:hidden path="code" />
								<sf:hidden path="supplierId" />
								<sf:hidden path="active" />
								<sf:hidden path="purchases" />
								<sf:hidden path="views" />

							</div>
						</div>

					</sf:form>


				</div>

			</div>

		</div>

	</div>

	<div class="row">

		<div class="col-md-12">

			<h3>Available Products</h3>
			<hr />

		</div>

		<div class="col-md-12">

			<div class="container-fluid">

				<div class="table-responsive">

					<!-- Products table for Admin -->
					<table id="adminProductsTable"
						class="table table-striped table bordered">

						<thead>
							<tr>
								<th>Id</th>
								<th>&#160;</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Quantity</th>
								<th>Unit Price</th>
								<th>Active</th>
								<th>Edit</th>
							</tr>
						</thead>

						<tfoot>
							<tr>
								<th>Id</th>
								<th>&#160;</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Quantity</th>
								<th>Unit Price</th>
								<th>Active</th>
								<th>Edit</th>
							</tr>
						</tfoot>

					</table>
				</div>

			</div>

		</div>

	</div>

	<div class="modal fade" id="myCategoryModal" role="dialog"
		tabindex="-1">

		<div class="modal-dialog" role="document">

			<div class="modal-content">
				<!-- Modal header -->
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>

					<h4 class="modal-title">Add new Category</h4>

				</div>
				<div class="modal-body">
					<!-- Category Form -->

					<sf:form id="categoryForm" modelAttribute="category"
						action="${contextRoot}/manage/category" method="POST"
						class="form-horizontal">

						<div class="form-group row">

							<label for="category_name" class="col-form-label col-md-4">Category
								Name</label>
							<div class="col-md-8">

								<sf:input type="text" path="name" id="category_name"
									class="form-control" />

							</div>

						</div>

						<div class="form-group row">

							<label for="category_description" class="col-form-label col-md-4">Category
								Description</label>
							<div class="col-md-8">

								<sf:textarea cols="" rows="5" type="text" path="description"
									id="category_description" class="form-control"></sf:textarea>

							</div>

						</div>

						<div class="form-group row">

							<div class="offset-md-4 col-md-8">

								<input type="submit" value="Add Category"
									class="btn btn-primary" />

							</div>

						</div>

					</sf:form>

				</div>

			</div>

		</div>

	</div>

</div>
