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
      		<h1>transactionForm</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">transactionForm</li>
        		</ol>
      		</nav>
    	</div>
	    <div class="col-lg-12">
          	<div class="card">
            	<div class="card-body">
              		<h5 class="card-title">transactionForm</h5>
              		<p>transactionForm</p>
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
					            <input type="text" class="form-control" id="recipientAccountNumber" name="recipientAccountNumber" required value="<c:out value="${item.recipientAccountNumber}"/>">
					            <label for="floatingName">recipientAccountNumber</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
   					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="balance" name="balance" required value="<c:out value="${item.balance}"/>">
					            <label for="floatingName">balance</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
						<%-- 					    
					     <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="date" name="date" required value="<c:out value="${item.date}"/>">
					            <label for="floatingName">date</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
					     --%>
   					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="contents" name="contents" required value="<c:out value="${item.contents}"/>">
					            <label for="floatingName">contents</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
						<%-- 					    
   					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="dateStart" name="dateStart" required value="<c:out value="${item.dateStart}"/>">
					            <label for="floatingName">dateStart</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
   					    <div class="col-md-4">
					        <div class="form-floating">
					            <input type="text" class="form-control" id="dateFinish" name="dateFinish" required value="<c:out value="${item.dateFinish}"/>">
					            <label for="floatingName">dateFinish</label>
					            <div class="invalid-feedback">
					                Looks good!
					            </div>
					        </div>
					    </div>
					     --%>
					    <div class="col-md-4">
						    <div class="form-floating">
							    <select class="form-select" name="account_seq">
								    <c:forEach items="${group}" var="group" varStatus="status">
									    <option value="<c:out value='${group.seq}'></c:out>"><c:out value="${group.seq}"></c:out></option>
									</c:forEach>
								</select>
								<label for="floatingName">account_seq</label>
							</div>
   					     </div>
					    <div class="d-flex justify-content-center">
					        <button type="button" class="btn btn-primary" id="btnList" onclick="location.href='transactionList'">List</button>
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
			
			$("form[name=form]").attr("action","/transactionUpdate").submit();
			
		});
	
		// 인서트버튼 클릭이벤트
		$("#btnInsert").on("click", function(){
			
			$("form[name=form]").attr("action","/transactionInsert").submit();
			
		});
	
		// 율리트버튼 클릭이벤트
		$("#btnDelete").on("click", function(){
			
			$("form[name=form]").attr("action","/transactionUelete").submit();
			
		});
	
	</script>
</body>
</html>