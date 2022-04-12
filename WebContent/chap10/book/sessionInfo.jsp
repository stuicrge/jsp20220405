<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page session="true" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	Date time = new Date();
	SimpleDateFormat formatter = 
	new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>세션정보</h1>
	세션ID: <%= session.getId() %><br>
	<%
	time.setTime(session.getCreationTime());
	%>
	세션 생성 시간: <%= formatter.format(time) %> <br>
	<%
	time.setTime(session.getLastAccessedTime());
	%>
	최근 접근 시간: <%= formatter.format(time) %>
</body>
</html>