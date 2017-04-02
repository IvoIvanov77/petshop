<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PetShop</title>

<link rel="stylesheet" href='<spring:url value="/resources/css/bootstrap-theme.css"/>' type="text/css" />
<link rel="stylesheet" href='<spring:url value="/resources/css/bootstrap-theme.min.css"/>' type="text/css" />
<link rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.css"/>' type="text/css" />
<link rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css"/>' type="text/css" />
<script src="<spring:url value="/resources/js/bootstrap.js"/>"></script>
<script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<spring:url value="/resources/js/npm.js"/>"></script>
<link rel="stylesheet" href='<spring:url value="/resources/css/home.css"/>' type="text/css">

</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<h1>Здрастиии</h1>
	
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</body>
</html>