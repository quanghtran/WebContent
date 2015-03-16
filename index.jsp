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
  <script src="js/signInValidations.js"></script>
  <script src="js/homePageBody.js"></script>
</head>
<style type="text/css">
h2{
    margin: 0;     
    color: #666;
    padding-top: 30px;
    font-size: 50px;
    font-family: "trebuchet ms", sans-serif;    
}
.item{
    background: #333;    
    text-align: center;
    height: 335px !important;
}
.carousel{
    margin-top: 20px;
}
.bs-example{
	margin: 20px;
}
</style>
<body>

    <div id="wrap">
    
    	<c:choose>
    		<c:when test='${not empty sessionScope["user"]}'>
    			<div id="header">
    			<c:import url="jsp/loggedInHeader.jsp"></c:import>
    			</div>
    		</c:when>
    		<c:otherwise>
    			<div id="header">
    			<c:import url="jsp/header.jsp"></c:import>
    			</div>
    		</c:otherwise>
    	</c:choose>
		
		<div id="body">
			<jsp:include page="jsp/homePageBody.jsp"/>
		</div>
		
		<div id="push"></div>
    	</div>
    	
		<div id="footer">
			<c:import url="jsp/footer.jsp"></c:import>	
		</div>

</body>
</html>