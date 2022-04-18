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
	
	<h1>c;url 로 쿼리스트링 작성</h1>
	
	<c:url value="https://www.google.com/search" var = "btsSearchUrl">
	<c:param name="q" value="bts"></c:param>
	</c:url>
 	<a href="${btsSearchUrl }">bts 검색</a>
 	<br />
	<a href="https://www.google.com/search?q=bts">bts 검색</a>
	<br />
	<c:url value="https://www.google.com/search"  var="ipadSearchUrl">
	<c:param name="q" value="apple+ipad"></c:param>
	</c:url>
	<a href="${ipadSearchUrl }">애플+아이패드</a>
</body>
</html>