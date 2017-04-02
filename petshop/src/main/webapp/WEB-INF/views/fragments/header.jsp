<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.softuni.mvc.data.entities.*" %>

<div class="bs-example">
	<nav role="navigation" class="navbar navbar-default">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" data-target="#navbarCollapse"
				data-toggle="collapse" class="navbar-toggle">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href='<spring:url value="/"/>' class="navbar-brand">PetShop</a>
		</div>
		<!-- Collection of nav links and other content for toggling -->
		<div id="navbarCollapse" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="home"><a href='<spring:url value="/"/>'>начало</a></li>
				<li><a href='<spring:url value="/profile"/>'>профил</a></li>				
				<li><a href='<spring:url value="/search"/>'>търси</a></li>
			</ul>
			<%
                User user = (User) session.getAttribute("user");                     
                if (user.isGuest()) {
            %>
            <ul class="nav navbar-nav navbar-right">
				<li><a href='<spring:url value="/login"/>'>вход</a></li>				
				<li><a href='<spring:url value="/registration_page"/>'>регистрация</a></li>
			</ul>

        <% } else {
         %>
            <ul class="nav navbar-nav navbar-right">
            	<li><a href='<spring:url value="/add_item"/>'>добави обява</a></li>	            		
            	<li><a href='<spring:url value="/add_item"/>' class="btn btn-warning">добави обява</a></li>			
				<li><a href='<spring:url value="/profile"/>'>${user.username}</a></li>
				<li><a href='<spring:url value="/logout"/>'>изход</a></li>
			</ul>
        <% }%>
			
		</div>
		
	</nav>
</div>

