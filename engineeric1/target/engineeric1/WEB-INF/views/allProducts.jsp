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

<%-- <c:forEach items="${prodList }" var="prod">
						 <img alt="" src="${pageContext.request.contextPath }/resources/${prod.pro_imagename }" style="">
			
			<div class="col-sm-5" style="border:0px solid gray;">
			<h3>${prod.pro_image}</h3>
			<h4>${prod.pro_name}</h4>
			<h4>${prod.pro_price }</h4>
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
						  
						  
						  
					
						  
						  
						  <div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
							  	<c:if test="${empty prodList }">
		<tr>
			<td colspan="10" align="center">No Record Exists !!</td>
		</tr>
	</c:if>
	
<c:forEach items="${prodList }" var="prod">
	
					<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											 <img alt="" src="${pageContext.request.contextPath }/resources/${prod.pro_imagename }" style="">
											<h2><i class="fa fa-inr"></i> ${prod.pro_price }</h2>
											<p>${prod.pro_name}</p>
											<form action="${pageContext.request.contextPath }/productDetails?pro_id=${prod.pro_id }" method="post">
												<input type="hidden" value="${prod.pro_id }" name="pro_id"/>
												<input type="hidden" value="${prod.pro_price }" name="pro_price"/>
												<input type="hidden" value="${prod.pro_imagename }" name="pro_imagename"/>
												<input type="hidden" value="${prod.pro_stock }" name="pro_stock"/>
												<input type="hidden" value="${prod.pro_name }" name="pro_name"/>
												<input class="btn btn-warning btn-lg" type="submit" value="Show Details"/>
											</form>
										</div>
								</div>
							</div></div>
			</c:forEach>	</div></div>				 
<jsp:include page="footer.jsp"/>

        
</body>
</html>