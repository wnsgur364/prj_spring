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
	<!-- 조회 -->
	<div id="myCarousel" class="carousel slide carousel-dark position-relative container" data-bs-touch="false" style="width: 1000px; padding: 100px 50px 0 50px; box-sizing: border-box; margin: auto;">
  		<div class="carousel-inner" style="margin: auto;">
	    	<div class="carousel-item active">
				<div class="d-flex justify-content-center">
					<div class="rounded border border-dark bg-secondary" style="padding: 30px;">
						<div class="col d-flex justify-content-center" style="font-family: 'Dongle', sans-serif;">
							<i class="fa-solid fa-money-check h1 px-3 text-white"></i>
							<p class="h1 text-white px-3">적금통장</p>			
							<p class="h1 text-white px-3">3414-34-3321</p>
							<p class="h1 text-white px-3">300,000,000원</p>
						</div>	
					</div>
	    		</div>
	    	</div>
    		<div class="carousel-item">
    			<div class="d-flex justify-content-center">
		    		<div class="rounded border border-dark bg-success" style="padding: 30px;">
		    			<div class="col d-flex justify-content-center" style="font-family: 'Dongle', sans-serif;">
							<i class="fa-solid fa-money-check h1 px-3 text-white"></i>
							<p class="h1 text-white px-3">예금통장</p>			
							<p class="h1 text-white px-3">3414-34-3444</p>
							<p class="h1 text-white px-3">30,000,000원</p>
						</div>	
		    		</div>
	    		</div>
	    	</div>
	    	<div class="carousel-item">
				<div class="d-flex justify-content-center">
					<div class="rounded border border-dark bg-dark" style="padding: 30px;">
						<div class="col d-flex justify-content-center" style="font-family: 'Dongle', sans-serif;">
							<i class="fa-solid fa-money-check h1 px-3 text-white"></i>
							<p class="h1 text-white px-3">입출금통장</p>			
							<p class="h1 text-white px-3">3414-34-8661</p>
							<p class="h1 text-white px-3">300,000원</p>
						</div>	
					</div>
	    		</div>
	    	</div>
		  	<button class="carousel-control-prev position-absolute top-50 start-0 translate-middle-y" type="button" data-bs-target="#myCarousel" data-bs-slide="prev" style="width: 32px; height: 32px;">
		    	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    	<span class="visually-hidden">Previous</span>
		  	</button>
		  	<button class="carousel-control-next position-absolute top-50 end-0 translate-middle-y" type="button" data-bs-target="#myCarousel" data-bs-slide="next" style="width: 32px; height: 32px;">
		    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
		    	<span class="visually-hidden">Next</span>
		  	</button>
		</div>
	</div>
	<div class="d-flex justify-content-center">
		<button class="btn btn-outline-secondary" onclick="location.href='accountAddUsrView'">추가</button>
		<button class="btn btn-outline-secondary" onclick="location.href='accountModificationUsrView'">수정</button> 
	</div>
	<main id="main" class="main">
	    <div class="pagetitle">
      		<h1>통장이름</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">통장이름</li>
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
				  					<div class="col-1">
										<button type="submit" class="btn btn-outline-secondary" id="">
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
											<th scope="col">날짜</th>
								      		<th scope="col">내용</th>
								      		<th scope="col">금액</th>
								      		<th scope="col">입·출금</th>
								      		<th scope="col">잔액</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="col">
												<input type="checkbox" name="checked" value="">
											</td>
											<td>1</td>
								      		<td>2023-06-15</td>
								      		<td>순대국</td>
								      		<td>5,000</td>
								      		<td>출금</td>
								      		<td>500,000</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</form>
    	</section>
	</main>
	<%@ include file="../../../include/footer.jsp" %>
	<%@ include file="../../../include/script.jsp" %>
</body>
</html>