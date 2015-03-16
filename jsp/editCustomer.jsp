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
<link rel="stylesheet" type="text/css" href="../css/datepicker.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="../js/bootstrapDatepicker.js"></script> 
<script src="../js/signUpValidationsCustomer.js"></script>

</head>
<body>

	<div id="wrap">

		<div id="header">
			<c:import url="loggedInHeader.jsp"></c:import>
		</div>
		
		<div class="title">Edit Account Information</div>

		<br>

		<div id="signUpForm">
			<form id="form" method="post" class="form-horizontal"
				action="/ShoppingCart/action.do">
				<input type="hidden" name="action" value="updatecustomer" />
				<input type="hidden" name="id" value='${sessionScope.customer.customerId}' />
				<div class="form-group">
					<label for="firstName" class="col-sm-2 control-label">First
						Name</label>
					<div class="col-xs-4">
						<input type="text" class="form-control" id="firstName"
							name="firstName" value='${sessionScope.customer.firstName}'/>
					</div>					
					<div class="col-xs-4" id="fnameErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="lastName" class="col-sm-2 control-label">Last
						Name</label>
					<div class="col-xs-4">
						<input type="text" class="form-control" id="lastName"
							name="lastName" value='${sessionScope.customer.lastName}'/>
					</div>
					<div class="col-xs-4" id="lnameErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="dob" class="col-sm-2 control-label">DOB</label>
					<div class='col-xs-4'>
						<input type='text' class="form-control" id="datepicker"
							name="dob" value='${sessionScope.customer.dob}'/>
					</div>
					<div class="col-xs-4" id="dobErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="address" class="col-sm-2 control-label">Address</label>
					<div class="col-xs-4">
						<input type="text" class="form-control" id="address"
							name="address" value='${sessionScope.customer.address}'/>
					</div>
					<div class="col-xs-4" id="addErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="phone" class="col-sm-2 control-label">Phone</label>
					<div class="col-xs-4">
						<input type="text" class="form-control" id="phone"
							name="phone" value='${sessionScope.customer.phone}'/>
					</div>
					<div class="col-xs-6" id="phoneErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-2 control-label">Email</label>
					<div class="col-xs-4">
						<input type="email" class="form-control" id="email"
							name="email" value='${sessionScope.customer.email}'/>
					</div>
					<div class="col-xs-4" id="emailErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-2 control-label">Password</label>
					<div class="col-xs-4">
						<input type="text" class="form-control" id="password"
							name="password" value='${sessionScope.customer.password}'/>
					</div>
					<div class="col-xs-6" id="passErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="confirmPass" class="col-sm-2 control-label">Confirm
						Password</label>
					<div class="col-xs-4">
						<input type="password" class="form-control" id="confirmPass"
							name="confirmPass" />
					</div>
					<div class="col-xs-6" id="conpassErrDiv"></div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sx-4">
						<input type="submit" class="btn btn-primary btn-large"
							value="Save Changes" />
					</div>
				</div>
			</form>
			
			<a href="/ShoppingCart/action.do?action=manageaccount"><button class="btn btn-default">Cancel</button></a>
			
			<form class="form-horizontal" method="POST"
				action="/ShoppingCart/action.do" style="float:right">
				<input type="hidden" name="action" value="deletecustomer" />
				<input type="hidden" name="id" value='${sessionScope.customer.customerId}' />
				<input type="submit" class="btn btn-danger" value="Delete Account"
					onclick="return confirm('Are you sure you want to delete your account?');">
			</form>
			
		</div>

		<div id="push"></div>
	</div>

	<div id="footer">
		<c:import url="footer.jsp"></c:import>
	</div>

</body>
</html>