<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Map<String, List<String>> map = new HashMap<>();
	map.put("cars",Arrays.asList("tesla","KIA","Hyundai"));
	map.put("coffee",Arrays.asList("latte","espresso","capuccino"));
	
	pageContext.setAttribute("values",map);
	%>
	
	<p>${values.cars[0] }</p>
	<p>${values.cars[1] }</p>
	<p>${values.cars[2] }</p>
	
	<p>${values.coffee[0] }</p>
	<p>${values.coffee[1] }</p>
	<p>${values.coffee[2] }</p>
	
</body>
</html>