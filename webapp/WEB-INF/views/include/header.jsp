<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header">
	<h1>
		<a href="${pageContext.request.contextPath}/">HERE로</a>
	</h1>


	<c:choose>
		<c:when test="${empty authUser}">
			<ul>
				<li><a href="${pageContext.request.contextPath}/user/loginForm">login</a></li>
				<li><a href="${pageContext.request.contextPath}/user/joinForm">sign up</a></li>
			</ul>
		</c:when>
		<c:otherwise>
			<ul>
				<li>${sessionScope.authUser.name}님</li>
				<li><a href="${pageContext.request.contextPath}/user/logout">logout</a></li>
				<li><a href="${pageContext.request.contextPath}/user/modifyForm">my page</a></li>
			</ul>
		</c:otherwise>
	</c:choose>

</div>
<!-- //header -->
