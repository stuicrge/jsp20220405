<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!-- 
	<jsp:foward>액션 태그를 실행하면
	생성했던 출력결과는 모두 제거된다.
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>from.jsp의 제목</title>
</head>
<body>
	이페이지는 form.jsp가 생성한 것입니다
	<jsp:forward page="to.jsp"/>
</body>
</html>