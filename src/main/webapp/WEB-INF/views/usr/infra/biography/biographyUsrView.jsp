<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="KO">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>바이오그라피</title>
	<%@ include file="../../../include/css.jsp" %>
	<link href="/resources/biography/biography.css" rel="stylesheet"/>
</head>
<body>
	<header id="header" class="header d-flex align-items-center fixed-top">
	  	<div class="container-fluid d-flex align-items-center justify-content-center">
	    	<a href="#" class="logo d-flex align-items-center me-auto me-lg-0">
	     	<!-- <img src="assets/img/logo.png" alt=""> -->
      			<h1>바이오그라피</h1>
	    	</a>
	  	</div>
	</header>
	<main id="main">
	    <section id="about" class="about">
	      	<div class="container page-header">
	        	<div class="row gy-4 justify-content-center">
	          		<div class="col-lg-4">
	            		<img src="resources/images/profile-img.jpg" class="img-fluid rounded" alt="">
	          		</div>
		          	<div class="col-lg-5 content">
	              		<div class="col-lg-8">
	                		<ul>
	                			<li><i class="bi bi-chevron-right"></i> <strong>이름:</strong> <span>이준혁</span></li>
	                			<li><i class="bi bi-chevron-right"></i> <strong>성별:</strong> <span>남자</span></li>
	                  			<li><i class="bi bi-chevron-right"></i> <strong>생년월일:</strong> <span>1991.02.10</span></li>
	                  			<li><i class="bi bi-chevron-right"></i> <strong>국적:</strong> <span>대한민국</span></li>
	                  			<li><i class="bi bi-chevron-right"></i> <strong>주소:</strong> <span>경기도 김포시</span></li>
	                  			<li><i class="bi bi-chevron-right"></i> <strong>전화번호:</strong> <span>010-1234-5678</span></li>
		                  		<li><i class="bi bi-chevron-right"></i> <strong>이메일:</strong> <span>example@example.com</span></li>
		                  		<li><i class="bi bi-chevron-right"></i> <strong>깃허브:</strong> <span><a href="https://github.com/wnsgur364">https://github.com/wnsgur364</a></span></li>
	                		</ul>
	              		</div>
					</div>
				</div>
			</div>
	    </section>
	    <section id="testimonials" class="testimonials">
	      	<div class="container">
	        	<div class="row text-center">
	        		<h2>개인프로젝트</h2>
	          		<div class="col-lg-6">
						<a href="indexUsrView" target="_blank">
							<h2>KOKOA BANK</h2>
							<img src="resources/images/pf1.PNG" class="rounded">
						</a>
					</div>
	          		<div class="col-lg-6">
						<a href="loginXdmForm" target="_blank">
							<h2>KOKOA BANK ADMIN</h2>
							<img src="resources/images/pfad1.PNG" class="rounded">
						</a>
					</div>
	        	</div>
	      	</div>
	   	</section>
	</main>
	<%@ include file="../../../include/footer.jsp" %>
	<%@ include file="../../../include/script.jsp" %>
	<script src="/resources/biography/biography.js"></script>
</body>
</html>