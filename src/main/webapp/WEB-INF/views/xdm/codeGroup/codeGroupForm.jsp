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
	<%@ include file="../index/header.jsp" %>
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
                    			<label for="floatingName">delNy</label>
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
                			<button type="button" class="btn btn-outline-secondary" id="btnList" onclick="location.href='codeGroupList'">List</button>
							<button type="button" class="btn btn-outline-secondary btnInsert" id="btnUpdate" >Update</button>
							<button type="button" class="btn btn-outline-secondary" id="btnUelete" >Uelete</button>
							<button type="button" class="btn btn-outline-danger" id="btnDeleteCheck" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Delete</button>
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
        			<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
        			<button type="button" class="btn btn-outline-primary" id="btnDelete">OK</button>
      			</div>
    		</div>
  		</div>
	</div>
	<%@ include file="../index/footer.jsp" %>
</body>
</html>