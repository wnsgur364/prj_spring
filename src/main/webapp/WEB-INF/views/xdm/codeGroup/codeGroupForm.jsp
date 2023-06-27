<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  	<meta charset="utf-8">
  	<meta content="width=device-width, initial-scale=1.0" name="viewport">
  	<title>KOKOA BANK ADMIN</title>
  	<!-- CSS -->
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="/resources/css/style.css" rel="stylesheet">
	<link href="/resources/vendor/simple-datatables/style.css" rel="stylesheet">
	<link href="/resources/vendor/jquery-ui/jquery-ui.min.css" rel="stylesheet">
	<!-- Google Fonts -->
	<link href="https://fonts.gstatic.com" rel="preconnect">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!-- font-family: 'Dongle', sans-serif; -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&display=swap" rel="stylesheet">
</head>
<body>
	<%@ include file="header.jsp" %>
	<main id="main" class="main">
	    <div class="pagetitle">
      		<h1>codeGroupForm</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="#">KOKOA BANK</a></li>
          			<li class="breadcrumb-item active">codeGroupForm</li>
        		</ol>
      		</nav>
    	</div>
	    <div class="col-lg-12">
          	<div class="card">
            	<div class="card-body">
              		<h5 class="card-title">codeGroupForm</h5>
              		<p>codeGroupForm</p>
              		<form class="row g-3 needs-validation" name="form" method="post" novalidate >
              			<div class="col-md-4">
                			<div class="form-floating">
                    			<input type="text" class="form-control" id="seq" name="seq" required readonly value="<c:out value="${item.seq}"/>">
                    			<label for="floatingName">seq</label>
                    			<div class="invalid-feedback">
                    				Looks good!
                  				</div>
               				</div>
               			</div>
               			<div class="col-md-4">
                			<div class="form-floating">
                    			<input type="text" class="form-control" id="delNy" name="delNy" required value="<c:out value="${item.delNy}"/>">
                    			<label for="floatingName">사용</label>
                    			<div class="invalid-feedback">
                    				Looks good!
                  				</div>
               				</div>
               			</div>
               			<div class="col-md-4">
                			<div class="form-floating">
                    			<input type="text" class="form-control" id="name" name="name" required value="<c:out value="${item.name}"/>">
                    			<label for="floatingName">name</label>
                    			<div class="invalid-feedback">
                    				Looks good!
                  				</div>
               				</div>
               			</div>
                		<div class="d-flex justify-content-center">
                			<button type="button" class="btn btn-outline-secondary" id="btnList" onclick="location.href='codeGroupList'">목록</button>
							<button type="button" class="btn btn-outline-secondary btnInsert" id="btnUpdate" >저장</button>
							<button type="button" class="btn btn-outline-secondary" id="btnUelete" >사용</button>
							<button type="button" class="btn btn-outline-danger" id="btnDeleteCheck" data-bs-toggle="modal" data-bs-target="#staticBackdrop">삭제</button>
						</div>
              		</form>
            	</div>
          	</div>
		</div>	
	</main>
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropTitle" aria-hidden="true">
  		<div class="modal-dialog">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h1 class="modal-title fs-5" id="staticBackdropTitle">title</h1>
        			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      			</div>
      			<div class="modal-body" id="staticBackdropBody">
        		body
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">취소</button>
        			<button type="button" class="btn btn-outline-primary" id="btnDelete">확인</button>
      			</div>
    		</div>
  		</div>
	</div>
	<%@ include file="footer.jsp" %>
	<!-- Script -->
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/vendor/jquery/jquery.min.js"></script> 
	<script src="/resources/vendor/jquery-ui/jquery-ui.min.js"></script>
	<script src="/resources/vendor/simple-datatables/simple-datatables.js"></script>
  	<script src="/resources/js/main.js"></script>
</body>
</html>