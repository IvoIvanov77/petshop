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
	
	<div class="container">
	
		<div class="row">
			<h1>Resource</h1>
		</div>
		
		<spring:url value="/resource/review" var="formUrl"/>
		
		<form:form action="${formUrl}" method="POST">		
			
			<div class="row">
				
				<div class="form-group">
					<label for="resource-name">Name</label>
					<form:input path="name" cssClass="form-control" id="resource-name"/> 					
				</div>

				<div class="form-group">
					<label for="resource-type">Type</label> 
					<form:select path="type" items="${typeOptions}" cssClass="selectpicker"/>					
				</div>

				<div class="form-group">
					<label for="cost">Cost</label> 
					<input id="cost" type="text"
						class="form-control" name="cost" />
				</div>

				<div class="form-group">
					<label for="unit">Unit of Measure</label> 
					<form:radiobuttons id="unitOfMeasure" path="unitOfMeasure" items="${radioOptions}"/>					
				</div>
				
				<div class="form-group">
					<label for="indicators">Indicators</label> 
					<form:checkboxes id="indicators" path="indicators" items="${checkOptions}"/>	
					<a id="request-link" href="<spring:url value="/resource/request" />">Send request</a>								
				</div>
				
				<div class="form-group">
					<label for="notes">Notes</label> 
					<form:textarea id="notes" path="notes" class="form-control" rows="4"/>				
				</div>
				
				<button type="submit" class="btn btn-default">Submit</button>

			</div>
		
		
		</form:form>
		
	</div>
	
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</body>
</html>