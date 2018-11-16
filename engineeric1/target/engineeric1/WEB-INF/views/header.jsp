<%-- <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link  rel="stylesheet" href='<c:url value="/resources/css/style.css"/>'/>
	 <link rel="stylesheet" type="text/js" href='<c:url value="/resources/js/bootstrap.min.js"/>'/>
	 <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="resources/css1/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css1/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="resources/js1/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="resources/js1/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="resources/js1/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- timer -->
<link rel="stylesheet" href="resources/css1/jquery.countdown.css" />
<!-- //timer -->
<!-- animation-effect -->
<link href="resources/css1/animate.min.css" rel="stylesheet"> 
<script src="resources/js1/wow.min.js"></script>
<script>
 new WOW().init();
</script>
</head>
<body>
<div class="navbar navbar-inverse navbar-static-top">
<div class="navbar-header">

    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
       
    </button>
   
  
  
  </div>
  
  <div class="collapse navbar-collapse">
    <ul class="nav navbar-nav navbar-left">
        <li class="active"><a href="${pageContext.request.contextPath }/">Home</a></li>
        <li><a href="${pageContext.request.contextPath }/about">About Us</a></li>
        <li><a href="${pageContext.request.contextPath }/contact">Contact Us</a></li>
       <li><a href="${pageContext.request.contextPath }/allProducts">All Products</a></li>
        <li><a href="${pageContext.request.contextPath }/admin/adding">Admin</a></li>
		<!-- <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin List
		<span class="caret"></span></a>
			<ul class="dropdown-menu">
		 -->		<li><a href="${pageContext.request.contextPath }/admin/productAdminList">Product</a></li>
				<li><a href="${pageContext.request.contextPath }/admin/suppAdminList">Supplier</a></li>
				<li><a href="${pageContext.request.contextPath }/admin/catAdminList">Category</a></li>
			<!-- </ul>
		</li> -->
	
		<!-- <li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">
		Category Choice <span class="caret"></span></a>
		<ul class="dropdown-menu"> -->
		  <li class="dropdown"><a>Categories
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
        <c:forEach items="${catlist }" var="catVal">
        	
        	<li><a href="<c:url value="/viewProducts?cat_id=${catVal.cat_id }"/>" >${catVal.cat_name }</a></li>
        	</c:forEach>
        </ul></li>

		<!-- </ul> -->
	</ul>
        	
				    
     <ul class="nav navbar-nav navbar-right">
     
     <c:if test='<%=(Boolean)session.getAttribute("loggedIn")!=null&&(Boolean)session.getAttribute("loggedIn")==true%>'>
      <li><a href="<c:url value="/cart"/>">
      <span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;&nbsp;Cart</a>
      </li>
      <c:if test='<%=(String)session.getAttribute("user")==null%>'>
      <li><a href="${pageContext.request.contextPath }/admin/adding">Admin</a></li>
      <li class="dropdown">
      <a>Admin Operations<span class="caret"></span>
      <ul class="dropdown-menu">
      <li><a href="${pageContext.request.contextPath }/admin/catAdminList">Manage Category</a></li>
      <li><a href="${pageContext.request.contextPath }/admin/productAdminList">Manage Products</a></li>
      <li><a href="${pageContext.request.contextPath }/admin/suppAdminList">Manage Supplier</a></li>
       </ul></a>
      </li></c:if>
      <li class="dropdown">
      <a>
      <span class="img-circle"><%=session.getAttribute("usertitle")%></span> <%=session.getAttribute("name")%>
       <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <li><a href="<c:url value="/myAccount"/>">My Account</a></li>
         <li><a href="<c:url value="/myOrders"/>">My Orders</a></li>
         <li><a href="<c:url value="/perform_logout"/>">
         <span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
       </li>
       </c:if>
       <c:if test='<%=(Boolean)session.getAttribute("loggedIn")==null%>'>
         <li><a href="goToRegister"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
    
   </ul>
   </div>
   </div>
   
   
   
   
  
   
   
   
   
   
   
   
   
   
   
   
   
   <div class="header">
		<div class="container">
			<div class="header-grid">
				<div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
					<ul>
						<c:if test='<%=(Boolean)session.getAttribute("loggedIn")==null%>'>
	       					<li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="login">Login</a></li>
							<li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="goToRegister">Register</a></li>
						</c:if>
    				</ul>
				</div>
				<div class="header-grid-right animated wow slideInRight" data-wow-delay=".5s">
					<ul class="social-icons">
						<li><a href="https://www.facebook.com" class="facebook"></a></li>
						<li><a href="https://twitter.com" class="twitter"></a></li>
						<li><a href="https://plus.google.com" class="g"></a></li>
						<li><a href="https://www.instagram.com" class="instagram"></a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="logo-nav">
				<div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
					<h1><a href="${pageContext.request.contextPath }/">Engineeric <span>Shop any Book</span></a></h1>
				</div>
				<div class="logo-nav-left1">
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="${pageContext.request.contextPath }/" class="act">Home</a></li>	
							<!-- Mega Menu -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Categories <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-1">
											<ul class="multi-column-dropdown">
												<c:forEach items="${catlist }" var="catVal">
        											<li><a href="<c:url value="/viewProducts?cat_id=${catVal.cat_id }"/>" >${catVal.cat_name }</a></li>
      											</c:forEach>
											</ul>
										</div>
										
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							<li><a href="${pageContext.request.contextPath }/allProducts">All Products</a></li>
							<li><a href="${pageContext.request.contextPath }/contact">Contact Us</a></li>
							<li><a href="${pageContext.request.contextPath }/about">About Us</a></li>
							
							
							
						</ul>
					</div>
					</nav>
				</div>
				<div class="logo-nav-right">
					<div class="search-box">
						<div id="sb-search" class="sb-search">
							<form>
								<input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
								<input class="sb-search-submit" type="submit" value="">
								<span class="sb-icon-search"> </span>
							</form>
						</div>
					</div>
						
				</div>
				
				
				
				
				
				
				
				
				
				<div class="logo-nav-left1">
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<c:if test='<%=(Boolean)session.getAttribute("loggedIn")!=null&&(Boolean)session.getAttribute("loggedIn")==true%>'>
     							<div class="cart box_1">
									<a href="${pageContext.request.contextPath }/cart">
									<h3> <div class="total">
										<img src="images/bag.png" alt="" />
									</h3>
									</a>
									<p>My Cart</a></p>
									<div class="clearfix"> </div>
								</div>
								
								
							</c:if>
								
								<!-- Mega Menu -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin Operations <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-1">
											<ul class="multi-column-dropdown">
												<ul class="multi-column-dropdown">
												 <li><a href="${pageContext.request.contextPath }/admin/catAdminList">Manage Category</a></li>
											     <li><a href="${pageContext.request.contextPath }/admin/productAdminList">Manage Products</a></li>
												 <li><a href="${pageContext.request.contextPath }/admin/suppAdminList">Manage Supplier</a></li>
										     </ul>
											</ul>
										</div>
										
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							<li><a href="${pageContext.request.contextPath }/admin/adding">Admin</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="img-circle"><%=session.getAttribute("usertitle")%></span> <%=session.getAttribute("name")%> <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-1">
											<ul class="multi-column-dropdown">
												<ul class="multi-column-dropdown">
												 <li><a href="<c:url value="/myAccount"/>">My Account</a></li>
								         		 <li><a href="<c:url value="/myOrders"/>">My Orders</a></li>
								         		 <li><a href="<c:url value="/perform_logout"/>">
								         		 <span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
								        	 	</ul>
											</ul>
										</div>
										
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							
							
						</ul>
					</div>
					</nav>
				</div>
				
				
				
				
				
				
				
				
				
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					
				<div class="header-right">
				<ul class="nav navbar-nav">
					<c:if test='<%=(Boolean)session.getAttribute("loggedIn")!=null&&(Boolean)session.getAttribute("loggedIn")==true%>'>
     					<div class="cart box_1">
							<a href="${pageContext.request.contextPath }/cart">
								<h3> <div class="total">
									<img src="images/bag.png" alt="" />
								</h3>
							</a>
							<p>My Cart</a></p>
							<div class="clearfix"> </div>
						</div>
					<c:if test='<%=(String)session.getAttribute("user")==null%>'>
						<li><a href="${pageContext.request.contextPath }/admin/adding"><h6>Admin</h6></a></li>
				        <li class="dropdown">
			   	        <a><h6>Admin Operations<span class="caret"></span></h6>
				        <ul class="dropdown-menu">
				    	    <li><a href="${pageContext.request.contextPath }/admin/catAdminList">Manage Category</a></li>
					        <li><a href="${pageContext.request.contextPath }/admin/productAdminList">Manage Products</a></li>
						    <li><a href="${pageContext.request.contextPath }/admin/suppAdminList">Manage Supplier</a></li>
				        </ul></a>
					    </li>
					    <li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin Operations <b class="caret"></b>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-1">
											<ul class="multi-column-dropdown">
												 <li><a href="${pageContext.request.contextPath }/admin/catAdminList">Manage Category</a></li>
											     <li><a href="${pageContext.request.contextPath }/admin/productAdminList">Manage Products</a></li>
												 <li><a href="${pageContext.request.contextPath }/admin/suppAdminList">Manage Supplier</a></li>
										     </ul>
										</div>
										
										<div class="clearfix"></div>
									</div>
								</ul></a>
							</li>
      				</c:if>
      					<li class="dropdown">
					    	<a>
					        	<span class="img-circle"><%=session.getAttribute("usertitle")%></span> <%=session.getAttribute("name")%>
					            <span class="caret"></span></a>
					            <ul class="dropdown-menu">
					         		<li><a href="<c:url value="/myAccount"/>">My Account</a></li>
					         		<li><a href="<c:url value="/myOrders"/>">My Orders</a></li>
					         		<li><a href="<c:url value="/perform_logout"/>">
					         		<span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					        	</ul>
					    </li>
					    <li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="img-circle"><%=session.getAttribute("usertitle")%></span> <%=session.getAttribute("name")%> <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-1">
											<ul class="dropdown-menu">
								         		<li><a href="<c:url value="/myAccount"/>">My Account</a></li>
								         		<li><a href="<c:url value="/myOrders"/>">My Orders</a></li>
								         		<li><a href="<c:url value="/perform_logout"/>">
								         		<span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
								        	</ul>
										</div>
										
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
					</c:if>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div></div>
	</div>
