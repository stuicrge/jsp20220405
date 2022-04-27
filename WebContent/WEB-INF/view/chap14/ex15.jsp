<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>

	<h1>직원 명단</h1>

	<div>
		<form>
			이름 검색 <input type="text" name="keyword" value="${param.keyword }"/> 
			<button><i class="fa-solid fa-magnifying-glass"></i></button>
		</form>
	</div>

		<table class="table">
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>성</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${employeeList }"  var="employee">
				<tr>
					<td>${employee.id }</td>
					<td>${employee.lastName }</td>
					<td>${employee.firstName }</td>
					<td>${employee.birthDate }</td>
				</tr>
			</c:forEach>
			
			
			</tbody>
		
		
		</table>
</body>
</html>