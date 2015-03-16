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
<script type="text/javascript" src="../js/signUpValidationsSupplier.js"></script>

</head>
<body>

	<div id="wrap">

	<div id="header">
		<c:import url="header.jsp"></c:import>
	</div>
	
	<div class="title">Supplier Account Registration</div>
	
	<br>

	<div id="signUpForm">
		<form method="post" id="form" class="form-horizontal"
			action="/ShoppingCart/action.do">
			<input type="hidden" name="action" value="createsupplier" />
			
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">Brand/Company
					Name</label>
				<div class="col-xs-4">
					<input type="text" class="form-control" id="name" name="name" />
				</div>
				<div class="col-xs-6" id="nameErrDiv"></div>
			</div>
			
			<div class="form-group">
				<label for="address" class="col-sm-2 control-label">Address</label>
				<div class="col-xs-4">
					<input type="text" class="form-control" id="address" name="address" />
				</div>
				<div class="col-xs-6" id="addressErrDiv"></div>
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
				<div class="col-xs-6" id="emailErrDiv"></div>
			</div>
			
			<div class="form-group">
				<label for="password" class="col-sm-2 control-label">Password</label>
				<div class="col-xs-4">
					<input type="password" class="form-control" id="password"
						name="password" />
				</div>
				<div class="col-xs-6" id="passwordErrDiv"></div>
			</div>
			
			<div class="form-group">
				<label for="confirmPass" class="col-sm-2 control-label">Confirm
					Password</label>
				<div class="col-xs-4">
					<input type="password" class="form-control" id="confirmPass"
						name="confirmPass" />
				</div>
				<div class="col-xs-6" id="confirmPassErrDiv"></div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary btn-large" value="Register">
				</div>
			</div>
		</form>
		
		<a href="/ShoppingCart/index.jsp"><button class="btn btn-default">Cancel</button></a>
		
	</div>

	<div id="push"></div>
	</div>
	


</body>
</html>