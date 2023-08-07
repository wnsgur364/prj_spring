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
			<div class="row">
	 			<div class="col-lg-12">
	   				<div class="card">
	     				<div class="card-header">계좌조회</div>
	       				<div class="table align-items-center table-flush table-borderless">
	       					<form name=formList method="post">
								<div class="d-flex py-3">
									<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
									<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
									<div class="col-6 d-flex">
										<select class="form-control" id="account_seq" name="account_seq" onchange="loadAccountAndTransactions()">
								            <c:forEach items="${group}" var="group" varStatus="status">
								                <option value="<c:out value='${group.seq}'></c:out>"
								                    <c:if test="${group.seq == item.account_seq}">selected</c:if>
								                >
								                    <c:out value="${group.accountNumber}"></c:out>
								                </option>
								            </c:forEach>
								        </select>
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
		               			<table class="table align-items-center table-flush table-borderless" id="">	
									<thead>
										<tr>
											<th>순서</th>
											<th>날짜</th>
											<th>출금계좌</th>
								      		<th>내용</th>
								      		<th>금액</th>
								      		<th>입·출금</th>
								      		<th>잔액</th>
								      		<th>받는계좌</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="listCodeTrCategory" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
									    <c:choose>
									        <c:when test="${fn:length(list) eq 0}">
									            <tr>
									                <td colspan="6">통장의 거래내역이 없습니다.</td>
									            </tr>
									        </c:when>
									        <c:otherwise>
												<c:forEach items="${list}" var="list" varStatus="loop">
						                       		<tr>
											            <td>${loop.count}</td>
											            <td>${list.date}</td>
											            <td>${list.accountNumber}</td>
											            <td>${list.contents}</td>
											            <td>
											                <c:choose>
											                    <c:when test="${list.defaultNy eq 6}">
											                        <font color="blue">+<fmt:formatNumber value="${list.balance}" pattern="#,###"></fmt:formatNumber></font>
											                    </c:when>
											                    <c:otherwise>
											                        <font color="red">-<fmt:formatNumber value="${list.balance}" pattern="#,###"></fmt:formatNumber></font>
											                    </c:otherwise>
											                </c:choose>
											            </td>
											            <td>
											                <c:forEach items="${listCodeTrCategory}" var="listTrCategory" varStatus="statusTrCategory">
											                    <c:if test="${list.defaultNy eq listTrCategory.seq}">
											                        <c:out value="${listTrCategory.name}" />
											                    </c:if>
											                </c:forEach>
											            </td>
											            <td><fmt:formatNumber value="${list.remainingBalance}" pattern="#,###"></fmt:formatNumber></td>
											            <td>${list.recipientAccountNumber}</td>
											        </tr>
											    </c:forEach>
									        </c:otherwise>
									    </c:choose>
									</tbody>
								</table>
								<br>
		               			<%@ include file="../../../include/pagination.jsp" %> 
		               			<br>
		               			<div class="form-group d-flex justify-content-center">
									<button type="button" class="btn btn-light" onclick="location.href='accountAddUsrView'">계좌 추가</button>
									<button type="button" class="btn btn-light" id="btnDeleteCheck" data-toggle="modal" data-target="#staticModal" data-backdrop="static">계좌 삭제</button>
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
<%@ include file="../../../include/modalBase.jsp" %>
<%@ include file="../../../include/footer.jsp" %>  
</div><!--End wrapper-->
<%@ include file="../../../include/script.jsp" %> 
<script>
	
	// 페이지네이션 
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		$("form[name=formList]").attr("action", "accountUsrView").submit();
	}
	
	// 서치버튼 클릭이벤트
	$("#btnSearch").on("click", function(){
		$("form[name=formList]").attr("action","/accountUsrView").submit();
	});
	
</script> 
</body>
</html>