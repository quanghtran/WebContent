<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Field of Dreams</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div id="wrap">

		<div id="header">
			<c:import url="loggedInHeader.jsp"></c:import>
		</div>

		<div class="title">Your Products</div>
		
		<br>
		
		<div class="col-xs-12" style="text-align: center; margin-bottom: 15px">
			<a href="/ShoppingCart/jsp/uploadProduct.jsp"><button
					class="btn btn-primary">Upload Product</button></a>
		</div>

		<table class="table table-striped table-bordered" style="text-align: center; width: 80%; margin: auto" border="1">
			<tr>
				<th>Image</th>
				<th>Brand</th>
				<th>Name</th>
				<th>Category</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Description</th>
			</tr>
			<c:forEach var='product' items='${requestScope["productList"]}'>
				<tr>
					<td><img src="${product.image}" height="150" width="150" /></td>
					<td>${product.brand}</td>
					<td>${product.name}</td>
					<td>${product.category}</td>
					<td>$${product.price}</td>
					<td>${product.quantity}</td>
					<td>${product.description}</td>
					<td>
			
						<form class="form-horizontal" method="POST"
							action="/ShoppingCart/action.do" style="display: inline-block;">
							<input type="hidden" name="action" value="editproduct" />
							<input type="hidden" name="id" value='${product.productId}' />
							<input type="submit" class="btn btn-default" value="Edit Product" />
						</form>

						<form class="form-horizontal" method="POST"
							action="/ShoppingCart/action.do" style="display: inline-block;">
							<input type="hidden" name="action" value="deleteproduct" />
							<input type="hidden" name="id" value='${product.productId}' />
							<input type="submit" class="btn btn-danger" value="Delete Product"
								onclick="return confirm('Are you sure you want to delete this product?');" />
						</form>

					</td>
				</tr>
			</c:forEach>
		</table>

		<br>

		<div id="push"></div>
	</div>

	<div id="footer">
		<c:import url="footer.jsp"></c:import>
	</div>

</body>
</html>
