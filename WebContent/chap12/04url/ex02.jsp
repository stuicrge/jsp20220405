<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="ex01.jsp">ex01</a>
	<br />
	
	<a href="${pageContext.request.contextPath }/chap12/o4url/ex01.jsp">ex01 (절대경로)</a>
	
	<br />
	<c:url value = "ex01.jsp" var = "ex01RelUrl"></c:url>
	
	<a href="${ex01RelUrl }">ex01 (상대경로 url 사용)</a>
	
	<!-- 절대 경로 -->
	<c:url value="/chap12/04url/ex01.jsp" var="ex01AbsUrl"></c:url>
	<a href="${ex01AbsUrl }">ex01(절대경로 c:url 사용)</a>
</body>
</html>