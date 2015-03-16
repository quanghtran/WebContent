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
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div id="wrap">

		<div id="header">
			<c:import url="loggedInHeader.jsp"></c:import>
		</div>

		<div class="title">Shopping Cart</div>

		<br>

		<table class="table table-striped table-bordered" style="text-align: center; width: 80%; margin: auto" border="1">
			<tr>
				<th>Image</th>
				<th>Brand</th>
				<th>Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>
			</tr>
			<c:forEach var='product' items='${sessionScope["shoppingCart"]}'>
				<tr>
					<td><img src="${product.image}" height="150" width="150" /></td>
					<td>${product.brand}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>$${product.price}</td>
					<td>${product.quantity}</td>
					<td>
						<form class="form-horizontal" method="POST"
							action="/ShoppingCart/action.do" style="display: inline-block;">
							<input type="hidden" name="action" value="addproduct" />
							<input type="hidden" name="id" value='${product.productId}' />
							<input type="submit" class="btn btn-default" value="Add another" />
						</form>

						<form class="form-horizontal" method="POST"
							action="/ShoppingCart/action.do" style="display: inline-block;">
							<input type="hidden" name="action" value="removeproduct" />
							<input type="hidden" name="id" value='${product.productId}' />
							<input type="submit" class="btn btn-danger" value="Remove Product"
								onclick="return confirm('Are you sure you want to remove this product from your cart?');" />
						</form>

					</td>
				</tr>
			</c:forEach>
			<tr>
			<td><b><font size=3>Total: ${requestScope.total}</font></b></td>
			</tr>
			<tr>
			<td><a href="#checkoutModal" data-toggle="modal" data-target="#checkoutModal"><input type="button" class="btn btn-primary" value="Checkout" /></a>
			</tr>				
		</table>		
		
		<div class="modal fade" id="checkoutModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Order Summary</h4>
        </div>
        <div class="modal-body">
		<form class="form-horizontal" method="post" action="/ShoppingCart/action.do">
			<input type="hidden" name="action" class="btn btn-primary" value="checkoutproducts" />
			
		<table class="table table-striped table-bordered" style="text-align: center; width: 80%; margin: auto" border="1">
			<tr>
				<th>Brand</th>
				<th>Name</th>
				<th>Price</th>
				<th>Quantity</th>
			</tr>
			<c:forEach var='product' items='${sessionScope["shoppingCart"]}'>
				<tr>
					<td>${product.brand}</td>
					<td>${product.name}</td>
					<td>$${product.price}</td>
					<td>${product.quantity}</td>
				</tr>
			</c:forEach>
			<tr>
			<td><b>Total: ${requestScope.total}</b></td>
			</tr>
		</table>
		
		<br><b>Shipping to:</b> ${sessionScope.customer.address}
		<br><b>PayPal email:</b> ${sessionScope.customer.email}	
		
		<br><br>			
			 
        <div class="modal-footer"><!-- footer area with buttons for a continued dialog -->
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          <input type="submit" value="Confirm Order" class="btn btn-primary" />
          </div>
          </form>
        </div>
      </div>
    </div>
  </div>

		<br><br>
		
		<div class="title">Purchase History</div>

		<br>

		<table class="table table-striped table-bordered" style="text-align: center; width: 80%; margin: auto" border="1">
			<tr>
				<th>Image</th>
				<th>Brand</th>
				<th>Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>
			</tr>
			<c:forEach var='product' items='${requestScope["productList"]}'>
				<tr>
					<td><img src="${product.image}" height="150" width="150" /></td>
					<td>${product.brand}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>$${product.price}</td>
					<td>${product.quantity}</td>
					<td>
						<form class="form-horizontal" method="POST"
							action="/ShoppingCart/action.do" style="display: inline-block;">
							<input type="hidden" name="action" value="addproduct" /> <input
								type="hidden" name="id" value='${product.productId}' /> <input
								type="submit" class="btn btn-default" value="Add to Cart" />
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>

		<br />

		<div id="push"></div>
	</div>

	<div id="footer">
		<c:import url="footer.jsp"></c:import>
	</div>

</body>
</html>
