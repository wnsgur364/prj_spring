<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KOKOA BANK</title>
    <!-- 부트스트랩 -->
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- JqueryUi -->
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<!-- Template Main CSS File -->
	<link href="/resources/css/style.css" rel="stylesheet">
  	<!-- Google Fonts -->
  	<link href="https://fonts.gstatic.com" rel="preconnect">
  	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!-- font-family: 'Dongle', sans-serif; -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&display=swap" rel="stylesheet">		
</head>
<body>
	<%@ include file="header.jsp" %>
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
	<%@ include file="footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src="/resources/js/main.js"></script>
	<script>
		
		// datepicker
		$(function() {

			$(".datepicker").datepicker({
				dateFormat: 'yy-mm-dd'
			});

		});

		// 계좌선택시 잔액란에 금액 입력
		$("#selectAccount").on("change", function() {
			var accountNumber = $(this).val();
			var balance = 10000; // This is just an example balance.

			$("#balance").val(balance);
		});

	</script>
</body>
</html>