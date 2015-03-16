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
<link rel="stylesheet" type="text/css" href="../css/main.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="../js/uploadProductValidations.js"></script>
</head>
<body>

	<div id="wrap">

		<div id="header">
			<c:import url="loggedInHeader.jsp"></c:import>
		</div>

		<div class="container">

			<div class="title">New Product Information</div>

			<br>

			<form class="form-horizontal" method="post"
				action="/ShoppingCart/upload.do" enctype="multipart/form-data">
				<input type="hidden" name="action" value="uploadproduct" />
				<div class="form-group">
					<label class="col-sm-2 control-label">Image:</label>
					<div class="col-xs-4">
						<input class="form-control" type="file" name="image" /> <input
							class="btn btn-default" type="submit" value="Upload Image" />
						<c:if test='${not empty requestScope["imagePath"]}'>
							<img src='${requestScope["imagePath"]}' height="150" width="150" />
						</c:if>
					</div>
				</div>
			</form>

			<div class="row">

				<form id="form" class="form-horizontal" method="post"
					action="/ShoppingCart/action.do">
					<input type="hidden" name="action" value="createproduct" />
					<div class="form-group">
						<label class="col-sm-2 control-label">Brand:</label>
						<div class="col-xs-4">
							<input class="form-control" type="text" id="brand" name="brand">
						</div>
						<div class="col-xs-6" id="brandErrDiv"></div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Name:</label>
						<div class="col-xs-4">
							<input class="form-control" type="text" id="name" name="name">
						</div>
						<div class="col-xs-6" id="nameErrDiv"></div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Category:</label>
						<div class="col-xs-4">
				<!-- 			<input class="form-control" type="text" id="category"
								name="category">  -->
								<select name="category">
								<option></option>
								<option value="Baseball">Baseball</option>
								<option value="Football">Football</option>
								<option value="Basketball">Basketball</option>
								<option value="Golf">Golf</option>
								<option value="Tennis">Tennis</option>
								<option value="Cricket">Cricket</option>
							</select>
						</div>
						<div class="col-xs-6" id="categoryErrDiv"></div>
					</div>
					<!-- <div class="form-group">
						<label class="col-sm-2 control-label">Subcategory:</label>
						<div class="col-xs-4">
							<input class="form-control" type="text" id="subcategory"
								name="subcategory">
						</div>
						<div class="col-xs-6" id="subcategoryErrDiv"></div>
					</div> -->
					<div class="form-group">
						<label class="col-sm-2 control-label">Price:</label>
						<div class="col-xs-4">
							<input class="form-control" type="text" id="price" name="price">
						</div>
						<div class="col-xs-6" id="priceErrDiv"></div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Quantity:</label>
						<div class="col-xs-4">
							<input class="form-control" type="text" id="quantity"
								name="quantity">
						</div>
						<div class="col-xs-6" id="quantityErrDiv"></div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Description:</label>
						<div class="col-xs-4">
							<textarea rows="4" cols="50" class="form-control" form="form" id="description"
								name="description"></textarea>
						</div>
						<div class="col-xs-6" id="descriptionErrDiv"></div>
					</div>
					<!--					<div class="form-group">
						<label class="col-sm-2 control-label">Image:</label>
						<div class="col-xs-4">										-->
					<input class="form-control" type="hidden" id="image" name="image"
						value='${requestScope["imagePath"]}'>
					<!-- 						</div>
					</div>															 -->

					<div class="form-group">
						<div class="col-sm-offset-2 col-xs-4">
							<input type="submit" class="btn btn-primary btn-large"
								value="Upload Product">
						</div>
					</div>
				</form>
			</div>
		</div>

		<a href="/ShoppingCart/action.do?action=accountproducts"><button
				class="btn btn-default">Cancel</button></a>

		<div id="push"></div>
	</div>

	<div id="footer">
		<c:import url="footer.jsp"></c:import>
	</div>

</body>
</html>