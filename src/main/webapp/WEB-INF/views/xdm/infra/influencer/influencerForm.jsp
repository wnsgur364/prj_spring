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
      		<h1>accountForm</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">accountForm</li>
        		</ol>
      		</nav>
    	</div>
	    <div class="col-lg-12">
          	<div class="card">
            	<div class="card-body">
              		<h5 class="card-title">accountForm</h5>
              		<p>accountForm</p>
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
					            <input type="text" class="form-control" id="defaultNy" name="defaultNy" required value="<c:out value="${item.defaultNy}"/>">
					            <label for="floatingName">defaultNy</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
   					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="accountNumber" name="accountNumber" required value="<c:out value="${item.accountNumber}"/>">
					            <label for="floatingName">accountNumber</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
   					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="accountName" name="accountName" required value="<c:out value="${item.accountName}"/>">
					            <label for="floatingName">accountName</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
   					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="accountPassword" name="accountPassword" required value="<c:out value="${item.accountPassword}"/>">
					            <label for="floatingName">accountPassword</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
   					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="accountBalance" name="accountBalance" required value="<c:out value="${item.accountBalance}"/>">
					            <label for="floatingName">accountBalance</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
					    <div class="col-md-4">
						    <div class="form-floating">
							    <select class="form-select" name="member_seq">
								    <c:forEach items="${group}" var="group" varStatus="status">
									    <option value="<c:out value='${group.seq}'></c:out>"><c:out value="${group.seq}"></c:out></option>
									</c:forEach>
								</select>
								<label for="floatingName">member_seq</label>
							</div>
   					     </div>
					    <div class="d-flex justify-content-center">
					        <button type="button" class="btn btn-primary" id="btnList" onclick="location.href='accountList'">List</button>
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