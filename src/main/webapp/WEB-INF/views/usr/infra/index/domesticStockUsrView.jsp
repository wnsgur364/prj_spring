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
<body class="bg-theme bg-theme9">
<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../../../include/headerUsrView.jsp" %>
<div class="clearfix"></div>
	<div class="content-wrapper">
		<div class="container" style="width: 1320px; height: 870px;" id="domesticStock">
			<div class="h4 d-flex justify-content-center">국내 주식 API</div>
			<br> aaa : <c:out value="${resultCode }"/>
			<br> aaa : <c:out value="${resultMsg }"/>
			<br> aaa : <c:out value="${pageNo }"/>
			<br> aaa : <c:out value="${totalCount }"/>
			<br> aaa : <c:out value="${numOfRows }"/>
			<br> aaa : <c:out value="${items }"/>
			<br> aaa : <c:out value="${fn:length(items) }"/>
			<hr>
<%-- 			<br> bbb : <c:out value="${header.resultCode }"/> --%>
<%-- 			<br> bbb : <c:out value="${header.resultMsg }"/> --%>
<%-- 			<br> bbb : <c:out value="${header.pageNo }"/> --%>
<%-- 			<br> bbb : <c:out value="${header.totalCount }"/> --%>
<%-- 			<br> bbb : <c:out value="${header.numOfRows }"/> --%>
<%-- 			<br> bbb : <c:out value="${header.items }"/> --%>
<%-- 			<br> bbb : <c:out value="${fn:length(header.items) }"/> --%>
<!-- 			<hr> -->
<%-- 			<br> ccc : <c:out value="${body.resultCode }"/> --%>
<%-- 			<br> ccc : <c:out value="${body.resultMsg }"/> --%>
<%-- 			<br> ccc : <c:out value="${body.pageNo }"/> --%>
<%-- 			<br> ccc : <c:out value="${body.totalCount }"/> --%>
<%-- 			<br> ccc : <c:out value="${body.numOfRows }"/> --%>
<%-- 			<br> ccc : <c:out value="${body.items }"/> --%>
<%-- 			<br> ccc : <c:out value="${fn:length(body.items) }"/> --%>
<!-- 			<hr> -->
			<c:forEach items="${items}" var="item" varStatus="status">
				<c:out value="${item.YYYY }"/>
				<br><c:out value="${item.MM }"/>	
				<br><c:out value="${item.KIT_PROD_QTY }"/>	
				<br><c:out value="${item.KIT_EXPRT_QTY }"/>	
				<br><c:out value="${item.KIT_STOCK_QTY }"/>	
			</c:forEach>
		</div>
		<!--start overlay-->
		<div class="overlay toggle-menu"></div>
		<!--end overlay-->
    
	</div><!--End content-wrapper-->
<%@ include file="../../../include/modalBase.jsp" %>
<%@ include file="../../../include/footer.jsp" %>   
   
</div><!--End wrapper-->
<%@ include file="../../../include/script.jsp" %>
</body>
</html>