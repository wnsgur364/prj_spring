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
      		<h1>accountList</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">accountList</li>
        		</ol>
      		</nav>
    	</div>
	    <section class="section">
			<form name=formList method="post">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body py-5">
								<div class="d-flex">
									<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
									<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
									<div class="col-2">
				    					<select id="shOption" class="form-select" name="shOption">
							                <option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
							                <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>계좌번호</option>
							                <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>계좌명</option>
							                <option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>아이디</option>
							                <option value="4" <c:if test="${vo.shOption eq 4}">selected</c:if>>이름</option>
				    					</select>
				  					</div>
				  					<div class="col-2">
				    					<input type="text" class="form-control" placeholder="검색어" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>">
				  					</div>  
				  					<div class="col-1">
										<button type="submit" class="btn btn-dark" id="btnSearch">
											<i class="bi bi-search"></i>
										</button>
									</div>
								</div>
								<div class="d-flex">
									<div class="col-2">
				    					<select class="form-select selectPeriod">
				      						<option selected disabled>기간</option>
				      						<option>1주일</option>
				      						<option>1개월</option>
				      						<option>3개월</option>
				    					</select>
				  					</div>
					    			<div class="col-2">
				    					<input type="text" class="form-control datepicker dateStart" placeholder="시작일">
				  					</div>
					    			<div class="col-2">
				    					<input type="text" class="form-control datepicker dateFinish" placeholder="종료일">
				  					</div>
								</div>
								<table class="table datatable">		
									<thead>
										<tr>
											<th scope="col" class="doNotScript">
												<input type="checkbox" name="checked" id="allCheck" value="">
											</th>
											<th scope="col">seq</th>
											<th scope="col">아이디</th>
											<th scope="col">이름</th>
											<th scope="col">대표계좌</th>
											<th scope="col">계좌번호</th>
											<th scope="col">계좌명</th>
											<th scope="col">계좌비밀번호</th>
											<th scope="col">계좌잔액</th>
										</tr>
									</thead>
									<tbody>
										<c:choose>
											<c:when test="${fn:length(list) eq 0}">
												<tr>
													<td class="text-cneter" colspan="9">데이터가 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${list}" var="list" >
													<tr>
														<td scope="col">
															<input type="checkbox" name="checked" value="">
														</td>
														<td><c:out value="${list.seq}"></c:out></td>
														<td><c:out value="${list.id}"></c:out></td>
														<td><c:out value="${list.name}"></c:out></td>
														<td>
								                            <c:choose>
								                                <c:when test="${list.defaultNy == 0}">
								                                    미사용
								                                </c:when>
								                                <c:when test="${list.defaultNy == 1}">
								                                    사용
								                                </c:when>
								                                <c:otherwise>
								                                    알 수 없음
								                                </c:otherwise>
								                            </c:choose>
								                        </td>
														<td><c:out value="${list.accountNumber}"></c:out></td>
														<td><c:out value="${list.accountName}"></c:out></td>
														<td><c:out value="${list.accountPassword}"></c:out></td>
														<td><c:out value="${list.accountBalance}"></c:out></td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>	
									</tbody>
								</table>
								<!-- pagination s -->
								<%@include file="../../../include/pagination.jsp"%>
								<!-- pagination e -->
							</div>
							<div class="d-flex justify-content-center">
								<button type="button" class="btn btn-primary" onclick="location.href='accountForm'">추가</button>
								<button type="button" class="btn btn-success" id="btnModification">수정</button>
							</div>
						</div>
					</div>
				</div>
			</form>
    	</section>
	</main>
  	<%@ include file="../../../include/footerXdmView.jsp" %>
  	<script>
  		
		// 서치버튼 클릭이벤트
		$("#btnSearch").on("click", function(){
			
			$("form[name=formList]").attr("action","/accountList").submit();
			
		});
		
		$("#btnModification").click(function() {
			// 체크된 체크박스를 배열로 저장
			var checkedItems = [];
			$("input[name='checked']:checked").each(function() {
				checkedItems.push($(this).closest("tr").find("td:eq(1)").text()); // seq 값 가져오기
			});

			// 수정 폼으로 데이터 전달
			if (checkedItems.length > 0) {
				var url = "accountForm?seq=" + checkedItems.join(",");
				location.href = url;
			}
			
		    // 체크박스 해제
		    $("input[name='checked']").prop('checked', false);
		});
  	
  	</script>
</body>
</html>