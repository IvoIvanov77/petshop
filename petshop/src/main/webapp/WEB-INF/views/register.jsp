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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<div class="container">
    
	<div class="col-lg-12 well">
	<div class="row">
				<form>
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Име:</label>
								<input type="text" placeholder="Име.." class="form-control">
							</div>
							
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Фамилия:</label>
								<input type="text" placeholder="Фамилия.." class="form-control">
							</div>
							
						</div>					
							
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Потребителско име:</label>
								<input type="text" placeholder="Потребителско име.." class="form-control">
							</div>
							
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Парола:</label>
								<input type="text" placeholder="Парола.." class="form-control">
							</div>
							
						</div>	
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Повтори паролата: </label>
								<input type="text" placeholder="Повтори парола.." class="form-control">
							</div>
							
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Град:</label>
								<input type="text" placeholder="Град.." class="form-control">
							</div>
							
						</div>					
							
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>e-mail:</label>
								<input type="text" placeholder="EMAIL.." class="form-control">
							</div>
							
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Телефон:</label>
								<input type="text" placeholder="Телефон.." class="form-control">
							</div>
							
						</div>												
						
					
					<button type="button" class="btn btn-lg btn-warning">Регистрация</button>					
					</div>
				</form> 
				</div>
	</div>
	</div>
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</body>
</html>