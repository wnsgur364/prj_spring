<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<%@ page import="com.mycompany.app.infra.modules.account.AccountNumberGenerator" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<meta name="description" content=""/>
	<meta name="author" content=""/>
	<title>KOKOA BANK</title>
	<!-- favicon -->
	<link rel="icon" href="/resources/assets/images/favicon/favicon.ico" type="image/x-icon" />
	<%@ include file="../../../include/css.jsp" %>  	
</head>
<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../../../include/headerUsrView.jsp" %>
<div class="clearfix"></div>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="row mt-3">
				<div class="col-lg-12">
  					<div class="card">
           				<div class="card-body">
           					<div class="card-title">계좌 생성</div>
       						<hr>
            				<form class="needs-validation" name="form" method="post" novalidate>
								<div class="col-md-4 py-2">
									<div class="form-floating">
										<label for="accountName" class="form-label">계좌이름</label>
				 						<input type="text" name="accountName" class="form-control" id="accountName" required>
				 						<div class="invalid-feedback">계좌이름을 입력해 주세요.</div>
			 						</div>
		 						</div>
	 						 	<div class="col-md-4 py-2">
							        <div class="form-floating">
							            <label for="accountNumber" class="form-label">계좌번호</label>
							            <%-- 계좌 번호 자동 생성 --%>
							            <input type="text" name="accountNumber" class="form-control" id="accountNumber"
							                value="<%= AccountNumberGenerator.generateAccountNumber() %>" required readonly>
							            <div class="invalid-feedback">계좌번호를 입력해 주세요.</div>
							        </div>
							    </div>
			   					<div class="col-md-4 py-2">
			   						<div class="form-floating">
			   							<label for="accountPassword" class="form-label">비밀번호</label>
										<input type="password" name="accountPassword" class="form-control" id="accountPassword" required>	
										<div class="invalid-feedback">비밀번호를 입력해 주세요.</div>
									</div>
			   					</div>
								<div class="col-md-4 py-2">
									<div class="form-floating">
										<label for="accountPasswordCheck" class="form-label">비밀번호 확인</label>
										<input type="password" name="accountPasswordCheck" class="form-control" id="accountPasswordCheck" required>
										<div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div>
									</div>
								</div>
								<div class="col-md-4 py-2">
								    <div class="form-floating">
								        <label for="defaultNy">대표계좌</label>
								        <select class="form-control" id="defaultNy" name="defaultNy" required>
								            <option value="0" <c:if test="${item.defaultNy eq '0'}">selected</c:if>>X</option>
								            <option value="1" <c:if test="${item.defaultNy eq '1'}">selected</c:if>>O</option>
								        </select>
								        <div class="invalid-feedback"></div>
								    </div>
								</div>
								<div class="col-md-4 py-2">
								    <div class="form-floating">
								    	<label for="member_seq">회원아이디</label>
									    <select class="form-control" id="member_seq" name="member_seq">
										    <c:forEach items="${member}" var="member" varStatus="status">
			   					                <option value="<c:out value='${member.seq}'></c:out>"
								                    <c:if test="${member.seq == item.member_seq}">selected</c:if>
								                >
								                    <c:out value="${member.id}"></c:out>
								                </option>
											</c:forEach>
										</select>
									</div>
	   					     	</div>
								<hr>
								<div class="form-group">
									<button class="btn btn-light" id="submitForm" type="button">확인</button>
					    			<button class="btn btn-light" type="button" onclick="location.href='accountUsrView'">취소</button>   		
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
	
	validationInst = function() {
		
		var objName = $("#accountName");
		var objPw = $("#accountPassword");
		var objPwCheck = $("#accountPasswordCheck");

		if (checkOnlyKoreanEnglishNumber(objName, "계좌이름은 이름은 한글, 영문대소문자, 숫자만 입력 가능합니다.") === false) return false;
		if (checkAccountPw(objPw, "계좌 비밀번호는 6자리 숫자로 입력해 주세요.") === false) return false;
	    if (checkAccountPwCheck(objPwCheck, "비밀번호가 일치하지 않습니다.") === false) return false;
	}

	// 인서트 버튼 클릭 이벤트
	$("#submitForm").on("click", function() {
	    if (validationInst() === false) return false;
	    $("form[name=form]").attr("action", "/accountAdd").submit();
	});

</script>
</body>
</html>