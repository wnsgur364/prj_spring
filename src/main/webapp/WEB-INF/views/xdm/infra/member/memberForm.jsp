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
	<title>KOKOA BANK ADMIN</title>
	<%@ include file="../../../include/css.jsp" %>  
</head>
<body class="bg-theme bg-theme9">
<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../../../include/headerXdmView.jsp" %>
<div class="clearfix"></div>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="row mt-3">
				<div class="col-lg-12">
  					<div class="card">
           				<div class="card-body">
           					<div class="card-title">회원 수정</div>
       						<hr>
            				<form class="needs-validation" name="form" method="post" novalidate>
							    <div class="col-md-4 py-2">
								    <div class="form-floating">
								    	<label for="seq">Seq (Auto Increment)</label>
								        <input type="text" class="form-control" id="seq" name="seq" required readonly value="<c:out value="${item.seq}"/>" ${empty item.seq ? 'disabled' : ''}>
								        <div class="invalid-feedback"></div>
								    </div>
								</div>
							    <div class="col-md-4 py-2">
							        <div class="form-floating">
							        	<label for="id">아이디</label>
							            <input type="text" class="form-control" id="id" name="id" required value="<c:out value="${item.id}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
							    <div class="col-md-4 py-2">
							        <div class="form-floating">
							        	<label for="name">이름</label>
							            <input type="text" class="form-control" id="name" name="name" required value="<c:out value="${item.name}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
		   					    <div class="col-md-4 py-2">
							        <div class="form-floating">
							        	<label for="pw">비밀번호</label>
							            <input type="text" class="form-control" id="pw" name="pw" required value="<c:out value="${item.pw}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
		   					    <div class="col-md-4 py-2">
							        <div class="form-floating">
							        	<label for="email">이메일</label>
							            <input type="text" class="form-control" id="email" name="email" required value="<c:out value="${item.email}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
							    <div class="col-md-4 py-2">
							        <div class="form-floating">
							        	<label for="phone">전화번호</label>
							            <input type="text" class="form-control" id="phone" name="phone" required value="<c:out value="${item.phone}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
							    <div class="form-group">
							        <button type="button" class="btn btn-light" id="btnList" onclick="location.href='memberList'">목록</button>
					                <button type="button" class="btn btn-light" id="btnUpdate">저장</button>
					                <button type="button" class="btn btn-light" id="btnDeleteCheck" data-bs-toggle="modal" data-bs-target="#staticBackdrop">삭제</button>
							    </div>
							</form>
						</div>
         			</div>
      			</div>
    		</div><!--End Row-->

		<!--start overlay-->
		<div class="overlay toggle-menu"></div>
		<!--end overlay-->

	</div>
	<!-- End container-fluid-->
    
</div><!--End content-wrapper-->
<%@ include file="../../../include/modalBase.jsp" %>
<%@ include file="../../../include/footer.jsp" %>   
   
</div><!--End wrapper-->
<%@ include file="../../../include/script.jsp" %>
<script>

	var objId = $("#id");
	var objPw = $("#pw");
	var objName = $("#name");
	var objEmail = $("#email");
	var objPhone = $("#phone");

	validationUpdt = function() {
	    if (checkId(objId, "아이디는 영대소문자, 숫자, 특수문자(-_.)를 포함한 4~20자리만 입력 가능합니다.") === false) return false;
	    if (checkPw(objPw, "영대소문자,숫자,특수문자(!@#$%^&*),8~20자리 조합만 입력 가능합니다.") === false) return false;
	    if (checkName(objName, "이름은 한글만 입력 가능합니다.") === false) return false;
	    if (checkEmail(objEmail, "유효한 이메일 주소를 입력해주세요.") === false) return false;
	    if (checkPhone(objPhone, "전화번호는 숫자만 입력해주세요.") === false) return false;
	}

	// 업데이트버튼 클릭이벤트
	$("#btnUpdate").on("click", function(){
		if (validationUpdt() == false) return false;
		$("form[name=form]").attr("action","/memberUpdate").submit();
	});

	// 율리트버튼 클릭이벤트
	$("#btnDelete").on("click", function(){
		$("form[name=form]").attr("action","/memberUelete").submit();
	});

</script>
</body>
</html>