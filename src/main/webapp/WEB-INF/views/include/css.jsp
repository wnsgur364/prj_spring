<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="com.mycompany.app.infra.common.constants.Constants" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.mycompany.app.infra.modules.code.CodeServiceImpl"/>

<!-- loader-->
<link href="/resources/assets/css/pace.min.css" rel="stylesheet"/>
<script src="/resources/assets/js/pace.min.js"></script>
<!-- simplebar CSS-->
<link href="/resources/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
<!-- Bootstrap core CSS-->
<link href="/resources/assets/css/bootstrap.min.css" rel="stylesheet"/>
<!-- animate CSS-->
<link href="/resources/assets/css/animate.css" rel="stylesheet" type="text/css"/>
<!-- Icons CSS-->
<link href="/resources/assets/css/icons.css" rel="stylesheet" type="text/css"/>
<!-- Sidebar CSS-->
<link href="/resources/assets/css/sidebar-menu.css" rel="stylesheet"/>
<!-- Custom Style-->
<link href="/resources/assets/css/app-style.css" rel="stylesheet"/>
<!-- fontawesome -->
<script src="https://kit.fontawesome.com/b05f67c88a.js" crossorigin="anonymous"></script>
<!-- JqueryUi -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">