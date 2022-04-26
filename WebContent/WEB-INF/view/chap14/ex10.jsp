<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${empty employee }">
		<form action="">
			직원번호 <input type="number" name="id" value="1" /> <input type="submit"
				value="조회" />
		</form>
	</c:if>

	<c:if test="${not empty employee }">
		<form method="post">
			Last Name:<input type="text" name="lastName" value/><br> 
			First Name:<input type="text" name="firstName" value/><br>
			 Birth Date: <input type="date" name="birthDate" value/><br> 
			 Picture: <input type="text" name="pic" value="pic01" /><br> 
			Notes : <textarea name="notes"></textarea>
			<br /> <input type="submit" value="등록" />
		</form>





	</c:if>

</body>
</html>