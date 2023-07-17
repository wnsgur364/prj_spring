<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!-- favicon -->
<link rel="icon" href="/resources/assets/images/favicon/favicon.ico"  type="image/x-icon" />
 
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
		        				<img src="resources/images/profile-img.jpg" class="img-circle" alt="user avatar">
		        			</span>
		      			</a>
		      			<ul class="dropdown-menu dropdown-menu-right">
		       				<li class="dropdown-item user-details">
		        				<a href="javaScript:void();">
		           					<div class="media">
		             					<div class="avatar">
		             						<img class="align-self-start mr-3" src="resources/images/profile-img.jpg" alt="user avatar">
		             					</div>
		            					<div class="media-body">
		            						<h6 class="mt-2 user-title"><c:out value = "${id}" /></h6>
		            					</div>
		           					</div>
		          				</a>
		        			</li>
		        			<li class="dropdown-item"><button type="button" id="btnLogout" class="btn text-white"><i class="icon-power mr-2"></i>로그아웃</button></li>
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