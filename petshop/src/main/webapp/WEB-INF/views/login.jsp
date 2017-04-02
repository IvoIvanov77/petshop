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
<link rel="stylesheet" href='<spring:url value="/resources/css/login.css"/>' type="text/css">

</head>
<body>
	${user}

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<spring:url value="/submit" var="formUrl"/>
								<form:form action="${formUrl}" method="POST">
								
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1"
											class="form-control" placeholder="Потребителско име" value="${user.username}">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password"
											tabindex="2" class="form-control" placeholder="Парола">
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit"
													tabindex="4" class="form-control btn btn-login"
													value="Вход">
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href='<spring:url value="/"/>' tabindex="5"
														class="forgot-password">Забравена парола</a>
												</div>
											</div>
										</div>
									</div>
															
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</body>
</html>