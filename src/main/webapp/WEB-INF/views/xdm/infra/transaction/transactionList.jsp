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
<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../../../include/headerXdmView.jsp" %>
	<div class="clearfix"></div>
	<div class="content-wrapper">
  		<div class="container-fluid">
			<div class="row">
	 		<div class="col-12 col-lg-12">
	   			<div class="card">
	     			<div class="card-header">거래 목록</div>
	       			<div class="table align-items-center table-flush table-borderless">
	       				<form name=formList method="post">
	       					<div class="d-flex py-3">
								<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
								<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
								<div class="col-4 d-flex">
			    					<select id="shOption" class="form-control" name="shOption">
						                <option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
						                <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>출금계좌</option>
						                <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>받는계좌</option>
						                <option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>금액</option>
						                <option value="4" <c:if test="${vo.shOption eq 4}">selected</c:if>>거래일</option>
			    					</select>
			    					<input type="text" class="form-control" placeholder="검색어" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>">
									<button type="button" class="btn btn-light" id="btnSearch"><i class="fa-solid fa-magnifying-glass"></i></button>
								</div>
							</div>
               				<table class="table align-items-center table-flush table-borderless">	
								<thead>
									<tr>
										<th>
											<input type="checkbox" name="checked" id="allCheck" value="">
										</th>
										<th>seq</th>
										<th>거래유형</th>
										<th>출금계좌</th>
										<th>받는계좌</th>
										<th>거래금액</th>
										<th>거래후잔액</th>
										<th>거래일</th>
										<th>내용</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="listCodeTrCategory" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
									<c:choose>
										<c:when test="${fn:length(list) eq 0}">
											<tr>
												<td>데이터가 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="list" >
												<tr>
													<td>
														<input type="checkbox" name="checked" value="">
													</td>
													<td><c:out value="${list.seq}"></c:out></td>
													<td>
													 	<c:forEach items="${listCodeTrCategory}" var="listTrCategory" varStatus="statusTrCategory">
															<c:if test="${list.defaultNy eq listTrCategory.seq}">
																<c:out value="${listTrCategory.name}"/>
															</c:if>
														</c:forEach>
													</td>
													<td><c:out value="${list.accountNumber}"></c:out></td>
													<td><c:out value="${list.recipientAccountNumber}"></c:out></td>
													<td><fmt:formatNumber value="${list.balance}" pattern="#,###"></fmt:formatNumber></td>
													<td><fmt:formatNumber value="${list.accountBalance}" pattern="#,###"></fmt:formatNumber></td>
													<td><c:out value="${list.date}"></c:out></td>
													<td><c:out value="${list.contents}"></c:out></td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>	
								</tbody>
							</table>
							<br>
	               			<%@ include file="../../../include/pagination.jsp" %> 
	               			<br>
<!-- 							<div class="d-flex justify-content-center"> -->
<!-- 								<button type="button" class="btn btn-light" onclick="location.href='transactionForm'">추가</button> -->
<!-- 								<button type="button" class="btn btn-light" id="btnModification">수정</button> -->
<!-- 							</div> -->
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
  		
  		
	// 서치버튼 클릭이벤트
	$("#btnSearch").on("click", function(){
		
		$("form[name=formList]").attr("action","/transactionList").submit();
		
	});
	
	$("#btnModification").click(function() {
		// 체크된 체크박스를 배열로 저장
		var checkedItems = [];
		$("input[name='checked']:checked").each(function() {
			checkedItems.push($(this).closest("tr").find("td:eq(1)").text()); // seq 값 가져오기
		});

		// 수정 폼으로 데이터 전달
		if (checkedItems.length > 0) {
			var url = "transactionForm?seq=" + checkedItems.join(",");
			location.href = url;
		}
		
	    // 체크박스 해제
	    $("input[name='checked']").prop('checked', false);
	});
	
	// 페이지네이션 
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		$("form[name=formList]").attr("action", "transactionList").submit();
	}
	
	// 체크박스 올 체크
	$(document).ready(function() {
		$('#allCheck').click(function() {
		    $('input[name="checked"]').prop('checked', this.checked);
	  	});
	
	  	$('input[name="checked"]').click(function() {
	    	if (!$(this).is(':checked')) {
   		  		$('#allCheck').prop('checked', false);
	    	}
	  	});
	});
		
</script>
</body>
</html>