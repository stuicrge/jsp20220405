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
String attr1 = (String) request.getAttribute("job");
List<String> attr2 = (List<String>) request.getAttribute("names");
%>
<p><%= attr1 %></p>
<ul>
<%
for( String name : attr2){
%>
	<li><%= name %></li>
	<%
}
	%>
</ul>
</body>
</html>