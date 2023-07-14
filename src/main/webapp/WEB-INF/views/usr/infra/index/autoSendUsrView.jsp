<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KOKOA BANK</title>
    <%@ include file="../../../include/css.jsp" %>
</head>
<body>
	<%@ include file="../../../include/headerUsrView.jsp" %>
	<div class="container text-center" id="autoSend" style="width: 1320px; height: 870px; padding-top: 100px;">
		<form>
			<div class="row-md">
				<div class="fs-1" style="margin-bottom: 30px; font-family: 'Dongle', sans-serif;">자동이체</div>
				<div class="col-5" style="margin: 10px auto;">
					<select id="selectAccount" class="form-select">
   						<option selected disabled>계좌선택</option>
   						<option>1번</option>
   						<option>2번</option>
						<option>3번</option>
   					</select>
				</div>
				<div class="col-5" style="margin: 10px auto;">
					<input type="text" id="balance" class="form-control" placeholder="잔액" disabled>
				</div>
				<div class="col-5" style="margin: 10px auto;">
					<input type="text" class="form-control" placeholder="계좌번호">
				</div>
				<div class="col-5" style="margin: 10px auto;">
					<input type="text" class="form-control" placeholder="금액">
				</div>
				<div class="col-5" style="margin: 10px auto;">
					<input type="text" class="form-control" placeholder="받는사람 이름">
				</div>
				<div class="col-5" style="margin: 10px auto;">
					<input type="text" class="form-control" placeholder="입금자명">
				</div>
				<div class="col-5" style="margin: 10px auto;">
					<input type="password" class="form-control" placeholder="비밀번호">
				</div>
				<div class="col-5" style="margin: 10px auto;">
					<input type="text" class="form-control datepicker" placeholder="자동이체 시작날짜">
				</div>
				<div class="col-5" style="margin: 10px auto;">
					<input type="text" class="form-control datepicker" placeholder="자동이체 종료날짜">
				</div>
			</div>
		</form>
		<div class="d-flex justify-content-center">
			<button class="btn btn-outline-secondary">확인</button>
	    	<button class="btn btn-outline-secondary">취소</button>   		
	    </div>	
	</div>
	<%@ include file="../../../include/footer.jsp" %>
	<%@ include file="../../../include/script.jsp" %>
</body>
</html>