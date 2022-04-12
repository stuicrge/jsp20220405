<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	Cookie cookie1 = new Cookie("path1",
			URLEncoder.encode("경로:/chap09/ex01.jsp","utf-8"));
		cookie1.setPath("/chpa09/ex01.jsp");
		response.addCookie(cookie1);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 경로지정</h1>
	
	다음과 같이 쿠키를 생성했습니다<br>
	<%= cookie1.getName() %>=<%= cookie1.getValue() %>
	[<%= cookie1.getPath() %>]
</body>
</html>