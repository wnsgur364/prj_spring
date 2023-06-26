<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<meta charset="utf-8">
  	<meta content="width=device-width, initial-scale=1.0" name="viewport">
  	<title>KOKOA BANK ADMIN</title>
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
								<div class="d-flex">
									<div class="col-2">
				    					<select class="form-select">
				    						<option selected disabled>사용</option>
				      						<option>N</option>
				      						<option>Y</option>
				    					</select>
				  					</div>
									<div class="col-2">
				    					<select class="form-select selectPeriod">
				      						<option selected disabled>기간</option>
				      						<option>1주일</option>
				      						<option>1개월</option>
				      						<option>3개월</option>
				    					</select>
				  					</div>
					    			<div class="col-2">
				    					<input type="text" class="form-control datepicker dateStart" placeholder="시작일">
				  					</div>
					    			<div class="col-2">
				    					<input type="text" class="form-control datepicker dateFinish" placeholder="종료일">
				  					</div> 					
									<div class="col-2">
				    					<select id="" class="form-select">
				      						<option selected disabled>검색구분</option>
				      						<option>...</option>
				    					</select>
				  					</div>
				  					<div class="col-2">
				    					<input type="text" class="form-control" placeholder="검색어">
				  					</div>  
				  					<div class="col">
										<button type="submit" class="btn btn-outline-secondary" id="btnSearch">
											<i class="bi bi-search"></i>
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
  	<!-- Script -->
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/vendor/jquery/jquery.min.js"></script> 
	<script src="/resources/vendor/jquery-ui/jquery-ui.min.js"></script>
	<script src="/resources/vendor/simple-datatables/simple-datatables.js"></script>
  	<script src="/resources/js/main.js"></script>
</body>
</html>