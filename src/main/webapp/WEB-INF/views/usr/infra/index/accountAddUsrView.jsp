<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>KOKOA BANK</title>
</head>
<body>
	<%@ include file="headerUsrView.jsp" %>
	<main>
   		<div class="container text-center" id="autoSend" style="width: 1320px; height: 870px; padding-top: 100px;">
			<div class="col-5 m-auto">
				<div class="fs-1" style="margin-bottom: 30px; font-family: 'Dongle', sans-serif;">계좌개설</div>
				<form class="row g-3 needs-validation" novalidate>
					<div class="col-12">
						<div class="form-floating">
	 						<input type="text" name="accountNumber" class="form-control" id="accountNumber" required>
	 						<label for="accountNumber" class="form-label">계좌이름</label>
	 						<div class="invalid-feedback">계좌이름을 입력해 주세요.</div>
 						</div>
 					</div>
   					<div class="col-12">
   						<div class="form-floating">
							<input type="text" name="firstName" class="form-control" id="firstName" required>	
							<label for="firstName" class="form-label">비밀번호</label>
							<div class="invalid-feedback">비밀번호를 입력해 주세요.</div>
						</div>
   					</div>
					<div class="col-12">
						<div class="form-floating">
							<input type="password" name="password" class="form-control" id="passwordOld" required>
							<label for="passwordOld" class="form-label">비밀번호 확인</label>
							<div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div>
						</div>
					</div>
					<div class="d-flex justify-content-center">
						<button class="btn btn-outline-secondary" id="submitForm" type="submit">확인</button>
		    			<button class="btn btn-outline-secondary" onclick="location.href='accountUsrView'">취소</button>   		
		    		</div>
				</form>
			</div>
		</div>
  	</main>
	<%@ include file="footerUsrView.jsp" %>
</body>
</html>