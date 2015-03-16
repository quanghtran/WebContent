<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Manage Account</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="../js/bootstrapDatepicker.js"></script>
<script src="../js/editOnClick.js"></script>
</head>
<body>

	<div id="wrap">

		<div id="header">
			<c:import url="loggedInHeader.jsp"></c:import>
		</div>

		<div class="title">Account Details</div>
		
		<br>

		<div class="container">
			<table class="table table-striped table-bordered">

				<tr>
					<td class="col-xs-1"><strong> <span
							class="text-primary"></span> Brand/Company Name
					</strong></td>
					<td class="col-xs-2 text-primary">${sessionScope.supplier.name}</td>
				</tr>


				<tr>
					<td class="col-xs-1"><strong> <span
							class="text-primary"></span> Address
					</strong></td>
					<td class="col-xs-2 text-primary">${sessionScope.supplier.address}</td>
				</tr>


				<tr>
					<td class="col-xs-1"><strong> <span
							class="text-primary"></span> Phone
					</strong></td>
					<td class="col-xs-2 text-primary">${sessionScope.supplier.phone}</td>
				</tr>


				<tr>
					<td class="col-xs-1"><strong> <span
							class="text-primary"></span> Email
					</strong></td>
					<td class="col-xs-2 text-primary">${sessionScope.supplier.email}</td>
				</tr>
			</table>


			<div style="align: center">
				<a href="/ShoppingCart/jsp/editSupplier.jsp"><button
						class="btn btn-default">Edit Account Info</button></a>


				<form class="form-horizontal" method="POST"
					action="/ShoppingCart/action.do" style="float: right">
					<input type="hidden" name="action" value="deletesupplier" /> <input
						type="hidden" name="id"
						value='${sessionScope.supplier.supplierId}' /> <input
						type="submit" class="btn btn-danger" value="Delete Account"
						onclick="return confirm('Are you sure you want to delete your account?');">
				</form>
			</div>
		</div>

	<div id="push"></div>
	</div>

	<div id="footer">
		<c:import url="footer.jsp"></c:import>
	</div>

</body>
</html>