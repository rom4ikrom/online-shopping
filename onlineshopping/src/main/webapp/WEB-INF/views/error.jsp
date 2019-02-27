<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />

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
<link href="${css}/style-template.css" rel="stylesheet">

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
				<a class="navbar-brand" href="${contextRoot}/home">Home</a>
			</div>
		</nav>

		<!-- Page Content -->

		<div class="content">

			<div class="container">
			
				<div class="row">
				
					<div class="col-md-12">
					
						<div class="jumbotron">
						
							<h1>${errorTitle}</h1>
							<hr/>
							
							<blockquote style="word-wrap: break-word">
							
								${errorDescription}
							
							</blockquote>
						
						</div>
					
					</div>
				
				</div>
			
			</div>

		</div>

		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>


	</div>

</body>

</html>
