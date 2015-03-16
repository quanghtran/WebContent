<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Field of Dreams</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div id="wrap">

		<c:choose>
			<c:when test='${not empty sessionScope["user"]}'>
				<div id="header">
					<c:import url="loggedInHeader.jsp"></c:import>
				</div>
			</c:when>
			<c:otherwise>
				<div id="header">
					<c:import url="header.jsp"></c:import>
				</div>
			</c:otherwise>
		</c:choose>

		<center>
			<font face="papyrus" size="7">${category}</font>
		</center>
		
		<br>

		<div class="container">

			<c:forEach var='product' items="${productList}">

				<div class="container">
					<div class="row clearfix">
						<div class="col-md-3 column">
							<img src="${product.image}" height="150" width="150" />
						</div>
						<div class="col-md-9 column">
							<div class="row clearfix">
								<div class="col-md-6 column">
									<p>
										<font color=blue size=4>Brand: </font><font size=4>${product.brand}</font>
									</p>
								</div>
								<div class="col-md-6 column">
									<p>
										<font color=blue size=4>Name: </font><font size=4>${product.name}</font>
									</p>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-12 column">
									<p>
										<font color=blue size=3>Description: </font><font size=3>${product.description}</font>
									</p>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-4 column">
									<p>
										<b><font size="4" color=red>Price:
												$${product.price}</font></b>
									</p>
								</div>
							</div>
							<div class="col-md-4 column">
								<c:choose>
									<c:when test='${sessionScope["accountType"] == "customer"}'>
										<form class="form-horizontal" method="POST"
											action="/ShoppingCart/action.do">
											<input type="hidden" name="action" value="addproduct" /> <input
												type="hidden" name="id" value='${product.productId}' /> <input
												type="submit" class="btn btn-primary" value="Add to Cart" />
										</form>
									</c:when>
									<c:otherwise>
										<form class="form-horizontal" method="POST"
											action="/ShoppingCart/action.do">
											<input type="button" class="btn btn-default"
												value="Add to Cart"
												onclick="return confirm('You must be logged in as a customer to access this feature.')" />
										</form>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
		</div>
		
		<br><br>

		</c:forEach>

		<div id="push"></div>
	</div>

	<div id="footer">
		<c:import url="footer.jsp"></c:import>
	</div>

</body>
</html>