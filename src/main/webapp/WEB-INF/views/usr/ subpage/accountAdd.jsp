<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>KOKOA BANK REGISTER</title>
</head>
<body>
	<%@ include file="../index/header.jsp" %>
	<main>
    	<div class="container">
			<section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        		<div class="container">
          			<div class="row justify-content-center">
            			<div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
              				<div class="d-flex justify-content-center py-4">
                				<a href="index.html" class="logo d-flex align-items-center w-auto">
                  					<!-- <img src="assets/img/logo.png" alt=""> -->
                  					<span class="d-none d-lg-block">KOKOA BANK</span>
                				</a>
              				</div>
              				<div class="card mb-3">
                				<div class="card-body">
                  					<div class="pt-4 pb-2">
                    					<h5 class="card-title text-center pb-0 fs-4">계좌개설</h5>
                    					<p class="text-center small">계좌를 만들려면 정보를 입력해 주세요.</p>
                  					</div>
                  					<form class="row g-3 needs-validation" novalidate>
                  						<div class="col-12">
                    						<label for="id" class="form-label">계좌이름</label>
                    						<input type="text" name="id" class="form-control" id="id" required>
                    						<div class="invalid-feedback">계좌이름을 입력해 주세요.</div>
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
                   							<button class="btn btn-outline-secondary w-100" id="submitForm" type="submit">계좌개설</button>
                   						</div>
                   						<div class="col-12">
                      						<p class="small mb-0">조회 화면으로 가시겠습니까? <a href="account.html">뒤로</a></p>
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
	<%@ include file="../index/footer.jsp" %>
</body>
</html>