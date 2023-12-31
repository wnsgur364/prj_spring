<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<meta name="description" content=""/>
	<meta name="author" content=""/>
	<title>KOKOA BANK LOGIN</title>
	<!-- favicon -->
	<link rel="icon" href="/resources/assets/images/favicon/favicon.ico" type="image/x-icon" />
	<%@ include file="../../../include/css.jsp" %>
</head>
<body class="bg-theme bg-theme2">
<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->
<!-- Start wrapper-->
<div id="wrapper">
 	<div class="loader-wrapper"><div class="lds-ring"><div></div><div></div><div></div><div></div></div></div>
	<div class="card card-authentication1 mx-auto my-5">
		<div class="card-body">
	 		<div class="card-content p-2">
	 			<div class="text-center">
	 				<a href="indexUsrView"><img src="/resources/images/logo.png" alt="logo icon"></a>
	 			</div>
	  			<div class="card-title text-uppercase text-center py-3">KOKOA BANK</div>
		    	<form class="needs-validation" name="form" method="post" novalidate>
				  	<div class="form-group">
				  		<label for="id" class="sr-only">아이디</label>
			   			<div class="position-relative has-icon-right">
				  			<input type="text" id="id" name="id" class="form-control input-shadow" placeholder="Enter Userid" required value="user">
				  			<div class="form-control-position"><i class="icon-user"></i></div>
			   				<div class="invalid-feedback"></div>
			   			</div>
				  	</div>
				  	<div class="form-group">
				  		<label for="pw" class="sr-only">비밀번호</label>
			   			<div class="position-relative has-icon-right">
				  			<input type="password" id="pw" name="pw" class="form-control input-shadow" placeholder="Enter Password" required value="Admin0508!">
				  			<div class="form-control-position"><i class="icon-lock"></i></div>
			   				<div class="invalid-feedback"></div>
			   			</div>
				  	</div>
					<div class="form-row">
				 		<div class="form-group col-6">
				   			<div class="icheck-material-white">
	                			<input type="checkbox" id="user-checkbox" checked="" />
	                			<label for="user-checkbox">아이디 저장</label>
			  				</div>
			 			</div>
					</div>
				 	<button type="button" id="btnLogin" class="btn btn-light btn-block">로그인</button>
				</form>
			</div>
		</div>
		<div class="card-footer text-center py-3">
			<p class="text-warning mb-0">아이디가 없으신가요? <a href="registerUsrForm">회원가입</a></p>
		</div>
	</div>
<!--Start Back To Top Button-->
<a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
<!--End Back To Top Button-->
</div><!--wrapper-->
<%@ include file="../../../include/script.jsp" %> 
<script src="/resources/js/validation.js"></script>
<script>

	var objId = $("#id");
	var objPw = $("#pw");
	
	validation = function() {
	    if (checkId(objId, "올바른 아이디를 입력해주세요.") === false) return false;
	    if (checkPw(objPw, "올바른 비밀번호를 입력해주세요.") === false) return false;
	}
	
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
					location.href = "/indexUsrView";
				} else {
					alert("아이디와 비밀번호를 확인해주세요.");
					$("#pw").val("");
					$("#pw").focus();
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
</script>	
</body>
</html>
