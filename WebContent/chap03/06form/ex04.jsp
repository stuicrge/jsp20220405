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
	<h1>form 요소들 (input,textarea select button)</h1>
	<h2>input </h2>
	<p>input 요소의 type 속성에 따라 입력하는 방법이 달라짐</p>
	<hr />
	<h1>type="text"</h1>	
	<form action="ex05.jsp">
	<input type="text" name="group"/>
	<input type="submit" />
	</form>
	
	
	<h1>type="password"</h1>
	<form action="ex05.jsp">
	<input type="password" name="pw" />
	<input type="submit" />	
	</form>
	
	<h1>type="Calendar"</h1>
	<form action="ex05.jsp">
	<input type="date" name="birth"/>
	<input type="submit" />
	</form>
	
	<h1>type="number",type="email",type="file"</h1>
	<form action="ex05.jsp">
	<input type="number"  name = "num"/>
	<input type="email"  name="email"/>
	<input type="file" name = "fileName"/>
	<input type="submit" />
	</form>










</body>
</html>