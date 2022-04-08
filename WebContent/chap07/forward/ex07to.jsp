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
	List<String> attr1 = (List<String>) request.getAttribute("names");
	Map<String,String> attr2=(Map<String,String>) request.getAttribute("movies");
	%>
	<ul>
	<%
	for(String name : attr1){
	%>
	 <li><%= name %></li>
	 <%
	}
	 %>
	</ul>
	
	<%
	for (Map.Entry<String, String> entry : attr2.entrySet()) {
	%>
	<p><%= entry.getKey() %> : <%= entry.getValue() %></p>
	<%
	}
	%>
	
	
	<%
	
	%>
	
</body>
</html>