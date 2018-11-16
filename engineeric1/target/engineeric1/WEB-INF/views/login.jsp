<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">
 

<style type="text/css">
.myrow , .mysubrow {
    height: 100%;
    padding-top: 22px;
    padding-bottom: 54px;
}  
  .myrow {
    display: table;
    margin: auto;
    width: 22%;
}  
.mysubrow {
    display: table-cell;
    vertical-align: middle;
}   
.margin {
  margin: 0 !important;
}

</style>
</head>
<body>

<jsp:include page="header.jsp"/>
 <div class = "myrow">
	<div class = "mysubrow">
		<div id="login-page" class="row">
			<div class="col s12 z-depth-6 card-panel" style="background-color:black">
				<form action="perform_login" method="post" class="form-horizontal">
					<div class="from-style" id="name">
						<input type="email" name="username" class="form-control" required="" title="Enter a valid name"/>
						<label>Enter EmailId</label>
					</div>
					<div class="from-style" id="password">
						<input type="password" name="password" class="form-control" required="" pattern="[A-za-z0-9]{8,}" title="Atleast have 8 characters, special characters or spaces are not allowed"/>
						<label>Create Password</label>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Login</button>
					<button type="reset" class="btn btn-primary btn-block">Cancel</button>
				</form>
				<div style="padding-left:18px">
					<div class="row" style="color:red">
					<b>${msg}</b>
					</div>
        		</div>
       		</div>
      	</div>
	</div>
</div>
	
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 <%-- 
 <!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="${pageContext.request.contextPath }/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- login -->
	<div class="login">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Login Form</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.</p>
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form>
					<input type="email" placeholder="Email Address" required=" " >
					<input type="password" placeholder="Password" required=" " >
					<div class="forgot">
						<a href="#">Forgot Password?</a>
					</div>
					<input type="submit" value="Login">
				</form>
			</div>
			<h4 class="animated wow slideInUp" data-wow-delay=".5s">For New People</h4>
			<p class="animated wow slideInUp" data-wow-delay=".5s"><a href="register.html">Register Here</a> (Or) go back to <a href="index.html">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
<!-- //login -->
 
 
 
 
  --%>
 
 
 
 
 
 
 
 
 
 
 
<jsp:include page="footer.jsp"/>

</body>
</html>