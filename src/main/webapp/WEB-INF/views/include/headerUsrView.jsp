<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>	

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!-- CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="/resources/usr/usr.css" rel="stylesheet">
<link href="/resources/vendor/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<!-- font-family: 'Dongle', sans-serif; -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&display=swap" rel="stylesheet">	
<!-- fontawesome -->
<script src="https://kit.fontawesome.com/b05f67c88a.js" crossorigin="anonymous"></script>
<% String id = (String) request.getSession().getAttribute("id"); %>
<header class="fixed-top container" id="header">
	<div class="container">
   		<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
       		<ul class="nav col-auto me-auto mb-2 align-items-center">
      	 		<li><a href="indexUsrView" class="nav-link text-secondary fs-3 px-5">KOKOA BANK</a></li>
       			<li><a href="<% if (id != null) { %>accountUsrView<% } else { %>loginUsrForm<% } %>" class="nav-link px-3 text-black">
       				<% if (id != null) { %>조회<% } else { %>조회<% } %>
       			</a></li>
       			<li><a href="<% if (id != null) { %>depositUsrView<% } else { %>loginUsrForm<% } %>" class="nav-link px-3 text-black">
       				<% if (id != null) { %>입금<% } else { %>입금<% } %>
       			</a></li>
       			<li><a href="<% if (id != null) { %>sendUsrView<% } else { %>loginUsrForm<% } %>" class="nav-link px-3 text-black">
       				<% if (id != null) { %>이체<% } else { %>이체<% } %>
       			</a></li>
       			<li><a href="<% if (id != null) { %>autoSendUsrView<% } else { %>loginUsrForm<% } %>" class="nav-link px-3 text-black">
       				<% if (id != null) { %>자동이체<% } else { %>자동이체<% } %>
       			</a></li>
       			<li><a href="<% if (id != null) { %>exchangeRateUsrView<% } else { %>loginUsrForm<% } %>" class="nav-link px-3 text-black">
       				<% if (id != null) { %>환율<% } else { %>환율<% } %>
       			</a></li>
       			<li><a href="<% if (id != null) { %>domesticStockUsrView<% } else { %>loginUsrForm<% } %>" class="nav-link px-3 text-black">
       				<% if (id != null) { %>국내주식<% } else { %>국내주식<% } %>
       			</a></li>
       			<li><a href="<% if (id != null) { %>foreignStockUsrView<% } else { %>loginUsrForm<% } %>" class="nav-link px-3 text-black">
       				<% if (id != null) { %>해외주식<% } else { %>해외주식<% } %>
       			</a></li>
       			<li>
		      		<% 
		       			if (id != null) { // 로그인 상태인 경우
		       		%>
		       			<span class="px-3" style="text-decoration: none; color: black;">반갑습니다 <%= id %> 님</span>
		       		<% } else { // 로그인 상태가 아닌 경우 %>
		       			<a href="loginUsrForm" class="px-3" style="text-decoration: none; color: black;">
		       				로그인
		       			</a>
		       		<% } %>
		       	</li>	
		       	<li>	
		       		<% 
		       			if (id != null) { // 로그인 상태인 경우
	       			%>	
	       				<a href="logout" style="text-decoration: none; color: black;">로그아웃</a>
	       			<% } else { // 로그인 상태가 아닌 경우 %>
	       				<a href="registerUsrForm" style="text-decoration: none; color: black;">
							회원가입
						</a>	
		       		<% } %>	
       			</li>
       		</ul>
   		</div>
   	</div>
</header>
