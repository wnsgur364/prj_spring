<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<meta charset="utf-8">
  	<meta content="width=device-width, initial-scale=1.0" name="viewport">
  	<title>KOKOA BANK ADMIN</title>
	<!-- 부트스트랩 -->
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- JqueryUi -->
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<!-- Fontawesome -->
	<script src="https://kit.fontawesome.com/b05f67c88a.js" crossorigin="anonymous"></script>
	<!-- Style CSS -->
	<link href="/resources/css/style.css" rel="stylesheet">
	<!-- Datatables -->
	<link href="/resources/vendor/simple-datatables/style.css" rel="stylesheet">
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
  	<main id="main" class="main">
	    <div class="pagetitle">
      		<h1>계좌관리</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">계좌관리</li>
        		</ol>
      		</nav>
    	</div>
	    <section class="section">
			<form>
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body py-5">
								<div class="row">
									<div class="col-2" style="margin-right: -24px;">
				    					<select class="form-select">
				    						<option selected disabled>사용</option>
				      						<option>N</option>
				      						<option>Y</option>
				    					</select>
				  					</div>
									<div class="col-2" style="margin-right: -24px;">
				    					<select class="form-select selectPeriod">
				      						<option selected disabled>기간</option>
				      						<option>1주일</option>
				      						<option>1개월</option>
				      						<option>3개월</option>
				    					</select>
				  					</div>
					    			<div class="col-2" style="margin-right: -24px;">
				    					<input type="text" class="form-control datepicker dateStart" placeholder="시작일">
				  					</div>
					    			<div class="col-2" style="margin-right: -24px;">
				    					<input type="text" class="form-control datepicker dateFinish" placeholder="종료일">
				  					</div> 					
									<div class="col-2" style="margin-right: -24px;">
				    					<select id="" class="form-select">
				      						<option selected disabled>검색구분</option>
				      						<option>...</option>
				    					</select>
				  					</div>
				  					<div class="col-2" style="margin-right: -20px;">
				    					<input type="text" class="form-control" placeholder="검색어">
				  					</div>  
				  					<div class="col">
										<button type="button" class="btn btn-danger" id="btnSearch">
											<i class="fa-solid fa-magnifying-glass"></i>
										</button>
										<button type="button" class="btn btn-warning" id="btnRefresh">
											<i class="fa-solid fa-rotate-right" style="color: #ffffff;"></i>
										</button>
									</div>
								</div>
								<table class="table datatable">		
									<thead>
										<tr>
											<th scope="col" class="doNotScript">
												<input type="checkbox" name="checked" id="allCheck" value="">
											</th>
											<th scope="col">순서</th>
											<th scope="col">이름</th>
											<th scope="col">계좌번호</th>
											<th scope="col">사용</th>
											<th scope="col">등록일</th>
											<th scope="col">수정일</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="col">
												<input type="checkbox" name="checked" value="">
											</td>
											<td>1</td>
											<td>홍길동</td>
											<td>3333-74-8759</td>
											<td>N</td>
											<td>2023-05-15 09:20:06</td>
						    				<td>2023-05-15 09:20:06</td>
										</tr>
										<tr>
											<td scope="col">
												<input type="checkbox" name="checked" value="">
											</td>
											<td>2</td>
											<td>홍길동</td>
											<td>3333-74-8759</td>
											<td>Y</td>
											<td>2023-05-15 09:20:06</td>
						    				<td>2023-05-15 09:20:06</td>
										</tr>
										<tr>
											<td scope="col">
												<input type="checkbox" name="checked" value="">
											</td>
											<td>3</td>
											<td>홍길동</td>
											<td>3333-74-8759</td>
											<td>N</td>
											<td>2023-05-15 09:20:06</td>
						    				<td>2023-05-15 09:20:06</td>
										</tr>
										<tr>
											<td scope="col">
												<input type="checkbox" name="checked" value="">
											</td>
											<td>4</td>
											<td>김길동</td>
											<td>3333-74-8759</td>
											<td>Y</td>
											<td>2023-05-15 09:20:06</td>
						    				<td>2023-05-15 09:20:06</td>
										</tr>
										<tr>
											<td scope="col">
												<input type="checkbox" name="checked" value="">
											</td>
											<td>5</td>
											<td>김길동</td>
											<td>3333-74-8759</td>
											<td>Y</td>
											<td>2023-05-15 09:20:06</td>
						    				<td>2023-05-15 09:20:06</td>
										</tr>
										<tr>
											<td scope="col">
												<input type="checkbox" name="checked" value="">
											</td>
											<td>6</td>
											<td>김길동</td>
											<td>3333-74-8759</td>
											<td>Y</td>
											<td>2023-05-15 09:20:06</td>
						    				<td>2023-05-15 09:20:06</td>
										</tr>
										<tr>
											<td scope="col">
												<input type="checkbox" name="checked" value="">
											</td>
											<td>7</td>
											<td>김길동</td>
											<td>3333-74-8759</td>
											<td>Y</td>
											<td>2023-05-15 09:20:06</td>
						    				<td>2023-05-15 09:20:06</td>
										</tr>
										<tr>
											<td scope="col">
												<input type="checkbox" name="checked" value="">
											</td>
											<td>8</td>
											<td>김길동</td>
											<td>3333-74-8759</td>
											<td>Y</td>
											<td>2023-05-15 09:20:06</td>
						    				<td>2023-05-15 09:20:06</td>
										</tr>
									</tbody>
								</table>
								<div class="d-flex justify-content-center">
									<a class="btn btn-outline-secondary" href="#">수정</a>
									<button type="button" class="btn btn-danger" id="btnDelete" data-bs-toggle="modal" data-bs-target="#staticBackdrop">삭제</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
    	</section>
	</main>
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropTitle" 
			 aria-hidden="true">
	  		<div class="modal-dialog">
	    		<div class="modal-content">
	      			<div class="modal-header">
	        			<h1 class="modal-title fs-5" id="staticBackdropTitle">title</h1>
	        			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      			</div>
	      			<div class="modal-body" id="staticBackdropBody">
	        		body
	      			</div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	        			<button type="button" class="btn btn-primary">확인</button>
	      			</div>
	    		</div>
	  		</div>
		</div>
  	<%@ include file="footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src="/resources/vendor/simple-datatables/simple-datatables.js"></script>
  	<script src="/resources/js/main.js"></script>
	<script type=text/javascript>
	
		// datepicker
		$(function() {
	
			$(".datepicker").datepicker({
				dateFormat: 'yy-mm-dd'
			});
	
		});
	
		// 기간설정
		$(".selectPeriod").on("change", function() {
			var period = $(this).val();
			var today = new Date();
			var oneWeekAgo = new Date(today.getTime() - (7 * 24 * 60 * 60 * 1000));
			var oneMonthAgo = new Date(today.getTime() - (30 * 24 * 60 * 60 * 1000));
			var threeMonthsAgo = new Date(today.getTime() - (90 * 24 * 60 * 60 * 1000));
			
			switch (period) {
				case "1주일":
					$(".dateStart").datepicker("setDate", oneWeekAgo);
					$(".dateFinish").datepicker("setDate", today);
					break;
				case "1개월":
					$(".dateStart").datepicker("setDate", oneMonthAgo);
					$(".dateFinish").datepicker("setDate", today);
					break;
				case "3개월":
					$(".dateStart").datepicker("setDate", threeMonthsAgo);
					$(".dateFinish").datepicker("setDate", today);
					break;
			}
		});	
		
		// 모달 문구 변경
		var staticBackdrop = document.getElementById('staticBackdrop')
		var staticBackdropTitle = document.getElementById('staticBackdropTitle')
		var staticBackdropBody = document.getElementById('staticBackdropBody')
		
		
		document.getElementById('btnDelete').addEventListener('click', function(){
			
			document.getElementById('staticBackdrop').style.display = "block";
			
			document.getElementById('staticBackdropTitle').textContent = "삭제";
			document.getElementById('staticBackdropBody').textContent = "정말 삭제 하시겠습니까?";
			
		}) 
		
		// checkbox 적용되는 datatables 효과 제거
		const firstThElement = document.querySelector('th:first-child');
		const aElement = firstThElement.querySelector('a');
	
		firstThElement.removeAttribute('data-sortable');
		firstThElement.removeAttribute('aria-sort');
		firstThElement.classList.remove('datatable-ascending');
		firstThElement.removeAttribute('style');
	
		if (aElement) {
		  aElement.removeAttribute('href');
		  aElement.classList.remove('datatable-sorter');
		}
		
		// 상하정렬버튼 클릭시 checkbox 해제
		const nonFirstThElements = document.querySelectorAll('th:not(:first-child)');

		nonFirstThElements.forEach((thElement) => {
			thElement.addEventListener('click', function() {
			  	var checkboxes = document.getElementsByName("checked");
			  	for (var i = 0; i < checkboxes.length; i++) {
			    	checkboxes[i].checked = false;
			  	}
			});
		});
	
	</script>
</body>
</html>