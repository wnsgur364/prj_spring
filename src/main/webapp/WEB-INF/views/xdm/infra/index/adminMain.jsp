<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<title>KOKOA BANK ADMIN</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<main id="main" class="main">
	    <div class="pagetitle">
			<h1>관리</h1>
      			<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">관리</li>
        		</ol>
      		</nav>
    	</div>
		<section class="section profile">
	      	<div class="row">
	        	<div class="col">
	          		<div class="card">
	            		<div class="card-body pt-3">
	              			<!-- Bordered Tabs -->
	              			<ul class="nav nav-tabs nav-tabs-bordered">
				                <li class="nav-item">
	            			    	<button class="nav-link active text-dark" data-bs-toggle="tab" data-bs-target="#profile-overview">개요</button>
	                			</li>
				                <li class="nav-item">
	                  				<button class="nav-link text-dark" data-bs-toggle="tab" data-bs-target="#profile-edit">프로필 수정</button>
	                			</li>
	              			</ul>
	              			<div class="tab-content pt-2">
	                			<div class="tab-pane fade show active profile-overview" id="profile-overview">
	                  				<h5 class="card-title">KAKAO BANK</h5>
	                  				<p class="small fst-italic">KAKAO BANK 관리자 메인 페이지</p>
	                  				<h5 class="card-title">프로필</h5>
	                  				<div class="row">
	                    				<div class="col-lg-3 col-md-4 label ">이름</div>
	                    				<div class="col-lg-9 col-md-8">이준혁</div>
	                  				</div>
	                  				<div class="row">
	                    				<div class="col-lg-3 col-md-4 label">성별</div>
	                    				<div class="col-lg-9 col-md-8">남자</div>
	                  				</div>
				                 	<div class="row">
				                    	<div class="col-lg-3 col-md-4 label">생년월일</div>
				                    	<div class="col-lg-9 col-md-8">1991.02.10</div>
				                  	</div>
	                  				<div class="row">
	                    				<div class="col-lg-3 col-md-4 label">국적</div>
	                    				<div class="col-lg-9 col-md-8">대한민국</div>
	                  				</div>
				                  	<div class="row">
				                    	<div class="col-lg-3 col-md-4 label">주소</div>
				                    	<div class="col-lg-9 col-md-8">경기도 김포시</div>
				                  	</div>
	                  				<div class="row">
	                    				<div class="col-lg-3 col-md-4 label">전화번호</div>
	                    				<div class="col-lg-9 col-md-8">010-1234-5678</div>
	                  				</div>
				                 	<div class="row">
				                    	<div class="col-lg-3 col-md-4 label">이메일</div>
				                    	<div class="col-lg-9 col-md-8">example@exmple.com</div>
				                  	</div>
	               				</div>
	                			<div class="tab-pane fade profile-edit pt-3" id="profile-edit">
	                  				<!-- Profile Edit Form -->
	                  				<form>
	                    				<div class="row mb-3">
	                      					<label for="fullName" class="col-md-4 col-lg-3 col-form-label">이름</label>
	                      					<div class="col-md-8 col-lg-9">
	                        					<input name="fullName" type="text" class="form-control" id="fullName" value="이준혁">
	                      					</div>
	                    				</div>
	                    				<div class="row mb-3">
	                      					<label for="about" class="col-md-4 col-lg-3 col-form-label">내용</label>
	                      					<div class="col-md-8 col-lg-9">
	                        					<textarea name="about" class="form-control" id="about" style="height: 100px">이준혁 개인 프로젝트 KOKOA BANK 관리자 페이지</textarea>
	                      					</div>
	                    				</div>
	                    				<div class="row mb-3">
	                      					<label for="gender" class="col-md-4 col-lg-3 col-form-label">성별</label>
	                      					<div class="col-md-8 col-lg-9">
	                        					<input name="gender" type="text" class="form-control" id="gender" value="남자">
	                     					</div>
	                    				</div>
	                    				<div class="row mb-3">
	                      					<label for="dob" class="col-md-4 col-lg-3 col-form-label">생년월일</label>
	                      					<div class="col-md-8 col-lg-9">
	                        					<input name="dob" type="text" class="form-control" id="dob" value="1991.02.10">
	                      					</div>
	                    				</div>
					                    <div class="row mb-3">
	                      					<label for="Country" class="col-md-4 col-lg-3 col-form-label">국적</label>
	                      					<div class="col-md-8 col-lg-9">
	                        					<input name="country" type="text" class="form-control" id="Country" value="대한민국">
	                      					</div>
	                   					</div>
	                    				<div class="row mb-3">
	                      					<label for="Address" class="col-md-4 col-lg-3 col-form-label">주소</label>
	                      					<div class="col-md-8 col-lg-9">
	                        					<input name="address" type="text" class="form-control" id="Address" value="경기도 김포시">
	                      					</div>
	                    				</div>
					                    <div class="row mb-3">
	               				      		<label for="Phone" class="col-md-4 col-lg-3 col-form-label">전화번호</label>
	                      					<div class="col-md-8 col-lg-9">
	                        					<input name="phone" type="text" class="form-control" id="Phone" value="010-1234-5678">
	                      					</div>
	                    				</div>
	                    				<div class="row mb-3">
	                      					<label for="Email" class="col-md-4 col-lg-3 col-form-label">이메일</label>
	                      					<div class="col-md-8 col-lg-9">
	                        					<input name="email" type="email" class="form-control" id="Email" value="example@exmple.com">
	                      					</div>
	                    				</div>
	                    				<div class="text-center">
	                      					<button type="submit" class="btn btn-outline-secondary">프로필 변경</button>
	                    				</div>
	                  				</form>
	                			</div>
	              			</div>
	            		</div>
	          		</div>
	        	</div>
	      	</div>
	    </section>
	</main>
	<%@ include file="footer.jsp" %>
</body>
</html>