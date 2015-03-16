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
			<c:import url="header.jsp"></c:import>
		</div>
		
		<div class="title">Customer Account Registration</div>

		<br>

		<div id="signUpForm">
			<!--ADD AN ID CALLED form  -->
			<form id="form" method="post" class="form-horizontal"
				action="/ShoppingCart/action.do">
				<input type="hidden" name="action" value="createcustomer" />
				<div class="form-group">
					<label for="firstName" class="col-sm-2 control-label">First
						Name</label>
					<!-- CHANGE DIV BELOW TO col-xs-4 for every div surrounding an input-->
					<div class="col-xs-4">
						<input type="text" class="form-control" id="firstName"
							name="firstName" />
					</div>

					<!-- ADD THIS DIV TO HOLD ERROR MESSAGE CREATED BY JQUERY (add after every input div(match id to jquery code)) -->
					<div class="col-xs-4" id="fnameErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="lastName" class="col-sm-2 control-label">Last
						Name</label>
					<div class="col-xs-4">
						<input type="text" class="form-control" id="lastName"
							name="lastName" />
					</div>
					<div class="col-xs-4" id="lnameErrDiv"></div>

				</div>
				<div class="form-group">
					<label for="dob" class="col-sm-2 control-label">DOB</label>
					<div class='col-xs-4'>
						<input type='text' class="form-control" id="datepicker" name="dob" />
					</div>
					<div class="col-xs-4" id="dobErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="address" class="col-sm-2 control-label">Address</label>
					<div class="col-xs-4">
						<input type="text" class="form-control" id="address"
							name="address" />
					</div>
					<div class="col-xs-4" id="addErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="phone" class="col-sm-2 control-label">Phone</label>
					<div class="col-xs-4">
						<input type="text" class="form-control" id="phone" name="phone" />
					</div>
					<div class="col-xs-6" id="phoneErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-2 control-label">Email</label>
					<div class="col-xs-4">
						<input type="email" class="form-control" id="email" name="email" />
					</div>
					<div class="col-xs-4" id="emailErrDiv"></div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-2 control-label">Password</label>
					<div class="col-xs-4">
						<input type="password" class="form-control" id="password"
							name="password" />
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
					<div class="col-sm-offset-2 col-xs-4">
						<input type="submit" class="btn btn-primary btn-large"
							value="Register" />
					</div>
				</div>

				<c:if test="${requestScope.emailExisted == 'isExisted'}">
					<div id="emailFail" class="alert alert-warning">
						<a href="#" class="close" data-dismiss="alert">&times;</a> <strong>Warning!</strong>
						This email is taken, please use different email.
					</div>
				</c:if>

			</form>

			<a href="/ShoppingCart/index.jsp"><button class="btn btn-default">Cancel</button></a>

		</div>

		<div id="push"></div>
	</div>

	<div id="footer">
		<c:import url="footer.jsp"></c:import>
	</div>

</body>
</html>