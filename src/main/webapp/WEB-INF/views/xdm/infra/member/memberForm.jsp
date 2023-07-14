<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<title>KOKOA BANK ADMIN</title>
	<%@ include file="../../../include/css.jsp" %>
</head>
<body>
	<%@ include file="../../../include/headerXdmView.jsp" %>
	<main id="main" class="main">
	    <div class="pagetitle">
      		<h1>memberForm</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">memberForm</li>
        		</ol>
      		</nav>
    	</div>
	    <div class="col-lg-12">
          	<div class="card">
            	<div class="card-body">
              		<h5 class="card-title">memberForm</h5>
              		<p>memberForm</p>
              		<form class="row g-3 needs-validation" name="form" method="post" novalidate>
					    <div class="col-md-4">
						    <div class="form-floating">
						        <input type="text" class="form-control" id="seq" name="seq" required readonly value="<c:out value="${item.seq}"/>" ${empty item.seq ? 'disabled' : ''}>
						        <label for="floatingName">seq (unable to input)</label>
						        <div class="invalid-feedback"></div>
						    </div>
						</div>
					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="id" name="id" required value="<c:out value="${item.id}"/>">
					            <label for="floatingName">아이디</label>
					            <div class="invalid-feedback"></div>
					        </div>
					    </div>
					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="name" name="name" required value="<c:out value="${item.name}"/>">
					            <label for="floatingName">이름</label>
					            <div class="invalid-feedback"></div>
					        </div>
					    </div>
   					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="pw" name="pw" required value="<c:out value="${item.pw}"/>">
					            <label for="floatingName">비밀번호</label>
					            <div class="invalid-feedback"></div>
					        </div>
					    </div>
   					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="email" name="email" required value="<c:out value="${item.email}"/>">
					            <label for="floatingName">이메일</label>
					            <div class="invalid-feedback"></div>
					        </div>
					    </div>
					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="phone" name="phone" required value="<c:out value="${item.phone}"/>">
					            <label for="floatingName">전화번호</label>
					            <div class="invalid-feedback"></div>
					        </div>
					    </div>
					    <div class="d-flex justify-content-center">
					        <button type="button" class="btn btn-primary" id="btnList" onclick="location.href='memberList'">목록</button>
			            	<button type="button" class="btn btn-danger" id="btnDeleteCheck" data-bs-toggle="modal" data-bs-target="#staticBackdrop">삭제</button>
			                <button type="button" class="btn btn-success" id="btnUpdate">저장</button>
					    </div>
					</form>
            	</div>
          	</div>
		</div>	
	</main>
	<%@ include file="../../../include/modalBase.jsp" %>
	<%@ include file="../../../include/footer.jsp" %>
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