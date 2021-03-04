<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header">
	<h1>
		<a href="${pageContext.request.contextPath}/">HERE로</a>
	</h1>


	<c:choose>
		<c:when test="">
			<ul>
				<li><a href="${pageContext.request.contextPath}/user/loginForm">로그인</a></li>
				<li><a href="${pageContext.request.contextPath}/user/joinForm">회원가입</a></li>
			</ul>
		</c:when>
		<c:otherwise>
			<ul>
				<li>님</li>
				<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
				<li><a href="${pageContext.request.contextPath}/user/modifyForm">마이페이지</a></li>
			</ul>
		</c:otherwise>
	</c:choose>

</div>
<!-- //header -->
