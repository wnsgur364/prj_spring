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
           					<div class="card-title">무통장입금</div>
       						<hr>
            				<form class="needs-validation" name="form" method="post" novalidate>
								<div class="col-md-4 py-2">
								    <div class="form-floating">
								    	<label for="accountNumber">입금계좌</label>
									    <select class="form-control" id="account_seq" name="account_seq">
										    <c:forEach items="${group}" var="group" varStatus="status">
			   					                <option value="<c:out value='${group.seq}'></c:out>"
								                    <c:if test="${group.seq == item.account_seq}">selected</c:if>
								                >
								                    <c:out value="${group.accountNumber}"></c:out>
								                </option>
											</c:forEach>
										</select>
									</div>
						     	</div>
								<div class="col-md-4 py-2">
							        <div class="form-floating">
							        	<label for="balance">금액</label>	
							            <input type="text" class="form-control" id="balance" name="balance" required>
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
								<div class="col-md-4 py-2">
							        <div class="form-floating">
							       		<label for="contents">내용</label>
							            <input type="text" class="form-control" id="contents" name="contents" required value="<c:out value="${item.contents}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
   								<div class="col-md-4 py-2">
							        <div class="form-floating">
							            <label for="accountPassword">계좌비밀번호</label>
							            <input type="password" class="form-control" id="accountPassword" name="accountPassword" required value="123456">
							            <div class="invalid-feedback"></div>
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

	var objBalance = $("#balance");
	var objContents = $("#contents");
	var objAccountPw = $("#accountPassword");
	
	validationInst = function(){
		if (checkOnlyNum(objBalance, "금액은 숫자만 입력해 주세요.") === false) return false;
		if (checkContents(objContents, "내용을 입력해 주세요.") === false) return false;
		if (checkAccountPw(objAccountPw, "비밀번호는 숫자 6자리 입니다.") === false) return false;
	}
	
	//인서트버튼 클릭이벤트
	$("#submitForm").on("click", function(){
		if (validationInst() === false) return false;
		$("form[name=form]").attr("action","/depositInsert").submit();
	});

</script>
</body>
</html>