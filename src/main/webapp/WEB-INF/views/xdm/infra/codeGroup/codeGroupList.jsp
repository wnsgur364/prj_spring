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
	<%@ include file="../index/headerXdmView.jsp" %>
  	<main id="main" class="main">
	    <div class="pagetitle">
      		<h1>codeGroupList</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">codeGroupList</li>
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
											<th scope="col">name</th>
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
														<td><a href="codeGroupForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out></a></td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>	
									</tbody>
								</table>
								<div class="d-flex justify-content-center">
									<button type="button" class="btn btn-primary" onclick="location.href='codeGroupForm'">Add</button>
									<button type="button" class="btn btn-success" id="btnModification">Edit</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
    	</section>
	</main>
  	<%@ include file="../index/footerXdmView.jsp" %>
  	<script>
  	
  		// 서치버튼 클릭이벤트
		$("#btnSearch").on("click", function(){
			
			$("form[name=formList]").attr("action","/codeGroupList").submit();
			
		});
		
  	</script>
</body>
</html>