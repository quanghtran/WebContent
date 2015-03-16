<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/ShoppingCart"><font face="papyrus" size="6" color="white">Field of Dreams </font><font face="papyrus" color="white">Sporting Goods</font></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/ShoppingCart">Home</a></li>
        
        <li class="dropdown">
          <a class="active" href="/ShoppingCart/action.do?action=productcategory&category=baseball">Baseball</a>
        </li>
        
		<li class="dropdown">
          <a class="active" href="/ShoppingCart/action.do?action=productcategory&category=football">Football</a>
        </li>
		
		<li class="dropdown">
          <a class="active" href="/ShoppingCart/action.do?action=productcategory&category=basketball">Basketball</a>
          
        </li>
		<li class="dropdown">
          <a class="active" href="/ShoppingCart/action.do?action=productcategory&category=golf">Golf</a>
          
        </li>    
		<li class="dropdown">
          <a class="active" href="/ShoppingCart/action.do?action=productcategory&category=tennis">Tennis</a>
          
        </li>
		<li class="dropdown">
          <a class="active" href="/ShoppingCart/action.do?action=productcategory&category=cricket">Cricket</a>
          
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li><a style="color:white;" ><span class="glyphicon glyphicon-thumbs-up"></span> Greetings ${sessionScope.name}!</a></li>
        <c:if test='${sessionScope.customer.email == "admin@fieldofdreams.com"}'>
			<li><a href="/ShoppingCart/action.do?action=admin"><span class="glyphicon glyphicon-list"></span> Admin Dashboard</a></li>
		</c:if>
        <li><a href="/ShoppingCart/action.do?action=manageaccount"><span class="glyphicon glyphicon-user"></span> Manage Account</a></li>
        <li><a href="/ShoppingCart/action.do?action=accountproducts"><span class="glyphicon glyphicon-shopping-cart"></span> MyItems</a></li>
        <li><a href="/ShoppingCart/action.do?action=logoutaccount"><span class="glyphicon glyphicon-off"></span> Logout</a></li>       
      </ul>
    </div>
  </div>
</nav>
