<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 생성</title>
</head>
<body>
<form action="/jsp20220405/chap03/book/viewParameter.jsp" method="post">
이름: <input type="text" name="name" size="10"/> <br>
주소: <input type="text" name="address" size="30" />
좋아하는 동물:
	<input type="checkbox"  name="pet" value="dog"/>개
	<input type="checkbox" name= "pet" value="cat"/>고양이
	<input type="checkbox" name= "pet" value="pig"/>돼지
	<br>
	<input type="submit" value="전송" />




</form>
</body>
</html>