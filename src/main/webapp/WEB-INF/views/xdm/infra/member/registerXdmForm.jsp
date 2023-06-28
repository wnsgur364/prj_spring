<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>KOKOA BANK REGISTER</title>
    <!-- 부트스트랩 -->
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Template Main CSS File -->
	<link href="/resources/css/style.css" rel="stylesheet">
  	<!-- Google Fonts -->
  	<link href="https://fonts.gstatic.com" rel="preconnect">
  	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
</head>
<body>
	<main>
    	<div class="container">
			<section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        		<div class="container">
          			<div class="row justify-content-center">
            			<div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
              				<div class="d-flex justify-content-center py-4">
                				<a href="indexUsrView" class="logo d-flex align-items-center w-auto">
                  					<!-- <img src="assets/img/logo.png" alt=""> -->
                  					<span class="d-none d-lg-block">KOKOA BANK ADMIN</span>
                				</a>
              				</div>
              				<div class="card mb-3">
                				<div class="card-body">
                  					<div class="pt-4 pb-2">
                    					<h5 class="card-title text-center pb-0 fs-4">회원가입</h5>
                    					<p class="text-center small">계정을 만들려면 개인 정보를 입력해 주세요.</p>
                  					</div>

                  					<form class="row g-3 needs-validation" novalidate>
                  						<div class="col-12">
                    						<label for="id" class="form-label">아이디</label>
                    						<input type="text" name="id" class="form-control" id="id" required>
                    						<div class="invalid-feedback">아이디를 입력해 주세요.</div>
                    					</div>
                    					<div class="col-12">
                    						<label for="firstName" class="form-label">이름</label>
                      						<input type="text" name="firstName" class="form-control" id="firstName" required>	
                   							<div class="invalid-feedback">이름을 입력해 주세요.</div>
                    					</div>
                    					<div class="col-12">
                      						<label for="email" class="form-label">이메일</label>
                       						<input type="text" name="email" class="form-control" id="yourUsername" required>
                       						<div class="invalid-feedback">이메일을 입력해 주세요.</div>
                    					</div>
                   						<div class="col-12">
                  							<label for="password" class="form-label">비밀번호</label>
                   							<input type="password" name="password" class="form-control" id="password" required>
                   							<div class="invalid-feedback">비밀번호를 입력해 주세요.</div>
                   						</div>
                   						<div class="col-12">
                  							<label for="passwordCheck" class="form-label">비밀번호 확인</label>
                   							<input type="password" name="passwordCheck" class="form-control" id="passwordCheck" required>
                   							<div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div>
                   						</div>
                   						<div class="col-12">
                  							<label for="phone" class="form-label">전화번호</label>
               								<input type="tel" name="phone" class="form-control" id="phone" required>
               								<div class="invalid-feedback">전화번호를 입력해 주세요.</div>
                						</div>
                  						<div class="col-12 d-flex">
                   							<button class="btn btn-outline-secondary w-100" id="submitForm" type="submit">회원가입</button>
                   						</div>
                   						<div class="col-12">
                   							<p class="small mb-0">이미 계정이 있으신가요? <a href="loginXdmForm">로그인</a></p>
            							</div>
               						</form>
               					</div>
           					</div>
            			</div>
          			</div>
        		</div>
      		</section>
    	</div>
  	</main>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/js/main.js"></script>
</body>
</html>