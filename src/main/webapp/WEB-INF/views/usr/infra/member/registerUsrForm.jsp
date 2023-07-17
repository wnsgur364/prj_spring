<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="KO">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<meta name="description" content=""/>
	<meta name="author" content=""/>
	<title>KOKOA BANK REGISTER</title>
	<!-- favicon -->
	<link rel="icon" href="/resources/assets/images/favicon/favicon.ico" type="image/x-icon" />
	<%@ include file="../../../include/css.jsp" %>
</head>

<body class="bg-theme bg-theme9">

<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">
	<div class="card card-authentication1 mx-auto my-4">
		<div class="card-body">
		 	<div class="card-content p-2">
		 		<div class="text-center">
		 			<a href="indexUsrView"><img src="/resources/images/logo.png" alt="logo icon"></a>
		 		</div>
		  		<div class="card-title text-uppercase text-center py-3">KOKOA BANK REGISTER</div>
		    	<form class="needs-validation" name="form" method="post" novalidate>
			  		<div class="form-group">
			  			<label for="id" class="sr-only">아이디</label>
		   				<div class="position-relative has-icon-right">
			  				<input type="text" id="id" name="id" class="form-control input-shadow" placeholder="Enter Your Id" required>
			  				<div class="form-control-position"><i class="icon-user"></i></div>
			  				<div class="invalid-feedback"></div>
		   				</div>
		  			</div>
			  		<div class="form-group">
			  			<label for="pw" class="sr-only">비밀번호</label>
			   			<div class="position-relative has-icon-right">
					  		<input type="password" id="pw" name="pw" class="form-control input-shadow" placeholder="Enter Your Password" required>
					  		<div class="form-control-position"><i class="icon-lock"></i></div>
					  		<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
			  		<div class="form-group">
			   			<label for="pwCheck" class="sr-only">비밀번호 확인</label>
			   			<div class="position-relative has-icon-right">
				  			<input type="password" id="pwCheck" name="pwCheck" class="form-control input-shadow" placeholder="Enter Your Password Check" required>
				  			<div class="form-control-position"><i class="icon-lock"></i></div>
				  			<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
  			  		<div class="form-group">
			   			<label for="name" class="sr-only">이름</label>
		   				<div class="position-relative has-icon-right">
				  			<input type="text" id="name" name="name" class="form-control input-shadow" placeholder="Enter Your Name" required>
				  			<div class="form-control-position"><i class="icon-user"></i></div>
				  			<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
		  			<div class="form-group">
			   			<label for="email" class="sr-only">이메일</label>
			   			<div class="position-relative has-icon-right">
				  			<input type="text" id="email" name="email" class="form-control input-shadow" placeholder="Enter Your Email" required>
				  			<div class="form-control-position"><i class="icon-envelope-open"></i></div>
				  			<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
  			  		<div class="form-group">
			   			<label for="phone" class="sr-only">전화번호</label>
		   				<div class="position-relative has-icon-right">
				  			<input type="text" id="phone" name="phone" class="form-control input-shadow" placeholder="Enter Your Phone" required>
				  			<div class="form-control-position"><i class="icon-phone"></i></div>
				  			<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
			   		<div class="form-group">
			     		<div class="icheck-material-white">
                   			<input type="checkbox" id="user-checkbox" checked="" />
                   			<label for="user-checkbox">I Agree With Terms & Conditions</label>
			     		</div>
		    		</div>
			 		<button type="button" id="submitForm" class="btn btn-light btn-block waves-effect waves-light">회원가입</button>
			  		<div class="text-center mt-3">Sign Up With</div>
			 		<div class="form-row mt-4">
			  			<div class="form-group mb-0 col-6">
			   				<button type="button" class="btn btn-light btn-block"><i class="fa fa-facebook-square"></i> Facebook</button>
			 			</div>
			 			<div class="form-group mb-0 col-6 text-right">
			  				<button type="button" class="btn btn-light btn-block"><i class="fa fa-twitter-square"></i> Twitter</button>
			 			</div>
					</div>
				</form>
			</div>
		</div>
		<div class="card-footer text-center py-3">
			<p class="text-warning mb-0">Already have an account? <a href="loginUsrForm">Sign In here</a></p>
		</div>
	</div>
    
	<!--Start Back To Top Button-->
	<a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
	<!--End Back To Top Button-->
	
</div><!--wrapper-->
<%@ include file="../../../include/script.jsp" %> 
<script>
	
	var objId = $("#id");
	var objPw = $("#pw");
	var objPwCheck = $("#pwCheck");
	var objName = $("#name");
	var objEmail = $("#email");
	var objPhone = $("#phone");
	
	validationInst = function() {

	    if (checkId(objId, "아이디는 영대소문자, 숫자, 특수문자(-_.)를 포함한 4~20자리만 입력 가능합니다.") === false) return false;
	    if (checkPw(objPw, "영대소문자,숫자,특수문자(!@#$%^&*),8~20자리 조합만 입력 가능합니다.") === false) return false;
	    if (checkPwCheck(objPwCheck, "비밀번호가 일치하지 않습니다.") === false) return false;
	    if (checkName(objName, "이름은 한글만 입력 가능합니다.") === false) return false;
	    if (checkEmail(objEmail, "유효한 이메일 주소를 입력해주세요.") === false) return false;
	    if (checkPhone(objPhone, "전화번호는 숫자만 입력해주세요.") === false) return false;
	}

	// 인서트 버튼 클릭 이벤트
	$("#submitForm").on("click", function() {
	    if (validationInst() === false) return false;
	    $("form[name=form]").attr("action", "/registerInsert").submit();
	});

	// 회원가입 아이디 중복체크
	objId.on("blur", function() {

	    // AJAX 요청 수행
	    $.ajax({
	        async: true,
	        cache: false,
	        type: "post",
	        url: "/checkIdProc",
	        data: { "id": objId },
	        success: function(response) {
	            if (response.rt === "available") {
	                obj.removeClass("is-invalid");
	                obj.addClass("is-valid");
	                obj.siblings(".invalid-feedback").text("사용 가능합니다.");
	            } else {
	                obj.removeClass("is-valid");
	                obj.addClass("is-invalid");
	                obj.focus();
	                obj.siblings(".invalid-feedback").text("사용 불가능한 아이디입니다.");
	            }
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            alert("ajaxUpdate " + textStatus + " : " + errorThrown);
	        }
	    });
	});



</script>
</body>
</html>
