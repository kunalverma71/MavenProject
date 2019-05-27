<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>

<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
           
<title>Engineeric</title>

</head>
<body>

<jsp:include page="header.jsp"/>

<div id="myCarousel" class="carousel slide" data-ride="carousel" style = "bottom:21px">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/basicengineeringstudy.jpg" class = "img-responsive" alt="Los Angeles" style = "width:100%;">
    </div>

    <div class="item">
      <img src="resources/MAE WORDS white copy.jpg" class = "img-responsive" alt="Chicago" style = "width:100%;">
    </div>

    <div class="item">
      <img src="resources/shutterstock_199369976.jpg" class = "img-responsive" alt="New York" style = "width:100%;">
    </div>
    <div class="item">
      <img src="resources/research-soil.jpg" class = "img-responsive" alt="New York" style = "width:100%;">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


 <%-- <c:forEach items="${prodList }" var="prod">
			
			
			<img alt="" src="${pageContext.request.contextPath }/resources/${prod.pro_imagename }" style="">
			<div class="col-sm-5" style="border:0px solid gray;">
			<h4>${prod.pro_name}</h4>
			<h4><i class="fa fa-inr"></i> ${prod.pro_price }</h4>
			<h4>${prod.pro_stock }</h4>
			<h4>${prod.pro_supplier.supp_name}</h4>	
				<div class="section" style="padding-bottom:20px;">
					<form action="${pageContext.request.contextPath }/addToCart" method="post">
					<input type="hidden" value="${prod.pro_id }" name="pro_id"/>
					<input type="hidden" value="${prod.pro_price }" name="pro_price"/>
					<input type="hidden" value="${prod.pro_imagename }" name="pro_imagename"/>
					<input type="hidden" value="${prod.pro_stock }" name="pro_stock"/>
					<input type="hidden" value="${prod.pro_name }" name="pro_name"/>
					
					<input type="number" class="form-control" name="pQty" required/><br><br>
					<input class="btn btn-warning btn-lg" type="submit" value="Add To Cart"/>
					<h6><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span>Wish List</h6>
				   </form>
				</div>
			</div>
						 </c:forEach>
        
						
						
 --%>						
						
 
 
 <div class="col-sm-12 padding-right">
					<div class="features_items" style="padding-bottom:20px;"><!--features_items-->
						<h2 class="title text-center" style="padding-bottom:20px;">Computer Science And Engineering</h2>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51zD6AKxyhL._SX398_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>460.00</h2>
											<p>Computer Graphics, C Version
												by Hearn (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 40px">
											<a href="<c:url value="/productDetails?pro_id=585"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
						
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51X3yG3cgsL._SX391_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>250.00</h2>
											<p>Data Structures and Algorithms with Object-Oriented Design Patterns in C++
												by Bruno R. Preiss  (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 5px">
											<a href="<c:url value="/productDetails?pro_id=586"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/images.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>614.00</h2>
											<p>Distributed Database Management Systems: A Practical Approach 1st Edition, Kindle Edition
												by Saeed K. Rahimi (Author), Frank S. Haug (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 4px">
											<a href="<c:url value="/productDetails?pro_id=587"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/java-the-complete-reference-original-imae27uxyzhejxra.jpeg"  alt="" />
											<h2><i class="fa fa-inr"></i>329.00</h2>
											<p>Java: The Complete Reference, Seventh Edition (Old Edition)
												by Herbert Schildt  (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 20px">
											<a href="<c:url value="/productDetails?pro_id=588"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<%-- <div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/object-oriented-programming-methodology-original-imadnz9kdeam7wtv.jpeg"  alt="" />
											<h2><i class="fa fa-inr"></i>332.00</h2>
											<p>Object Oriented Programming Methodology [Print Replica] Kindle Edition
												by Swati Ringe, Kogent Learning Solutions Inc. Radha Shankarmani (Author)</p>
											<div class="section" style="padding-bottom:20px;">
											<a href="<c:url value="/productDetails?pro_id=58"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div> --%>
					</div>
				</div>
					
					
			
<div class="col-sm-12 padding-right">
					<div class="features_items" style="padding-bottom:20px;"><!--features_items-->
						<h2 class="title text-center" style="padding-bottom:20px;">Electronics And Communication Engineering</h2>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51cBjxPzdUL._SX332_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>11,306.00</h2>
											<p>Digital Electronics: Principles, Devices and Applications
												by Anil K. Maini (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 40px">
											<a href="<c:url value="/productDetails?pro_id=590"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
						
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/5181-8N9z2L._SX372_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>536.00</h2>
											<p>Control Systems (Schaum's Outline Series)
												by Joseph Distefano (Author), Allen Stubberud (Author), Ivan Williams (Author), Sanjoy Mandal (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 5px">
											<a href="<c:url value="/productDetails?pro_id=591"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/electronic-devices-and-circuits-original-imae8nuhhhhqygb6.jpeg"  alt="" />
											<h2><i class="fa fa-inr"></i>420.00</h2>
											<p>Electronic Devices and Circuits 1st Edition
											by K. Rama Sudha (Author), , K. Venkata Rao (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 4px">
											<a href="<c:url value="/productDetails?pro_id=592"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/network-theory-original-imadh64gtbmddhua.jpeg"  alt="" />
											<h2><i class="fa fa-inr"></i>339.00</h2>
											<p>Network Theory: Analysis And Synthesis 1st Edition 
											by Smarajit Ghosh (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 20px">
										<a href="<c:url value="/productDetails?pro_id=593"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			
			
<div class="col-sm-12 padding-right">
					<div class="features_items" style="padding-bottom:20px;"><!--features_items-->
						<h2 class="title text-center" style="padding-bottom:20px;">Electrical Engineering</h2>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51-b9DGqLOL._SX330_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>520.00</h2>
											<p>Power System Engineering
												by D Kothari (Author), D Kothari (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 40px">
											<a href="<c:url value="/productDetails?pro_id=594"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
						
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51EQyXEq8GL._SX387_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>511.00</h2>
											<p>Microprocessor Architecture, Programming and Applications with the 8085
												by Ramesh Gaonkar (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 5px">
											<a href="<c:url value="/productDetails?pro_id=595"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51HGGErE04L._SX375_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>430.00</h2>
											<p>Electric Machines
												by D.P. Kothari (Author), I.J. Nagrath (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 4px">
											<a href="<c:url value="/productDetails?pro_id=596"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51pRX2XLmOL._SX348_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>269.00</h2>
											<p>Basic Electronics
												by B P Singh (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 20px">
										<a href="<c:url value="/productDetails?pro_id=597"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

					
					
					

<div class="col-sm-12 padding-right">
					<div class="features_items" style="padding-bottom:20px;"><!--features_items-->
						<h2 class="title text-center" style="padding-bottom:20px;">Mechanical Engineering</h2>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51Av3h0iOiL._SX352_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>689.00</h2>
											<p>Theory of Machines
												by R.S. Khurmi  (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 40px">
											<a href="<c:url value="/productDetails?pro_id=598"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
						
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51f70tFzSuL._SX373_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>535.00</h2>
											<p>A Textbook of Strength of Materials
												by R.K. Bansal (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 5px">
											<a href="<c:url value="/productDetails?pro_id=599"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51FGxv455VL._SX370_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>531.00</h2>
											<p>Thermodynamics: An Engineering Approach (SIE)
												by Yunus A Cengel; Michael A Boles (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 4px">
											<a href="<c:url value="/productDetails?pro_id=600"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51UBTzzToEL._SX381_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>475.00</h2>
											<p>Design of Machine Elements
												by Bhandari (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 20px">
										<a href="<c:url value="/productDetails?pro_id=601"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>







<div class="col-sm-12 padding-right">
					<div class="features_items" style="padding-bottom:20px;"><!--features_items-->
						<h2 class="title text-center" style="padding-bottom:20px;">Civil Engineering</h2>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/41IkZew+C9L._SX295_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>224.00</h2>
											<p>Transportation Engineering - I (B.E. IV Sem. CE)
												by An Experienced Professor (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 40px">
											<a href="<c:url value="/productDetails?pro_id=602"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
						
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/51vklDPNSRL._SX344_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>315.00</h2>
											<p>Building Materials
												by S.K. Duggal (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 5px">
											<a href="<c:url value="/productDetails?pro_id=603"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/61+dAKMAGEL._SX373_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>540.00</h2>
											<p>Estimating,Costing,Specification & Valuation In Civil Engineering
												by M Chakraborti (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 4px">
											<a href="<c:url value="/productDetails?pro_id=604"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>
					
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${pageContext.request.contextPath }/resources/61TAN6q3OFL._SX394_BO1,204,203,200_.jpg"  alt="" />
											<h2><i class="fa fa-inr"></i>712.00</h2>
											<p>Structural Analysis by Pearson
												by R C Hibbeler (Author)</p>
											<div class="section" style="padding-bottom:20px; padding-top: 20px">
										<a href="<c:url value="/productDetails?pro_id=605"/>" id="update" class="btn btn-warning btn-lg">Show Details</a>										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>










<jsp:include page="footer.jsp"/>
 
 
</body>
</html>
