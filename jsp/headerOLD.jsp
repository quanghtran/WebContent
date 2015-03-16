<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/ShoppingCart">Field of Dreams Sporting Goods</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/ShoppingCart">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Baseball <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Gloves</a></li>
            <li><a href="#">Bats</a></li>
            <li><a href="#">Helmets</a></li>
          </ul>
        </li>
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Football <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Footballs</a></li>
            <li><a href="#">Pads</a></li>
            <li><a href="#">Helmets</a></li>
          </ul>
        </li>
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Basketball<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Basketballs</a></li>
            <li><a href="#">Apparel</a></li>
            <li><a href="#">Shoes</a></li>
          </ul>
        </li>
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Golf<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Clubs</a></li>
            <li><a href="#">Apparel</a></li>
            <li><a href="#">Shoes</a></li>
          </ul>
        </li>
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Tennis<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Racquets</a></li>
            <li><a href="#">Apparel</a></li>
            <li><a href="#">Shoes</a></li>
          </ul>
        </li>
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Cricket<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Apparel</a></li>
            <li><a href="#">Pads</a></li>
            <li><a href="#">Bats</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
         <li class="dropdown">
         	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> Sign Up<span class="caret"></span></a>
         	<ul class="dropdown-menu">
         		<li><a href="/ShoppingCart/jsp/signUpCustomer.jsp">Customer</a></li>
         		<li><a href="/ShoppingCart/jsp/signUpSupplier.jsp">Supplier</a></li>
         	</ul>	
         </li>
        <li><a href="#loginModal" data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>     

<!-- Modal for Login-->
  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Sign In</h4>
        </div>
        <div class="modal-body">
		<form class="form-horizontal" method="post" action="/ShoppingCart/action.do">
			<input type="hidden" name="action" value="verifyaccount" />
			<div class="form-group">
			<label for="signinemail">&nbsp;&nbsp;Email</label><input type="email" name="email" class="form-control" id="signinemail"/>
			</div>
			<div class="form-group">
			<label for="signinpassword">&nbsp;&nbsp;Password</label><input type="password" name="password" class="form-control" id="signinpassword"/>
			</div>
			<div class="form-group">
			<label for="signinaccount">&nbsp;&nbsp;Account type:&nbsp;&nbsp;</label><input type="radio" name="accountType" id="signinaccount" value="customer" checked />&nbsp;Customer
			<input type="radio" name="accountType" id="signinaccount" value="supplier" />&nbsp;Supplier
			</div>			
			
		<c:if test='${requestScope["login"] == "passwordFailure"}'>
			<div id="passwordFail" class="alert alert-warning">
   				<a href="#" class="close" data-dismiss="alert">&times;</a>
   				<strong>Warning!</strong> Password mismatch with the given email address. 
			</div>
		</c:if>
		
		<c:if test='${requestScope["login"] == "emailFailure"}'>
			<div id="emailFail" class="alert alert-warning">
   				<a href="#" class="close" data-dismiss="alert">&times;</a>
   				<strong>Warning!</strong> This email does not exist in our ${requestScope["accountType"]} database. 
			</div>
		</c:if>
			 
        <div class="modal-footer"><!-- footer area with buttons for a continued dialog -->
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          <input type="submit" value="Submit" class="btn btn-primary" />
          </div>
          </form>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
