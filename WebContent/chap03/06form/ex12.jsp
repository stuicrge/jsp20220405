<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<%
		String cal = request.getParameter("calculator");
		String Fn = request.getParameter("num1");
		String Ln = request.getParameter("num2");
		
		double num1 = Double.parseDouble(Fn);
		double num2 = Double.parseDouble(Ln);
		
		double result=0;
		
		String message="";
		if(cal.equals("plus")){
		result=num1+num2;
			message = num1 + " + " + num2 + " = " + result;
	%>
	
	<%
		}else if(cal.equals("minus")){
			result=num1-num2;
			message = num1 + " - " + num2 + " = " + result;
	%>
	<%
		}else if(cal.equals("product")){
		result=num1*num2;
		message = num1 + " X " + num2 + " = " + result;
	%>
	<%
		}else if(cal.equals("division")){
			
		result = num1/num2;
		message = num1 + " / " + num2 + " = " + result;
	%>
	<%
		}
	%>
	
<h1><%= message %> </h1>
</body>
</html>