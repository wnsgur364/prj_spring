<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>KOKOA BANK LOGIN</title>
    <!-- 부트스트랩 -->
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Template Main CSS File -->
	<link href="/resources/usr/usr.css" rel="stylesheet">
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
                  					<!-- <img src="" alt=""> -->
                  					<span class="d-none d-lg-block">KOKOA BANK ADMIN</span>
                				</a>
              				</div>
              				<div class="card mb-3">
                				<div class="card-body">
                  					<div class="pt-4 pb-2">
                    					<h5 class="card-title text-center pb-0 fs-4">로그인</h5>
                    					<p class="text-center small">아이디와 비밀번호를 입력 후 로그인해 주세요.</p>
                  					</div>
                  					<form class="row g-3 needs-validation" name="form" method="post" novalidate>
                   						<div class="col-12">
                      						<label for="id" class="form-label">아이디</label>
                      						<input type="text" id="id" name="id" class="form-control" required value="test333">
                       						<div class="invalid-feedback"></div>
                   						</div>
                    					<div class="col-12">
                      						<label for="pw" class="form-label">비밀번호</label>
                      						<input type="password" id="pw" name="pw" class="form-control" required value="Ezen0508!">
                      						<div class="invalid-feedback"></div>
                    					</div>
                   						<div class="col-12 d-flex">
                      						<button class="btn btn-outline-secondary w-100" id="btnLogin" type="button">로그인</button>
                    					</div>
                    					<div class="col-12">
                      						<p class="small mb-0">아이디가 없으신가요? <a href="registerUsrForm">회원가입</a></p>
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
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<script src="/resources/js/validation.js"></script>
	<script>
		
		$("#btnLogin").on("click", function(){
			
			if(validation() == false) return false;
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/loginProc"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val(),
					"pw" : $("#pw").val()}
				,success: function(response) {
					if(response.rt == "success") {
						alert(response.rtMember.name);
						location.href = "/indexXdmView";
					} else {
						alert("그런 회원 없습니다.");
						$("#pw").val("");
						$("#pw").focus();
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		
		var objId = $("#id");
		var objPw = $("#pw");
	
		validation = function() {
		    if (checkId(objId, "올바른 아이디를 입력해주세요.") === false) return false;
		    if (checkPw(objPw, "올바른 비밀번호를 입력해주세요.") === false) return false;
		}
		
	</script>
</body>
</html>