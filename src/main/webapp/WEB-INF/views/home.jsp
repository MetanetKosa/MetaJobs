<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="홈페이지" name="title"/>
</jsp:include>

<!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/simplebar/dist/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/lightgallery/css/lightgallery-bundle.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/tiny-slider/dist/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/flatpickr/dist/flatpickr.min.css"/>
    <!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">

<html>
<head>
	<title>Home</title>
</head>
<body>


 <!-- Vendor scrits: js libraries and plugins-->
      <%--  <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
       <script src="${path}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
       <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
       <script src="${path}/resources/vendor/flatpickr/dist/flatpickr.min.js"></script>
       <!-- Main theme script-->
      <script src="${path}/resources/js/theme.min.js"></script> --%>
      	<!-- Vendor scrits: js libraries and plugins-->
	<script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
	<script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
		    <script src="${path}/resources/vendor/flatpickr/dist/flatpickr.min.js"></script>
	
	<!-- Main theme script-->
	<script src="${path}/resources/js/theme.min.js"></script>
</body>

