<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="홈페이지" name="title"/>
</jsp:include>
<link rel="stylesheet" media="screen" href="${path}/resources/vendor/simplebar/dist/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/lightgallery/css/lightgallery-bundle.min.css" />
    <link rel=stylesheet" media="screen" href="${path}/resources/vendor/tiny-slider/dist/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/flatpickr/dist/flatpickr.min.css"/>
    <!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${hello}. </P>
</body>
</html>
