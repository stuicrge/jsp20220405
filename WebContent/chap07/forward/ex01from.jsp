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
<h1>ex01from.jsp</h1>


<%-- forward action tag --%>
<%-- 실행 흐름을 forward태그의 page 속성으로 바꿈 --%>
<%-- forward 태그 이전에 작성된건 모두 초기화된다. --%>
<jsp:forward page="ex01to.jsp"></jsp:forward>
</body>
</html>