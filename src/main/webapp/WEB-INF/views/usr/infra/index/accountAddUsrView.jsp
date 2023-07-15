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
			<div class="row mt-3">
				<div class="col-lg-12">
  					<div class="card">
           				<div class="card-body">
           					<div class="card-title">계좌 생성</div>
       						<hr>
            				<form class="needs-validation" name="form" method="post" novalidate>
								<div class="col-md-4 py-2">
									<div class="form-floating">
										<label for="accountNumber" class="form-label">계좌이름</label>
				 						<input type="text" name="accountNumber" class="form-control" id="accountNumber" required>
				 						<div class="invalid-feedback">계좌이름을 입력해 주세요.</div>
			 						</div>
		 						</div>
			   					<div class="col-md-4 py-2">
			   						<div class="form-floating">
			   							<label for="firstName" class="form-label">비밀번호</label>
										<input type="text" name="firstName" class="form-control" id="firstName" required>	
										<div class="invalid-feedback">비밀번호를 입력해 주세요.</div>
									</div>
			   					</div>
								<div class="col-md-4 py-2">
									<div class="form-floating">
										<label for="passwordOld" class="form-label">비밀번호 확인</label>
										<input type="password" name="password" class="form-control" id="passwordOld" required>
										<div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div>
									</div>
								</div>
								<hr>
								<div class="form-group">
									<button class="btn btn-light" id="submitForm" type="button">확인</button>
					    			<button class="btn btn-light" type="button" onclick="location.href='accountUsrView'">취소</button>   		
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
</body>
</html>