<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!--Start sidebar-wrapper-->
<div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
	<div class="brand-logo">
      	<a href="#">
       		<img src="/resources/images/profile-img.jpg" class="logo-icon" alt="logo icon">
       		<h5 class="logo-text">바이오그래피</h5>
     	</a>
	</div>
   	<ul class="sidebar-menu do-nicescrol">
      	<li class="sidebar-header">포트폴리오</li>
      	<li>
    		<a href="indexUsrView"> 	
	       		<i class="zmdi zmdi-view-dashboard"></i> 
       			<span>KOKOA BANK</span>
       		</a>
      	</li>
      	<li>
       		<a href="loginXdmForm"> 	
	       		<i class="zmdi zmdi-view-dashboard"></i> 
       			<span>KOKOA BANK ADMIN</span>
       		</a>
      	</li>
      	<li>
    		<a href="http://52.79.240.22:8080/"> 	
	       		<i class="zmdi zmdi-view-dashboard"></i> 
       			<span>Lingo Connect</span>
       		</a>
      	</li>
      	<li>
    		<a href="http://52.79.240.22:8080/login"> 	
	       		<i class="zmdi zmdi-view-dashboard"></i> 
       			<span>Lingo Connect ADMIN</span>
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
	</nav>
</header>
<!--End topbar header-->