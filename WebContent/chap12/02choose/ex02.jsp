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
	<h1>나이별 추천 영화</h1>
	
	<form action="">
		나이:<input type="number" name="age" id=""/>
		
		<input type="submit" value="영화 추천받기"/>
	</form>
	
	<%-- 코드 작성--%>
	<%-- 20세 이상이면 데드풀 --%>
	<%-- 12세 이상이면 어벤져스 --%>
	<%--  --%>
	<c:choose>
	<c:when test="${param.age >=20 }">
		<h1>데드풀 추천</h1>
	</c:when>
	
	<c:when test="${param.age >= 12 }">
	<h1>어벤져스 추천</h1>
	</c:when>
	
	<c:when test="${param.age >= 4 }">
	
	<h1>토이스토리 추천</h1>
	</c:when>

	<c:otherwise>
		<h1 class="text-warning">적잘한 나이를 입력해주세요</h1>
	</c:otherwise>
	
	</c:choose>
</body>
</html>