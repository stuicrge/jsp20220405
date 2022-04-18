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
	<c:forEach begin="2" end="9" var="dan">
	<h2>${dan }단</h2>
	<c:forEach var ="i" begin="1" end="9">
	        <p>${dan} X ${i }=${dan*i }</p>
	
	</c:forEach>
	</c:forEach>
	
	<h1>역순으로 2단부터 9단</h1>
		
		<c:forEach begin="1" end="8" var="dan">
	<h2>${10-dan }단</h2>
	<c:forEach var ="i" begin="1" end="9">
	        <p>${10-dan} X ${i }=${(10-dan)*i }</p>
	
	</c:forEach>
	</c:forEach>
	
</body>
</html>