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
	<form>
		구구단: <input type="number" name="dan"/>단
		<input type = "submit" value="출력"/>
	</form>
	
	<c:choose>
	<c:when test="${param.dan>1 && param.dan<10 }">
	
	<c:forEach var="i" begin="1" end="9">
	<p>${param.dan} X ${i }=${(param.dan)*i} </p>
	</c:forEach>
	
	</c:when>
	<c:otherwise>
	<p>적절한 단을 입력해주세요</p>
	</c:otherwise>
	</c:choose>
	
	
</body>
</html>