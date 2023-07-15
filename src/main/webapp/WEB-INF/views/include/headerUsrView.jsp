<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!--favicon-->
<link rel="apple-touch-icon" sizes="57x57" href="/resources/images/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/resources/images/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/resources/images/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/resources/images/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/resources/images/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/resources/images/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/resources/images/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/resources/images/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/resources/images/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/resources/images/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/resources/images/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/resources/images/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/resources/images/favicon/favicon-16x16.png">
<link rel="manifest" href="/resources/images/favicon/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/resources/images/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
 
<!--Start sidebar-wrapper-->
<div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
	<div class="brand-logo">
      	<a href="indexUsrView">
       		<img src="/resources/images/logo.png" class="logo-icon" alt="logo icon">
       		<h5 class="logo-text">KOKOA BANK</h5>
     	</a>
	</div>
   	<ul class="sidebar-menu do-nicescrol">
      	<li class="sidebar-header">KOKOA BANK</li>
      	<li>
        	<a href="indexUsrView">
        		<i class="zmdi zmdi-view-dashboard"></i> 
        		<span>홈</span>
        	</a>
      	</li>	
      	<c:choose>
			<c:when test="${not empty id}">
		      	<li>
		        	<a href="accountUsrView">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>조회</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="depositUsrView">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>입금</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="sendUsrView">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>이체</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="autoSendUsrView">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>자동이체</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="exchangeRateUsrView">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>환율</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="domesticStockUsrView">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>국내주식</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="foreignStockUsrView">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>해외주식</span>
		        	</a>
		      	</li>
			</c:when>
			<c:otherwise>
		      	<li>
		        	<a href="loginUsrForm">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>조회</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="loginUsrForm">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>입금</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="loginUsrForm">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>이체</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="loginUsrForm">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>자동이체</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="loginUsrForm">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>환율</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="loginUsrForm">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>국내주식</span>
		        	</a>
		      	</li>
		      	<li>
		        	<a href="loginUsrForm">
		          		<i class="zmdi zmdi-format-list-bulleted"></i> 
		          		<span>해외주식</span>
		        	</a>
		      	</li>
			</c:otherwise>
		</c:choose>
   	</ul>
</div>
<!--End sidebar-wrapper-->

<!--Start topbar header-->
<header class="topbar-nav">
 	<nav class="navbar navbar-expand fixed-top">
  		<ul class="navbar-nav mr-auto align-items-center">
    		<li class="nav-item">
      			<a class="nav-link toggle-menu" href="javascript:void();">
       				<i class="icon-menu menu-icon"></i>
     			</a>
    		</li>
    		<li class="nav-item">
	      		<form class="search-bar">
	        		<input type="text" class="form-control" placeholder="Enter keywords">
	         		<a href="javascript:void();">
	         			<i class="icon-magnifier"></i>
	         		</a>
	      		</form>
    		</li>
  		</ul>
		<c:choose>
			<c:when test="${not empty id}">
		  		<ul class="navbar-nav align-items-center right-nav-link">
		    		<li class="nav-item">
		      			<a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
		        			<span class="user-profile">
		        				<img src="https://via.placeholder.com/110x110" class="img-circle" alt="user avatar">
		        			</span>
		      			</a>
		      			<ul class="dropdown-menu dropdown-menu-right">
		       				<li class="dropdown-item user-details">
		        				<a href="javaScript:void();">
		           					<div class="media">
		             					<div class="avatar">
		             						<img class="align-self-start mr-3" src="https://via.placeholder.com/110x110" alt="user avatar">
		             					</div>
		            					<div class="media-body">
		            						<h6 class="mt-2 user-title"><c:out value = "${id}" /></h6>
		            						<button type="button" id="btnLogout" class="btn text-white"><i class="icon-power mr-2"></i>로그아웃</button>
		            					</div>
		           					</div>
		          				</a>
		        			</li>
		      			</ul>
		    		</li>
		  		</ul>
		  		</c:when>
		  		<c:otherwise>
			  		<ul class="navbar-nav align-items-center right-nav-link">
				      	<li class="px-3">
				        	<a href="loginUsrForm">
				          		<i class="zmdi zmdi-lock"></i> 
				          		<span>로그인</span>
				        	</a>
				      	</li>
				       	<li class="px-3">
				        	<a href="registerUsrForm">
				          		<i class="zmdi zmdi-account-circle"></i> 
				          		<span>회원가입</span>
				        	</a>
				      	</li>
			      	</ul>
				</c:otherwise>
			</c:choose>
		</nav>
</header>
<!--End topbar header-->

<script src="/resources/assets/js/jquery.min.js"></script>
<script>

	$("#btnLogout").on("click", function(){
		$.ajax({
	    	async: true,
	    	cache: false,
	    	type: "post",
	    	url: "/logoutProc",
	    	data: { },
	    	success: function(response){
	      		location.href = "/indexUsrView"
	    	},
			error: function(jqXHR, textStatus, errorThrown) {
	      		alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
	  	});
	});

</script>