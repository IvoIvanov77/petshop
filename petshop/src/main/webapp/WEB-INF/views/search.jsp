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
<script type="text/javascript">
$(document).ready(function(){
    $("#myButtons .btn").click(function(){
    	$(this).button('toggle');
    });
});
</script>
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
</style>
</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<h1>Search Page</h1>
	
	<div id="myButtons" class="bs-example">
    <button type="button" class="btn btn-default">Default</button>
    <button type="button" class="btn btn-primary">Primary</button>
    <button type="button" class="btn btn-success">Success</button>
    <button type="button" class="btn btn-info">Info</button>
    <button type="button" class="btn btn-warning">Warning</button>
    <button type="button" class="btn btn-danger">Danger</button>
</div>

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Form Name</legend>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="selectbasic">Select Basic</label>
  <div class="col-md-4">
    <select id="selectbasic" name="selectbasic" class="form-control">
      <option value="1">Option one</option>
      <option value="2">Option two</option>
    </select>
  </div>
</div>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">File Button</label>
  <div class="col-md-4">
    <input id="filebutton" name="filebutton" class="input-file" type="file">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Text Input</label>  
  <div class="col-md-4">
  <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text">
  <span class="help-block">help</span>  
  </div>
</div>

<!-- Search input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="searchinput">Search Input</label>
  <div class="col-md-4">
    <input id="searchinput" name="searchinput" placeholder="placeholder" class="form-control input-md" type="search">
    <p class="help-block">help</p>
  </div>
</div>

<!-- Multiple Checkboxes -->
<div class="form-group">
  <label class="col-md-4 control-label" for="checkboxes">Multiple Checkboxes</label>
  <div class="col-md-4">
  <div class="checkbox">
    <label for="checkboxes-0">
      <input name="checkboxes" id="checkboxes-0" value="1" type="checkbox">
      Option one
    </label>
	</div>
  <div class="checkbox">
    <label for="checkboxes-1">
      <input name="checkboxes" id="checkboxes-1" value="2" type="checkbox">
      Option two
    </label>
	</div>
  </div>
</div>

</fieldset>
</form>
	
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</body>
</html>