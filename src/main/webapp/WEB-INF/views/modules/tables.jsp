<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<meta name="description" content=""/>
	<meta name="author" content=""/>
	<title>테이블</title>
	<%@ include file="../include/css.jsp" %>
</head>
<body class="bg-theme bg-theme9">

<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../include/headerXdmView.jsp" %>
	<div class="clearfix"></div>
	<div class="content-wrapper">
  		<div class="container-fluid">
			<div class="row">
	 		<div class="col-12 col-lg-12">
	   			<div class="card">
	     			<div class="card-header">Recent Order Tables</div>
	       			<div class="table-responsive">
               			<table class="table align-items-center table-flush table-borderless">
                  			<thead>
		                   		<tr>
			                     	<th>Product</th>
			                     	<th>Photo</th>
			                     	<th>Product ID</th>
			                     	<th>Amount</th>
			                     	<th>Date</th>
			                     	<th>Shipping</th>
								</tr>
                   			</thead>
                   			<tbody>
                   				<tr>
				                    <td>Iphone 5</td>
				                    <td><img src="https://via.placeholder.com/110x110" class="product-img" alt="product img"></td>
				                    <td>#9405822</td>
				                    <td>$ 1250.00</td>
				                    <td>03 Aug 2017</td>
									<td>
										<div class="progress shadow" style="height: 3px;">
                          					<div class="progress-bar" role="progressbar" style="width: 90%"></div>
                        				</div>
                        			</td>
                   				</tr>
           					</tbody>
               			</table>
       				</div>
   				</div>
 			</div>
		</div><!--End Row-->	  
		<!--start overlay-->
  		<div class="overlay toggle-menu"></div>
		<!--end overlay-->

		</div>
   		<!-- End container-fluid-->
    
   	</div><!--End content-wrapper-->
<%@ include file="../include/footer.jsp" %>  
</div><!--End wrapper-->
<%@ include file="../include/script.jsp" %>  	
</body>
</html>