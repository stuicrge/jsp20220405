<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%!
private int gugudan2(int num1,int num2){
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
	<h1>구구단 2단~9단</h1>
	
	<%
	for(int i=2;i<10;i++){
		for(int j=1;j<10;j++){
	
	%>
	<%=i+"x"+j+"="+gugudan2(j,i) %>
	<br />
	<%
	} 
	%>
	<%
	}
	%>
</body>
</html>