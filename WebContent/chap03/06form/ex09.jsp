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
<h1>input 요소 type="radio"</h1>
<h2>우편</h2>
<form action="ex10.jsp">
<input type="radio" name="dest" value="home" id="" /> 집
<br />
<input type="radio" name="dest" value="work" id="" /> 직장
<br />
<input type="radio" name="dest" value="school" id="" /> 학교
<br />

<h2>성별</h2>
<input type="radio" name="gender" value="man" id="" /> 남
<br />
<input type="radio" name="gender" value="woman" id="" /> 여
<br />
<input type="submit" value="전송" />

</form>

</body>
</html>