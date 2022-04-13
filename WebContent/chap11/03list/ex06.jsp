<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "chap11.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>List의 item타입이 javabeans일때</h1>
	
	<%
	List<Car> list = new ArrayList<>();
	list.add(new Car("tesla",3000));
	list.add(new Car("volvo",2000));
	list.add(new Car("Hyundai",4000));
	list.add(new Car("KIA",2500));
	
	pageContext.setAttribute("cars",list);
	%>
	<p>${cars[0].model }</p>
	<p>${cars[0].price }</p>
	<p>${cars[1] }</p>
	<p>${cars[2].model }</p>
	<p>${cars[2].price }</p>
	<p>${cars[3].model }</p>
	<p>${cars[3].price }</p>
</body>
</html>