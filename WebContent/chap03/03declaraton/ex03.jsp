<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%!
	private int gugudan(int num1, int num2){
		return num1*num2;
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 3단</h1>
	<%
	for(int i=1;i<10;i++){
		out.print("3"+"x"+i+"="+gugudan(3,i));
		out.print("<br>");
	}
	%>
	
	<%--
	for(int i=1;i<10;i++){
	--%>
	<%--= 3+"X"+i+"="+gugudan(3,i) --%>
	<%--
	}
	--%>
</body>
</html>