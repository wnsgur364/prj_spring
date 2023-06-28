<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>	

<!-- CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/vendor/simple-datatables/style.css" rel="stylesheet">
<link href="/resources/vendor/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<!-- font-family: 'Dongle', sans-serif; -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&display=swap" rel="stylesheet">	

<header class="fixed-top container" id="header">
	<div class="container">
   		<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
       		<ul class="nav col-auto me-auto mb-2 align-items-center">
      	 		<li><a href="indexUsrView" class="nav-link text-secondary fs-3 px-5">KOKOA BANK</a></li>
       			<li><a href="accountUsrView" class="nav-link px-3 text-black">조회</a></li>
       			<li><a href="depositUsrView" class="nav-link px-3 text-black">입금</a></li>
       			<li><a href="sendUsrView" class="nav-link px-3 text-black">이체</a></li>
       			<li><a href="autoSendUsrView" class="nav-link px-3 text-black">자동이체</a></li>
       			<li><a href="exchangeRateUsrView" class="nav-link px-3 text-black">환율</a></li>
       			<li><a href="domesticStockUsrView" class="nav-link px-3 text-black">국내주식</a></li>
       			<li><a href="foreignStockUsrView" class="nav-link px-3 text-black">해외주식</a></li>
       		</ul>
       		<div class="col">
       			<a href="loginUsrForm" class="px-3" style="text-decoration: none; color: black; margin-left: 170px;">
       				로그인
       			</a>
				<a href="registerUsrForm" style="text-decoration: none; color: black;">
					회원가입
				</a>	
       		</div>
   		</div>
   	</div>
</header>