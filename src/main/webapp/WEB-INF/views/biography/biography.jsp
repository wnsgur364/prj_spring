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
	<title>Biography</title>
	<!-- favicon -->
	<link rel="icon" href="/resources/images/favicon/favicon.ico" type="image/x-icon" />
	<%@ include file="../include/css.jsp" %> 
</head>
<body class="bg-theme bg-theme9">

<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../include/headerBiography.jsp" %>
	<div class="clearfix"></div>
  	<div class="content-wrapper">
    	<div class="container-fluid">
      		<div class="row mt-3">
        		<div class="col-lg-12">
           			<div class="card">
            			<div class="card-body">
            				<ul class="nav nav-tabs nav-tabs-primary top-icon nav-justified">
                				<li class="nav-item">
                    				<a href="javascript:void();" data-target="#profile" data-toggle="pill" class="nav-link active"><i class="icon-user"></i> <span class="hidden-xs">Profile</span></a>
                				</li>
            				</ul>
            				<div class="tab-content p-3">
                				<div class="tab-pane active" id="profile">
                					<div class="row">	
                						<div class="col-md-4 d-flex justify-content-center">
                							<img src="/resources/images/profile-img.jpg" alt="profile-image" class="profile">
                    					</div>
                        				<div class="col-md-8">
                        					<h5 class="card-title">이준혁</h5>
		               						<p class="card-text">1991.02.10</p>
		             						<h6><strong>깃허브 : </strong><a href="https://github.com/wnsgur364" style="font-color: blue;"> https://github.com/wnsgur364</a></h6>
		                    				<hr>
		                    				<h5 class="mb-3">🛠 Skills</h5>
				                            <p>
				                                Java Spring Backend Developer
				                            </p>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">AWS RDS</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">AWS EC2</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">MySQL</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">jQuery</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">Spring</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">Apache Tomcat</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">HTML5</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">CSS3</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">JAVA</a>
				     	                    <a href="javascript:void();" class="badge badge-dark badge-pill">JavaScript</a>
				                            <a href="javascript:void();" class="badge badge-dark badge-pill">Bootstrap</a>
				                        </div>
                    				</div>
                    				<hr>
                    				<h3 class="text-center">개인 프로젝트</h3>
                    				<!--/row-->
                    				<div class="row text-center">
						          		<div class="col-md-6">
											<a href="indexUsrView" target="_blank">
												<h5>KOKOA BANK USER</h5>
												<img src="resources/images/kbusr.png" class="rounded" style="width: 100%;">
											</a>
										</div>
						          		<div class="col-md-6">
											<a href="loginXdmForm" target="_blank">
												<h5>KOKOA BANK ADMIN</h5>
												<img src="resources/images/kbadmin.png" class="rounded" style="width: 100%;">
											</a>
										</div>
						        	</div>
						        	<hr>
						        	<h3 class="text-center">팀 프로젝트 (3인)</h3>
						        	<!--/row-->
                    				<div class="row text-center">
						          		<div class="col-md-6">
											<a href="http://52.79.240.22:8080/" target="_blank">
												<h5>LINGO CONNECT USER</h5>
												<img src="resources/images/lcusr.png" class="rounded" style="width: 100%;">
											</a>
										</div>
						          		<div class="col-md-6">
											<a href="http://52.79.240.22:8080/adminLogin" target="_blank">
												<h5>LINGO CONNECT ADMIN</h5>
												<img src="resources/images/lcadmin.png" class="rounded" style="width: 100%;">
											</a>
										</div>
						        	</div>
						        	<hr>
                				</div>
            				</div>
        				</div>
      				</div>
      			</div>
    		</div>
			<!--start overlay-->
			<div class="overlay toggle-menu"></div>
			<!--end overlay-->
	    </div>
	    <!-- End container-fluid-->
	</div><!--End content-wrapper-->
<%@ include file="../include/footerBiography.jsp" %> 
</div><!--End wrapper-->
<%@ include file="../include/script.jsp" %>  
</body>
</html>