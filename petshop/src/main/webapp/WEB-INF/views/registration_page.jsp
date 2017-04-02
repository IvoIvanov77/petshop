<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PetShop</title>

<link rel="stylesheet"
	href='<spring:url value="/resources/css/bootstrap-theme.css"/>'
	type="text/css" />
<link rel="stylesheet"
	href='<spring:url value="/resources/css/bootstrap-theme.min.css"/>'
	type="text/css" />
<link rel="stylesheet"
	href='<spring:url value="/resources/css/bootstrap.css"/>'
	type="text/css" />
<link rel="stylesheet"
	href='<spring:url value="/resources/css/bootstrap.min.css"/>'
	type="text/css" />
<script src="<spring:url value="/resources/js/bootstrap.js"/>"></script>
<script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<spring:url value="/resources/js/npm.js"/>"></script>
<link rel="stylesheet"
	href='<spring:url value="/resources/css/home.css"/>' type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>

	<div class="container">

		<div class="col-lg-12 well">
			<div class="row">
				<spring:url value="/add_user" var="formUrl"/>
				<form:form action="${formUrl}" method="post" modelAttribute="user" cssClass="col-sm-12">				
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Име:</label> 
								<form:input id="profile-name" path="profile.firstName" 
								cssClass="form-control" placeholder="Име.." />							
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Фамилия:</label> 
								<form:input id="profile-last-name" path="profile.lastName" 
								cssClass="form-control" placeholder="Фамилия.." />
							</div>

						</div>

						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Потребителско име:</label> 
								<form:input id="username" path="username" 
								cssClass="form-control" placeholder="Потребителско име.." />								
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Парола:</label> 
								<form:input id="password" path="password" 
								cssClass="form-control" placeholder="Парола.." />
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Повтори паролата: </label> <input type="text"
									placeholder="Повтори парола.." class="form-control">
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Град:</label> 
								<form:input id="city" path="profile.city" 
								cssClass="form-control" placeholder="Град.." />
							</div>

						</div>

						<div class="row">
							<div class="col-sm-6 form-group">
								<label>e-mail:</label> 
								<form:input id="email" path="profile.email" 
								cssClass="form-control" placeholder="EMAIL.." />								
							</div>

						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Телефон:</label> 
								<form:input id="phone" path="profile.phone" 
								cssClass="form-control" placeholder="Телефон.." />								
							</div>
						</div>

						<button type="submit" class="btn btn-lg btn-warning">Регистрация</button>				
				</form:form>
			</div>
		</div>
	</div>
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</body>
</html>