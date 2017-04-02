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
	
	${user}
    
	 <div class="container">
        <!--Row with two equal columns-->
        <div class="row">
            <div class="col-sm-6" >
                <div class="thumbnail">
                    <img src="<c:url value='/resources/images/dogs.jpg'/>" class="img-responsive">
                    <div class="caption">
                        <h2>кучета</h2>                        
                        <p><a href='<spring:url value="add_item"/>' class="btn btn-default btn-lg">добави</a> 
                        <a href="#" class="btn btn-default btn-lg">виж всички</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="thumbnail">
                    <img src="<c:url value='/resources/images/cats.jpg'/>" class="img-responsive">
                    <div class="caption">
                        <h2>котки</h2>                        
                        <p><a href='<spring:url value="add_item"/>' class="btn btn-default btn-lg">добави</a> 
                        <a href="#" class="btn btn-default btn-lg">виж всички</a></p>
                    </div>
                </div>
            </div>
        </div>
        <hr>
       
        <div class="row">
            <div class="col-sm-6" >
                <div class="thumbnail" >
                    <img src="<c:url value='/resources/images/fish.jpg'/>" class="img-responsive">
                    <div class="caption">
                        <h2>кучета</h2>                        
                        <p><a href="#" class="btn btn-default btn-lg">добави</a> 
                        <a href="#" class="btn btn-default btn-lg">виж всички</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="thumbnail">
                    <img src="<c:url value='/resources/images/cats.jpg'/>" alt="Sample Image">
                    <div class="caption">
                        <h2>котки</h2>                        
                        <p><a href="#" class="btn btn-default btn-lg">добави</a> 
                        <a href="#" class="btn btn-default btn-lg">виж всички</a></p>
                    </div>
                </div>
            </div>
        </div>
        <hr>
       
        <div class="row">
            <div class="col-sm-6">
                <div class="demo-content">.col-sm-3</div>
            </div>
            <div class="col-sm-6">
                <div class="demo-content">.col-sm-9</div>
            </div>
        </div>
    </div>
	
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
	
	
</body>
</html>