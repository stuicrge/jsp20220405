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
	<%
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		if(num1==null || num2==null){
	%>
	<h1>num을 입력해주세요</h1>
	<%
		}else{
		
	%>
	<h3><%= num1 %> + <%= num2 %> = <%= Integer.parseInt(num1) + Integer.parseInt(num2) %></h3>
	<%
		}
		
	%>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>