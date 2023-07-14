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
  	<title>달력</title>
	<%@ include file="../include/css.jsp" %>
  	<!--Full Calendar Css-->
  	<link href="/resources/assets/plugins/fullcalendar/css/fullcalendar.min.css" rel='stylesheet'/>
</head>

<body class="bg-theme bg-theme9">

   <!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">
 <%@ include file="../include/headerXdmView.jsp" %>

<div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">
    
    <div class="mt-3">
      <div id='calendar'></div>
    </div>
			
		<!--start overlay-->
		  <div class="overlay toggle-menu"></div>
		<!--end overlay-->	
			
    </div>
    <!-- End container-fluid-->
   </div><!--End content-wrapper-->
   <%@ include file="../include/footer.jsp" %>  
  </div><!--End wrapper-->
<%@ include file="../include/script.jsp" %> 
  <!-- Full Calendar -->
  <script src='/resources/assets/plugins/fullcalendar/js/moment.min.js'></script>
  <script src='/resources/assets/plugins/fullcalendar/js/fullcalendar.min.js'></script>
  <script src="/resources/assets/plugins/fullcalendar/js/fullcalendar-custom-script.js"></script> 	
</body>
</html>