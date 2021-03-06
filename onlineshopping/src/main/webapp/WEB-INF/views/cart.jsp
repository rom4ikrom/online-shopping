<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">

	<c:if test="${not empty message}">
		
		<div class="alert alert-info">
			<h3 class="text-center">
				${message}
			</h3>
		</div>
		
	</c:if>

	<c:choose>
		<c:when test="${not empty cartLines}">

			<table id="cart" class="table table-hover table-condensed">
				<thead>
					<tr>
						<th style="width: 50%">Product</th>
						<th style="width: 10%">Price</th>
						<th style="width: 8%">Quantity</th>
						<th style="width: 18%" class="text-center">Subtotal</th>
						<th style="width: 14%"></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${cartLines}" var="cartLine">
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 d-none d-sm-block">
										<img src="${img}/${cartLine.product.code}.jpg" alt="${cartLine.product.name}"
											class="img-fluid cartImg" />
									</div>
									<div class="col-sm-10">
										<h4 class="nomargin">${cartLine.product.name}</h4>
										
											<c:if test="${cartLine.available == false}">
												<span class="unavailable">Not Available</span>
											</c:if>
										
										<p>Brand - ${cartLine.product.brand}</p>
										<p>Description - ${cartLine.product.description}</p>
									</div>
								</div>
							</td>
							<td data-th="Price">&#8377; ${cartLine.buyingPrice}</td>
							
							<td data-th="Quantity">
								<input type="number" id="count_${cartLine.id}" min="1" max="3" class="form-control text-center" value="${cartLine.productCount}">
							</td>
							
							<td data-th="Subtotal" class="text-center">&#8377; ${cartLine.total}</td>
							
							<td class="actions text-center" data-th="">
								<button type="button" name="refreshCart" value="${cartLine.id}" class="btn btn-info btn-md">
									<span class="fa fa-refresh"></span>
								</button>
								<a href="${contextRoot}/cart/${cartLine.id}/delete" class="btn btn-danger btn-md">
									<span class="fa fa-trash-o"></span>
								</a>
							</td>
						</tr>
					</c:forEach>

				</tbody>
				<tfoot>
					<tr class="d-block d-sm-none">
						<td class="text-center"><strong>Total &#8377; ${userModel.cart.grandTotal}</strong></td>
					</tr>
					<tr>
						<td>
							<a href="${contextRoot}/show/all/products" class="btn btn-warning"><span class="fa fa-angle-left"></span> Continue Shopping</a>
						</td>
						
						<td colspan="2 d-none d-sm-block"></td>
						
						<td class="d-none d-sm-block text-center">
							<strong>Total &#8377; ${userModel.cart.grandTotal}</strong>
						
						</td>
						<td class="text-center"><a href="#"
							class="btn btn-success btn-block">Checkout <span
								class="fa fa-angle-right"></span></a></td>
					</tr>
				</tfoot>
			</table>

		</c:when>


		<c:otherwise>
			<div class="jumbotron">
				<div class="text-center">
					<h1>Your cart is empty!</h1>
				</div>
			</div>
		</c:otherwise>
	</c:choose>

</div>