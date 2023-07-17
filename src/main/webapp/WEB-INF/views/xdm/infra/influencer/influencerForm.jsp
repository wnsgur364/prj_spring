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
<body class="bg-theme bg-theme9">
<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../../../include/headerXdmView.jsp" %>
<div class="clearfix"></div>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="row mt-3">
				<div class="col-lg-12">
  					<div class="card">
           				<div class="card-body">
           					<div class="card-title">인플루언서 수정</div>
       						<hr>
            				<form class="needs-validation" name="form" method="post" novalidate>
           						<div class="col-md-4 py-2">
           							<div class="form-floating">
	           							<label for="seq">Seq (Auto Increment)</label>
		      							<input type="text" class="form-control" id="seq" name="seq" required readonly value="<c:out value="${item.seq}"/>" ${empty item.seq ? 'disabled' : ''}>
			      						<div class="invalid-feedback"></div>
	           						</div>
           						</div>
							    <div class="col-md-4 py-2">
							        <div class="form-floating">
										<label for="influencerName">인플루언서 이름</label>
							            <input type="text" class="form-control" id="influencerName" name="influencerName" required value="<c:out value="${item.influencerName}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
		   					    <div class="col-md-4 py-2">
							        <div class="form-floating">
										<label for="youtubeUrl">유튜브 주소</label>
							            <input type="text" class="form-control" id="youtubeUrl" name="youtubeUrl" required value="<c:out value="${item.youtubeUrl}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
		   					    <div class="col-md-4 py-2">
							        <div class="form-floating">
							            <label for="instagramUrl">인스타그램 주소</label>
							            <input type="text" class="form-control" id="instagramUrl" name="instagramUrl" required value="<c:out value="${item.instagramUrl}"/>">
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
								<hr>
								<div class="form-group">
							        <button type="button" class="btn btn-light" id="btnList" onclick="location.href='influencerList'">목록</button>
							        <c:choose>
							            <c:when test="${empty item.seq}">
							                <button type="button" class="btn btn-light" id="btnInsert">저장</button>
							            </c:when>
							            <c:otherwise>
							                <button type="button" class="btn btn-light" id="btnUpdate">저장</button>
											<button type="button" class="btn btn-light" id="btnDeleteCheck" data-toggle="modal" data-target="#staticModal" data-backdrop="static">삭제</button>
							            </c:otherwise>
							        </c:choose>
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
<%@ include file="../../../include/footer.jsp" %>   
   
</div><!--End wrapper-->
<%@ include file="../../../include/script.jsp" %>
<script>
	
	var objName = $("#influencerName");
	var objyoutubeUrl = $("#youtubeUrl");
	var objsnsUrl = $("#instagramUrl");
	
	validationInst = function(){
		if(validationUpdt() == false) return false;
	}
	
	validationUpdt = function(){
		if (checkOnlyKoreanEnglishNumber(objName, "인플루언서 이름은 한글, 영문대소문자, 숫자만 입력 가능합니다.") === false) return false;
		if (checkNull(objyoutubeUrl, "유튜브 주소를 입력해 주세요.") === false) return false;
		if (checkNull(objsnsUrl, "SNS 주소를 입력해 주세요.") === false) return false;
	}

	
	// 업데이트버튼 클릭이벤트
	$("#btnUpdate").on("click", function(){
		if (validationUpdt() === false) return false;
		$("form[name=form]").attr("action","/influencerUpdate").submit();
	});

	// 인서트버튼 클릭이벤트
	$("#btnInsert").on("click", function(){
		if (validationInst() === false) return false;
		$("form[name=form]").attr("action","/influencerInsert").submit();
	});
	
	// 율리트버튼 클릭이벤트
	$("#btnDelete").on("click", function(){
		$("form[name=form]").attr("action","/influencerUelete").submit();
	});
	
</script>
</body>
</html>