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
      		<h1>transactionList</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">transactionList</li>
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
				    					<select id="delNy" class="form-select" name="shOption">
				      						<option value="" selected disabled>검색구분</option>
											<option value="0">N</option>
										    <option value="1">Y</option>
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
											<th scope="col">delNy</th>
											<th scope="col">recipientAccountNumber</th>
											<th scope="col">balance</th>
											<th scope="col">date</th>
											<th scope="col">contents</th>
											<th scope="col">dateStart</th>
											<th scope="col">dateFinish</th>
											<th scope="col">account_seq</th>
										</tr>
									</thead>
									<tbody>
										<c:choose>
											<c:when test="${fn:length(list) eq 0}">
												<tr>
													<td class="text-cneter" colspan="9">There is no data</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${list}" var="list" >
													<tr>
														<td scope="col">
															<input type="checkbox" name="checked" value="">
														</td>
														<td><c:out value="${list.seq}"></c:out></td>
														<td><c:out value="${list.delNy}"></c:out></td>
														<td><c:out value="${list.recipientAccountNumber}"></c:out></td>
														<td><c:out value="${list.balance}"></c:out></td>
														<td><c:out value="${list.date}"></c:out></td>
														<td><c:out value="${list.contents}"></c:out></td>
														<td><c:out value="${list.dateStart}"></c:out></td>
														<td><c:out value="${list.dateFinish}"></c:out></td>
														<td><c:out value="${list.account_seq}"></c:out></td>
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
								<button type="button" class="btn btn-primary" onclick="location.href='transactionForm'">Add</button>
								<button type="button" class="btn btn-success" id="btnModification">Edit</button>
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
  	
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			$("form[name=formList]").attr("action", "transactionList").submit();
		}
		
  	</script>
</body>
</html>