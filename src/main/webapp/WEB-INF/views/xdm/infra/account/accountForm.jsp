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
<%@ include file="../../../include/headerXdmView.jsp" %>
<div class="clearfix"></div>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="row mt-3">
				<div class="col-lg-12">
  					<div class="card">
           				<div class="card-body">
           					<div class="card-title">계좌 수정</div>
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
										<label for="defaultNy">대표계좌</label>
							            <input type="text" class="form-control" id="defaultNy" name="defaultNy" required value="<c:out value="${item.defaultNy}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
		   					    <div class="col-md-4 py-2">
							        <div class="form-floating">
										<label for="accountNumber">계좌번호</label>
							            <input type="text" class="form-control" id="accountNumber" name="accountNumber" required value="<c:out value="${item.accountNumber}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
		   					    <div class="col-md-4 py-2">
							        <div class="form-floating">
							            <label for="accountName">계좌이름</label>
							            <input type="text" class="form-control" id="accountName" name="accountName" required value="<c:out value="${item.accountName}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
		   					    <div class="col-md-4 py-2">
							        <div class="form-floating">
							            <label for="accountPassword">계좌비밀번호</label>
							            <input type="text" class="form-control" id="accountPassword" name="accountPassword" required value="<c:out value="${item.accountPassword}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
		   					    <div class="col-md-4 py-2">
							        <div class="form-floating">
							            <label for="accountBalance">계좌잔액</label>
							            <input type="text" class="form-control" id="accountBalance" name="accountBalance" required value="<c:out value="${item.accountBalance}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
						    	<div class="col-md-4 py-2">
								    <div class="form-floating">
								    	<label for="member_seq">회원아이디</label>
									    <select class="form-control" id="member_seq" name="member_seq">
										    <c:forEach items="${group}" var="group" varStatus="status">
			   					                <option value="<c:out value='${group.seq}'></c:out>"
								                    <c:if test="${group.seq == item.member_seq}">selected</c:if>
								                >
								                    <c:out value="${group.id}"></c:out>
								                </option>
											</c:forEach>
										</select>
									</div>
	   					     	</div>
								<hr>
								<div class="form-group d-flex justify-content-center">
							        <button type="button" class="btn btn-light" id="btnList" onclick="location.href='accountList'">목록</button>
							        <c:choose>
							            <c:when test="${empty item.seq}">
							                <button type="button" class="btn btn-light" id="btnInsert">저장</button>
							            </c:when>
							            <c:otherwise>
							                <button type="button" class="btn btn-light" id="btnUpdate">저장</button>
											<button type="button" class="btn btn-light" id="btnDeleteCheck" data-toggle="modal" data-target="#staticModal" data-backdrop="static">삭제</button>
							            </c:otherwise>
							        </c:choose>
							    </div>
							    <%@ include file="../../../include/modalBase.jsp" %>
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
<%@ include file="../../../include/footer.jsp" %>   
</div><!--End wrapper-->
<%@ include file="../../../include/script.jsp" %>
<script>
	
	
	
	
	
	
	
	
	// 업데이트버튼 클릭이벤트
	$("#btnUpdate").on("click", function(){
		$("form[name=form]").attr("action","/accountUpdate").submit();
	});

	// 인서트버튼 클릭이벤트
	$("#btnInsert").on("click", function(){
		$("form[name=form]").attr("action","/accountInsert").submit();
	});
	
	// 율리트버튼 클릭이벤트
	$("#btnDelete").on("click", function(){
		$("form[name=form]").attr("action","/accountUelete").submit();
	});
	
</script>
</body>
</html>