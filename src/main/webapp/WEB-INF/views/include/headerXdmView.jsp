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
      	<a href="indexXdmView">
       		<img src="/resources/images/logo.png" class="logo-icon" alt="logo icon">
       		<h5 class="logo-text">KOKOA BANK ADMIN</h5>
     	</a>
	</div>
   	<ul class="sidebar-menu do-nicescrol">
      	<li class="sidebar-header">KOKOA BANK ADMIN</li>
      	<li>
        	<a href="indexXdmView">
        		<i class="zmdi zmdi-view-dashboard"></i> 
        		<span>대쉬보드</span>
        	</a>
      	</li>
      	<li>
        	<a href="codeGroupList">
          		<i class="zmdi zmdi-format-list-bulleted"></i> 
          		<span>코드그룹관리</span>
        	</a>
      	</li>
      	<li>
        	<a href="codeList">
          		<i class="zmdi zmdi-grid"></i> 
          		<span>코드관리</span>
        	</a>
      	</li>
      	<li>
        	<a href="memberList">
          		<i class="zmdi zmdi-calendar-check"></i> 
          		<span>회원관리</span>
        	</a>
      	</li>
      	<li>
        	<a href="accountList">
          		<i class="zmdi zmdi-face"></i> 
          		<span>계좌관리</span>
        	</a>
      	</li>
      	<li>
        	<a href="transactionList">
          		<i class="zmdi zmdi-face"></i> 
          		<span>거래관리</span>
        	</a>
      	</li>
      	<li>
        	<a href="influencerList">
          		<i class="zmdi zmdi-face"></i> 
          		<span>인플루언서관리</span>
        	</a>
      	</li>
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
		            					</div>
		           					</div>
		          				</a>
		        			</li>
		        			<li class="dropdown-item"><button type="button" id="btnLogout" class="btn text-white"><i class="icon-power mr-2"></i>Logout</button></li>
		      			</ul>
		    		</li>
		  		</ul>
	  		</c:when>
	  		<c:otherwise>
		  		<ul class="navbar-nav align-items-center right-nav-link">
			      	<li class="px-3">
			        	<a href="loginXdmForm">
			          		<i class="zmdi zmdi-lock"></i> 
			          		<span>로그인</span>
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
	      		location.href = "/loginXdmForm"
	    	},
			error: function(jqXHR, textStatus, errorThrown) {
	      		alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
	  	});
	});

</script>