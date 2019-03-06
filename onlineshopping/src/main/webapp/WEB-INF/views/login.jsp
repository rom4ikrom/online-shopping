<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="img" value="/resources/img" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- fix favicon.ico error -->
<link rel="shortcut icon" href="#" />

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">

<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Custom styles for this template -->
<%-- <link href="${css}/style-template.css" rel="stylesheet"> --%>

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="${css}/myapp.css" rel="stylesheet">

<style>
body {
	padding-top: 56px;
}
</style>

<script type="text/javascript">
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>

<title>Online Shopping - ${title}</title>

</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item" id="home"><a class="nav-link"
							href="${contextRoot}/home">Home</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<!-- Page Content -->

		<div class="content">
			<div class="row">
			
				<div class="offset-md-3 col-md-6">
					<div class="card">
					
						<div class="card-header bg-primary text-white">
							Login
						</div>
						
						<div class="card-body bg-white">

							<form action="${contextRoot}/login" method="POST" class="form-horizontal" id="loginForm">

								<div class="form-group row">
									<div class="col-md-4">
										<label class="col-form-label" for="username">Email</label>
									</div>
									<div class="col-md-8">
										<input class="form-control" type="text" name="username"
											placeholder="Username" />
									</div>
								</div>

								<div class="form-group row">
									<div class="col-md-4">
										<label class="col-form-label" for="password">Password</label>
									</div>
									<div class="col-md-8">
										<input class="form-control" type="password" name="password"
											placeholder="Password" />
									</div>
								</div>
								
								<div class="form-group row">
									<div class="offset-md-4 col-md-8">
										<input class="btn btn-primary" value="Login" type="submit"/>
									</div>
								</div>
							
							</form>

						</div>
						
						<div class="card-footer">
							<div class="text-right">
								New User - <a href="${contextRoot}/register">Register Here</a> 
							</div>
						</div>
						
					</div>
				</div>
			
			</div>
		</div>

		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>


	</div>

	<!-- jQuery core JavaScript -->
	<script src="${js}/jquery.js"></script>

	<!-- jQuery Validate JavaScript -->
	<script src="${js}/jquery.validate.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/bootstrap.bundle.min.js"></script>


	<!-- Self coded javascript -->
	<script src="${js}/myapp.js"></script>



</body>

</html>