</div>
<!-- //header -->
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   </body>
   </html>
    --%>
    
    
    
    
    
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link  rel="stylesheet" href='<c:url value="/resources/css/style.css"/>'/>
	 <link rel="stylesheet" type="text/js" href='<c:url value="/resources/js/bootstrap.min.js"/>'/>
	  
    <title>Home</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="resources/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/themify/themify-icons.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css2/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css2/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<header class="header1">
		<!-- Header desktop -->
		<div class="container-menu-header">
			<div class="topbar">
				<div class="topbar-social">
					<a href="#" class="topbar-social-item fa fa-facebook"></a>
					<a href="#" class="topbar-social-item fa fa-instagram"></a>
					<a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
					<a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
					<a href="#" class="topbar-social-item fa fa-youtube-play"></a>
				</div>

				<span class="topbar-child1">
					Free shipping for standard order over $100
				</span>

				<div class="topbar-child2">
					<span class="topbar-email">
						fashe@example.com
					</span>

					<div class="topbar-language rs1-select2">
						<select class="selection-1" name="time">
							<option>USD</option>
							<option>EUR</option>
						</select>
					</div>
				</div>
			</div>

			<div class="wrap_header">
				<!-- Logo -->
				<a href="index.html" class="logo">
					<img src="images/icons/logo.png" alt="IMG-LOGO">
				</a>

				<!-- Menu -->
				<div class="wrap_menu">
					<nav class="menu">
						<ul class="main_menu">
							<li>
								<a href="index.html">Home</a>
								<ul class="sub_menu">
									<li><a href="index.html">Homepage V1</a></li>
									<li><a href="home-02.html">Homepage V2</a></li>
									<li><a href="home-03.html">Homepage V3</a></li>
								</ul>
							</li>

							<li>
								<a href="product.html">Shop</a>
							</li>

							<li class="sale-noti">
								<a href="product.html">Sale</a>
							</li>

							<li>
								<a href="cart.html">Features</a>
							</li>

							<li>
								<a href="blog.html">Blog</a>
							</li>

							<li>
								<a href="about.html">About</a>
							</li>

							<li>
								<a href="contact.html">Contact</a>
							</li>
						</ul>
					</nav>
				</div>

				<!-- Header Icon -->
				<div class="header-icons">
					<a href="#" class="header-wrapicon1 dis-block">
						<img src="images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
					</a>

					<span class="linedivide1"></span>

					<div class="header-wrapicon2">
						<img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
						<span class="header-icons-noti">0</span>

						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-01.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											White Shirt With Pleat Detail Back
										</a>

										<span class="header-cart-item-info">
											1 x $19.00
										</span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-02.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											Converse All Star Hi Black Canvas
										</a>

										<span class="header-cart-item-info">
											1 x $39.00
										</span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-03.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											Nixon Porter Leather Watch In Tan
										</a>

										<span class="header-cart-item-info">
											1 x $17.00
										</span>
									</div>
								</li>
							</ul>

							<div class="header-cart-total">
								Total: $75.00
							</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="cart.html" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart
									</a>
								</div>

								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap_header_mobile">
			<!-- Logo moblie -->
			<a href="index.html" class="logo-mobile">
				<img src="images/icons/logo.png" alt="IMG-LOGO">
			</a>

			<!-- Button show menu -->
			<div class="btn-show-menu">
				<!-- Header Icon mobile -->
				<div class="header-icons-mobile">
					<a href="#" class="header-wrapicon1 dis-block">
						<img src="images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
					</a>

					<span class="linedivide2"></span>

					<div class="header-wrapicon2">
						<img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
						<span class="header-icons-noti">0</span>

						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-01.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											White Shirt With Pleat Detail Back
										</a>

										<span class="header-cart-item-info">
											1 x $19.00
										</span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-02.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											Converse All Star Hi Black Canvas
										</a>

										<span class="header-cart-item-info">
											1 x $39.00
										</span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-03.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											Nixon Porter Leather Watch In Tan
										</a>

										<span class="header-cart-item-info">
											1 x $17.00
										</span>
									</div>
								</li>
							</ul>

							<div class="header-cart-total">
								Total: $75.00
							</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="cart.html" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart
									</a>
								</div>

								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</div>
			</div>
		</div>

    </header></body></html>
    
    
    
    
    
    
    
    
    
    
    
    