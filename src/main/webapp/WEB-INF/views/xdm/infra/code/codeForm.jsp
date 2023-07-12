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
</head>
<body>
	<%@ include file="../../../include/headerXdmView.jsp" %>
	<main id="main" class="main">
	    <div class="pagetitle">
      		<h1>codeForm</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">codeForm</li>
        		</ol>
      		</nav>
    	</div>
	    <div class="col-lg-12">
          	<div class="card">
            	<div class="card-body">
              		<h5 class="card-title">codeForm</h5>
              		<p>codeForm</p>
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
					            <input type="text" class="form-control" id="name" name="name" required value="<c:out value="${item.name}"/>">
					            <label for="floatingName">코드명</label>
					            <div class="invalid-feedback"></div>
					        </div>
					    </div>
						<div class="col-md-4">
						    <div class="form-floating">
						        <select class="form-select" name="codeGroup_seq">
						            <c:forEach items="${group}" var="group" varStatus="status">
						                <option value="<c:out value='${group.seq}'></c:out>"
						                    <c:if test="${group.seq == item.codeGroup_seq}">selected</c:if>
						                >
						                    <c:out value="${group.name}"></c:out>
						                </option>
						            </c:forEach>
						        </select>
						        <label for="floatingName">코드그룹명</label>
						    </div>
						</div>
					    <div class="d-flex justify-content-center">
					        <button type="button" class="btn btn-primary" id="btnList" onclick="location.href='codeList'">목록</button>
					        <c:choose>
					            <c:when test="${empty item.seq}">
					                <button type="button" class="btn btn-success" id="btnInsert">저장</button>
					            </c:when>
					            <c:otherwise>
					            	<button type="button" class="btn btn-danger" id="btnDeleteCheck" data-bs-toggle="modal" data-bs-target="#staticBackdrop">삭제</button>
					                <button type="button" class="btn btn-success" id="btnUpdate">저장</button>
					            </c:otherwise>
					        </c:choose>
					    </div>
					</form>
            	</div>
          	</div>
		</div>	
	</main>
  	<%@ include file="../../../include/modalBase.jsp" %>	
	<%@ include file="../../../include/footerXdmView.jsp" %>
	<script>
	
		var objName = $("#name");
		
		validationInst = function(){
			if(validationUpdt() == false) return false;
		}
	
		validationUpdt = function(){
			if (checkOnlyKoreanEnglishNumber(objName, "코드 이름은 한글, 영문대소문자, 숫자만 입력 가능합니다.") === false) return false;
		}
	
		// 업데이트버튼 클릭이벤트
		$("#btnUpdate").on("click", function(){
			if (validationUpdt() == false) return false;
			$("form[name=form]").attr("action","/codeUpdate").submit();
		});
	
		// 인서트버튼 클릭이벤트
		$("#btnInsert").on("click", function(){
			if (validationInst() == false) return false;
			$("form[name=form]").attr("action","/codeInsert").submit();
		});
	
		// 율리트버튼 클릭이벤트
		$("#btnDelete").on("click", function(){
			$("form[name=form]").attr("action","/codeUelete").submit();
		});
	
	</script>
</body>
</html>