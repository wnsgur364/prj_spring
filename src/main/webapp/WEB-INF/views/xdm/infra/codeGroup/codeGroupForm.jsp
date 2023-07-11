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
      		<h1>codeGroupForm</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">codeGroupForm</li>
        		</ol>
      		</nav>
    	</div>
	    <div class="col-lg-12">
          	<div class="card">
            	<div class="card-body">
              		<h5 class="card-title">codeGroupForm</h5>
              		<p>codeGroupForm</p>
              		<form class="row g-3 needs-validation" name="form" method="post" novalidate>
					    <div class="col-md-4">
						    <div class="form-floating">
						        <input type="text" class="form-control" id="seq" name="seq" required readonly value="<c:out value="${item.seq}"/>" ${empty item.seq ? 'disabled' : ''}>
						        <label for="floatingName">seq (unable to input)</label>
						        <div class="invalid-feedback">
						            Looks good!
						        </div>
						    </div>
						</div>
					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="name" name="name" required value="<c:out value="${item.name}"/>">
					            <label for="floatingName">name</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="gender" name="gender" required value="<c:out value="${item.gender}"/>">
					            <label for="floatingName">gender</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
					    <div class="d-flex justify-content-center">
					        <button type="button" class="btn btn-primary" id="btnList" onclick="location.href='codeGroupList'">List</button>
					        <c:choose>
					            <c:when test="${empty item.seq}">
					                <button type="button" class="btn btn-success" id="btnInsert">Insert</button>
					            </c:when>
					            <c:otherwise>
					            	<button type="button" class="btn btn-danger" id="btnDeleteCheck" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Delete</button>
					                <button type="button" class="btn btn-success" id="btnUpdate">Update</button>
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
	
		var objName = $("#gender");
		
		validationInst = function(){
			if(validationUpdt() == false) return false;
		}
	
		validationUpdt = function(){
			if(checkOnlyNum(objName) == false) return false;
		}
	
		// 업데이트버튼 클릭이벤트
		$("#btnUpdate").on("click", function(){
			if (validationUpdt() == false) return false;
			$("form[name=form]").attr("action","/codeGroupUpdate").submit();
		});
	
		// 인서트버튼 클릭이벤트
		$("#btnInsert").on("click", function(){
			if (validationInst() == false) return false;
			$("form[name=form]").attr("action","/codeGroupInsert").submit();
		});
	
		// 율리트버튼 클릭이벤트
		$("#btnDelete").on("click", function(){
			$("form[name=form]").attr("action","/codeGroupUelete").submit();
		});
	
	</script>
</body>
</html>