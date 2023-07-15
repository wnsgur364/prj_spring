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
	<%@ include file="../../../include/css.jsp" %>  	
</head>
<body class="bg-theme bg-theme9">
<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../../../include/headerUsrView.jsp" %>
	<div class="clearfix"></div>
	<div class="content-wrapper">
  		<div class="container-fluid">
			<div class="row">
	 			<div class="col-lg-12">
	   				<div class="card">
	     				<div class="card-header">통장 이름</div>
	       				<div class="table align-items-center table-flush table-borderless">
	       					<form name=formList method="post">
								<div class="d-flex py-3">
									<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
									<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
									<div class="col-4 d-flex">
				    					<select id="shOption" class="form-control" name="shOption">
							                <option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색기간</option>
							                <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>1주일</option>
							                <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>1달</option>
							                <option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>3달</option>
				    					</select>
				    					<input type="text" class="form-control" placeholder="검색어" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>">
										<button type="button" class="btn btn-light" id="btnSearch"><i class="fa-solid fa-magnifying-glass"></i></button>
									</div>
								</div>
		               			<table class="table align-items-center table-flush table-borderless">	
									<thead>
										<tr>
											<th>순서</th>
											<th>날짜</th>
								      		<th>내용</th>
								      		<th>금액</th>
								      		<th>입·출금</th>
								      		<th>잔액</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
								      		<td>2023-06-15</td>
								      		<td>순대국</td>
								      		<td>5,000</td>
								      		<td>출금</td>
								      		<td>500,000</td>
										</tr>
									</tbody>
								</table>
								<br>
		               			<%@ include file="../../../include/pagination.jsp" %> 
		               			<br>
		               			<div class="form-group d-flex justify-content-center">
									<button type="button" class="btn btn-light" onclick="location.href='accountAddUsrView'">계좌 추가</button>
									<button type="button" class="btn btn-light" id="btnDeleteCheck" data-bs-toggle="modal" data-bs-target="#staticBackdrop">계좌 삭제</button>
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
	
	// 페이지네이션 
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		$("form[name=formList]").attr("action", "accountList").submit();
	}
	
</script> 
</body>
</html>