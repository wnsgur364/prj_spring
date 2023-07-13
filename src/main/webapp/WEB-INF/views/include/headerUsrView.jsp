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

<header class="fixed-top container" id="header">
	<div class="container">
		<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
			<ul class="nav col-auto me-auto mb-2 align-items-center">
				<li><a href="indexUsrView" class="nav-link text-secondary fs-3 px-5">KOKOA BANK</a></li>
				<c:choose>
					<c:when test="${not empty id}">
						<li><a href="accountUsrView" class="nav-link px-3 text-black">조회</a></li>
						<li><a href="depositUsrView" class="nav-link px-3 text-black">입금</a></li>
						<li><a href="sendUsrView" class="nav-link px-3 text-black">이체</a></li>
						<li><a href="autoSendUsrView" class="nav-link px-3 text-black">자동이체</a></li>
						<li><a href="exchangeRateUsrView" class="nav-link px-3 text-black">환율</a></li>
						<li><a href="domesticStockUsrView" class="nav-link px-3 text-black">국내주식</a></li>
						<li><a href="foreignStockUsrView" class="nav-link px-3 text-black">해외주식</a></li>
						<li>
							<span class="px-3" class="nav-link px-3 text-black">반갑습니다 <c:out value="${id}"/> 님</span>
						</li>
						<li>
							<button type="button" class="btn btn-primary" id="btnLogout">로그아웃</button>
						</li>
					</c:when>
					<c:otherwise>
						<li><a href="loginUsrForm" class="nav-link px-3 text-black">조회</a></li>
						<li><a href="loginUsrForm" class="nav-link px-3 text-black">입금</a></li>
						<li><a href="loginUsrForm" class="nav-link px-3 text-black">이체</a></li>
						<li><a href="loginUsrForm" class="nav-link px-3 text-black">자동이체</a></li>
						<li><a href="loginUsrForm" class="nav-link px-3 text-black">환율</a></li>
						<li><a href="loginUsrForm" class="nav-link px-3 text-black">국내주식</a></li>
						<li><a href="loginUsrForm" class="nav-link px-3 text-black">해외주식</a></li>
						<li>
							<a href="loginUsrForm" class="nav-link px-3 text-black">로그인</a>
						</li>
						<li>
							<a href="registerUsrForm" class="nav-link px-3 text-black">회원가입</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</header>

<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
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