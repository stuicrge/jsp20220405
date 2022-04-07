<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<form action="ex12.jsp" >
	<input type="text" name="num1"/>
	<select name="calculator" id="">
		<option value="plus">+</opiton>
		<option value="minus">-</opiton>
		<option value = "product">X</opiton>
		<option value="division">/</opiton>
	</select>
		<input type="text" name="num2">
		<input type="submit" value="전송">
	</form>
</body>
</html>