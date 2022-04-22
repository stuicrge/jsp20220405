<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Map<String,String> map = new HashMap<>();
	map.put("movie","thor");
	map.put("computer","intel");
	map.put("book","sql");
	map.put("lunch","pizza");
	
	pageContext.setAttribute("today", map);
	%>
	
	
	
	<table class="table">
	<thead>
		<tr>
		<th>키</th>
		<th>값</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${today }" var="plan">
		<tr>
			<td>
			${plan.key }
			</td>
			<td>
			${plan.value }
			</td>
			</tr>
	</c:forEach>
	
	</tbody>
	
	</table>
	
</body>
</html>