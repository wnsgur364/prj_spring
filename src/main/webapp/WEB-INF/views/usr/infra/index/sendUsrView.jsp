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
		<div class="container-fluid">
			<div class="row mt-3">
				<div class="col-lg-12">
  					<div class="card">
           				<div class="card-body">
           					<div class="card-title">이체</div>
       						<hr>
            				<form class="needs-validation" name="form" method="post" novalidate>
								<div class="col-md-4 py-2">
								    <div class="form-floating">
								        <label for="member_seq">출금계좌</label>
								        <select class="form-control" id="member_seq" name="member_seq" onchange="getAccountBalance(this.value)">
								            <option value=""></option>
								            <c:forEach items="${account}" var="account">
								                <option value="${account.accountNumber}">${account.accountNumber}</option>
								            </c:forEach>
								        </select>
								    </div>
								</div>
								<div class="col-md-4 py-2">
								    <div class="form-floating">
								        <label for="accountBalance">계좌잔액</label>
								        <input type="text" class="form-control" id="accountBalance" name="accountBalance" readonly>
								    </div>
								</div>
								<div class="col-md-4 py-2">
							        <div class="form-floating">
							        	<label for="recipientAccountNumber">받는계좌</label>
							            <input type="text" class="form-control" id="recipientAccountNumber" name="recipientAccountNumber" required>
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
								<div class="col-md-4 py-2">
							        <div class="form-floating">
							        	<label for="balance">금액</label>	
							            <input type="text" class="form-control" id="balance" name="balance" required>
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
								<div class="col-md-4 py-2">
							        <div class="form-floating">
							        	<label for="recipientAccountNumber">받는계좌</label>
							            <input type="text" class="form-control" id="recipientAccountNumber" name="recipientAccountNumber" required>
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
								<div class="col-md-4 py-2">
							        <div class="form-floating">
							       		<label for="contents">내용</label>
							            <input type="text" class="form-control" id="contents" name="contents" required>
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
								<div class="col-md-4 py-2">
							        <div class="form-floating">
							            <label for="accountPassword">계좌비밀번호</label>
							            <input type="text" class="form-control" id="accountPassword" name="accountPassword" required>
							            <div class="invalid-feedback"></div>
							        </div>
							    </div>
							    <hr>
								<div class="form-group">
									<button class="btn btn-light" id="submitForm" type="button">확인</button>
					    			<button class="btn btn-light" type="button">취소</button>   		
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
<script>
    $(document).ready(function() {
        $("#submitForm").on("click", function() {
            var fromAccountNumber = $("#member_seq").val();
            var accountBalance = $("#accountBalance").val();
            var toAccountNumber = $("#recipientAccountNumber").val();
            var amount = $("#balance").val();
            var contents = $("#contents").val();
            var accountPassword = $("#accountPassword").val();

            // Make an AJAX request to process the transfer
            $.ajax({
                type: "POST",
                url: "/account/transfer", // The URL to your Spring Controller method for transfer
                data: {
                    fromAccountNumber: fromAccountNumber,
                    accountBalance: accountBalance,
                    toAccountNumber: toAccountNumber,
                    amount: amount,
                    contents: contents,
                    accountPassword: accountPassword
                },
                success: function(response) {
                    alert(response); // Display the response message in an alert
                },
                error: function(xhr, status, error) {
                    alert("Error occurred during transfer: " + xhr.responseText);
                }
            });
        });
    });
    
    function getAccountBalance(accountNumber) {
        // Make an AJAX request to get the account balance
        $.ajax({
            type: "POST",
            url: "/getAccountBalance", // Replace with the actual URL to fetch the account balance
            data: { accountNumber: accountNumber },
            success: function(response) {
                // Update the account balance input field with the received value
                $("#accountBalance").val(response.accountBalance);
            },
            error: function(xhr, status, error) {
                alert("Error occurred while fetching account balance: " + xhr.responseText);
            }
        });
    }
</script>
</body>
</html>